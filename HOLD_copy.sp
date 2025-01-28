* SIM BENCH SNM
.lib /gpfs/gibbs/project/manohar/mdd42/sky130_fd_pr_copy/latest/models/sky130.lib.spice tt
.global VDD GND Q Q_
Vdd VDD GND 1.8
VGND GND 0 0
.param MC_SWITCH = 1
.MODEL SW VSWITCH(ION=10mA IOFF=0mA RON=1 ROFF=1e6)

* SPICE3 file created from layout3.ext - technology: sky130A

.option scale=10m

.subckt layout3 vdd gnd bl bl_ wl Q Q_
X0 Q.t1 wl.t0 bl.t0 gnd.t1 sky130_fd_pr__nfet_01v8 ad=2.412n pd=0.15m as=1.575n ps=0.16m w=45 l=15
X1 Q_.t2 Q.t3 gnd.t3 gnd.t2 sky130_fd_pr__nfet_01v8 ad=2.412n pd=0.15m as=1.925n ps=0.18m w=55 l=15
X2 Q_.t1 Q.t4 vdd.t1 vdd.t0 sky130_fd_pr__pfet_01v8 ad=1.575n pd=0.16m as=1.575n ps=0.16m w=45 l=15
X3 Q_.t0 wl.t1 bl_.t0 gnd.t0 sky130_fd_pr__nfet_01v8 ad=2.412n pd=0.15m as=1.575n ps=0.16m w=45 l=15
X4 vdd.t3 Q_.t3 Q.t0 vdd.t2 sky130_fd_pr__pfet_01v8 ad=1.575n pd=0.16m as=1.575n ps=0.16m w=45 l=15
X5 gnd.t5 Q_.t4 Q.t2 gnd.t4 sky130_fd_pr__nfet_01v8 ad=1.925n pd=0.18m as=2.412n ps=0.15m w=55 l=15
C0 vdd Q_ 0.14263f
C1 bl_ Q 0.03571f
C2 bl Q 0.132001f
C3 Q wl 0.060859f
C4 bl_ Q_ 0.131582f
C5 bl_ vdd 0.075141f
C6 bl Q_ 0.036937f
C7 bl vdd 0.074552f
C8 Q_ wl 0.089279f
C9 vdd wl 0.004012f
C10 Q Q_ 0.243967f
C11 vdd Q 0.188778f
C12 bl bl_ 0.219865f
C13 bl_ wl 0.085434f
C14 bl wl 0.086077f
R0 wl wl.n0 152.285
R1 wl.n0 wl.t1 135.252
R2 wl.n0 wl.t0 132.04
R3 bl bl.t0 248.718
R4 Q.n1 Q.t0 707.543
R5 Q.n3 Q.n2 389.788
R6 Q.n2 Q.t3 279.56
R7 Q.n1 Q.n0 236.413
R8 Q.n2 Q.t4 196.013
R9 Q.n0 Q.t1 135.03
R10 Q.n0 Q.t2 43.6369
R11 Q.n3 Q.n1 38.6138
R12 Q Q.n3 0.427167
R13 gnd.t0 gnd.t1 1848
R14 gnd.t4 gnd.n1 1669.42
R15 gnd.n2 gnd.t2 1669.42
R16 gnd.t1 gnd.t4 704
R17 gnd.t2 gnd.t0 686.4
R18 gnd.n2 gnd.t3 235.056
R19 gnd.n1 gnd.t5 235.056
R20 gnd gnd.n2 1.89953
R21 gnd.n1 gnd.n0 1.89953
R22 Q_.n2 Q_.t1 736.342
R23 Q_ Q_.n0 372.967
R24 Q_.n0 Q_.t3 324.548
R25 Q_.n2 Q_.n1 207.613
R26 Q_.n0 Q_.t4 151.028
R27 Q_.n1 Q_.t0 132.849
R28 Q_.n1 Q_.t2 43.6369
R29 Q_ Q_.n2 40.5338
R30 vdd.n1 vdd.t3 766.423
R31 vdd.n2 vdd.t1 695.169
R32 vdd.n0 vdd.t2 563.871
R33 vdd.n0 vdd.t0 563.871
R34 vdd.n1 vdd.n0 370
R35 vdd.n2 vdd.n1 71.2538
R36 vdd vdd.n2 19.2005
R37 bl_ bl_.t0 248.663
C15 bl gnd 0.452356f
C16 bl_ gnd 0.453497f
C17 wl gnd 0.434198f
C18 Q_ gnd 0.479754f
C19 Q gnd 0.463462f
C20 vdd gnd 0.934715f
.ends
VWL wl GND 0
VBL bl GND 0
VBL_ bl_ GND 0
VQs1 Ns1 GND pwl 1ms 0 2ms 1.8
VCs1 Cs1 GND pwl 0ns 0 0.0001ns 1.8 2ms 1.8 2.0001ms 0
s1 Q Ns1 Cs1 GND SW
VQs2 Ns2 GND pwl 4ms 0 5ms 1.8
VCs2 Cs2 GND pwl 4ms 0 4.0001ms 1.8 5ms 1.8 5.0001ms 0
s2 Q_ Ns2 Cs2 GND SW
Xbc vdd gnd bl bl_ wl Q Q_ layout3
.tran 0.001ms 6ms 0 0.001ms
.SAMPLING
+ useExpr=true
.options  samples numsamples=100
.print tran V(Q) V(Q_)
.end