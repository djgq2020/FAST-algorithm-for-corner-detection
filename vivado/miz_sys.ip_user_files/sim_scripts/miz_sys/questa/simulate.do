onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib miz_sys_opt

do {wave.do}

view wave
view structure
view signals

do {miz_sys.udo}

run -all

quit -force
