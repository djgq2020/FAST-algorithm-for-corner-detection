#                                             FAST-algorithm-for-corner-detection
                                                         2021 winter camp

                                                           学员：于大江


一、简介

Edward Rosten和Tom Drummond在2006年的论文“用于高速拐角检测的机器学习”中提出了FAST（加速分段测试的特征）算法。该算法检测的角点定义为在像素点的周围邻域内有足够多的像素点与该点处于不同的区域。应用到灰度图像中，即有足够多的像素点的灰度值大于该点的灰度值或者小于该点的灰度值。 

选择图像中是否要识别为兴趣点的像素p，考虑p点附近半径为3的圆环上的16个点，一个思路是若其中有连续的12个点的灰度值与p点的灰度值差别超过某一阈值，就可以认为 p 点为角点。 

这一思路可以使用机器学习的方法进行加速。对同一类图像，例如同一场景的图像，可以在16个方向上进行训练，得到一棵决策树，从而在判定某一像素点是否为角点时，不再需要对所有方向进行检测，而只需要按照决策
树指定的方向进行2-3次判定即可确定该点是否为角点。

很多传统的特征点检测算法都很耗时，而且其只是很多复杂图像处理里中的第一步，得不偿失。FAST特征点检测是公认的比较快速的特征点检测方法，只利用周围像素比较的信息就可以得到特征点，简单，有效。 

二、技术方案

目前以CPU实现的该算法在计算机视觉处理的特征检测中广泛应用。而我通过HLS实现该算法，定制了专用加速器，挂载到ARM处理器上，进一步加快处理速度。相比RTL实现，效率更高，加快了开发进程。

三、进度规划

1、查阅资料

2、软件实现

3、HLS优化

4、下板调试

5、项目总结

6、项目提交

四、实验结果

见文件夹
                                                               2021.2.7







