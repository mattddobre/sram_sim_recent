

*
*---- act defproc: mem::bitcell -----
.subckt bitcell wl bl bl_
*.PININFO wl:I bl:I bl_:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
*
* --- node flags ---
*
* Q_ (combinational)
* Q (combinational)
*
* --- end node flags ---
*
xM0_ Vdd Q Q_ Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.165 nrs=1 nrd=1 nf=1
xM1_ Vdd Q_ Q Vdd sky130_fd_pr__pfet_01v8  W=0.45 L=0.165 nrs=1 nrd=1 nf=1
xM2_ GND Q Q_ GND sky130_fd_pr__nfet_01v8 W=0.555 L=0.165 nrs=1 nrd=1 nf=1
xM3_ GND Q_ Q GND sky130_fd_pr__nfet_01v8 W=0.555 L=0.165 nrs=1 nrd=1 nf=1
C_per_node_0 Q_ GND 5e-15
xM4_pass Q_ wl bl_ GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.165 nrs=1 nrd=1 nf=1
C_per_node_1 Q GND 5e-15
xM5_pass Q wl bl GND sky130_fd_pr__nfet_01v8 W=0.45 L=0.165 nrs=1 nrd=1 nf=1
.ends
*---- end of process: bitcell -----
*
*---- act defproc: mem::bitcell_array11 -----
.subckt bitcell_array11 wl[0] bl[0] bl_[0]
*.PININFO wl[0]:I bl[0]:I bl_[0]:I
*.POWER VDD Vdd
*.POWER GND GND
*.POWER NSUB GND
*.POWER PSUB Vdd
xb[0][0] wl[0] bl[0] bl_[0] bitcell
.ends
*---- end of process: bitcell_array11 -----
