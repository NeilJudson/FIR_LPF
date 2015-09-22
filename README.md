# FIR_LPF
FIR低通滤波器
设计要求
使用Verilog HDL语言，设计实现FIR低通滤波器，在满足要求的前提下，使用尽可能少的片上资源。
（一） 参数要求
通带截止频率：4MHz
阻带下限截止频率：5MHz
采样频率：20MHz
工作时钟频率：160MHz
阻带衰减：60dB
通带衰减：<0.03dB
（二） 设计环境
Xilinx ISE Design Suite 13.1：用于Verilog HDL程序设计
ModelSim SE 6.5f：用于功能仿真
Matlab R2009b：设计滤波器抽头系数，波形仿真
目标芯片：Spartan-6 XC6SLX100t-3FGG484
