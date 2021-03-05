
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "xhls_fast_corner.h"
#include "sleep.h"

#define DDR_BASEADDR        0x00000000
#define DISPLAY_VDMA       XPAR_AXI_VDMA_0_BASEADDR + 0
#define SOBEL_VDMA		   XPAR_AXI_VDMA_1_BASEADDR + 0
#define DIS_X            1280
#define DIS_Y            720
#define SOBEL_ROW			 512
#define SOBEL_COL			 512
#define pi					3.14159265358
#define COUNTS_PER_SECOND	(XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ)/64

#define SOBEL_S2MM		0x08000000
#define SOBEL_MM2S		0x0A000000
#define DISPLAY_MM2S	0x0C000000

u32 *BufferPtr[3];
u32 threhold=20;
static XHls_fast_corner fast;

//函数声明
void Xil_DCacheFlush(void);
// 所有数据格式 为 RGBA，低位的透明度暂不起作用
extern const unsigned char gImage_lena[1048584];
extern const unsigned char gImage_logo[284008];

void SOBEL_VDMA_setting(unsigned int width,unsigned int height,unsigned int s2mm_addr,unsigned int mm2s_addr)
{
	//S2MM
		Xil_Out32(SOBEL_VDMA + 0x30, 0x4); //reset   S2MM VDMA Control Register
	    usleep(10);
	    Xil_Out32(SOBEL_VDMA + 0x30, 0x0); //genlock
	    Xil_Out32(SOBEL_VDMA + 0xAC,   s2mm_addr);//S2MM Start Addresses
	    Xil_Out32(SOBEL_VDMA + 0xAC+4, s2mm_addr);
	    Xil_Out32(SOBEL_VDMA + 0xAC+8, s2mm_addr);
	    Xil_Out32(SOBEL_VDMA + 0xA4, width*4);//S2MM Horizontal Size
	    Xil_Out32(SOBEL_VDMA + 0xA8, width*4);//S2MM Frame Delay and Stride
	    Xil_Out32(SOBEL_VDMA + 0x30, 0x3);//S2MM VDMA Control Register
	    Xil_Out32(SOBEL_VDMA + 0xA0, height);//S2MM Vertical Size  start an S2M
	   // Xil_DCacheFlush();

		//MM2S
	    Xil_Out32(SOBEL_VDMA + 0x00,0x00000003); // enable circular mode
	    Xil_Out32(SOBEL_VDMA + 0x5c,mm2s_addr); // start address
	    Xil_Out32(SOBEL_VDMA + 0x60,mm2s_addr); // start address
	    Xil_Out32(SOBEL_VDMA + 0x64,mm2s_addr); // start address
	    Xil_Out32(SOBEL_VDMA + 0x58,(width*4)); // h offset
	    Xil_Out32(SOBEL_VDMA + 0x54,(width*4)); // h size
	    Xil_Out32(SOBEL_VDMA + 0x50,height); // v size
	    //Xil_DCacheFlush();
}

void DISPLAY_VDMA_setting(unsigned int width,unsigned height,unsigned int mm2s_addr)
{
		Xil_Out32((DISPLAY_VDMA + 0x000), 0x00000003); 		// enable circular mode
		Xil_Out32((DISPLAY_VDMA + 0x05c), mm2s_addr); 	// start address
		Xil_Out32((DISPLAY_VDMA + 0x060), mm2s_addr); 	// start address
		Xil_Out32((DISPLAY_VDMA + 0x064), mm2s_addr); 	// start address
		Xil_Out32((DISPLAY_VDMA + 0x058), (width*4)); 		// h offset (640 * 4) bytes
		Xil_Out32((DISPLAY_VDMA + 0x054), (width*4)); 		// h size (640 * 4) bytes
		Xil_Out32((DISPLAY_VDMA + 0x050), height); 			// v size (480)
}

void SOBEL_DDRWR(unsigned int addr,unsigned int cols,unsigned int lows)
{
	u32 i=0;
	u32 j=0;
	u32 r,g,b;
	for(i=0;i<cols;i++)
	{
		for(j=0;j<lows;j++)
		{
			b= gImage_lena[(j+i*cols)*4+2];
			g= gImage_lena[(j+i*cols)*4+1];
			r= gImage_lena[(j+i*cols)*4];
			Xil_Out32((addr+(j+i*cols)*4),((r<<16)|(g<<8)|(b<<0)|0x0));
		}
	}
	Xil_DCacheFlush();
}

