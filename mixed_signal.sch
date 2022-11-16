v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 260 -330 800 -30 {flags=graph
y1=-0.0014
y2=2.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-05
divx=5
subdivx=1
node="rst
clk
count[0]
count[1]
count[2]
count[3]
COUNT;count[3],count[2],count[1],count[0]"
color="19 7 4 6 8 10 19"

unitx=1
logx=0
logy=0

rainbow=1
dataset=0
digital=1}
B 2 260 -560 790 -350 {flags=graph
y1=-0.00091
y2=2.1
ypos1=0
ypos2=0.01
divy=5
subdivy=1
unity=1
x1=0
x2=2e-05
divx=5
subdivx=1



unitx=1
logx=0
logy=0

digital=0
dataset=0
color=19
node=count[3]}
C {devices/vsource.sym} 10 -290 0 0 {name=V1 value=0}
C {devices/vsource.sym} 100 -290 0 0 {name=V2 value=1.8}
C {devices/lab_pin.sym} 10 -260 0 0 {name=p1 sig_type=std_logic lab="0"}
C {devices/lab_pin.sym} 10 -320 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 100 -320 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 100 -260 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -70 -160 0 0 {name=V3 value="PULSE(0 1.8 0 20n 20n \{0.5*1/FREQ\} \{1/FREQ\})"}
C {devices/lab_pin.sym} -70 -130 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -70 -190 0 0 {name=p9 sig_type=std_logic lab=CLK}
C {sky130_fd_pr/corner.sym} -310 -460 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/simulator_commands.sym} -180 -460 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands

.param FREQ=1e6


.save all
.control
op
write mixed_signal.raw
tran 10n 20u
writeappend
write mixed_signal.raw
.endc
"}
C {devices/launcher.sym} 20 -400 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/mixed_signal.raw tran"
}
C {devices/launcher.sym} 20 -440 0 0 {name=h1
descr="netlist & simulate"
tclcommand="xschem netlist; xschem simulate"}
C {upcounter.sym} -290 -130 0 0 {name=x1}
C {devices/lab_pin.sym} -290 -250 0 0 {name=p5 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -290 -190 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -210 -310 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -210 -130 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -130 -220 2 0 {name=p11 sig_type=std_logic lab=COUNT[0:3]}
C {devices/vsource.sym} -70 -70 0 0 {name=V4 value="PULSE(1.8 0 0 0 20n \{2*1/FREQ\})"}
C {devices/lab_pin.sym} -70 -100 0 0 {name=p12 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -70 -40 0 0 {name=p13 sig_type=std_logic lab=VSS}