void SOBEL_Setup()
{
	//const int cols = 512;
	//const int rows = 512;
	XHls_fast_corner_SetRows(&fast, SOBEL_COL);
	XHls_fast_corner_SetCols(&fast, SOBEL_ROW);
	XHls_fast_corner_SetThrehold(&fast, threhold);
	XHls_fast_corner_DisableAutoRestart(&fast);
	XHls_fast_corner_InterruptGlobalDisable(&fast);
	SOBEL_VDMA_setting(SOBEL_ROW,SOBEL_COL,SOBEL_S2MM,SOBEL_MM2S);
	SOBEL_DDRWR(SOBEL_MM2S,SOBEL_ROW,SOBEL_COL);
	//init_hls_sobel_dma(cols,rows, VIDEO_BASEADDR, HLS_VDMA_MM2S_ADDR);
	//DDRVideoWr(HLS_VDMA_MM2S_ADDR, cols,rows);
	XHls_fast_corner_Start(&fast);
}

void Set_blackground(u32 size_x,u32 size_y,u32 disp_addr)
{
	u32 i=0;
	u32 j=0;
	//u32 r,g,b;
	for(j=0;j<size_y;j++)
	{
		for(i=0;i<size_x;i++)
		{
			Xil_Out32((disp_addr+(i+j*size_x)*4),0);
		}
	}
	Xil_DCacheFlush();
}

void show_img(u32 x, u32 y, u32 disp_base_addr, const unsigned char * addr, u32 size_x, u32 size_y)
{
	//计算图片 左上角坐标
	u32 i=0;
	u32 j=0;
	u32 r,g,b;
	u32 start_addr=disp_base_addr;
	start_addr = disp_base_addr + 4*x + y*4*DIS_X;
	for(j=0;j<size_y;j++)
	{
		for(i=0;i<size_x;i++)
		{
			//if(type==0)
			//{
				//b = *(addr+(i+j*size_x)*4+2); //08
				//g = *(addr+(i+j*size_x)*4+1); //60
				//r = *(addr+(i+j*size_x)*4); //01
			//}
			//else
			//{
				b = *(addr+(i+j*size_x)*4); //08
				g = *(addr+(i+j*size_x)*4+1); //60
				r = *(addr+(i+j*size_x)*4+2); //01
			//}
			Xil_Out32((start_addr+(i+j*DIS_X)*4),((r<<16)|(g<<8)|(b<<0)|0x0));
		}
	}
	Xil_DCacheFlush();
}

int main(void)
{

	//Xil_DCacheFlush();
	xil_printf("Starting the first VDMA \n\r");
	int status = XHls_fast_corner_Initialize(&fast, XPAR_HLS_FAST_CORNER_0_S_AXI_CONTROL_BUS_BASEADDR);
	if(0 != status)
	{
		xil_printf("XHls_Sobel_Initialize failed \n");
	}
	SOBEL_Setup();
	DISPLAY_VDMA_setting(DIS_X,DIS_Y,DISPLAY_MM2S);
	Set_blackground(1280,720,DISPLAY_MM2S);
    /******************************
	for(i=0;i<614400;i++)
    {
    	Xil_Out32(VIDEO_BASEADDR0+i,0);
    }
    *******************************/
	while(1)
	{
		//show_img(0,0,VIDEO_BASEADDR0,&gImage_beauty[0],563,600);
		//sleep(5);
		//show_img(0,0,VIDEO_BASEADDR0,&gImage_miz702_rgba[0],375,400);
		//sleep(5);
		show_img(0,0,DISPLAY_MM2S,(void*)SOBEL_S2MM,512,512);
		show_img(522,0,DISPLAY_MM2S,(void*)SOBEL_MM2S,512,512);
		//show_img(0,513,DISPLAY_MM2S,&gImage_logo[0],355,200);
	}
    return 0;
}
