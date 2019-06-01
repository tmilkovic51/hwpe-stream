# File saved with Nlview 6.8.11  2018-08-07 bk=1.4403 VDI=40 GEI=35 GUI=JA:9.0 TLS
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new my_hwpe_stream_fifo work:my_hwpe_stream_fifo:NOFILE -nosplit
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol LUT1 hdi_primitives BOX pin O output.right pin I0 input.left fillcolor 1
load symbol FDCE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin CLR input.left pin D input.left fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol OBUFT hdi_primitives BOX pin O output.right pin I input.left pin T input.left fillcolor 1
load symbol MUXF7 hdi_primitives MUX pin O output.right pin I0 input.left pin I1 input.left pin S input.bot fillcolor 1
load symbol LDCE hdi_primitives BOX pin Q output.right pin CLR input.left pin D input.left pin G input.left pin GE input.left fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load port flags_o[empty] output -pg 1 -y 42000
load port rst_ni input -pg 1 -y 42250
load port {push_i\.valid} input -pg 1 -y 42180
load port clear_i input -pg 1 -y 42110
load port clk_i input -pg 1 -y 42390
load port flags_o[full] output -pg 1 -y 14440
load port {pop_o\.ready} input -pg 1 -y 42320
load port {push_i\.ready} output -pg 1 -y 42180
load port {pop_o\.valid} output -pg 1 -y 42090
load portBus flags_o[push_pointer] output [7:0] -attr @name flags_o[push_pointer][7:0] -pg 1 -y 14530
load portBus {pop_o\.data} output [31:0] -attr @name {pop_o\.data[31:0]} -pg 1 -y 14460
load portBus {push_i\.strb} input [3:0] -attr @name {push_i\.strb[3:0]} -pg 1 -y 3410
load portBus flags_o[pop_pointer] output [7:0] -attr @name flags_o[pop_pointer][7:0] -pg 1 -y 13620
load portBus {pop_o\.strb} output [3:0] -attr @name {pop_o\.strb[3:0]} -pg 1 -y 2600
load portBus {push_i\.data} input [31:0] -attr @name {push_i\.data[31:0]} -pg 1 -y 42430
load inst fifo_ff_gen.fifo_registers_reg[4][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 38180
load inst {pop_o\.data[17]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 25530
load inst {pop_o\.data[29]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 39930
load inst fifo_ff_gen.fifo_registers[7][9]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 10900
load inst fifo_ff_gen.fifo_registers_reg[5][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 14330
load inst {pop_o\.data[17]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 25470
load inst fifo_ff_gen.fifo_registers_reg[3][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 17030
load inst fifo_ff_gen.fifo_registers_reg[2][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 37280
load inst {pop_o\.data[12]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 20060
load inst {pop_o\.data[17]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 26020
load inst fifo_ff_gen.fifo_registers_reg[3][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 36230
load inst fifo_ff_gen.fifo_registers_reg[6][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 28280
load inst {pop_o\.data[12]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 19470
load inst fifo_ff_gen.fifo_registers_reg[3][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1430
load inst fifo_ff_gen.fifo_registers_reg[7][9]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 10910
load inst {pop_o\.data[12]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 20020
load inst {pop_o\.data[23]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 32730
load inst pop_pointer_d_reg[0] LDCE hdi_primitives -attr @cell(#000000) LDCE -pg 1 -lvl 5 -y 41560
load inst fifo_ff_gen.fifo_registers_reg[7][29]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 34910
load inst {pop_o\.data[15]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 23660
load inst fifo_ff_gen.fifo_registers_reg[1][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 24530
load inst fifo_ff_gen.fifo_registers_reg[7][10]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 12110
load inst fifo_ff_gen.fifo_registers_reg[7][35] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 43410
load inst {pop_o\.data[15]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 23070
load inst fifo_ff_gen.fifo_registers_reg[1][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 20930
load inst fifo_ff_gen.fifo_registers_reg[2][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 20480
load inst fifo_ff_gen.fifo_registers_reg[1][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 530
load inst {pop_o\.data[15]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 23620
load inst {pop_o\.data[20]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 29130
load inst fifo_ff_gen.fifo_registers_reg[0][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 15980
load inst fifo_ff_gen.fifo_registers_reg[4][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16580
load inst fifo_ff_gen.fifo_registers_reg[1][35] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 41330
load inst fifo_ff_gen.fifo_registers_reg[6][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11480
load inst fifo_ff_gen.fifo_registers_reg[7][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 14030
load inst fifo_ff_gen.fifo_registers_reg[7][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 36830
load inst fifo_ff_gen.fifo_registers[7][34]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 41340
load inst fifo_ff_gen.fifo_registers_reg[7][18]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 21710
load inst fifo_ff_gen.fifo_registers_reg[2][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 5930
load inst fifo_ff_gen.fifo_registers_reg[3][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 27830
load inst fifo_ff_gen.fifo_registers_reg[0][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 30380
load inst fifo_ff_gen.fifo_registers_reg[4][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 5630
load inst fifo_ff_gen.fifo_registers_reg[6][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 7880
load inst flags_o[push_pointer][6]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 15160
load inst fifo_ff_gen.fifo_registers_reg[0][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 26780
load inst fifo_ff_gen.fifo_registers_reg[4][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 27380
load inst fifo_ff_gen.fifo_registers_reg[4][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 3230
load inst fifo_ff_gen.fifo_registers_reg[6][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16280
load inst fifo_ff_gen.fifo_registers_reg[6][32] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 39080
load inst {pop_o\.strb[2]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 2840
load inst fifo_ff_gen.fifo_registers_reg[2][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 15680
load inst flags_o[pop_pointer][0]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 13610
load inst {pop_o\.strb[2]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 1470
load inst pop_pointer_q[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 10 -y 41460
load inst fifo_ff_gen.fifo_registers[7][23]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 27700
load inst fifo_ff_gen.fifo_registers_reg[4][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 36980
load inst {pop_o\.strb[2]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 4420
load inst fifo_ff_gen.fifo_registers_reg[3][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11030
load inst fifo_ff_gen.fifo_registers_reg[5][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12980
load inst fifo_ff_gen.fifo_registers_reg[7][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 30830
load inst fifo_ff_gen.fifo_registers_reg[7][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 5030
load inst fifo_ff_gen.fifo_registers_reg[2][35] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 41030
load inst fifo_ff_gen.fifo_registers_reg[3][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 15830
load inst fifo_ff_gen.fifo_registers_reg[2][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 36080
load inst {pop_o\.data[28]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 38730
load inst fifo_ff_gen.fifo_registers_reg[2][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 30080
load inst fifo_ff_gen.fifo_registers_reg[7][20]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 24110
load inst {pop_o\.data[28]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 38670
load inst {pop_o\.data[8]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 14730
load inst fifo_ff_gen.fifo_registers_reg[1][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 36530
load inst {pop_o\.data[28]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 39220
load inst fifo_ff_gen.fifo_registers[7][13]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 15700
load inst fifo_ff_gen.fifo_registers_reg[6][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 29480
load inst fifo_ff_gen.fifo_registers_reg[7][17]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 20510
load inst fifo_ff_gen.fifo_registers_reg[7][3]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 3680
load inst fifo_ff_gen.fifo_registers_reg[1][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 80
load inst fifo_ff_gen.fifo_registers_reg[1][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 19730
load inst fifo_ff_gen.fifo_registers[7][17]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 20500
load inst fifo_ff_gen.fifo_registers_reg[2][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 19280
load inst {pop_o\.data[24]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 33930
load inst fifo_ff_gen.fifo_registers_reg[1][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 25730
load inst fifo_ff_gen.fifo_registers_reg[0][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 14780
load inst fifo_ff_gen.fifo_registers_reg[4][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 15380
load inst fifo_ff_gen.fifo_registers[7][2]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 3580
load inst fifo_ff_gen.fifo_registers_reg[0][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 20780
load inst fifo_ff_gen.fifo_registers_reg[6][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 4880
load inst fifo_ff_gen.fifo_registers_reg[7][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12680
load inst fifo_ff_gen.fifo_registers_reg[7][15]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 18110
load inst fifo_ff_gen.fifo_registers_reg[0][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 680
load inst fifo_ff_gen.fifo_registers_reg[2][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 25280
load inst fifo_ff_gen.fifo_registers_reg[6][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 2930
load inst pop_pointer_q[0]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 6 -y 41740
load inst fifo_ff_gen.fifo_registers[7][8]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 9700
load inst fifo_ff_gen.fifo_registers_reg[2][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 7280
load inst fifo_ff_gen.fifo_registers_reg[4][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 14180
load inst fifo_ff_gen.fifo_registers_reg[0][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 31580
load inst fifo_ff_gen.fifo_registers_reg[4][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 6980
load inst {pop_o\.data[6]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 12710
load inst fifo_ff_gen.fifo_registers_reg[5][32] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 39530
load inst fifo_ff_gen.fifo_registers_reg[6][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 15080
load inst fifo_ff_gen.fifo_registers_reg[6][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 37880
load inst fifo_ff_gen.fifo_registers_reg[7][0]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 3410
load inst {pop_o\.data[10]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 17130
load inst fifo_ff_gen.fifo_registers_reg[2][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 14480
load inst fifo_ff_gen.fifo_registers_reg[4][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 4580
load inst fifo_ff_gen.fifo_registers_reg[7][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 27230
load inst {pop_o\.data[16]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 24330
load inst {pop_o\.data[25]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 35130
load inst fifo_ff_gen.fifo_registers_reg[3][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 9830
load inst fifo_ff_gen.fifo_registers_reg[3][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 33830
load inst fifo_ff_gen.fifo_registers_reg[7][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 4430
load inst {pop_o\.data[16]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 24270
load inst {pop_o\.data[25]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 35070
load inst fifo_ff_gen.fifo_registers_reg[3][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 14630
load inst fifo_ff_gen.fifo_registers_reg[2][34] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 40430
load inst {pop_o\.data[16]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 24820
load inst {pop_o\.data[25]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 35620
load inst {pop_o\.data[31]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 41130
load inst {pop_o\.strb[1]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 2720
load inst flags_o[empty]_INST_0_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 17 -y 41990
load inst {pop_o\.data[31]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 41070
load inst {pop_o\.strb[1]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 870
load inst fifo_ff_gen.fifo_registers_reg[2][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 31280
load inst {pop_o\.data[25]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 35130
load inst {pop_o\.data[31]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 42740
load inst {pop_o\.strb[1]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 3050
load inst fifo_ff_gen.fifo_registers_reg[1][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 18380
load inst fifo_ff_gen.fifo_registers_reg[3][32] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 38630
load inst fifo_ff_gen.fifo_registers_reg[7][30]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 36440
load inst fifo_ff_gen.fifo_registers_reg[7][4]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 6790
load inst {pop_o\.data[11]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 18710
load inst push_pointer_d_reg[0]_i_1 LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pg 1 -lvl 4 -y 41820
load inst fifo_ff_gen.fifo_registers_reg[0][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 19580
load inst {pop_o\.data[21]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 30330
load inst pop_pointer_d_reg[2] LDCE hdi_primitives -attr @cell(#000000) LDCE -pg 1 -lvl 13 -y 41540
load inst fifo_ff_gen.fifo_registers[7][29]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 34900
load inst {pop_o\.data[21]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 30270
load inst fifo_ff_gen.fifo_registers[7][25]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 30100
load inst fifo_ff_gen.fifo_registers_reg[6][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 6530
load inst {pop_o\.data[21]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 30820
load inst fifo_ff_gen.fifo_registers_reg[2][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 22880
load inst fifo_ff_gen.fifo_registers_reg[0][33] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 39980
load inst fifo_ff_gen.fifo_registers_reg[5][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 32330
load inst fifo_ff_gen.fifo_registers_reg[4][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 18830
load inst fifo_ff_gen.fifo_registers_reg[0][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 24380
load inst fifo_ff_gen.fifo_registers_reg[2][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 26480
load inst fifo_ff_gen.fifo_registers_reg[0][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 980
load inst fifo_ff_gen.fifo_registers_reg[2][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 230
load inst fifo_ff_gen.fifo_registers_reg[4][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12830
load inst fifo_ff_gen.fifo_registers_reg[0][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 18230
load inst fifo_ff_gen.fifo_registers_reg[7][32] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 39230
load inst fifo_ff_gen.fifo_registers_reg[5][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 38330
load inst fifo_ff_gen.fifo_registers_reg[6][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 36680
load inst {pop_o\.data[3]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 8730
load inst fifo_ff_gen.fifo_registers_reg[4][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 8180
load inst {pop_o\.data[3]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 8670
load inst {pop_o\.data[14]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 22310
load inst {pop_o\.data[3]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 9220
load inst clk_i_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -y 42390
load inst fifo_ff_gen.fifo_registers[7][21]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 25300
load inst fifo_ff_gen.fifo_registers[4][35]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 40830
load inst fifo_ff_gen.fifo_registers_reg[7][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 28430
load inst fifo_ff_gen.fifo_registers_reg[3][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 13430
load inst fifo_ff_gen.fifo_registers_reg[2][33] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 39680
load inst fifo_ff_gen.fifo_registers_reg[6][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 18530
load inst fifo_ff_gen.fifo_registers_reg[7][33]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 40410
load inst fifo_ff_gen.fifo_registers_reg[2][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 27680
load inst fifo_ff_gen.fifo_registers_reg[3][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 35030
load inst {pop_o\.data[31]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 41130
load inst fifo_ff_gen.fifo_registers[7][6]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 7300
load inst fifo_ff_gen.fifo_registers_reg[7][27]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 32510
load inst {pop_o\.data[26]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 36330
load inst pop_pointer_d_reg[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 8 -y 41460
load inst fifo_ff_gen.fifo_registers_reg[7][34]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 41350
load inst {pop_o\.data[26]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 36330
load inst {pop_o\.data[26]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 36270
load inst fifo_ff_gen.fifo_registers[7][3]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 3670
load inst fifo_ff_gen.fifo_registers_reg[7][1]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 3500
load inst {pop_o\.data[26]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 36820
load inst fifo_ff_gen.fifo_registers_reg[1][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 17330
load inst fifo_ff_gen.fifo_registers_reg[3][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 37430
load inst fifo_ff_gen.fifo_registers[7][20]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 24100
load inst fifo_ff_gen.fifo_registers_reg[7][26]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 31310
load inst fifo_ff_gen.fifo_registers_reg[7][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 35630
load inst fifo_ff_gen.fifo_registers_reg[1][32] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 38930
load inst fifo_ff_gen.fifo_registers_reg[6][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 3080
load inst {pop_o\.data[2]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 7530
load inst {pop_o\.data[11]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 18710
load inst fifo_ff_gen.fifo_registers_reg[2][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 22730
load inst fifo_ff_gen.fifo_registers_reg[0][32] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 38780
load inst {pop_o\.data[11]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 18310
load inst fifo_ff_gen.fifo_registers_reg[0][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 17180
load inst fifo_ff_gen.fifo_registers_reg[4][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 17780
load inst fifo_ff_gen.fifo_registers_reg[0][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 23180
load inst fifo_ff_gen.fifo_registers_reg[7][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 38030
load inst flags_o[pop_pointer][4]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 14070
load inst {pop_o\.data[11]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 18670
load inst fifo_ff_gen.fifo_registers[6][35]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 41170
load inst fifo_ff_gen.fifo_registers_reg[5][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 33530
load inst fifo_ff_gen.fifo_registers_reg[7][22]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 26510
load inst fifo_ff_gen.fifo_registers[7][10]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 12100
load inst fifo_ff_gen.fifo_registers_reg[0][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1580
load inst fifo_ff_gen.fifo_registers_reg[7][35]_i_3 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 42010
load inst fifo_ff_gen.fifo_registers[3][35]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 40660
load inst fifo_ff_gen.fifo_registers_reg[7][21]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 25310
load inst fifo_ff_gen.fifo_registers_reg[3][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 31430
load inst fifo_ff_gen.fifo_registers_reg[2][32] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 38480
load inst fifo_ff_gen.fifo_registers[7][15]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 18100
load inst fifo_ff_gen.fifo_registers_reg[3][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12080
load inst fifo_ff_gen.fifo_registers_reg[5][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 7130
load inst fifo_ff_gen.fifo_registers_reg[6][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 17480
load inst {pop_o\.valid_INST_0_i_1} LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 17 -y 42080
load inst fifo_ff_gen.fifo_registers_reg[2][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 28880
load inst fifo_ff_gen.fifo_registers_reg[1][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 34130
load inst fifo_ff_gen.fifo_registers_reg[1][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16130
load inst fifo_ff_gen.fifo_registers_reg[7][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 34430
load inst fifo_ff_gen.fifo_registers_reg[1][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 37730
load inst fifo_ff_gen.fifo_registers_reg[1][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11330
load inst FSM_sequential_cs[0]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 15 -y 41920
load inst fifo_ff_gen.fifo_registers_reg[5][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 2780
load inst fifo_ff_gen.fifo_registers[2][35]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 40490
load inst fifo_ff_gen.fifo_registers_reg[6][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 4280
load inst {pop_o\.data[5]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 11130
load inst fifo_ff_gen.fifo_registers_reg[3][34] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 40280
load inst fifo_ff_gen.fifo_registers_reg[0][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 37580
load inst fifo_ff_gen.fifo_registers_reg[5][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 29930
load inst {pop_o\.data[5]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 11070
load inst fifo_ff_gen.fifo_registers[7][32]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 38500
load inst fifo_ff_gen.fifo_registers_reg[2][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 24080
load inst fifo_ff_gen.fifo_registers_reg[0][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 21830
load inst fifo_ff_gen.fifo_registers_reg[6][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 35480
load inst {pop_o\.data[5]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 11620
load inst {pop_o\.data[9]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 15930
load inst {pop_o\.data[8]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 14730
load inst {pop_o\.data[8]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 14670
load inst fifo_ff_gen.fifo_registers_reg[0][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 2180
load inst fifo_ff_gen.fifo_registers_reg[3][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 24230
load inst fifo_ff_gen.fifo_registers[7][31]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 37300
load inst fifo_ff_gen.fifo_registers_reg[7][34] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 43110
load inst {pop_o\.data[21]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 30330
load inst {pop_o\.data[8]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 15220
load inst fifo_ff_gen.fifo_registers_reg[5][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 22580
load inst fifo_ff_gen.fifo_registers_reg[5][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 5780
load inst flags_o[push_pointer][4]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 14980
load inst fifo_ff_gen.fifo_registers_reg[2][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 10880
load inst fifo_ff_gen.fifo_registers_reg[3][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 32630
load inst fifo_ff_gen.fifo_registers_reg[6][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 21080
load inst fifo_ff_gen.fifo_registers_reg[7][24]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 28910
load inst fifo_ff_gen.fifo_registers_reg[1][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 14930
load inst fifo_ff_gen.fifo_registers_reg[7][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 33230
load inst {pop_o\.data[0]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 5560
load inst fifo_ff_gen.fifo_registers_reg[1][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 10130
load inst push_pointer_d_reg[0] LDCE hdi_primitives -attr @cell(#000000) LDCE -pg 1 -lvl 5 -y 41800
load inst fifo_ff_gen.fifo_registers_reg[1][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 35330
load inst fifo_ff_gen.fifo_registers_reg[5][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 2630
load inst fifo_ff_gen.fifo_registers[7][30]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 36430
load inst fifo_ff_gen.fifo_registers[7][33]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 40400
load inst flags_o[pop_pointer][3]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 13980
load inst {pop_o\.data[27]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 37530
load inst fifo_ff_gen.fifo_registers_reg[3][33] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 39830
load inst fifo_ff_gen.fifo_registers_reg[0][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 36380
load inst fifo_ff_gen.fifo_registers_reg[0][35] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 41180
load inst fifo_ff_gen.fifo_registers_reg[2][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 34880
load inst fifo_ff_gen.fifo_registers_reg[4][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 33380
load inst fifo_ff_gen.fifo_registers_reg[6][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 25880
load inst {pop_o\.data[27]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 37470
load inst {pop_o\.data[28]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 38730
load inst fifo_ff_gen.fifo_registers_reg[6][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 34280
load inst flags_o[pop_pointer][7]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 14340
load inst {pop_o\.data[27]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 38020
load inst {push_i\.ready_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 42180
load inst fifo_ff_gen.fifo_registers_reg[5][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 31130
load inst fifo_ff_gen.fifo_registers_reg[7][23]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 27710
load inst {pop_o\.strb[3]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 2960
load inst {pop_o\.strb[3]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 2070
load inst fifo_ff_gen.fifo_registers[7][14]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 16900
load inst fifo_ff_gen.fifo_registers[7][22]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 26500
load inst {pop_o\.strb[3]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 5020
load inst push_pointer_q[0]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 6 -y 41860
load inst fifo_ff_gen.fifo_registers_reg[7][33] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 41660
load inst fifo_ff_gen.fifo_registers_reg[5][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 21530
load inst fifo_ff_gen.fifo_registers_reg[5][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 5330
load inst flags_o[push_pointer][2]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 14800
load inst clk_i_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -y 42390
load inst fifo_ff_gen.fifo_registers[7][19]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 22900
load inst fifo_ff_gen.fifo_registers_reg[0][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 3980
load inst fifo_ff_gen.fifo_registers_reg[2][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1880
load inst fifo_ff_gen.fifo_registers_reg[3][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 25430
load inst {pop_o\.strb[3]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 2960
load inst clear_i_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -y 42110
load inst {pop_o\.data[18]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 26730
load inst fifo_ff_gen.fifo_registers[5][35]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 41000
load inst fifo_ff_gen.fifo_registers_reg[6][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 19880
load inst {pop_o\.data[2]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 7530
load inst fifo_ff_gen.fifo_registers[7][27]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 32500
load inst fifo_ff_gen.fifo_registers_reg[1][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 13730
load inst fifo_ff_gen.fifo_registers_reg[1][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 31730
load inst fifo_ff_gen.fifo_registers_reg[7][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 32030
load inst {pop_o\.data[2]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 7470
load inst fifo_ff_gen.fifo_registers_reg[1][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 8930
load inst {pop_o\.data[2]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 8020
load inst fifo_ff_gen.fifo_registers_reg[7][31]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 37310
load inst push_pointer_d_reg[1] LDCE hdi_primitives -attr @cell(#000000) LDCE -pg 1 -lvl 9 -y 41840
load inst fifo_ff_gen.fifo_registers_reg[0][34] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 40730
load inst fifo_ff_gen.fifo_registers_reg[5][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 27530
load inst fifo_ff_gen.fifo_registers_reg[0][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 13580
load inst fifo_ff_gen.fifo_registers_reg[5][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 35930
load inst fifo_ff_gen.fifo_registers_reg[6][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 33080
load inst fifo_ff_gen.fifo_registers_reg[4][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 34580
load inst fifo_ff_gen.fifo_registers_reg[6][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 27080
load inst fifo_ff_gen.fifo_registers_reg[7][32]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 38510
load inst fifo_ff_gen.fifo_registers_reg[7][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 6830
load inst {pop_o\.data[22]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 31530
load inst fifo_ff_gen.fifo_registers[7][7]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 8500
load inst {pop_o\.data[17]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 25530
load inst fifo_ff_gen.fifo_registers[7][12]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 14510
load inst fifo_ff_gen.fifo_registers_reg[5][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 20330
load inst fifo_ff_gen.fifo_registers_reg[5][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 4730
load inst {pop_o\.data[19]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 27930
load inst FSM_sequential_cs_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -y 42120
load inst fifo_ff_gen.fifo_registers[7][1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 3490
load inst fifo_ff_gen.fifo_registers_reg[3][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 23030
load inst {pop_o\.data[19]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 27870
load inst {pop_o\.data[3]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 8730
load inst {pop_o\.data[19]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 28420
load inst push_pointer_d_reg[2]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 12 -y 41740
load inst fifo_ff_gen.fifo_registers_reg[0][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 6230
load inst fifo_ff_gen.fifo_registers_reg[2][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 3680
load inst push_pointer_d_reg[2]_i_2 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -y 42160
load inst {pop_o\.data[13]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 20730
load inst {pop_o\.data[20]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 29130
load inst {pop_o\.data[7]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 13910
load inst {push_i\.ready_INST_0_i_1} LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pg 1 -lvl 17 -y 42170
load inst fifo_ff_gen.fifo_registers_reg[1][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12380
load inst fifo_ff_gen.fifo_registers_reg[7][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 24830
load inst fifo_ff_gen.fifo_registers_reg[7][8]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 9710
load inst {pop_o\.data[20]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 29070
load inst {pop_o\.data[7]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 13470
load inst fifo_ff_gen.fifo_registers_reg[1][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 7730
load inst fifo_ff_gen.fifo_registers_reg[7][7]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 8510
load inst {pop_o\.data[1]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 6860
load inst {pop_o\.data[20]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 29620
load inst {pop_o\.data[7]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 14020
load inst fifo_ff_gen.fifo_registers_reg[1][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 32930
load inst fifo_ff_gen.fifo_registers_reg[4][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 9380
load inst fifo_ff_gen.fifo_registers_reg[7][13]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 15710
load inst fifo_ff_gen.fifo_registers_reg[7][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 20030
load inst fifo_ff_gen.fifo_registers_reg[5][34] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 42660
load inst fifo_ff_gen.fifo_registers_reg[2][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 32480
load inst fifo_ff_gen.fifo_registers_reg[4][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 30980
load inst flags_o[push_pointer][0]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 14520
load inst {pop_o\.data[18]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 26730
load inst fifo_ff_gen.fifo_registers_reg[0][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12230
load inst fifo_ff_gen.fifo_registers_reg[5][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 34730
load inst {pop_o\.data[18]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 26670
load inst push_pointer_d_reg[2] LDCE hdi_primitives -attr @cell(#000000) LDCE -pg 1 -lvl 13 -y 41760
load inst fifo_ff_gen.fifo_registers_reg[5][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 28730
load inst fifo_ff_gen.fifo_registers_reg[7][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 5480
load inst {pop_o\.data[18]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 27220
load inst fifo_ff_gen.fifo_registers[0][35]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 40060
load inst fifo_ff_gen.fifo_registers[7][18]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 21700
load inst {pop_o\.data[12]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 20060
load inst {pop_o\.data[5]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 11130
load inst {pop_o\.valid_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 42090
load inst fifo_ff_gen.fifo_registers_reg[3][35] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 40880
load inst fifo_ff_gen.fifo_registers_reg[4][35] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 42510
load inst fifo_ff_gen.fifo_registers_reg[5][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 18980
load inst fifo_ff_gen.fifo_registers_reg[7][2]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 3590
load inst {pop_o\.data[7]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 13910
load inst fifo_ff_gen.fifo_registers_reg[3][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 21680
load inst fifo_ff_gen.fifo_registers_reg[2][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 380
load inst pop_pointer_d_reg[0]_i_1 LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pg 1 -lvl 4 -y 41580
load inst fifo_ff_gen.fifo_registers_reg[7][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 21230
load inst FSM_sequential_cs_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -y 42230
load inst fifo_ff_gen.fifo_registers[7][5]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 6870
load inst {pop_o\.data[6]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 12710
load inst fifo_ff_gen.fifo_registers_reg[0][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 7580
load inst fifo_ff_gen.fifo_registers_reg[1][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 29330
load inst fifo_ff_gen.fifo_registers[7][35]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 41460
load inst flags_o[pop_pointer][2]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 13790
load inst {pop_o\.data[6]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 12310
load inst fifo_ff_gen.fifo_registers_reg[1][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 6380
load inst fifo_ff_gen.fifo_registers[7][35]_i_2 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 41920
load inst {pop_o\.data[29]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 39930
load inst {pop_o\.data[6]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 12670
load inst fifo_ff_gen.fifo_registers_reg[3][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 6080
load inst fifo_ff_gen.fifo_registers_reg[4][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 21380
load inst fifo_ff_gen.fifo_registers_reg[7][14]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 16910
load inst fifo_ff_gen.fifo_registers_reg[7][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 18680
load inst fifo_ff_gen.fifo_registers_reg[7][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 26030
load inst {pop_o\.data[29]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 39870
load inst pop_pointer_q[2]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 10 -y 41620
load inst fifo_ff_gen.fifo_registers_reg[5][33] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 41510
load inst fifo_ff_gen.fifo_registers_reg[5][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11930
load inst {pop_o\.data[29]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 41650
load inst fifo_ff_gen.fifo_registers_reg[0][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 35180
load inst fifo_ff_gen.fifo_registers_reg[4][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 35780
load inst fifo_ff_gen.fifo_registers_reg[4][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 10580
load inst fifo_ff_gen.fifo_registers_reg[5][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 25130
load inst flags_o[empty]_INST_0 OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 42000
load inst {pop_o\.data[1]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 6860
load inst {pop_o\.data[1]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 6120
load inst fifo_ff_gen.fifo_registers_reg[2][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 33680
load inst fifo_ff_gen.fifo_registers_reg[4][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 32180
load inst fifo_ff_gen.fifo_registers_reg[6][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 24680
load inst fifo_ff_gen.fifo_registers_reg[7][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 10430
load inst {pop_o\.data[1]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 6820
load inst fifo_ff_gen.fifo_registers[7][28]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 33700
load inst FSM_sequential_cs[1]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -y 42040
load inst FSM_sequential_cs[1]_i_2 LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pg 1 -lvl 2 -y 42240
load inst fifo_ff_gen.fifo_registers_reg[3][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1130
load inst fifo_ff_gen.fifo_registers[7][24]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 28900
load inst fifo_ff_gen.fifo_registers_reg[4][34] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 42360
load inst fifo_ff_gen.fifo_registers_reg[7][5]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 6880
load inst FSM_sequential_cs[1]_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 41750
load inst fifo_ff_gen.fifo_registers_reg[5][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 17930
load inst fifo_ff_gen.fifo_registers_reg[7][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 9230
load inst fifo_ff_gen.fifo_registers_reg[3][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 20630
load inst flags_o[full]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 14430
load inst {pop_o\.data[19]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 27930
load inst {pop_o\.strb[0]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 2600
load inst fifo_ff_gen.fifo_registers_reg[1][34] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 40580
load inst fifo_ff_gen.fifo_registers_reg[2][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1280
load inst {pop_o\.strb[0]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 700
load inst fifo_ff_gen.fifo_registers_reg[7][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 22280
load inst {pop_o\.strb[0]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 2560
load inst pop_pointer_q_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 41320
load inst fifo_ff_gen.fifo_registers_reg[7][16]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 19310
load inst flags_o[pop_pointer][5]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 14160
load inst flags_o[push_pointer][1]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 14610
load inst {pop_o\.data[24]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 33930
load inst {pop_o\.data[30]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 40570
load inst {pop_o\.data[30]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 40570
load inst fifo_ff_gen.fifo_registers_reg[1][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 4130
load inst fifo_ff_gen.fifo_registers_reg[7][12]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 14520
load inst {pop_o\.data[24]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 33870
load inst {pop_o\.data[30]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 40510
load inst push_pointer_d_reg[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 8 -y 41860
load inst push_pointer_q_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 42110
load inst fifo_ff_gen.fifo_registers_reg[4][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 20180
load inst fifo_ff_gen.fifo_registers_reg[3][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 3830
load inst fifo_ff_gen.fifo_registers_reg[0][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 8780
load inst fifo_ff_gen.fifo_registers_reg[1][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 30530
load inst fifo_ff_gen.fifo_registers_reg[3][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 29030
load inst fifo_ff_gen.fifo_registers_reg[6][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 9080
load inst fifo_ff_gen.fifo_registers_reg[7][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 17630
load inst {pop_o\.data[24]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 34420
load inst {pop_o\.data[30]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 42570
load inst fifo_ff_gen.fifo_registers_reg[5][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 10730
load inst {pop_o\.data[0]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 5560
load inst fifo_ff_gen.fifo_registers_reg[0][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 27980
load inst fifo_ff_gen.fifo_registers_reg[4][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 28580
load inst {pop_o\.data[0]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 3870
load inst flags_o[push_pointer][5]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 15070
load inst {pop_o\.data[0]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 5520
load inst fifo_ff_gen.fifo_registers[1][35]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -y 40230
load inst fifo_ff_gen.fifo_registers_reg[4][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 24980
load inst fifo_ff_gen.fifo_registers_reg[4][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11780
load inst fifo_ff_gen.fifo_registers_reg[5][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 26330
load inst flags_o[push_pointer][7]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 15250
load inst {pop_o\.data[15]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 23660
load inst fifo_ff_gen.fifo_registers[7][0]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 3400
load inst fifo_ff_gen.fifo_registers_reg[6][35] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 43260
load inst fifo_ff_gen.fifo_registers_reg[7][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11630
load inst {pop_o\.data[4]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 9930
load inst fifo_ff_gen.fifo_registers_reg[3][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 830
load inst fifo_ff_gen.fifo_registers_reg[4][33] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 41820
load inst {pop_o\.data[14]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 22310
load inst {pop_o\.data[4]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 9870
load inst fifo_ff_gen.fifo_registers_reg[5][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16730
load inst fifo_ff_gen.fifo_registers_reg[7][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 8030
load inst {pop_o\.data[14]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 21910
load inst {pop_o\.data[4]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 10420
load inst pop_pointer_d_reg[2]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 12 -y 41500
load inst fifo_ff_gen.fifo_registers_reg[3][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 19430
load inst {pop_o\.data[14]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 22270
load inst pop_pointer_d_reg[2]_i_2 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 4 -y 42340
load inst fifo_ff_gen.fifo_registers_reg[2][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 19130
load inst fifo_ff_gen.fifo_registers_reg[6][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 30680
load inst fifo_ff_gen.fifo_registers_reg[1][33] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 40130
load inst fifo_ff_gen.fifo_registers_reg[7][28]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 33710
load inst {pop_o\.strb[1]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 2720
load inst rst_ni_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -y 42250
load inst fifo_ff_gen.fifo_registers_reg[1][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 26930
load inst fifo_ff_gen.fifo_registers_reg[1][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 2330
load inst fifo_ff_gen.fifo_registers_reg[1][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 23330
load inst fifo_ff_gen.fifo_registers_reg[7][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 23630
load inst pop_pointer_q_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 41470
load inst push_pointer_q_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 11 -y 41890
load inst fifo_ff_gen.fifo_registers_reg[7][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16430
load inst fifo_ff_gen.fifo_registers_reg[5][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 9530
load inst fifo_ff_gen.fifo_registers_reg[6][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 13880
load inst push_pointer_q[1]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 10 -y 41920
load inst fifo_ff_gen.fifo_registers_reg[0][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 9980
load inst fifo_ff_gen.fifo_registers_reg[2][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 8480
load inst fifo_ff_gen.fifo_registers_reg[3][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 30230
load inst fifo_ff_gen.fifo_registers_reg[2][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 13280
load inst fifo_ff_gen.fifo_registers_reg[0][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 32780
load inst fifo_ff_gen.fifo_registers_reg[6][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 22130
load inst fifo_ff_gen.fifo_registers_reg[6][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 10280
load inst fifo_ff_gen.fifo_registers_reg[3][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 8630
load inst fifo_ff_gen.fifo_registers_reg[4][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 23780
load inst fifo_ff_gen.fifo_registers_reg[0][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 29180
load inst fifo_ff_gen.fifo_registers_reg[4][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 29780
load inst fifo_ff_gen.fifo_registers_reg[7][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 3530
load inst flags_o[push_pointer][3]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 14890
load inst fifo_ff_gen.fifo_registers_reg[5][35] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 42810
load inst fifo_ff_gen.fifo_registers_reg[6][34] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 42960
load inst fifo_ff_gen.fifo_registers_reg[7][11]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 13400
load inst {pop_o\.data[16]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 24330
load inst {pop_o\.strb[0]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 2600
load inst push_pointer_q[2]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 10 -y 42200
load inst fifo_ff_gen.fifo_registers_reg[4][32] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 39380
load inst {pop_o\.data[13]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 20730
load inst fifo_ff_gen.fifo_registers_reg[5][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 15530
load inst flags_o[pop_pointer][6]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 14250
load inst {pop_o\.data[13]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 20670
load inst {pop_o\.strb[2]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 2840
load inst fifo_ff_gen.fifo_registers_reg[3][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 18080
load inst fifo_ff_gen.fifo_registers[7][4]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 6780
load inst flags_o[pop_pointer][1]_INST_0 OBUFT hdi_primitives -attr @cell(#000000) OBUFT -pg 1 -lvl 18 -y 13700
load inst {pop_o\.data[13]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 21220
load inst fifo_ff_gen.fifo_registers_reg[2][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 16880
load inst fifo_ff_gen.fifo_registers_reg[3][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 2030
load inst pop_pointer_d_reg[1] LDCE hdi_primitives -attr @cell(#000000) LDCE -pg 1 -lvl 9 -y 41440
load inst fifo_ff_gen.fifo_registers_reg[6][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 31880
load inst fifo_ff_gen.fifo_registers[7][11]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 13390
load inst fifo_ff_gen.fifo_registers_reg[7][25]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 30110
load inst {pop_o\.data[22]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 31530
load inst fifo_ff_gen.fifo_registers_reg[1][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 1730
load inst fifo_ff_gen.fifo_registers_reg[1][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 21980
load inst {pop_o\.data[22]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 31470
load inst {pop_o\.data[23]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 32730
load inst push_pointer_q_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -y 41810
load inst fifo_ff_gen.fifo_registers_reg[1][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 28130
load inst fifo_ff_gen.fifo_registers_reg[3][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 26630
load inst fifo_ff_gen.fifo_registers_reg[4][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 5180
load inst fifo_ff_gen.fifo_registers_reg[6][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 6680
load inst fifo_ff_gen.fifo_registers_reg[7][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 15230
load inst {pop_o\.data[10]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 17130
load inst {pop_o\.data[22]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 32020
load inst {pop_o\.data[23]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 32670
load inst {pop_o\.data[9]_INST_0_i_1} MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 17 -y 15930
load inst fifo_ff_gen.fifo_registers[7][26]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 31300
load inst fifo_ff_gen.fifo_registers_reg[5][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 37130
load inst fifo_ff_gen.fifo_registers_reg[5][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 8330
load inst fifo_ff_gen.fifo_registers_reg[6][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 12530
load inst {pop_o\.data[10]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 17070
load inst {pop_o\.data[23]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 33220
load inst {pop_o\.data[27]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 37530
load inst {pop_o\.data[9]_INST_0_i_2} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 15870
load inst fifo_ff_gen.fifo_registers_reg[4][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 26180
load inst fifo_ff_gen.fifo_registers_reg[4][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 2480
load inst fifo_ff_gen.fifo_registers_reg[2][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 13130
load inst FSM_sequential_cs_reg[1]_i_4 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -y 42180
load inst fifo_ff_gen.fifo_registers_reg[0][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 25580
load inst fifo_ff_gen.fifo_registers_reg[5][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 23930
load inst {pop_o\.data[10]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 17620
load inst {pop_o\.data[4]_INST_0} OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 18 -y 9930
load inst {pop_o\.data[9]_INST_0_i_3} LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -y 16420
load inst FSM_sequential_cs_reg[1]_i_5 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -y 42320
load inst fifo_ff_gen.fifo_registers_reg[7][6]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 7310
load inst pop_pointer_q_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -y 41610
load inst fifo_ff_gen.fifo_registers_reg[0][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 33980
load inst fifo_ff_gen.fifo_registers[7][16]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -y 19300
load inst fifo_ff_gen.fifo_registers_reg[3][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 7430
load inst fifo_ff_gen.fifo_registers_reg[0][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 11180
load inst fifo_ff_gen.fifo_registers_reg[2][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 9680
load inst fifo_ff_gen.fifo_registers_reg[4][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 22430
load inst fifo_ff_gen.fifo_registers_reg[6][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 23480
load inst fifo_ff_gen.fifo_registers_reg[7][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 3380
load inst fifo_ff_gen.fifo_registers_reg[6][33] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 42210
load inst fifo_ff_gen.fifo_registers_reg[7][19]_i_2 IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 13 -y 22910
load inst fifo_ff_gen.fifo_registers_reg[7][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -y 29630
load net fifo_ff_gen.fifo_registers_reg[1]__0[31] -pin fifo_ff_gen.fifo_registers_reg[1][31] Q -pin {pop_o\.data[27]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[31] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[2]__0[20] -pin fifo_ff_gen.fifo_registers_reg[2][20] Q -pin {pop_o\.data[16]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[20] 1 15 1 5400
load net {pop_o\.data[24]} -attr @rip(#000000) 24 -port {pop_o\.data[24]} -pin {pop_o\.data[24]_INST_0} O
load net {pop_o\.data_OBUF[25]} -pin {pop_o\.data[25]_INST_0} I -pin {pop_o\.data[25]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[25]} 1 17 1 N
load net {push_i\.strb[0]} -attr @rip(#000000) {push_i\.strb[0]} -pin fifo_ff_gen.fifo_registers_reg[7][0]_i_2 I -port {push_i\.strb[0]}
load net fifo_ff_gen.fifo_registers_reg[3]__0[10] -pin fifo_ff_gen.fifo_registers_reg[3][10] Q -pin {pop_o\.data[6]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[10] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[7]__0[11] -pin fifo_ff_gen.fifo_registers_reg[7][11] Q -pin {pop_o\.data[7]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[11] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[28] -pin fifo_ff_gen.fifo_registers_reg[4][28] Q -pin {pop_o\.data[24]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[28] 1 15 1 5580
load net {pop_o\.data[10]_INST_0_i_2_n_0} -pin {pop_o\.data[10]_INST_0_i_1} I0 -pin {pop_o\.data[10]_INST_0_i_2} O
netloc {pop_o\.data[10]_INST_0_i_2_n_0} 1 16 1 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[7] -pin fifo_ff_gen.fifo_registers_reg[4][7] Q -pin {pop_o\.data[3]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[7] 1 15 1 5400
load net {pop_o\.data[4]} -attr @rip(#000000) 4 -port {pop_o\.data[4]} -pin {pop_o\.data[4]_INST_0} O
load net {pop_o\.data[5]_INST_0_i_3_n_0} -pin {pop_o\.data[5]_INST_0_i_1} I1 -pin {pop_o\.data[5]_INST_0_i_3} O
netloc {pop_o\.data[5]_INST_0_i_3_n_0} 1 16 1 5840
load net fifo_ff_gen.fifo_registers_reg[0]__0[34] -pin fifo_ff_gen.fifo_registers_reg[0][34] Q -pin {pop_o\.data[30]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[34] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7][7]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][7]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][7]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][7]_i_2_n_0 1 13 1 N
load net fifo_ff_gen.fifo_registers_reg[0]__0[7] -pin fifo_ff_gen.fifo_registers_reg[0][7] Q -pin {pop_o\.data[3]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[7] 1 15 1 N
load net pop_pointer_d_reg[0]_i_1_n_0 -pin pop_pointer_d_reg[0] D -pin pop_pointer_d_reg[0]_i_1 O
netloc pop_pointer_d_reg[0]_i_1_n_0 1 4 1 NJ
load net fifo_ff_gen.fifo_registers[7][35]_i_1_n_0 -pin fifo_ff_gen.fifo_registers[7][35]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[7][0] CE -pin fifo_ff_gen.fifo_registers_reg[7][10] CE -pin fifo_ff_gen.fifo_registers_reg[7][11] CE -pin fifo_ff_gen.fifo_registers_reg[7][12] CE -pin fifo_ff_gen.fifo_registers_reg[7][13] CE -pin fifo_ff_gen.fifo_registers_reg[7][14] CE -pin fifo_ff_gen.fifo_registers_reg[7][15] CE -pin fifo_ff_gen.fifo_registers_reg[7][16] CE -pin fifo_ff_gen.fifo_registers_reg[7][17] CE -pin fifo_ff_gen.fifo_registers_reg[7][18] CE -pin fifo_ff_gen.fifo_registers_reg[7][19] CE -pin fifo_ff_gen.fifo_registers_reg[7][1] CE -pin fifo_ff_gen.fifo_registers_reg[7][20] CE -pin fifo_ff_gen.fifo_registers_reg[7][21] CE -pin fifo_ff_gen.fifo_registers_reg[7][22] CE -pin fifo_ff_gen.fifo_registers_reg[7][23] CE -pin fifo_ff_gen.fifo_registers_reg[7][24] CE -pin fifo_ff_gen.fifo_registers_reg[7][25] CE -pin fifo_ff_gen.fifo_registers_reg[7][26] CE -pin fifo_ff_gen.fifo_registers_reg[7][27] CE -pin fifo_ff_gen.fifo_registers_reg[7][28] CE -pin fifo_ff_gen.fifo_registers_reg[7][29] CE -pin fifo_ff_gen.fifo_registers_reg[7][2] CE -pin fifo_ff_gen.fifo_registers_reg[7][30] CE -pin fifo_ff_gen.fifo_registers_reg[7][31] CE -pin fifo_ff_gen.fifo_registers_reg[7][32] CE -pin fifo_ff_gen.fifo_registers_reg[7][33] CE -pin fifo_ff_gen.fifo_registers_reg[7][34] CE -pin fifo_ff_gen.fifo_registers_reg[7][35] CE -pin fifo_ff_gen.fifo_registers_reg[7][3] CE -pin fifo_ff_gen.fifo_registers_reg[7][4] CE -pin fifo_ff_gen.fifo_registers_reg[7][5] CE -pin fifo_ff_gen.fifo_registers_reg[7][6] CE -pin fifo_ff_gen.fifo_registers_reg[7][7] CE -pin fifo_ff_gen.fifo_registers_reg[7][8] CE -pin fifo_ff_gen.fifo_registers_reg[7][9] CE
netloc fifo_ff_gen.fifo_registers[7][35]_i_1_n_0 1 14 1 4740
load net fifo_ff_gen.fifo_registers_reg[6]__0[12] -pin fifo_ff_gen.fifo_registers_reg[6][12] Q -pin {pop_o\.data[8]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[12] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7]__0[23] -pin fifo_ff_gen.fifo_registers_reg[7][23] Q -pin {pop_o\.data[19]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[23] 1 15 1 N
load net {pop_o\.data_OBUF[19]} -pin {pop_o\.data[19]_INST_0} I -pin {pop_o\.data[19]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[19]} 1 17 1 N
load net push_pointer_d_reg[2]_i_1_n_0 -pin push_pointer_d_reg[2] D -pin push_pointer_d_reg[2]_i_1 O
netloc push_pointer_d_reg[2]_i_1_n_0 1 12 1 3710
load net fifo_ff_gen.fifo_registers_reg[1]__0[8] -pin fifo_ff_gen.fifo_registers_reg[1][8] Q -pin {pop_o\.data[4]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[8] 1 15 1 5380
load net fifo_registers[17] -pin fifo_ff_gen.fifo_registers[7][17]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][17] D -pin fifo_ff_gen.fifo_registers_reg[1][17] D -pin fifo_ff_gen.fifo_registers_reg[2][17] D -pin fifo_ff_gen.fifo_registers_reg[3][17] D -pin fifo_ff_gen.fifo_registers_reg[4][17] D -pin fifo_ff_gen.fifo_registers_reg[5][17] D -pin fifo_ff_gen.fifo_registers_reg[6][17] D -pin fifo_ff_gen.fifo_registers_reg[7][17] D
netloc fifo_registers[17] 1 14 1 5040
load net pop_pointer_d_reg[2]_i_1_n_0 -pin pop_pointer_d_reg[2] D -pin pop_pointer_d_reg[2]_i_1 O
netloc pop_pointer_d_reg[2]_i_1_n_0 1 12 1 3770
load net fifo_ff_gen.fifo_registers_reg[5]__0[29] -pin fifo_ff_gen.fifo_registers_reg[5][29] Q -pin {pop_o\.data[25]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[29] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[6]__0[29] -pin fifo_ff_gen.fifo_registers_reg[6][29] Q -pin {pop_o\.data[25]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[29] 1 15 1 5380
load net {pop_o\.data[30]} -attr @rip(#000000) 30 -port {pop_o\.data[30]} -pin {pop_o\.data[30]_INST_0} O
load net {pop_o\.data_OBUF[11]} -pin {pop_o\.data[11]_INST_0} I -pin {pop_o\.data[11]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[11]} 1 17 1 N
load net {push_i\.data[0]} -attr @rip(#000000) {push_i\.data[0]} -pin fifo_ff_gen.fifo_registers_reg[7][4]_i_2 I -port {push_i\.data[0]}
load net fifo_ff_gen.fifo_registers_reg[5]__0[16] -pin fifo_ff_gen.fifo_registers_reg[5][16] Q -pin {pop_o\.data[12]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[16] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[1]__0[5] -pin fifo_ff_gen.fifo_registers_reg[1][5] Q -pin {pop_o\.data[1]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[5] 1 15 1 5420
load net fifo_ff_gen.fifo_registers_reg[2]__0[25] -pin fifo_ff_gen.fifo_registers_reg[2][25] Q -pin {pop_o\.data[21]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[25] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[1]__0[21] -pin fifo_ff_gen.fifo_registers_reg[1][21] Q -pin {pop_o\.data[17]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[21] 1 15 1 5560
load net {pop_o\.data[28]_INST_0_i_2_n_0} -pin {pop_o\.data[28]_INST_0_i_1} I0 -pin {pop_o\.data[28]_INST_0_i_2} O
netloc {pop_o\.data[28]_INST_0_i_2_n_0} 1 16 1 N
load net {pop_o\.ready} -pin FSM_sequential_cs_reg[1]_i_5 I -port {pop_o\.ready}
netloc {pop_o\.ready} 1 0 1 NJ
load net fifo_ff_gen.fifo_registers_reg[3]__0[27] -pin fifo_ff_gen.fifo_registers_reg[3][27] Q -pin {pop_o\.data[23]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[27] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7]__0[7] -pin fifo_ff_gen.fifo_registers_reg[7][7] Q -pin {pop_o\.data[3]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[7] 1 15 1 N
load net {pop_o\.data[6]_INST_0_i_2_n_0} -pin {pop_o\.data[6]_INST_0_i_1} I0 -pin {pop_o\.data[6]_INST_0_i_2} O
netloc {pop_o\.data[6]_INST_0_i_2_n_0} 1 16 1 5960
load net {push_i\.data[24]} -attr @rip(#000000) {push_i\.data[24]} -pin fifo_ff_gen.fifo_registers_reg[7][28]_i_2 I -port {push_i\.data[24]}
load net fifo_ff_gen.fifo_registers_reg[0]__0[0] -pin fifo_ff_gen.fifo_registers_reg[0][0] Q -pin {pop_o\.strb[0]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[0] 1 15 1 5520
load net fifo_ff_gen.fifo_registers_reg[6]__0[34] -pin fifo_ff_gen.fifo_registers_reg[6][34] Q -pin {pop_o\.data[30]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[34] 1 15 1 5540
load net push_pointer_d_reg[1]_i_1_n_0 -pin push_pointer_d_reg[1] D -pin push_pointer_d_reg[1]_i_1 O
netloc push_pointer_d_reg[1]_i_1_n_0 1 8 1 N
load net fifo_ff_gen.fifo_registers_reg[0]__0[15] -pin fifo_ff_gen.fifo_registers_reg[0][15] Q -pin {pop_o\.data[11]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[15] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[0]__0[22] -pin fifo_ff_gen.fifo_registers_reg[0][22] Q -pin {pop_o\.data[18]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[22] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[7][20]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][20]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][20]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][20]_i_2_n_0 1 13 1 N
load net fifo_registers[4] -pin fifo_ff_gen.fifo_registers[7][4]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][4] D -pin fifo_ff_gen.fifo_registers_reg[1][4] D -pin fifo_ff_gen.fifo_registers_reg[2][4] D -pin fifo_ff_gen.fifo_registers_reg[3][4] D -pin fifo_ff_gen.fifo_registers_reg[4][4] D -pin fifo_ff_gen.fifo_registers_reg[5][4] D -pin fifo_ff_gen.fifo_registers_reg[6][4] D -pin fifo_ff_gen.fifo_registers_reg[7][4] D
netloc fifo_registers[4] 1 14 1 4900
load net {pop_o\.data[11]_INST_0_i_2_n_0} -pin {pop_o\.data[11]_INST_0_i_1} I0 -pin {pop_o\.data[11]_INST_0_i_2} O
netloc {pop_o\.data[11]_INST_0_i_2_n_0} 1 16 1 5840
load net {pop_o\.strb[0]_INST_0_i_3_n_0} -pin {pop_o\.strb[0]_INST_0_i_1} I1 -pin {pop_o\.strb[0]_INST_0_i_3} O
netloc {pop_o\.strb[0]_INST_0_i_3_n_0} 1 16 1 N
load net {push_i\.data[11]} -attr @rip(#000000) {push_i\.data[11]} -pin fifo_ff_gen.fifo_registers_reg[7][15]_i_2 I -port {push_i\.data[11]}
load net fifo_registers[1] -pin fifo_ff_gen.fifo_registers[7][1]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][1] D -pin fifo_ff_gen.fifo_registers_reg[1][1] D -pin fifo_ff_gen.fifo_registers_reg[2][1] D -pin fifo_ff_gen.fifo_registers_reg[3][1] D -pin fifo_ff_gen.fifo_registers_reg[4][1] D -pin fifo_ff_gen.fifo_registers_reg[5][1] D -pin fifo_ff_gen.fifo_registers_reg[6][1] D -pin fifo_ff_gen.fifo_registers_reg[7][1] D
netloc fifo_registers[1] 1 14 1 4960
load net {pop_o\.data[21]_INST_0_i_2_n_0} -pin {pop_o\.data[21]_INST_0_i_1} I0 -pin {pop_o\.data[21]_INST_0_i_2} O
netloc {pop_o\.data[21]_INST_0_i_2_n_0} 1 16 1 N
load net {pop_o\.data[23]} -attr @rip(#000000) 23 -port {pop_o\.data[23]} -pin {pop_o\.data[23]_INST_0} O
load net {pop_o\.data_OBUF[24]} -pin {pop_o\.data[24]_INST_0} I -pin {pop_o\.data[24]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[24]} 1 17 1 N
load net VCC_2 -power -pin pop_pointer_d_reg[0] GE -pin pop_pointer_d_reg[1] GE -pin pop_pointer_d_reg[2] GE -pin push_pointer_d_reg[0] GE -pin push_pointer_d_reg[1] GE -pin push_pointer_d_reg[2] GE
load net fifo_ff_gen.fifo_registers_reg[2]__0[21] -pin fifo_ff_gen.fifo_registers_reg[2][21] Q -pin {pop_o\.data[17]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[21] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[1]__0[32] -pin fifo_ff_gen.fifo_registers_reg[1][32] Q -pin {pop_o\.data[28]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[32] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[3]__0[0] -pin fifo_ff_gen.fifo_registers_reg[3][0] Q -pin {pop_o\.strb[0]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[0] 1 15 1 5380
load net push_pointer_d_reg[2]_i_2_n_0 -pin push_pointer_d_reg[0] G -pin push_pointer_d_reg[1] G -pin push_pointer_d_reg[2] G -pin push_pointer_d_reg[2]_i_2 O
netloc push_pointer_d_reg[2]_i_2_n_0 1 4 9 1310 41950 NJ 41950 NJ 41950 NJ 41950 2410 41790 NJ 41790 NJ 41790 3330J 41850 3770
load net fifo_ff_gen.fifo_registers_reg[7]__0[12] -pin fifo_ff_gen.fifo_registers_reg[7][12] Q -pin {pop_o\.data[8]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[12] 1 15 1 N
load net flags_o[empty] -port flags_o[empty] -pin flags_o[empty]_INST_0 O
netloc flags_o[empty] 1 18 1 NJ
load net {pop_o\.data[1]_INST_0_i_3_n_0} -pin {pop_o\.data[1]_INST_0_i_1} I1 -pin {pop_o\.data[1]_INST_0_i_3} O
netloc {pop_o\.data[1]_INST_0_i_3_n_0} 1 16 1 N
load net {pop_o\.data_OBUF[4]} -pin {pop_o\.data[4]_INST_0} I -pin {pop_o\.data[4]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[4]} 1 17 1 N
load net {pop_o\.data[30]_INST_0_i_2_n_0} -pin {pop_o\.data[30]_INST_0_i_1} I0 -pin {pop_o\.data[30]_INST_0_i_2} O
netloc {pop_o\.data[30]_INST_0_i_2_n_0} 1 16 1 N
load net {pop_o\.data[3]_INST_0_i_2_n_0} -pin {pop_o\.data[3]_INST_0_i_1} I0 -pin {pop_o\.data[3]_INST_0_i_2} O
netloc {pop_o\.data[3]_INST_0_i_2_n_0} 1 16 1 N
load net {push_i\.data[5]} -attr @rip(#000000) {push_i\.data[5]} -pin fifo_ff_gen.fifo_registers_reg[7][9]_i_2 I -port {push_i\.data[5]}
load net fifo_ff_gen.fifo_registers_reg[4]__0[8] -pin fifo_ff_gen.fifo_registers_reg[4][8] Q -pin {pop_o\.data[4]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[8] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[7][3]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][3]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][3]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][3]_i_2_n_0 1 13 1 N
load net {pop_o\.data[12]} -attr @rip(#000000) 12 -port {pop_o\.data[12]} -pin {pop_o\.data[12]_INST_0} O
load net {pop_o\.data[5]} -attr @rip(#000000) 5 -port {pop_o\.data[5]} -pin {pop_o\.data[5]_INST_0} O
load net fifo_ff_gen.fifo_registers_reg[2]__0[15] -pin fifo_ff_gen.fifo_registers_reg[2][15] Q -pin {pop_o\.data[11]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[15] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7]__0[22] -pin fifo_ff_gen.fifo_registers_reg[7][22] Q -pin {pop_o\.data[18]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[22] 1 15 1 N
load net {pop_o\.data_OBUF[18]} -pin {pop_o\.data[18]_INST_0} I -pin {pop_o\.data[18]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[18]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[15] -pin fifo_ff_gen.fifo_registers_reg[4][15] Q -pin {pop_o\.data[11]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[15] 1 15 1 5420
load net fifo_ff_gen.fifo_registers_reg[0]__0[8] -pin fifo_ff_gen.fifo_registers_reg[0][8] Q -pin {pop_o\.data[4]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[8] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[0]__0[27] -pin fifo_ff_gen.fifo_registers_reg[0][27] Q -pin {pop_o\.data[23]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[27] 1 15 1 N
load net {pop_o\.data[22]_INST_0_i_2_n_0} -pin {pop_o\.data[22]_INST_0_i_1} I0 -pin {pop_o\.data[22]_INST_0_i_2} O
netloc {pop_o\.data[22]_INST_0_i_2_n_0} 1 16 1 N
load net <const0> -ground -pin flags_o[full]_INST_0 I -pin flags_o[pop_pointer][0]_INST_0 I -pin flags_o[pop_pointer][1]_INST_0 I -pin flags_o[pop_pointer][2]_INST_0 I -pin flags_o[pop_pointer][3]_INST_0 I -pin flags_o[pop_pointer][4]_INST_0 I -pin flags_o[pop_pointer][5]_INST_0 I -pin flags_o[pop_pointer][6]_INST_0 I -pin flags_o[pop_pointer][7]_INST_0 I -pin flags_o[push_pointer][0]_INST_0 I -pin flags_o[push_pointer][1]_INST_0 I -pin flags_o[push_pointer][2]_INST_0 I -pin flags_o[push_pointer][3]_INST_0 I -pin flags_o[push_pointer][4]_INST_0 I -pin flags_o[push_pointer][5]_INST_0 I -pin flags_o[push_pointer][6]_INST_0 I -pin flags_o[push_pointer][7]_INST_0 I
load net fifo_ff_gen.fifo_registers_reg[5]__0[28] -pin fifo_ff_gen.fifo_registers_reg[5][28] Q -pin {pop_o\.data[24]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[28] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[5]__0[8] -pin fifo_ff_gen.fifo_registers_reg[5][8] Q -pin {pop_o\.data[4]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[8] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[6]__0[0] -pin fifo_ff_gen.fifo_registers_reg[6][0] Q -pin {pop_o\.strb[0]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[0] 1 15 1 5380
load net {pop_o\.data[17]_INST_0_i_3_n_0} -pin {pop_o\.data[17]_INST_0_i_1} I1 -pin {pop_o\.data[17]_INST_0_i_3} O
netloc {pop_o\.data[17]_INST_0_i_3_n_0} 1 16 1 5960
load net {pop_o\.data[20]_INST_0_i_3_n_0} -pin {pop_o\.data[20]_INST_0_i_1} I1 -pin {pop_o\.data[20]_INST_0_i_3} O
netloc {pop_o\.data[20]_INST_0_i_3_n_0} 1 16 1 5960
load net {pop_o\.data[26]_INST_0_i_2_n_0} -pin {pop_o\.data[26]_INST_0_i_1} I0 -pin {pop_o\.data[26]_INST_0_i_2} O
netloc {pop_o\.data[26]_INST_0_i_2_n_0} 1 16 1 N
load net fifo_ff_gen.fifo_registers_reg[1]__0[9] -pin fifo_ff_gen.fifo_registers_reg[1][9] Q -pin {pop_o\.data[5]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[9] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[1]__0[20] -pin fifo_ff_gen.fifo_registers_reg[1][20] Q -pin {pop_o\.data[16]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[20] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7][10]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][10]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][10]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][10]_i_2_n_0 1 13 1 N
load net fifo_registers[18] -pin fifo_ff_gen.fifo_registers[7][18]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][18] D -pin fifo_ff_gen.fifo_registers_reg[1][18] D -pin fifo_ff_gen.fifo_registers_reg[2][18] D -pin fifo_ff_gen.fifo_registers_reg[3][18] D -pin fifo_ff_gen.fifo_registers_reg[4][18] D -pin fifo_ff_gen.fifo_registers_reg[5][18] D -pin fifo_ff_gen.fifo_registers_reg[6][18] D -pin fifo_ff_gen.fifo_registers_reg[7][18] D
netloc fifo_registers[18] 1 14 1 5040
load net {pop_o\.data[28]_INST_0_i_3_n_0} -pin {pop_o\.data[28]_INST_0_i_1} I1 -pin {pop_o\.data[28]_INST_0_i_3} O
netloc {pop_o\.data[28]_INST_0_i_3_n_0} 1 16 1 5960
load net fifo_ff_gen.fifo_registers_reg[3]__0[26] -pin fifo_ff_gen.fifo_registers_reg[3][26] Q -pin {pop_o\.data[22]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[26] 1 15 1 5380
load net fifo_ff_gen.fifo_registers[3][35]_i_1_n_0 -pin fifo_ff_gen.fifo_registers[3][35]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[3][0] CE -pin fifo_ff_gen.fifo_registers_reg[3][10] CE -pin fifo_ff_gen.fifo_registers_reg[3][11] CE -pin fifo_ff_gen.fifo_registers_reg[3][12] CE -pin fifo_ff_gen.fifo_registers_reg[3][13] CE -pin fifo_ff_gen.fifo_registers_reg[3][14] CE -pin fifo_ff_gen.fifo_registers_reg[3][15] CE -pin fifo_ff_gen.fifo_registers_reg[3][16] CE -pin fifo_ff_gen.fifo_registers_reg[3][17] CE -pin fifo_ff_gen.fifo_registers_reg[3][18] CE -pin fifo_ff_gen.fifo_registers_reg[3][19] CE -pin fifo_ff_gen.fifo_registers_reg[3][1] CE -pin fifo_ff_gen.fifo_registers_reg[3][20] CE -pin fifo_ff_gen.fifo_registers_reg[3][21] CE -pin fifo_ff_gen.fifo_registers_reg[3][22] CE -pin fifo_ff_gen.fifo_registers_reg[3][23] CE -pin fifo_ff_gen.fifo_registers_reg[3][24] CE -pin fifo_ff_gen.fifo_registers_reg[3][25] CE -pin fifo_ff_gen.fifo_registers_reg[3][26] CE -pin fifo_ff_gen.fifo_registers_reg[3][27] CE -pin fifo_ff_gen.fifo_registers_reg[3][28] CE -pin fifo_ff_gen.fifo_registers_reg[3][29] CE -pin fifo_ff_gen.fifo_registers_reg[3][2] CE -pin fifo_ff_gen.fifo_registers_reg[3][30] CE -pin fifo_ff_gen.fifo_registers_reg[3][31] CE -pin fifo_ff_gen.fifo_registers_reg[3][32] CE -pin fifo_ff_gen.fifo_registers_reg[3][33] CE -pin fifo_ff_gen.fifo_registers_reg[3][34] CE -pin fifo_ff_gen.fifo_registers_reg[3][35] CE -pin fifo_ff_gen.fifo_registers_reg[3][3] CE -pin fifo_ff_gen.fifo_registers_reg[3][4] CE -pin fifo_ff_gen.fifo_registers_reg[3][5] CE -pin fifo_ff_gen.fifo_registers_reg[3][6] CE -pin fifo_ff_gen.fifo_registers_reg[3][7] CE -pin fifo_ff_gen.fifo_registers_reg[3][8] CE -pin fifo_ff_gen.fifo_registers_reg[3][9] CE
netloc fifo_ff_gen.fifo_registers[3][35]_i_1_n_0 1 14 1 4940
load net {pop_o\.data[13]} -attr @rip(#000000) 13 -port {pop_o\.data[13]} -pin {pop_o\.data[13]_INST_0} O
load net {pop_o\.data[18]_INST_0_i_2_n_0} -pin {pop_o\.data[18]_INST_0_i_1} I0 -pin {pop_o\.data[18]_INST_0_i_2} O
netloc {pop_o\.data[18]_INST_0_i_2_n_0} 1 16 1 N
load net {pop_o\.data[2]_INST_0_i_2_n_0} -pin {pop_o\.data[2]_INST_0_i_1} I0 -pin {pop_o\.data[2]_INST_0_i_2} O
netloc {pop_o\.data[2]_INST_0_i_2_n_0} 1 16 1 N
load net {pop_o\.data_OBUF[12]} -pin {pop_o\.data[12]_INST_0} I -pin {pop_o\.data[12]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[12]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[1]__0[6] -pin fifo_ff_gen.fifo_registers_reg[1][6] Q -pin {pop_o\.data[2]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[6] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[2]__0[26] -pin fifo_ff_gen.fifo_registers_reg[2][26] Q -pin {pop_o\.data[22]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[26] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[0]__0[14] -pin fifo_ff_gen.fifo_registers_reg[0][14] Q -pin {pop_o\.data[10]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[14] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[0]__0[19] -pin fifo_ff_gen.fifo_registers_reg[0][19] Q -pin {pop_o\.data[15]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[19] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[7]__0[8] -pin fifo_ff_gen.fifo_registers_reg[7][8] Q -pin {pop_o\.data[4]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[8] 1 15 1 N
load net pop_pointer_d0 -pin pop_pointer_d_reg[0] G -pin pop_pointer_d_reg[1] G -pin pop_pointer_d_reg[2] G -pin pop_pointer_d_reg[2]_i_2 O
netloc pop_pointer_d0 1 4 9 1290 41690 NJ 41690 NJ 41690 NJ 41690 2410 41570 NJ 41570 NJ 41570 3390J 41610 3730
load net pop_pointer_q[0] -pin {pop_o\.data[0]_INST_0_i_2} I4 -pin {pop_o\.data[0]_INST_0_i_3} I4 -pin {pop_o\.data[10]_INST_0_i_2} I4 -pin {pop_o\.data[10]_INST_0_i_3} I4 -pin {pop_o\.data[11]_INST_0_i_2} I4 -pin {pop_o\.data[11]_INST_0_i_3} I4 -pin {pop_o\.data[12]_INST_0_i_2} I4 -pin {pop_o\.data[12]_INST_0_i_3} I4 -pin {pop_o\.data[13]_INST_0_i_2} I4 -pin {pop_o\.data[13]_INST_0_i_3} I4 -pin {pop_o\.data[14]_INST_0_i_2} I4 -pin {pop_o\.data[14]_INST_0_i_3} I4 -pin {pop_o\.data[15]_INST_0_i_2} I4 -pin {pop_o\.data[15]_INST_0_i_3} I4 -pin {pop_o\.data[16]_INST_0_i_2} I4 -pin {pop_o\.data[16]_INST_0_i_3} I4 -pin {pop_o\.data[17]_INST_0_i_2} I4 -pin {pop_o\.data[17]_INST_0_i_3} I4 -pin {pop_o\.data[18]_INST_0_i_2} I4 -pin {pop_o\.data[18]_INST_0_i_3} I4 -pin {pop_o\.data[19]_INST_0_i_2} I4 -pin {pop_o\.data[19]_INST_0_i_3} I4 -pin {pop_o\.data[1]_INST_0_i_2} I4 -pin {pop_o\.data[1]_INST_0_i_3} I4 -pin {pop_o\.data[20]_INST_0_i_2} I4 -pin {pop_o\.data[20]_INST_0_i_3} I4 -pin {pop_o\.data[21]_INST_0_i_2} I4 -pin {pop_o\.data[21]_INST_0_i_3} I4 -pin {pop_o\.data[22]_INST_0_i_2} I4 -pin {pop_o\.data[22]_INST_0_i_3} I4 -pin {pop_o\.data[23]_INST_0_i_2} I4 -pin {pop_o\.data[23]_INST_0_i_3} I4 -pin {pop_o\.data[24]_INST_0_i_2} I4 -pin {pop_o\.data[24]_INST_0_i_3} I4 -pin {pop_o\.data[25]_INST_0_i_2} I4 -pin {pop_o\.data[25]_INST_0_i_3} I4 -pin {pop_o\.data[26]_INST_0_i_2} I4 -pin {pop_o\.data[26]_INST_0_i_3} I4 -pin {pop_o\.data[27]_INST_0_i_2} I4 -pin {pop_o\.data[27]_INST_0_i_3} I4 -pin {pop_o\.data[28]_INST_0_i_2} I4 -pin {pop_o\.data[28]_INST_0_i_3} I4 -pin {pop_o\.data[29]_INST_0_i_2} I4 -pin {pop_o\.data[29]_INST_0_i_3} I4 -pin {pop_o\.data[2]_INST_0_i_2} I4 -pin {pop_o\.data[2]_INST_0_i_3} I4 -pin {pop_o\.data[30]_INST_0_i_2} I4 -pin {pop_o\.data[30]_INST_0_i_3} I4 -pin {pop_o\.data[31]_INST_0_i_2} I4 -pin {pop_o\.data[31]_INST_0_i_3} I4 -pin {pop_o\.data[3]_INST_0_i_2} I4 -pin {pop_o\.data[3]_INST_0_i_3} I4 -pin {pop_o\.data[4]_INST_0_i_2} I4 -pin {pop_o\.data[4]_INST_0_i_3} I4 -pin {pop_o\.data[5]_INST_0_i_2} I4 -pin {pop_o\.data[5]_INST_0_i_3} I4 -pin {pop_o\.data[6]_INST_0_i_2} I4 -pin {pop_o\.data[6]_INST_0_i_3} I4 -pin {pop_o\.data[7]_INST_0_i_2} I4 -pin {pop_o\.data[7]_INST_0_i_3} I4 -pin {pop_o\.data[8]_INST_0_i_2} I4 -pin {pop_o\.data[8]_INST_0_i_3} I4 -pin {pop_o\.data[9]_INST_0_i_2} I4 -pin {pop_o\.data[9]_INST_0_i_3} I4 -pin {pop_o\.strb[0]_INST_0_i_2} I4 -pin {pop_o\.strb[0]_INST_0_i_3} I4 -pin {pop_o\.strb[1]_INST_0_i_2} I4 -pin {pop_o\.strb[1]_INST_0_i_3} I4 -pin {pop_o\.strb[2]_INST_0_i_2} I4 -pin {pop_o\.strb[2]_INST_0_i_3} I4 -pin {pop_o\.strb[3]_INST_0_i_2} I4 -pin {pop_o\.strb[3]_INST_0_i_3} I4 -pin pop_pointer_d_reg[0]_i_1 I0 -pin pop_pointer_d_reg[1]_i_1 I0 -pin pop_pointer_d_reg[2]_i_1 I0 -pin pop_pointer_q_reg[0] Q
netloc pop_pointer_q[0] 1 3 13 1030 41510 NJ 41510 NJ 41510 NJ 41510 2110 41590 NJ 41590 NJ 41590 NJ 41590 3410 41670 NJ 41670 NJ 41670 4720J 41740 5480
load net {push_i\.data[25]} -attr @rip(#000000) {push_i\.data[25]} -pin fifo_ff_gen.fifo_registers_reg[7][29]_i_2 I -port {push_i\.data[25]}
load net {push_i\.data[10]} -attr @rip(#000000) {push_i\.data[10]} -pin fifo_ff_gen.fifo_registers_reg[7][14]_i_2 I -port {push_i\.data[10]}
load net fifo_ff_gen.fifo_registers_reg[0]__0[23] -pin fifo_ff_gen.fifo_registers_reg[0][23] Q -pin {pop_o\.data[19]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[23] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[11] -pin fifo_ff_gen.fifo_registers_reg[4][11] Q -pin {pop_o\.data[7]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[11] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[6]__0[19] -pin fifo_ff_gen.fifo_registers_reg[6][19] Q -pin {pop_o\.data[15]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[19] 1 15 1 5380
load net fifo_registers[5] -pin fifo_ff_gen.fifo_registers[7][5]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][5] D -pin fifo_ff_gen.fifo_registers_reg[1][5] D -pin fifo_ff_gen.fifo_registers_reg[2][5] D -pin fifo_ff_gen.fifo_registers_reg[3][5] D -pin fifo_ff_gen.fifo_registers_reg[4][5] D -pin fifo_ff_gen.fifo_registers_reg[5][5] D -pin fifo_ff_gen.fifo_registers_reg[6][5] D -pin fifo_ff_gen.fifo_registers_reg[7][5] D
netloc fifo_registers[5] 1 14 1 5040
load net {pop_o\.data[22]} -attr @rip(#000000) 22 -port {pop_o\.data[22]} -pin {pop_o\.data[22]_INST_0} O
load net {pop_o\.data[30]_INST_0_i_3_n_0} -pin {pop_o\.data[30]_INST_0_i_1} I1 -pin {pop_o\.data[30]_INST_0_i_3} O
netloc {pop_o\.data[30]_INST_0_i_3_n_0} 1 16 1 5960
load net {pop_o\.data_OBUF[23]} -pin {pop_o\.data[23]_INST_0} I -pin {pop_o\.data[23]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[23]} 1 17 1 N
load net {pop_o\.data[31]_INST_0_i_2_n_0} -pin {pop_o\.data[31]_INST_0_i_1} I0 -pin {pop_o\.data[31]_INST_0_i_2} O
netloc {pop_o\.data[31]_INST_0_i_2_n_0} 1 16 1 N
load net {pop_o\.data[4]_INST_0_i_3_n_0} -pin {pop_o\.data[4]_INST_0_i_1} I1 -pin {pop_o\.data[4]_INST_0_i_3} O
netloc {pop_o\.data[4]_INST_0_i_3_n_0} 1 16 1 5840
load net fifo_ff_gen.fifo_registers_reg[0]__0[1] -pin fifo_ff_gen.fifo_registers_reg[0][1] Q -pin {pop_o\.strb[1]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[1] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[7][28]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][28]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][28]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][28]_i_2_n_0 1 13 1 N
load net FSM_sequential_cs_reg[1]_i_4_n_0 -pin FSM_sequential_cs[0]_i_1 I1 -pin FSM_sequential_cs[1]_i_1 I1 -pin FSM_sequential_cs_reg[1]_i_4 O -pin fifo_ff_gen.fifo_registers[0][35]_i_1 I3 -pin fifo_ff_gen.fifo_registers[1][35]_i_1 I3 -pin fifo_ff_gen.fifo_registers[2][35]_i_1 I3 -pin fifo_ff_gen.fifo_registers[3][35]_i_1 I3 -pin fifo_ff_gen.fifo_registers[4][35]_i_1 I3 -pin fifo_ff_gen.fifo_registers[5][35]_i_1 I3 -pin fifo_ff_gen.fifo_registers[6][35]_i_1 I3 -pin fifo_ff_gen.fifo_registers[7][35]_i_1 I3 -pin push_pointer_d_reg[2]_i_2 I0
netloc FSM_sequential_cs_reg[1]_i_4_n_0 1 1 14 290 42210 710J 42090 1030 42050 NJ 42050 NJ 42050 NJ 42050 NJ 42050 NJ 42050 NJ 42050 3010J 42210 NJ 42210 NJ 42210 4300 41990 5000
load net fifo_ff_gen.fifo_registers_reg[4]__0[5] -pin fifo_ff_gen.fifo_registers_reg[4][5] Q -pin {pop_o\.data[1]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[5] 1 15 1 5400
load net {pop_o\.data[25]_INST_0_i_2_n_0} -pin {pop_o\.data[25]_INST_0_i_1} I0 -pin {pop_o\.data[25]_INST_0_i_2} O
netloc {pop_o\.data[25]_INST_0_i_2_n_0} 1 16 1 N
load net {pop_o\.data_OBUF[3]} -pin {pop_o\.data[3]_INST_0} I -pin {pop_o\.data[3]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[3]} 1 17 1 N
load net push_pointer_q[2]_i_1_n_0 -pin push_pointer_q[2]_i_1 O -pin push_pointer_q_reg[2] D
netloc push_pointer_q[2]_i_1_n_0 1 10 1 2990
load net fifo_ff_gen.fifo_registers_reg[3]__0[1] -pin fifo_ff_gen.fifo_registers_reg[3][1] Q -pin {pop_o\.strb[1]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[1] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[2]__0[22] -pin fifo_ff_gen.fifo_registers_reg[2][22] Q -pin {pop_o\.data[18]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[22] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[7][9]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][9]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][9]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][9]_i_2_n_0 1 13 1 N
load net fifo_ff_gen.fifo_registers_reg[5]__0[23] -pin fifo_ff_gen.fifo_registers_reg[5][23] Q -pin {pop_o\.data[19]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[23] 1 15 1 5560
load net {pop_o\.data[11]} -attr @rip(#000000) 11 -port {pop_o\.data[11]} -pin {pop_o\.data[11]_INST_0} O
load net fifo_ff_gen.fifo_registers_reg[7][30]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][30]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][30]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][30]_i_2_n_0 1 13 1 N
load net {push_i\.data[31]} -attr @rip(#000000) {push_i\.data[31]} -pin fifo_ff_gen.fifo_registers_reg[7][35]_i_3 I -port {push_i\.data[31]}
load net {push_i\.data[6]} -attr @rip(#000000) {push_i\.data[6]} -pin fifo_ff_gen.fifo_registers_reg[7][10]_i_2 I -port {push_i\.data[6]}
load net fifo_ff_gen.fifo_registers_reg[2]__0[19] -pin fifo_ff_gen.fifo_registers_reg[2][19] Q -pin {pop_o\.data[15]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[19] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[1]__0[27] -pin fifo_ff_gen.fifo_registers_reg[1][27] Q -pin {pop_o\.data[23]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[27] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[2]__0[14] -pin fifo_ff_gen.fifo_registers_reg[2][14] Q -pin {pop_o\.data[10]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[14] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[7]__0[21] -pin fifo_ff_gen.fifo_registers_reg[7][21] Q -pin {pop_o\.data[17]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[21] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[14] -pin fifo_ff_gen.fifo_registers_reg[4][14] Q -pin {pop_o\.data[10]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[14] 1 15 1 5400
load net fifo_ff_gen.fifo_registers[4][35]_i_1_n_0 -pin fifo_ff_gen.fifo_registers[4][35]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[4][0] CE -pin fifo_ff_gen.fifo_registers_reg[4][10] CE -pin fifo_ff_gen.fifo_registers_reg[4][11] CE -pin fifo_ff_gen.fifo_registers_reg[4][12] CE -pin fifo_ff_gen.fifo_registers_reg[4][13] CE -pin fifo_ff_gen.fifo_registers_reg[4][14] CE -pin fifo_ff_gen.fifo_registers_reg[4][15] CE -pin fifo_ff_gen.fifo_registers_reg[4][16] CE -pin fifo_ff_gen.fifo_registers_reg[4][17] CE -pin fifo_ff_gen.fifo_registers_reg[4][18] CE -pin fifo_ff_gen.fifo_registers_reg[4][19] CE -pin fifo_ff_gen.fifo_registers_reg[4][1] CE -pin fifo_ff_gen.fifo_registers_reg[4][20] CE -pin fifo_ff_gen.fifo_registers_reg[4][21] CE -pin fifo_ff_gen.fifo_registers_reg[4][22] CE -pin fifo_ff_gen.fifo_registers_reg[4][23] CE -pin fifo_ff_gen.fifo_registers_reg[4][24] CE -pin fifo_ff_gen.fifo_registers_reg[4][25] CE -pin fifo_ff_gen.fifo_registers_reg[4][26] CE -pin fifo_ff_gen.fifo_registers_reg[4][27] CE -pin fifo_ff_gen.fifo_registers_reg[4][28] CE -pin fifo_ff_gen.fifo_registers_reg[4][29] CE -pin fifo_ff_gen.fifo_registers_reg[4][2] CE -pin fifo_ff_gen.fifo_registers_reg[4][30] CE -pin fifo_ff_gen.fifo_registers_reg[4][31] CE -pin fifo_ff_gen.fifo_registers_reg[4][32] CE -pin fifo_ff_gen.fifo_registers_reg[4][33] CE -pin fifo_ff_gen.fifo_registers_reg[4][34] CE -pin fifo_ff_gen.fifo_registers_reg[4][35] CE -pin fifo_ff_gen.fifo_registers_reg[4][3] CE -pin fifo_ff_gen.fifo_registers_reg[4][4] CE -pin fifo_ff_gen.fifo_registers_reg[4][5] CE -pin fifo_ff_gen.fifo_registers_reg[4][6] CE -pin fifo_ff_gen.fifo_registers_reg[4][7] CE -pin fifo_ff_gen.fifo_registers_reg[4][8] CE -pin fifo_ff_gen.fifo_registers_reg[4][9] CE
netloc fifo_ff_gen.fifo_registers[4][35]_i_1_n_0 1 14 1 4860
load net fifo_ff_gen.fifo_registers_reg[6]__0[9] -pin fifo_ff_gen.fifo_registers_reg[6][9] Q -pin {pop_o\.data[5]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[9] 1 15 1 5560
load net fifo_registers[15] -pin fifo_ff_gen.fifo_registers[7][15]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][15] D -pin fifo_ff_gen.fifo_registers_reg[1][15] D -pin fifo_ff_gen.fifo_registers_reg[2][15] D -pin fifo_ff_gen.fifo_registers_reg[3][15] D -pin fifo_ff_gen.fifo_registers_reg[4][15] D -pin fifo_ff_gen.fifo_registers_reg[5][15] D -pin fifo_ff_gen.fifo_registers_reg[6][15] D -pin fifo_ff_gen.fifo_registers_reg[7][15] D
netloc fifo_registers[15] 1 14 1 5040
load net fifo_ff_gen.fifo_registers_reg[7][4]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][4]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][4]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][4]_i_2_n_0 1 13 1 N
load net fifo_ff_gen.fifo_registers_reg[0]__0[28] -pin fifo_ff_gen.fifo_registers_reg[0][28] Q -pin {pop_o\.data[24]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[28] 1 15 1 N
load net <const1> -power -pin FSM_sequential_cs_reg[0] CE -pin FSM_sequential_cs_reg[1] CE -pin flags_o[full]_INST_0 T -pin flags_o[pop_pointer][0]_INST_0 T -pin flags_o[pop_pointer][1]_INST_0 T -pin flags_o[pop_pointer][2]_INST_0 T -pin flags_o[pop_pointer][3]_INST_0 T -pin flags_o[pop_pointer][4]_INST_0 T -pin flags_o[pop_pointer][5]_INST_0 T -pin flags_o[pop_pointer][6]_INST_0 T -pin flags_o[pop_pointer][7]_INST_0 T -pin flags_o[push_pointer][0]_INST_0 T -pin flags_o[push_pointer][1]_INST_0 T -pin flags_o[push_pointer][2]_INST_0 T -pin flags_o[push_pointer][3]_INST_0 T -pin flags_o[push_pointer][4]_INST_0 T -pin flags_o[push_pointer][5]_INST_0 T -pin flags_o[push_pointer][6]_INST_0 T -pin flags_o[push_pointer][7]_INST_0 T -pin pop_pointer_q_reg[0] CE -pin pop_pointer_q_reg[1] CE -pin pop_pointer_q_reg[2] CE -pin push_pointer_q_reg[0] CE -pin push_pointer_q_reg[1] CE -pin push_pointer_q_reg[2] CE
load net fifo_ff_gen.fifo_registers_reg[3]__0[25] -pin fifo_ff_gen.fifo_registers_reg[3][25] Q -pin {pop_o\.data[21]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[25] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[5]__0[9] -pin fifo_ff_gen.fifo_registers_reg[5][9] Q -pin {pop_o\.data[5]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[9] 1 15 1 5380
load net cs[0] -pin FSM_sequential_cs[0]_i_1 I3 -pin FSM_sequential_cs[1]_i_1 I3 -pin FSM_sequential_cs_reg[0] Q -pin flags_o[empty]_INST_0_i_1 I0 -pin {pop_o\.valid_INST_0_i_1} I0 -pin pop_pointer_d_reg[2]_i_2 I2
netloc cs[0] 1 1 16 370 42330 NJ 42330 990 42450 NJ 42450 NJ 42450 NJ 42450 NJ 42450 NJ 42450 NJ 42450 NJ 42450 NJ 42450 NJ 42450 NJ 42450 5020 42090 5400J 42200 5860
load net fifo_ff_gen.fifo_registers_reg[7][1]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][1]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][1]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][1]_i_2_n_0 1 13 1 N
load net fifo_ff_gen.fifo_registers_reg[0]__0[18] -pin fifo_ff_gen.fifo_registers_reg[0][18] Q -pin {pop_o\.data[14]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[18] 1 15 1 5380
load net FSM_sequential_cs[1]_i_1_n_0 -pin FSM_sequential_cs[1]_i_1 O -pin FSM_sequential_cs_reg[1] D
netloc FSM_sequential_cs[1]_i_1_n_0 1 2 1 690
load net fifo_ff_gen.fifo_registers_reg[0]__0[13] -pin fifo_ff_gen.fifo_registers_reg[0][13] Q -pin {pop_o\.data[9]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[13] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[7][32]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][32]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][32]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][32]_i_2_n_0 1 13 1 N
load net {pop_o\.data[14]} -attr @rip(#000000) 14 -port {pop_o\.data[14]} -pin {pop_o\.data[14]_INST_0} O
load net {pop_o\.data_OBUF[13]} -pin {pop_o\.data[13]_INST_0} I -pin {pop_o\.data[13]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[13]} 1 17 1 N
load net push_pointer_d_reg[0]_i_1_n_0 -pin push_pointer_d_reg[0] D -pin push_pointer_d_reg[0]_i_1 O
netloc push_pointer_d_reg[0]_i_1_n_0 1 4 1 NJ
load net fifo_ff_gen.fifo_registers_reg[1]__0[7] -pin fifo_ff_gen.fifo_registers_reg[1][7] Q -pin {pop_o\.data[3]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[7] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[2]__0[27] -pin fifo_ff_gen.fifo_registers_reg[2][27] Q -pin {pop_o\.data[23]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[27] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[1]__0[23] -pin fifo_ff_gen.fifo_registers_reg[1][23] Q -pin {pop_o\.data[19]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[23] 1 15 1 5560
load net fifo_registers[27] -pin fifo_ff_gen.fifo_registers[7][27]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][27] D -pin fifo_ff_gen.fifo_registers_reg[1][27] D -pin fifo_ff_gen.fifo_registers_reg[2][27] D -pin fifo_ff_gen.fifo_registers_reg[3][27] D -pin fifo_ff_gen.fifo_registers_reg[4][27] D -pin fifo_ff_gen.fifo_registers_reg[5][27] D -pin fifo_ff_gen.fifo_registers_reg[6][27] D -pin fifo_ff_gen.fifo_registers_reg[7][27] D
netloc fifo_registers[27] 1 14 1 4800
load net fifo_ff_gen.fifo_registers_reg[4]__0[10] -pin fifo_ff_gen.fifo_registers_reg[4][10] Q -pin {pop_o\.data[6]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[10] 1 15 1 5420
load net fifo_ff_gen.fifo_registers_reg[3]__0[17] -pin fifo_ff_gen.fifo_registers_reg[3][17] Q -pin {pop_o\.data[13]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[17] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[6]__0[18] -pin fifo_ff_gen.fifo_registers_reg[6][18] Q -pin {pop_o\.data[14]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[18] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7]__0[9] -pin fifo_ff_gen.fifo_registers_reg[7][9] Q -pin {pop_o\.data[5]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[9] 1 15 1 N
load net {pop_o\.data_OBUF[22]} -pin {pop_o\.data[22]_INST_0} I -pin {pop_o\.data[22]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[22]} 1 17 1 N
load net pop_pointer_q[1] -pin {pop_o\.data[0]_INST_0_i_2} I2 -pin {pop_o\.data[0]_INST_0_i_3} I2 -pin {pop_o\.data[10]_INST_0_i_2} I2 -pin {pop_o\.data[10]_INST_0_i_3} I2 -pin {pop_o\.data[11]_INST_0_i_2} I2 -pin {pop_o\.data[11]_INST_0_i_3} I2 -pin {pop_o\.data[12]_INST_0_i_2} I2 -pin {pop_o\.data[12]_INST_0_i_3} I2 -pin {pop_o\.data[13]_INST_0_i_2} I2 -pin {pop_o\.data[13]_INST_0_i_3} I2 -pin {pop_o\.data[14]_INST_0_i_2} I2 -pin {pop_o\.data[14]_INST_0_i_3} I2 -pin {pop_o\.data[15]_INST_0_i_2} I2 -pin {pop_o\.data[15]_INST_0_i_3} I2 -pin {pop_o\.data[16]_INST_0_i_2} I2 -pin {pop_o\.data[16]_INST_0_i_3} I2 -pin {pop_o\.data[17]_INST_0_i_2} I2 -pin {pop_o\.data[17]_INST_0_i_3} I2 -pin {pop_o\.data[18]_INST_0_i_2} I2 -pin {pop_o\.data[18]_INST_0_i_3} I2 -pin {pop_o\.data[19]_INST_0_i_2} I2 -pin {pop_o\.data[19]_INST_0_i_3} I2 -pin {pop_o\.data[1]_INST_0_i_2} I2 -pin {pop_o\.data[1]_INST_0_i_3} I2 -pin {pop_o\.data[20]_INST_0_i_2} I2 -pin {pop_o\.data[20]_INST_0_i_3} I2 -pin {pop_o\.data[21]_INST_0_i_2} I2 -pin {pop_o\.data[21]_INST_0_i_3} I2 -pin {pop_o\.data[22]_INST_0_i_2} I2 -pin {pop_o\.data[22]_INST_0_i_3} I2 -pin {pop_o\.data[23]_INST_0_i_2} I2 -pin {pop_o\.data[23]_INST_0_i_3} I2 -pin {pop_o\.data[24]_INST_0_i_2} I2 -pin {pop_o\.data[24]_INST_0_i_3} I2 -pin {pop_o\.data[25]_INST_0_i_2} I2 -pin {pop_o\.data[25]_INST_0_i_3} I2 -pin {pop_o\.data[26]_INST_0_i_2} I2 -pin {pop_o\.data[26]_INST_0_i_3} I2 -pin {pop_o\.data[27]_INST_0_i_2} I2 -pin {pop_o\.data[27]_INST_0_i_3} I2 -pin {pop_o\.data[28]_INST_0_i_2} I2 -pin {pop_o\.data[28]_INST_0_i_3} I2 -pin {pop_o\.data[29]_INST_0_i_2} I2 -pin {pop_o\.data[29]_INST_0_i_3} I2 -pin {pop_o\.data[2]_INST_0_i_2} I2 -pin {pop_o\.data[2]_INST_0_i_3} I2 -pin {pop_o\.data[30]_INST_0_i_2} I2 -pin {pop_o\.data[30]_INST_0_i_3} I2 -pin {pop_o\.data[31]_INST_0_i_2} I2 -pin {pop_o\.data[31]_INST_0_i_3} I2 -pin {pop_o\.data[3]_INST_0_i_2} I2 -pin {pop_o\.data[3]_INST_0_i_3} I2 -pin {pop_o\.data[4]_INST_0_i_2} I2 -pin {pop_o\.data[4]_INST_0_i_3} I2 -pin {pop_o\.data[5]_INST_0_i_2} I2 -pin {pop_o\.data[5]_INST_0_i_3} I2 -pin {pop_o\.data[6]_INST_0_i_2} I2 -pin {pop_o\.data[6]_INST_0_i_3} I2 -pin {pop_o\.data[7]_INST_0_i_2} I2 -pin {pop_o\.data[7]_INST_0_i_3} I2 -pin {pop_o\.data[8]_INST_0_i_2} I2 -pin {pop_o\.data[8]_INST_0_i_3} I2 -pin {pop_o\.data[9]_INST_0_i_2} I2 -pin {pop_o\.data[9]_INST_0_i_3} I2 -pin {pop_o\.strb[0]_INST_0_i_2} I2 -pin {pop_o\.strb[0]_INST_0_i_3} I2 -pin {pop_o\.strb[1]_INST_0_i_2} I2 -pin {pop_o\.strb[1]_INST_0_i_3} I2 -pin {pop_o\.strb[2]_INST_0_i_2} I2 -pin {pop_o\.strb[2]_INST_0_i_3} I2 -pin {pop_o\.strb[3]_INST_0_i_2} I2 -pin {pop_o\.strb[3]_INST_0_i_3} I2 -pin pop_pointer_d_reg[1]_i_1 I1 -pin pop_pointer_d_reg[2]_i_1 I2 -pin pop_pointer_q_reg[1] Q
netloc pop_pointer_q[1] 1 7 9 2150 41390 NJ 41390 2710J 41530 3090J 41550 3350 41410 NJ 41410 NJ 41410 NJ 41410 5460
load net {push_i\.data[26]} -attr @rip(#000000) {push_i\.data[26]} -pin fifo_ff_gen.fifo_registers_reg[7][30]_i_2 I -port {push_i\.data[26]}
load net fifo_ff_gen.fifo_registers_reg[7][23]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][23]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][23]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][23]_i_2_n_0 1 13 1 N
load net {push_i\.data[18]} -attr @rip(#000000) {push_i\.data[18]} -pin fifo_ff_gen.fifo_registers_reg[7][22]_i_2 I -port {push_i\.data[18]}
load net fifo_ff_gen.fifo_registers_reg[0]__0[24] -pin fifo_ff_gen.fifo_registers_reg[0][24] Q -pin {pop_o\.data[20]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[24] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[0]__0[2] -pin fifo_ff_gen.fifo_registers_reg[0][2] Q -pin {pop_o\.strb[2]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[2] 1 15 1 N
load net {pop_o\.data[24]_INST_0_i_3_n_0} -pin {pop_o\.data[24]_INST_0_i_1} I1 -pin {pop_o\.data[24]_INST_0_i_3} O
netloc {pop_o\.data[24]_INST_0_i_3_n_0} 1 16 1 5960
load net fifo_ff_gen.fifo_registers_reg[4]__0[6] -pin fifo_ff_gen.fifo_registers_reg[4][6] Q -pin {pop_o\.data[2]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[6] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[5]__0[22] -pin fifo_ff_gen.fifo_registers_reg[5][22] Q -pin {pop_o\.data[18]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[22] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7][2]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][2]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][2]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][2]_i_2_n_0 1 13 1 N
load net {pop_o\.data[10]} -attr @rip(#000000) 10 -port {pop_o\.data[10]} -pin {pop_o\.data[10]_INST_0} O
load net fifo_ff_gen.fifo_registers_reg[2]__0[31] -pin fifo_ff_gen.fifo_registers_reg[2][31] Q -pin {pop_o\.data[27]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[31] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[2]__0[23] -pin fifo_ff_gen.fifo_registers_reg[2][23] Q -pin {pop_o\.data[19]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[23] 1 15 1 5400
load net fifo_registers[30] -pin fifo_ff_gen.fifo_registers[7][30]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][30] D -pin fifo_ff_gen.fifo_registers_reg[1][30] D -pin fifo_ff_gen.fifo_registers_reg[2][30] D -pin fifo_ff_gen.fifo_registers_reg[3][30] D -pin fifo_ff_gen.fifo_registers_reg[4][30] D -pin fifo_ff_gen.fifo_registers_reg[5][30] D -pin fifo_ff_gen.fifo_registers_reg[6][30] D -pin fifo_ff_gen.fifo_registers_reg[7][30] D
netloc fifo_registers[30] 1 14 1 5040
load net {push_i\.data[30]} -attr @rip(#000000) {push_i\.data[30]} -pin fifo_ff_gen.fifo_registers_reg[7][34]_i_2 I -port {push_i\.data[30]}
load net fifo_ff_gen.fifo_registers_reg[2]__0[13] -pin fifo_ff_gen.fifo_registers_reg[2][13] Q -pin {pop_o\.data[9]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[13] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[3]__0[13] -pin fifo_ff_gen.fifo_registers_reg[3][13] Q -pin {pop_o\.data[9]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[13] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[4]__0[31] -pin fifo_ff_gen.fifo_registers_reg[4][31] Q -pin {pop_o\.data[27]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[31] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[2]__0[18] -pin fifo_ff_gen.fifo_registers_reg[2][18] Q -pin {pop_o\.data[14]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[18] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[1]__0[26] -pin fifo_ff_gen.fifo_registers_reg[1][26] Q -pin {pop_o\.data[22]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[26] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7]__0[20] -pin fifo_ff_gen.fifo_registers_reg[7][20] Q -pin {pop_o\.data[16]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[20] 1 15 1 N
load net {pop_o\.data[10]_INST_0_i_3_n_0} -pin {pop_o\.data[10]_INST_0_i_1} I1 -pin {pop_o\.data[10]_INST_0_i_3} O
netloc {pop_o\.data[10]_INST_0_i_3_n_0} 1 16 1 5840
load net {pop_o\.data[4]_INST_0_i_2_n_0} -pin {pop_o\.data[4]_INST_0_i_1} I0 -pin {pop_o\.data[4]_INST_0_i_2} O
netloc {pop_o\.data[4]_INST_0_i_2_n_0} 1 16 1 N
load net {pop_o\.strb_OBUF[3]} -pin {pop_o\.strb[3]_INST_0} I -pin {pop_o\.strb[3]_INST_0_i_1} O
netloc {pop_o\.strb_OBUF[3]} 1 17 1 N
load net {pop_o\.valid_INST_0_i_1_n_0} -pin {pop_o\.valid_INST_0} I -pin {pop_o\.valid_INST_0_i_1} O
netloc {pop_o\.valid_INST_0_i_1_n_0} 1 17 1 NJ
load net FSM_sequential_cs[0]_i_1_n_0 -pin FSM_sequential_cs[0]_i_1 O -pin FSM_sequential_cs_reg[0] D
netloc FSM_sequential_cs[0]_i_1_n_0 1 15 1 5420
load net fifo_ff_gen.fifo_registers_reg[1]__0[0] -pin fifo_ff_gen.fifo_registers_reg[1][0] Q -pin {pop_o\.strb[0]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[0] 1 15 1 5580
load net {pop_o\.data[29]} -attr @rip(#000000) 29 -port {pop_o\.data[29]} -pin {pop_o\.data[29]_INST_0} O
load net {push_i\.data[7]} -attr @rip(#000000) {push_i\.data[7]} -pin fifo_ff_gen.fifo_registers_reg[7][11]_i_2 I -port {push_i\.data[7]}
load net fifo_ff_gen.fifo_registers_reg[5]__0[21] -pin fifo_ff_gen.fifo_registers_reg[5][21] Q -pin {pop_o\.data[17]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[21] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7]__0[2] -pin fifo_ff_gen.fifo_registers_reg[7][2] Q -pin {pop_o\.strb[2]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[2] 1 15 1 N
load net rst_ni -port rst_ni -pin rst_ni_IBUF_inst I
netloc rst_ni 1 0 1 NJ
load net fifo_ff_gen.fifo_registers_reg[7][26]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][26]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][26]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][26]_i_2_n_0 1 13 1 N
load net fifo_registers[16] -pin fifo_ff_gen.fifo_registers[7][16]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][16] D -pin fifo_ff_gen.fifo_registers_reg[1][16] D -pin fifo_ff_gen.fifo_registers_reg[2][16] D -pin fifo_ff_gen.fifo_registers_reg[3][16] D -pin fifo_ff_gen.fifo_registers_reg[4][16] D -pin fifo_ff_gen.fifo_registers_reg[5][16] D -pin fifo_ff_gen.fifo_registers_reg[6][16] D -pin fifo_ff_gen.fifo_registers_reg[7][16] D
netloc fifo_registers[16] 1 14 1 5040
load net fifo_ff_gen.fifo_registers_reg[3]__0[24] -pin fifo_ff_gen.fifo_registers_reg[3][24] Q -pin {pop_o\.data[20]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[24] 1 15 1 5380
load net {pop_o\.data[18]_INST_0_i_3_n_0} -pin {pop_o\.data[18]_INST_0_i_1} I1 -pin {pop_o\.data[18]_INST_0_i_3} O
netloc {pop_o\.data[18]_INST_0_i_3_n_0} 1 16 1 5960
load net fifo_ff_gen.fifo_registers_reg[4]__0[17] -pin fifo_ff_gen.fifo_registers_reg[4][17] Q -pin {pop_o\.data[13]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[17] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[0]__0[29] -pin fifo_ff_gen.fifo_registers_reg[0][29] Q -pin {pop_o\.data[25]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[29] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[0]__0[12] -pin fifo_ff_gen.fifo_registers_reg[0][12] Q -pin {pop_o\.data[8]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[12] 1 15 1 N
load net {pop_o\.data[19]_INST_0_i_3_n_0} -pin {pop_o\.data[19]_INST_0_i_1} I1 -pin {pop_o\.data[19]_INST_0_i_3} O
netloc {pop_o\.data[19]_INST_0_i_3_n_0} 1 16 1 5960
load net fifo_ff_gen.fifo_registers_reg[1]__0[22] -pin fifo_ff_gen.fifo_registers_reg[1][22] Q -pin {pop_o\.data[18]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[22] 1 15 1 5560
load net cs[1] -pin FSM_sequential_cs[0]_i_1 I2 -pin FSM_sequential_cs[1]_i_1 I2 -pin FSM_sequential_cs_reg[1] Q -pin fifo_ff_gen.fifo_registers[0][35]_i_1 I4 -pin fifo_ff_gen.fifo_registers[1][35]_i_1 I4 -pin fifo_ff_gen.fifo_registers[2][35]_i_1 I4 -pin fifo_ff_gen.fifo_registers[3][35]_i_1 I4 -pin fifo_ff_gen.fifo_registers[4][35]_i_1 I4 -pin fifo_ff_gen.fifo_registers[5][35]_i_1 I4 -pin fifo_ff_gen.fifo_registers[6][35]_i_1 I4 -pin fifo_ff_gen.fifo_registers[7][35]_i_1 I4 -pin flags_o[empty]_INST_0_i_1 I1 -pin {pop_o\.valid_INST_0_i_1} I1 -pin pop_pointer_d_reg[2]_i_2 I1 -pin {push_i\.ready_INST_0_i_1} I0 -pin push_pointer_d_reg[2]_i_2 I1
netloc cs[1] 1 1 16 350 42310 NJ 42310 1010 42270 NJ 42270 NJ 42270 NJ 42270 NJ 42270 NJ 42270 NJ 42270 NJ 42270 NJ 42270 NJ 42270 4340 42010 5040 42070 5560J 42020 5920
load net fifo_ff_gen.fifo_registers_reg[6]__0[20] -pin fifo_ff_gen.fifo_registers_reg[6][20] Q -pin {pop_o\.data[16]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[20] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7][19]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][19]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][19]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][19]_i_2_n_0 1 13 1 N
load net fifo_registers[26] -pin fifo_ff_gen.fifo_registers[7][26]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][26] D -pin fifo_ff_gen.fifo_registers_reg[1][26] D -pin fifo_ff_gen.fifo_registers_reg[2][26] D -pin fifo_ff_gen.fifo_registers_reg[3][26] D -pin fifo_ff_gen.fifo_registers_reg[4][26] D -pin fifo_ff_gen.fifo_registers_reg[5][26] D -pin fifo_ff_gen.fifo_registers_reg[6][26] D -pin fifo_ff_gen.fifo_registers_reg[7][26] D
netloc fifo_registers[26] 1 14 1 4800
load net fifo_ff_gen.fifo_registers_reg[6]__0[17] -pin fifo_ff_gen.fifo_registers_reg[6][17] Q -pin {pop_o\.data[13]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[17] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7][0]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][0]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][0]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][0]_i_2_n_0 1 13 1 N
load net {pop_o\.data[15]} -attr @rip(#000000) 15 -port {pop_o\.data[15]} -pin {pop_o\.data[15]_INST_0} O
load net {pop_o\.data_OBUF[14]} -pin {pop_o\.data[14]_INST_0} I -pin {pop_o\.data[14]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[14]} 1 17 1 N
load net {pop_o\.data_OBUF[21]} -pin {pop_o\.data[21]_INST_0} I -pin {pop_o\.data[21]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[21]} 1 17 1 N
load net {pop_o\.strb[3]} -attr @rip(#000000) 3 -port {pop_o\.strb[3]} -pin {pop_o\.strb[3]_INST_0} O
load net push_pointer_q[1]_i_1_n_0 -pin push_pointer_q[1]_i_1 O -pin push_pointer_q_reg[1] D
netloc push_pointer_q[1]_i_1_n_0 1 10 1 3010
load net fifo_ff_gen.fifo_registers_reg[2]__0[28] -pin fifo_ff_gen.fifo_registers_reg[2][28] Q -pin {pop_o\.data[24]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[28] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[7][12]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][12]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][12]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][12]_i_2_n_0 1 13 1 N
load net {pop_o\.data[29]_INST_0_i_3_n_0} -pin {pop_o\.data[29]_INST_0_i_1} I1 -pin {pop_o\.data[29]_INST_0_i_3} O
netloc {pop_o\.data[29]_INST_0_i_3_n_0} 1 16 1 5940
load net {pop_o\.data[5]_INST_0_i_2_n_0} -pin {pop_o\.data[5]_INST_0_i_1} I0 -pin {pop_o\.data[5]_INST_0_i_2} O
netloc {pop_o\.data[5]_INST_0_i_2_n_0} 1 16 1 N
load net fifo_ff_gen.fifo_registers_reg[3]__0[18] -pin fifo_ff_gen.fifo_registers_reg[3][18] Q -pin {pop_o\.data[14]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[18] 1 15 1 5400
load net {pop_o\.data[25]_INST_0_i_3_n_0} -pin {pop_o\.data[25]_INST_0_i_1} I1 -pin {pop_o\.data[25]_INST_0_i_3} O
netloc {pop_o\.data[25]_INST_0_i_3_n_0} 1 16 1 5960
load net {pop_o\.strb[0]} -attr @rip(#000000) 0 -port {pop_o\.strb[0]} -pin {pop_o\.strb[0]_INST_0} O
load net {pop_o\.data[29]_INST_0_i_2_n_0} -pin {pop_o\.data[29]_INST_0_i_1} I0 -pin {pop_o\.data[29]_INST_0_i_2} O
netloc {pop_o\.data[29]_INST_0_i_2_n_0} 1 16 1 N
load net {push_i\.data[19]} -attr @rip(#000000) {push_i\.data[19]} -pin fifo_ff_gen.fifo_registers_reg[7][23]_i_2 I -port {push_i\.data[19]}
load net fifo_ff_gen.fifo_registers_reg[0]__0[25] -pin fifo_ff_gen.fifo_registers_reg[0][25] Q -pin {pop_o\.data[21]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[25] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[13] -pin fifo_ff_gen.fifo_registers_reg[4][13] Q -pin {pop_o\.data[9]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[13] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[4]__0[0] -pin fifo_ff_gen.fifo_registers_reg[4][0] Q -pin {pop_o\.strb[0]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[0] 1 15 1 5540
load net fifo_ff_gen.fifo_registers_reg[2]__0[35] -pin fifo_ff_gen.fifo_registers_reg[2][35] Q -pin {pop_o\.data[31]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[35] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[0]__0[3] -pin fifo_ff_gen.fifo_registers_reg[0][3] Q -pin {pop_o\.strb[3]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[3] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[2]__0[30] -pin fifo_ff_gen.fifo_registers_reg[2][30] Q -pin {pop_o\.data[26]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[30] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[7][18]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][18]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][18]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][18]_i_2_n_0 1 13 1 N
load net rst_ni_IBUF -pin FSM_sequential_cs[1]_i_2 I0 -pin rst_ni_IBUF_inst O
netloc rst_ni_IBUF 1 1 1 NJ
load net fifo_ff_gen.fifo_registers_reg[1]__0[10] -pin fifo_ff_gen.fifo_registers_reg[1][10] Q -pin {pop_o\.data[6]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[10] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[2]__0[12] -pin fifo_ff_gen.fifo_registers_reg[2][12] Q -pin {pop_o\.data[8]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[12] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[4]__0[30] -pin fifo_ff_gen.fifo_registers_reg[4][30] Q -pin {pop_o\.data[26]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[30] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[2]__0[17] -pin fifo_ff_gen.fifo_registers_reg[2][17] Q -pin {pop_o\.data[13]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[17] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[4]__0[35] -pin fifo_ff_gen.fifo_registers_reg[4][35] Q -pin {pop_o\.data[31]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[35] 1 15 1 5380
load net {pop_o\.data[12]_INST_0_i_2_n_0} -pin {pop_o\.data[12]_INST_0_i_1} I0 -pin {pop_o\.data[12]_INST_0_i_2} O
netloc {pop_o\.data[12]_INST_0_i_2_n_0} 1 16 1 5840
load net {pop_o\.strb_OBUF[2]} -pin {pop_o\.strb[2]_INST_0} I -pin {pop_o\.strb[2]_INST_0_i_1} O
netloc {pop_o\.strb_OBUF[2]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[25] -pin fifo_ff_gen.fifo_registers_reg[4][25] Q -pin {pop_o\.data[21]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[25] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[2]__0[24] -pin fifo_ff_gen.fifo_registers_reg[2][24] Q -pin {pop_o\.data[20]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[24] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[6]__0[7] -pin fifo_ff_gen.fifo_registers_reg[6][7] Q -pin {pop_o\.data[3]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[7] 1 15 1 5560
load net fifo_registers[13] -pin fifo_ff_gen.fifo_registers[7][13]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][13] D -pin fifo_ff_gen.fifo_registers_reg[1][13] D -pin fifo_ff_gen.fifo_registers_reg[2][13] D -pin fifo_ff_gen.fifo_registers_reg[3][13] D -pin fifo_ff_gen.fifo_registers_reg[4][13] D -pin fifo_ff_gen.fifo_registers_reg[5][13] D -pin fifo_ff_gen.fifo_registers_reg[6][13] D -pin fifo_ff_gen.fifo_registers_reg[7][13] D
netloc fifo_registers[13] 1 14 1 5040
load net fifo_registers[31] -pin fifo_ff_gen.fifo_registers[7][31]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][31] D -pin fifo_ff_gen.fifo_registers_reg[1][31] D -pin fifo_ff_gen.fifo_registers_reg[2][31] D -pin fifo_ff_gen.fifo_registers_reg[3][31] D -pin fifo_ff_gen.fifo_registers_reg[4][31] D -pin fifo_ff_gen.fifo_registers_reg[5][31] D -pin fifo_ff_gen.fifo_registers_reg[6][31] D -pin fifo_ff_gen.fifo_registers_reg[7][31] D
netloc fifo_registers[31] 1 14 1 4800
load net {pop_o\.data[28]} -attr @rip(#000000) 28 -port {pop_o\.data[28]} -pin {pop_o\.data[28]_INST_0} O
load net fifo_ff_gen.fifo_registers_reg[3]__0[14] -pin fifo_ff_gen.fifo_registers_reg[3][14] Q -pin {pop_o\.data[10]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[14] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[5]__0[0] -pin fifo_ff_gen.fifo_registers_reg[5][0] Q -pin {pop_o\.strb[0]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[0] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[5]__0[20] -pin fifo_ff_gen.fifo_registers_reg[5][20] Q -pin {pop_o\.data[16]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[20] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[5]__0[25] -pin fifo_ff_gen.fifo_registers_reg[5][25] Q -pin {pop_o\.data[21]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[25] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[6]__0[25] -pin fifo_ff_gen.fifo_registers_reg[6][25] Q -pin {pop_o\.data[21]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[25] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7][31]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][31]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][31]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][31]_i_2_n_0 1 13 1 N
load net {pop_o\.data[13]_INST_0_i_2_n_0} -pin {pop_o\.data[13]_INST_0_i_1} I0 -pin {pop_o\.data[13]_INST_0_i_2} O
netloc {pop_o\.data[13]_INST_0_i_2_n_0} 1 16 1 N
load net {pop_o\.data[8]_INST_0_i_2_n_0} -pin {pop_o\.data[8]_INST_0_i_1} I0 -pin {pop_o\.data[8]_INST_0_i_2} O
netloc {pop_o\.data[8]_INST_0_i_2_n_0} 1 16 1 N
load net fifo_ff_gen.fifo_registers_reg[1]__0[1] -pin fifo_ff_gen.fifo_registers_reg[1][1] Q -pin {pop_o\.strb[1]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[1] 1 15 1 5500
load net fifo_ff_gen.fifo_registers_reg[2]__0[5] -pin fifo_ff_gen.fifo_registers_reg[2][5] Q -pin {pop_o\.data[1]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[5] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[7]__0[30] -pin fifo_ff_gen.fifo_registers_reg[7][30] Q -pin {pop_o\.data[26]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[30] 1 15 1 N
load net fifo_registers[10] -pin fifo_ff_gen.fifo_registers[7][10]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][10] D -pin fifo_ff_gen.fifo_registers_reg[1][10] D -pin fifo_ff_gen.fifo_registers_reg[2][10] D -pin fifo_ff_gen.fifo_registers_reg[3][10] D -pin fifo_ff_gen.fifo_registers_reg[4][10] D -pin fifo_ff_gen.fifo_registers_reg[5][10] D -pin fifo_ff_gen.fifo_registers_reg[6][10] D -pin fifo_ff_gen.fifo_registers_reg[7][10] D
netloc fifo_registers[10] 1 14 1 5040
load net {push_i\.data[8]} -attr @rip(#000000) {push_i\.data[8]} -pin fifo_ff_gen.fifo_registers_reg[7][12]_i_2 I -port {push_i\.data[8]}
load net fifo_ff_gen.fifo_registers_reg[1]__0[29] -pin fifo_ff_gen.fifo_registers_reg[1][29] Q -pin {pop_o\.data[25]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[29] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7][11]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][11]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][11]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][11]_i_2_n_0 1 13 1 N
load net fifo_ff_gen.fifo_registers_reg[7]__0[3] -pin fifo_ff_gen.fifo_registers_reg[7][3] Q -pin {pop_o\.strb[3]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[3] 1 15 1 N
load net {pop_o\.data[1]} -attr @rip(#000000) 1 -port {pop_o\.data[1]} -pin {pop_o\.data[1]_INST_0} O
load net fifo_ff_gen.fifo_registers_reg[4]__0[16] -pin fifo_ff_gen.fifo_registers_reg[4][16] Q -pin {pop_o\.data[12]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[16] 1 15 1 5400
load net {pop_o\.data[8]} -attr @rip(#000000) 8 -port {pop_o\.data[8]} -pin {pop_o\.data[8]_INST_0} O
load net fifo_ff_gen.fifo_registers_reg[0]__0[11] -pin fifo_ff_gen.fifo_registers_reg[0][11] Q -pin {pop_o\.data[7]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[11] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[7]__0[0] -pin fifo_ff_gen.fifo_registers_reg[7][0] Q -pin {pop_o\.strb[0]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[0] 1 15 1 5400
load net flags_o[empty]_INST_0_i_1_n_0 -pin flags_o[empty]_INST_0 I -pin flags_o[empty]_INST_0_i_1 O
netloc flags_o[empty]_INST_0_i_1_n_0 1 17 1 NJ
load net fifo_registers[25] -pin fifo_ff_gen.fifo_registers[7][25]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][25] D -pin fifo_ff_gen.fifo_registers_reg[1][25] D -pin fifo_ff_gen.fifo_registers_reg[2][25] D -pin fifo_ff_gen.fifo_registers_reg[3][25] D -pin fifo_ff_gen.fifo_registers_reg[4][25] D -pin fifo_ff_gen.fifo_registers_reg[5][25] D -pin fifo_ff_gen.fifo_registers_reg[6][25] D -pin fifo_ff_gen.fifo_registers_reg[7][25] D
netloc fifo_registers[25] 1 14 1 5040
load net push_pointer_d[0] -pin FSM_sequential_cs[1]_i_3 I1 -pin push_pointer_d_reg[0] Q -pin push_pointer_q[0]_i_1 I0
netloc push_pointer_d[0] 1 5 9 1570 41830 1850J 41890 2130J 41750 NJ 41750 NJ 41750 NJ 41750 3350J 41830 3730J 41890 4240J
load net clear_i_IBUF -pin FSM_sequential_cs[0]_i_1 I5 -pin FSM_sequential_cs[1]_i_1 I5 -pin clear_i_IBUF_inst O -pin fifo_ff_gen.fifo_registers[0][35]_i_1 I5 -pin fifo_ff_gen.fifo_registers[1][35]_i_1 I5 -pin fifo_ff_gen.fifo_registers[2][35]_i_1 I5 -pin fifo_ff_gen.fifo_registers[3][35]_i_1 I5 -pin fifo_ff_gen.fifo_registers[4][35]_i_1 I5 -pin fifo_ff_gen.fifo_registers[5][35]_i_1 I5 -pin fifo_ff_gen.fifo_registers[6][35]_i_1 I5 -pin fifo_ff_gen.fifo_registers[7][0]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][10]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][11]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][12]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][13]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][14]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][15]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][16]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][17]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][18]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][19]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][1]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][20]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][21]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][22]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][23]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][24]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][25]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][26]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][27]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][28]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][29]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][2]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][30]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][31]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][32]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][33]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][34]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][35]_i_1 I5 -pin fifo_ff_gen.fifo_registers[7][35]_i_2 I1 -pin fifo_ff_gen.fifo_registers[7][3]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][4]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][5]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][6]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][7]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][8]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][9]_i_1 I1 -pin pop_pointer_q[0]_i_1 I1 -pin pop_pointer_q[1]_i_1 I1 -pin pop_pointer_q[2]_i_1 I1 -pin push_pointer_q[0]_i_1 I1 -pin push_pointer_q[1]_i_1 I1 -pin push_pointer_q[2]_i_1 I1
netloc clear_i_IBUF 1 1 14 310 42190 650J 42070 NJ 42070 NJ 42070 1590 41970 NJ 41970 NJ 41970 NJ 41970 2690 42290 NJ 42290 NJ 42290 NJ 42290 4260 42030 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[21] -pin fifo_ff_gen.fifo_registers_reg[4][21] Q -pin {pop_o\.data[17]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[21] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[3]__0[15] -pin fifo_ff_gen.fifo_registers_reg[3][15] Q -pin {pop_o\.data[11]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[15] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[6]__0[16] -pin fifo_ff_gen.fifo_registers_reg[6][16] Q -pin {pop_o\.data[12]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[16] 1 15 1 5560
load net flags_o[push_pointer][2] -attr @rip(#000000) 2 -port flags_o[push_pointer][2] -pin flags_o[push_pointer][2]_INST_0 O
load net {pop_o\.data_OBUF[20]} -pin {pop_o\.data[20]_INST_0} I -pin {pop_o\.data[20]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[20]} 1 17 1 N
load net clk_i_IBUF -pin clk_i_IBUF_BUFG_inst I -pin clk_i_IBUF_inst O
netloc clk_i_IBUF 1 1 1 NJ
load net {pop_o\.data[17]_INST_0_i_2_n_0} -pin {pop_o\.data[17]_INST_0_i_1} I0 -pin {pop_o\.data[17]_INST_0_i_2} O
netloc {pop_o\.data[17]_INST_0_i_2_n_0} 1 16 1 N
load net {push_i\.ready_INST_0_i_1_n_0} -pin {push_i\.ready_INST_0} I -pin {push_i\.ready_INST_0_i_1} O
netloc {push_i\.ready_INST_0_i_1_n_0} 1 17 1 NJ
load net flags_o[full] -port flags_o[full] -pin flags_o[full]_INST_0 O
netloc flags_o[full] 1 18 1 NJ
load net {pop_o\.data[16]} -attr @rip(#000000) 16 -port {pop_o\.data[16]} -pin {pop_o\.data[16]_INST_0} O
load net {pop_o\.data_OBUF[15]} -pin {pop_o\.data[15]_INST_0} I -pin {pop_o\.data[15]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[15]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[2]__0[29] -pin fifo_ff_gen.fifo_registers_reg[2][29] Q -pin {pop_o\.data[25]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[29] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[1]__0[25] -pin fifo_ff_gen.fifo_registers_reg[1][25] Q -pin {pop_o\.data[21]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[25] 1 15 1 5560
load net {pop_o\.data_OBUF[0]} -pin {pop_o\.data[0]_INST_0} I -pin {pop_o\.data[0]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[0]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[12] -pin fifo_ff_gen.fifo_registers_reg[4][12] Q -pin {pop_o\.data[8]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[12] 1 15 1 5400
load net fifo_registers[28] -pin fifo_ff_gen.fifo_registers[7][28]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][28] D -pin fifo_ff_gen.fifo_registers_reg[1][28] D -pin fifo_ff_gen.fifo_registers_reg[2][28] D -pin fifo_ff_gen.fifo_registers_reg[3][28] D -pin fifo_ff_gen.fifo_registers_reg[4][28] D -pin fifo_ff_gen.fifo_registers_reg[5][28] D -pin fifo_ff_gen.fifo_registers_reg[6][28] D -pin fifo_ff_gen.fifo_registers_reg[7][28] D
netloc fifo_registers[28] 1 14 1 4800
load net {pop_o\.strb[1]} -attr @rip(#000000) 1 -port {pop_o\.strb[1]} -pin {pop_o\.strb[1]_INST_0} O
load net {push_i\.data[1]} -attr @rip(#000000) {push_i\.data[1]} -pin fifo_ff_gen.fifo_registers_reg[7][5]_i_2 I -port {push_i\.data[1]}
load net push_pointer_q[0]_i_1_n_0 -pin push_pointer_q[0]_i_1 O -pin push_pointer_q_reg[0] D
netloc push_pointer_q[0]_i_1_n_0 1 6 1 1890
load net fifo_ff_gen.fifo_registers_reg[5]__0[17] -pin fifo_ff_gen.fifo_registers_reg[5][17] Q -pin {pop_o\.data[13]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[17] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[2]__0[34] -pin fifo_ff_gen.fifo_registers_reg[2][34] Q -pin {pop_o\.data[30]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[34] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[0]__0[26] -pin fifo_ff_gen.fifo_registers_reg[0][26] Q -pin {pop_o\.data[22]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[26] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[5]__0[35] -pin fifo_ff_gen.fifo_registers_reg[5][35] Q -pin {pop_o\.data[31]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[35] 1 15 1 N
load net {pop_o\.data[23]_INST_0_i_3_n_0} -pin {pop_o\.data[23]_INST_0_i_1} I1 -pin {pop_o\.data[23]_INST_0_i_3} O
netloc {pop_o\.data[23]_INST_0_i_3_n_0} 1 16 1 5960
load net fifo_ff_gen.fifo_registers_reg[2]__0[16] -pin fifo_ff_gen.fifo_registers_reg[2][16] Q -pin {pop_o\.data[12]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[16] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[4]__0[34] -pin fifo_ff_gen.fifo_registers_reg[4][34] Q -pin {pop_o\.data[30]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[34] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[2]__0[11] -pin fifo_ff_gen.fifo_registers_reg[2][11] Q -pin {pop_o\.data[7]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[11] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[3]__0[11] -pin fifo_ff_gen.fifo_registers_reg[3][11] Q -pin {pop_o\.data[7]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[11] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7][16]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][16]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][16]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][16]_i_2_n_0 1 13 1 N
load net fifo_ff_gen.fifo_registers_reg[7][21]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][21]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][21]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][21]_i_2_n_0 1 13 1 N
load net {pop_o\.data[20]} -attr @rip(#000000) 20 -port {pop_o\.data[20]} -pin {pop_o\.data[20]_INST_0} O
load net {pop_o\.data[27]_INST_0_i_2_n_0} -pin {pop_o\.data[27]_INST_0_i_1} I0 -pin {pop_o\.data[27]_INST_0_i_2} O
netloc {pop_o\.data[27]_INST_0_i_2_n_0} 1 16 1 N
load net {pop_o\.strb_OBUF[1]} -pin {pop_o\.strb[1]_INST_0} I -pin {pop_o\.strb[1]_INST_0_i_1} O
netloc {pop_o\.strb_OBUF[1]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[0]__0[4] -pin fifo_ff_gen.fifo_registers_reg[0][4] Q -pin {pop_o\.data[0]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[4] 1 15 1 N
load net {pop_o\.data[27]} -attr @rip(#000000) 27 -port {pop_o\.data[27]} -pin {pop_o\.data[27]_INST_0} O
load net {pop_o\.data[9]_INST_0_i_2_n_0} -pin {pop_o\.data[9]_INST_0_i_1} I0 -pin {pop_o\.data[9]_INST_0_i_2} O
netloc {pop_o\.data[9]_INST_0_i_2_n_0} 1 16 1 N
load net fifo_ff_gen.fifo_registers_reg[1]__0[11] -pin fifo_ff_gen.fifo_registers_reg[1][11] Q -pin {pop_o\.data[7]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[11] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[5]__0[24] -pin fifo_ff_gen.fifo_registers_reg[5][24] Q -pin {pop_o\.data[20]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[24] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[5]__0[4] -pin fifo_ff_gen.fifo_registers_reg[5][4] Q -pin {pop_o\.data[0]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[4] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7][25]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][25]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][25]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][25]_i_2_n_0 1 13 1 N
load net fifo_registers[19] -pin fifo_ff_gen.fifo_registers[7][19]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][19] D -pin fifo_ff_gen.fifo_registers_reg[1][19] D -pin fifo_ff_gen.fifo_registers_reg[2][19] D -pin fifo_ff_gen.fifo_registers_reg[3][19] D -pin fifo_ff_gen.fifo_registers_reg[4][19] D -pin fifo_ff_gen.fifo_registers_reg[5][19] D -pin fifo_ff_gen.fifo_registers_reg[6][19] D -pin fifo_ff_gen.fifo_registers_reg[7][19] D
netloc fifo_registers[19] 1 14 1 5040
load net {pop_o\.data[7]_INST_0_i_2_n_0} -pin {pop_o\.data[7]_INST_0_i_1} I0 -pin {pop_o\.data[7]_INST_0_i_2} O
netloc {pop_o\.data[7]_INST_0_i_2_n_0} 1 16 1 5960
load net fifo_ff_gen.fifo_registers_reg[2]__0[33] -pin fifo_ff_gen.fifo_registers_reg[2][33] Q -pin {pop_o\.data[29]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[33] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[4]__0[26] -pin fifo_ff_gen.fifo_registers_reg[4][26] Q -pin {pop_o\.data[22]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[26] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[2]__0[9] -pin fifo_ff_gen.fifo_registers_reg[2][9] Q -pin {pop_o\.data[5]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[9] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[6]__0[8] -pin fifo_ff_gen.fifo_registers_reg[6][8] Q -pin {pop_o\.data[4]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[8] 1 15 1 5560
load net fifo_registers[14] -pin fifo_ff_gen.fifo_registers[7][14]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][14] D -pin fifo_ff_gen.fifo_registers_reg[1][14] D -pin fifo_ff_gen.fifo_registers_reg[2][14] D -pin fifo_ff_gen.fifo_registers_reg[3][14] D -pin fifo_ff_gen.fifo_registers_reg[4][14] D -pin fifo_ff_gen.fifo_registers_reg[5][14] D -pin fifo_ff_gen.fifo_registers_reg[6][14] D -pin fifo_ff_gen.fifo_registers_reg[7][14] D
netloc fifo_registers[14] 1 14 1 5040
load net fifo_registers[32] -pin fifo_ff_gen.fifo_registers[7][32]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][32] D -pin fifo_ff_gen.fifo_registers_reg[1][32] D -pin fifo_ff_gen.fifo_registers_reg[2][32] D -pin fifo_ff_gen.fifo_registers_reg[3][32] D -pin fifo_ff_gen.fifo_registers_reg[4][32] D -pin fifo_ff_gen.fifo_registers_reg[5][32] D -pin fifo_ff_gen.fifo_registers_reg[6][32] D -pin fifo_ff_gen.fifo_registers_reg[7][32] D
netloc fifo_registers[32] 1 14 1 4800
load net {pop_o\.data[31]_INST_0_i_3_n_0} -pin {pop_o\.data[31]_INST_0_i_1} I1 -pin {pop_o\.data[31]_INST_0_i_3} O
netloc {pop_o\.data[31]_INST_0_i_3_n_0} 1 16 1 5980
load net fifo_ff_gen.fifo_registers_reg[1]__0[28] -pin fifo_ff_gen.fifo_registers_reg[1][28] Q -pin {pop_o\.data[24]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[28] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[5]__0[1] -pin fifo_ff_gen.fifo_registers_reg[5][1] Q -pin {pop_o\.strb[1]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[1] 1 15 1 5540
load net fifo_ff_gen.fifo_registers_reg[6]__0[26] -pin fifo_ff_gen.fifo_registers_reg[6][26] Q -pin {pop_o\.data[22]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[26] 1 15 1 5380
load net {pop_o\.data[0]} -attr @rip(#000000) 0 -port {pop_o\.data[0]} -pin {pop_o\.data[0]_INST_0} O
load net pop_pointer_d_reg[1]_i_1_n_0 -pin pop_pointer_d_reg[1] D -pin pop_pointer_d_reg[1]_i_1 O
netloc pop_pointer_d_reg[1]_i_1_n_0 1 8 1 N
load net push_pointer_d[2] -pin FSM_sequential_cs[1]_i_3 I2 -pin push_pointer_d_reg[2] Q -pin push_pointer_q[2]_i_1 I0
netloc push_pointer_d[2] 1 9 5 2750 42170 2970J 42250 NJ 42250 NJ 42250 4200
load net fifo_ff_gen.fifo_registers[2][35]_i_1_n_0 -pin fifo_ff_gen.fifo_registers[2][35]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[2][0] CE -pin fifo_ff_gen.fifo_registers_reg[2][10] CE -pin fifo_ff_gen.fifo_registers_reg[2][11] CE -pin fifo_ff_gen.fifo_registers_reg[2][12] CE -pin fifo_ff_gen.fifo_registers_reg[2][13] CE -pin fifo_ff_gen.fifo_registers_reg[2][14] CE -pin fifo_ff_gen.fifo_registers_reg[2][15] CE -pin fifo_ff_gen.fifo_registers_reg[2][16] CE -pin fifo_ff_gen.fifo_registers_reg[2][17] CE -pin fifo_ff_gen.fifo_registers_reg[2][18] CE -pin fifo_ff_gen.fifo_registers_reg[2][19] CE -pin fifo_ff_gen.fifo_registers_reg[2][1] CE -pin fifo_ff_gen.fifo_registers_reg[2][20] CE -pin fifo_ff_gen.fifo_registers_reg[2][21] CE -pin fifo_ff_gen.fifo_registers_reg[2][22] CE -pin fifo_ff_gen.fifo_registers_reg[2][23] CE -pin fifo_ff_gen.fifo_registers_reg[2][24] CE -pin fifo_ff_gen.fifo_registers_reg[2][25] CE -pin fifo_ff_gen.fifo_registers_reg[2][26] CE -pin fifo_ff_gen.fifo_registers_reg[2][27] CE -pin fifo_ff_gen.fifo_registers_reg[2][28] CE -pin fifo_ff_gen.fifo_registers_reg[2][29] CE -pin fifo_ff_gen.fifo_registers_reg[2][2] CE -pin fifo_ff_gen.fifo_registers_reg[2][30] CE -pin fifo_ff_gen.fifo_registers_reg[2][31] CE -pin fifo_ff_gen.fifo_registers_reg[2][32] CE -pin fifo_ff_gen.fifo_registers_reg[2][33] CE -pin fifo_ff_gen.fifo_registers_reg[2][34] CE -pin fifo_ff_gen.fifo_registers_reg[2][35] CE -pin fifo_ff_gen.fifo_registers_reg[2][3] CE -pin fifo_ff_gen.fifo_registers_reg[2][4] CE -pin fifo_ff_gen.fifo_registers_reg[2][5] CE -pin fifo_ff_gen.fifo_registers_reg[2][6] CE -pin fifo_ff_gen.fifo_registers_reg[2][7] CE -pin fifo_ff_gen.fifo_registers_reg[2][8] CE -pin fifo_ff_gen.fifo_registers_reg[2][9] CE
netloc fifo_ff_gen.fifo_registers[2][35]_i_1_n_0 1 14 1 4920
load net fifo_ff_gen.fifo_registers_reg[1]__0[2] -pin fifo_ff_gen.fifo_registers_reg[1][2] Q -pin {pop_o\.strb[2]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[2] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[2]__0[6] -pin fifo_ff_gen.fifo_registers_reg[2][6] Q -pin {pop_o\.data[2]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[6] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[7][35]_i_3_n_0 -pin fifo_ff_gen.fifo_registers[7][35]_i_2 I0 -pin fifo_ff_gen.fifo_registers_reg[7][35]_i_3 O
netloc fifo_ff_gen.fifo_registers_reg[7][35]_i_3_n_0 1 13 1 4280J
load net fifo_ff_gen.fifo_registers_reg[7]__0[31] -pin fifo_ff_gen.fifo_registers_reg[7][31] Q -pin {pop_o\.data[27]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[31] 1 15 1 N
load net push_pointer_q[2] -pin fifo_ff_gen.fifo_registers[0][35]_i_1 I0 -pin fifo_ff_gen.fifo_registers[1][35]_i_1 I0 -pin fifo_ff_gen.fifo_registers[2][35]_i_1 I2 -pin fifo_ff_gen.fifo_registers[3][35]_i_1 I2 -pin fifo_ff_gen.fifo_registers[4][35]_i_1 I1 -pin fifo_ff_gen.fifo_registers[5][35]_i_1 I0 -pin fifo_ff_gen.fifo_registers[6][35]_i_1 I1 -pin fifo_ff_gen.fifo_registers[7][35]_i_1 I1 -pin push_pointer_d_reg[2]_i_1 I1 -pin push_pointer_q_reg[2] Q
netloc push_pointer_q[2] 1 11 3 3430 41590 3710J 41490 4320
load net fifo_ff_gen.fifo_registers_reg[0]__0[10] -pin fifo_ff_gen.fifo_registers_reg[0][10] Q -pin {pop_o\.data[6]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[10] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7][27]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][27]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][27]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][27]_i_2_n_0 1 13 1 N
load net fifo_ff_gen.fifo_registers_reg[7]__0[4] -pin fifo_ff_gen.fifo_registers_reg[7][4] Q -pin {pop_o\.data[0]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[4] 1 15 1 5560
load net fifo_registers[24] -pin fifo_ff_gen.fifo_registers[7][24]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][24] D -pin fifo_ff_gen.fifo_registers_reg[1][24] D -pin fifo_ff_gen.fifo_registers_reg[2][24] D -pin fifo_ff_gen.fifo_registers_reg[3][24] D -pin fifo_ff_gen.fifo_registers_reg[4][24] D -pin fifo_ff_gen.fifo_registers_reg[5][24] D -pin fifo_ff_gen.fifo_registers_reg[6][24] D -pin fifo_ff_gen.fifo_registers_reg[7][24] D
netloc fifo_registers[24] 1 14 1 5040
load net {pop_o\.data[2]_INST_0_i_3_n_0} -pin {pop_o\.data[2]_INST_0_i_1} I1 -pin {pop_o\.data[2]_INST_0_i_3} O
netloc {pop_o\.data[2]_INST_0_i_3_n_0} 1 16 1 5840
load net {pop_o\.data[31]} -attr @rip(#000000) 31 -port {pop_o\.data[31]} -pin {pop_o\.data[31]_INST_0} O
load net {pop_o\.data[3]_INST_0_i_3_n_0} -pin {pop_o\.data[3]_INST_0_i_1} I1 -pin {pop_o\.data[3]_INST_0_i_3} O
netloc {pop_o\.data[3]_INST_0_i_3_n_0} 1 16 1 5840
load net {pop_o\.data[9]} -attr @rip(#000000) 9 -port {pop_o\.data[9]} -pin {pop_o\.data[9]_INST_0} O
load net fifo_ff_gen.fifo_registers_reg[3]__0[33] -pin fifo_ff_gen.fifo_registers_reg[3][33] Q -pin {pop_o\.data[29]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[33] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7]__0[1] -pin fifo_ff_gen.fifo_registers_reg[7][1] Q -pin {pop_o\.strb[1]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[1] 1 15 1 5440
load net fifo_ff_gen.fifo_registers_reg[4]__0[19] -pin fifo_ff_gen.fifo_registers_reg[4][19] Q -pin {pop_o\.data[15]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[19] 1 15 1 5580
load net push_pointer_d[1] -pin FSM_sequential_cs[1]_i_3 I4 -pin push_pointer_d_reg[1] Q -pin push_pointer_q[1]_i_1 I0
netloc push_pointer_d[1] 1 9 5 2670 41890 2990J 41990 NJ 41990 3810J 41970 4320
load net fifo_ff_gen.fifo_registers_reg[3]__0[16] -pin fifo_ff_gen.fifo_registers_reg[3][16] Q -pin {pop_o\.data[12]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[16] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[3]__0[30] -pin fifo_ff_gen.fifo_registers_reg[3][30] Q -pin {pop_o\.data[26]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[30] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[4]__0[22] -pin fifo_ff_gen.fifo_registers_reg[4][22] Q -pin {pop_o\.data[18]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[22] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[7]__0[17] -pin fifo_ff_gen.fifo_registers_reg[7][17] Q -pin {pop_o\.data[13]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[17] 1 15 1 N
load net flags_o[push_pointer][3] -attr @rip(#000000) 3 -port flags_o[push_pointer][3] -pin flags_o[push_pointer][3]_INST_0 O
load net {pop_o\.data[14]_INST_0_i_2_n_0} -pin {pop_o\.data[14]_INST_0_i_1} I0 -pin {pop_o\.data[14]_INST_0_i_2} O
netloc {pop_o\.data[14]_INST_0_i_2_n_0} 1 16 1 5840
load net {pop_o\.strb[1]_INST_0_i_2_n_0} -pin {pop_o\.strb[1]_INST_0_i_1} I0 -pin {pop_o\.strb[1]_INST_0_i_2} O
netloc {pop_o\.strb[1]_INST_0_i_2_n_0} 1 16 1 5960
load net fifo_ff_gen.fifo_registers_reg[1]__0[24] -pin fifo_ff_gen.fifo_registers_reg[1][24] Q -pin {pop_o\.data[20]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[24] 1 15 1 5560
load net {pop_o\.data[26]_INST_0_i_3_n_0} -pin {pop_o\.data[26]_INST_0_i_1} I1 -pin {pop_o\.data[26]_INST_0_i_3} O
netloc {pop_o\.data[26]_INST_0_i_3_n_0} 1 16 1 5960
load net {pop_o\.strb[3]_INST_0_i_2_n_0} -pin {pop_o\.strb[3]_INST_0_i_1} I0 -pin {pop_o\.strb[3]_INST_0_i_2} O
netloc {pop_o\.strb[3]_INST_0_i_2_n_0} 1 16 1 5920
load net {pop_o\.data[17]} -attr @rip(#000000) 17 -port {pop_o\.data[17]} -pin {pop_o\.data[17]_INST_0} O
load net {pop_o\.data_OBUF[16]} -pin {pop_o\.data[16]_INST_0} I -pin {pop_o\.data[16]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[16]} 1 17 1 N
load net fifo_registers[29] -pin fifo_ff_gen.fifo_registers[7][29]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][29] D -pin fifo_ff_gen.fifo_registers_reg[1][29] D -pin fifo_ff_gen.fifo_registers_reg[2][29] D -pin fifo_ff_gen.fifo_registers_reg[3][29] D -pin fifo_ff_gen.fifo_registers_reg[4][29] D -pin fifo_ff_gen.fifo_registers_reg[5][29] D -pin fifo_ff_gen.fifo_registers_reg[6][29] D -pin fifo_ff_gen.fifo_registers_reg[7][29] D
netloc fifo_registers[29] 1 14 1 4800
load net {pop_o\.data[12]_INST_0_i_3_n_0} -pin {pop_o\.data[12]_INST_0_i_1} I1 -pin {pop_o\.data[12]_INST_0_i_3} O
netloc {pop_o\.data[12]_INST_0_i_3_n_0} 1 16 1 N
load net {pop_o\.strb[2]} -attr @rip(#000000) 2 -port {pop_o\.strb[2]} -pin {pop_o\.strb[2]_INST_0} O
load net {push_i\.data[2]} -attr @rip(#000000) {push_i\.data[2]} -pin fifo_ff_gen.fifo_registers_reg[7][6]_i_2 I -port {push_i\.data[2]}
load net fifo_ff_gen.fifo_registers_reg[2]__0[10] -pin fifo_ff_gen.fifo_registers_reg[2][10] Q -pin {pop_o\.data[6]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[10] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[4]__0[33] -pin fifo_ff_gen.fifo_registers_reg[4][33] Q -pin {pop_o\.data[29]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[33] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[5]__0[18] -pin fifo_ff_gen.fifo_registers_reg[5][18] Q -pin {pop_o\.data[14]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[18] 1 15 1 5420
load net fifo_ff_gen.fifo_registers_reg[7][15]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][15]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][15]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][15]_i_2_n_0 1 13 1 N
load net {pop_o\.strb_OBUF[0]} -pin {pop_o\.strb[0]_INST_0} I -pin {pop_o\.strb[0]_INST_0_i_1} O
netloc {pop_o\.strb_OBUF[0]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[23] -pin fifo_ff_gen.fifo_registers_reg[4][23] Q -pin {pop_o\.data[19]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[23] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[6]__0[5] -pin fifo_ff_gen.fifo_registers_reg[6][5] Q -pin {pop_o\.data[1]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[5] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7]__0[28] -pin fifo_ff_gen.fifo_registers_reg[7][28] Q -pin {pop_o\.data[24]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[28] 1 15 1 N
load net fifo_registers[11] -pin fifo_ff_gen.fifo_registers[7][11]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][11] D -pin fifo_ff_gen.fifo_registers_reg[1][11] D -pin fifo_ff_gen.fifo_registers_reg[2][11] D -pin fifo_ff_gen.fifo_registers_reg[3][11] D -pin fifo_ff_gen.fifo_registers_reg[4][11] D -pin fifo_ff_gen.fifo_registers_reg[5][11] D -pin fifo_ff_gen.fifo_registers_reg[6][11] D -pin fifo_ff_gen.fifo_registers_reg[7][11] D
netloc fifo_registers[11] 1 14 1 4960
load net {pop_o\.data[26]} -attr @rip(#000000) 26 -port {pop_o\.data[26]} -pin {pop_o\.data[26]_INST_0} O
load net fifo_ff_gen.fifo_registers_reg[3]__0[12] -pin fifo_ff_gen.fifo_registers_reg[3][12] Q -pin {pop_o\.data[8]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[12] 1 15 1 5560
load net {pop_o\.data[21]} -attr @rip(#000000) 21 -port {pop_o\.data[21]} -pin {pop_o\.data[21]_INST_0} O
load net {pop_o\.data[22]_INST_0_i_3_n_0} -pin {pop_o\.data[22]_INST_0_i_1} I1 -pin {pop_o\.data[22]_INST_0_i_3} O
netloc {pop_o\.data[22]_INST_0_i_3_n_0} 1 16 1 5960
load net fifo_ff_gen.fifo_registers_reg[1]__0[30] -pin fifo_ff_gen.fifo_registers_reg[1][30] Q -pin {pop_o\.data[26]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[30] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[2]__0[32] -pin fifo_ff_gen.fifo_registers_reg[2][32] Q -pin {pop_o\.data[28]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[32] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[2]__0[3] -pin fifo_ff_gen.fifo_registers_reg[2][3] Q -pin {pop_o\.strb[3]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[3] 1 15 1 5580
load net fifo_registers[6] -pin fifo_ff_gen.fifo_registers[7][6]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][6] D -pin fifo_ff_gen.fifo_registers_reg[1][6] D -pin fifo_ff_gen.fifo_registers_reg[2][6] D -pin fifo_ff_gen.fifo_registers_reg[3][6] D -pin fifo_ff_gen.fifo_registers_reg[4][6] D -pin fifo_ff_gen.fifo_registers_reg[5][6] D -pin fifo_ff_gen.fifo_registers_reg[6][6] D -pin fifo_ff_gen.fifo_registers_reg[7][6] D
netloc fifo_registers[6] 1 14 1 5040
load net fifo_ff_gen.fifo_registers_reg[1]__0[12] -pin fifo_ff_gen.fifo_registers_reg[1][12] Q -pin {pop_o\.data[8]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[12] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[4]__0[9] -pin fifo_ff_gen.fifo_registers_reg[4][9] Q -pin {pop_o\.data[5]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[9] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[5]__0[5] -pin fifo_ff_gen.fifo_registers_reg[5][5] Q -pin {pop_o\.data[1]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[5] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7][6]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][6]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][6]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][6]_i_2_n_0 1 13 1 N
load net fifo_registers[33] -pin fifo_ff_gen.fifo_registers[7][33]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][33] D -pin fifo_ff_gen.fifo_registers_reg[1][33] D -pin fifo_ff_gen.fifo_registers_reg[2][33] D -pin fifo_ff_gen.fifo_registers_reg[3][33] D -pin fifo_ff_gen.fifo_registers_reg[4][33] D -pin fifo_ff_gen.fifo_registers_reg[5][33] D -pin fifo_ff_gen.fifo_registers_reg[6][33] D -pin fifo_ff_gen.fifo_registers_reg[7][33] D
netloc fifo_registers[33] 1 14 1 4900
load net flags_o[pop_pointer][3] -attr @rip(#000000) 3 -port flags_o[pop_pointer][3] -pin flags_o[pop_pointer][3]_INST_0 O
load net push_pointer_q[1] -pin fifo_ff_gen.fifo_registers[0][35]_i_1 I2 -pin fifo_ff_gen.fifo_registers[1][35]_i_1 I2 -pin fifo_ff_gen.fifo_registers[2][35]_i_1 I1 -pin fifo_ff_gen.fifo_registers[3][35]_i_1 I0 -pin fifo_ff_gen.fifo_registers[4][35]_i_1 I2 -pin fifo_ff_gen.fifo_registers[5][35]_i_1 I2 -pin fifo_ff_gen.fifo_registers[6][35]_i_1 I0 -pin fifo_ff_gen.fifo_registers[7][35]_i_1 I0 -pin push_pointer_d_reg[1]_i_1 I1 -pin push_pointer_d_reg[2]_i_1 I2 -pin push_pointer_q_reg[1] Q
netloc push_pointer_q[1] 1 7 7 2150 41770 NJ 41770 NJ 41770 NJ 41770 3370 41450 NJ 41450 4380
load net fifo_ff_gen.fifo_registers_reg[0]__0[31] -pin fifo_ff_gen.fifo_registers_reg[0][31] Q -pin {pop_o\.data[27]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[31] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[5]__0[2] -pin fifo_ff_gen.fifo_registers_reg[5][2] Q -pin {pop_o\.strb[2]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[2] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[6]__0[27] -pin fifo_ff_gen.fifo_registers_reg[6][27] Q -pin {pop_o\.data[23]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[27] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[3]__0[2] -pin fifo_ff_gen.fifo_registers_reg[3][2] Q -pin {pop_o\.strb[2]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[2] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[1]__0[3] -pin fifo_ff_gen.fifo_registers_reg[1][3] Q -pin {pop_o\.strb[3]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[3] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7]__0[32] -pin fifo_ff_gen.fifo_registers_reg[7][32] Q -pin {pop_o\.data[28]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[32] 1 15 1 N
load net fifo_registers[23] -pin fifo_ff_gen.fifo_registers[7][23]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][23] D -pin fifo_ff_gen.fifo_registers_reg[1][23] D -pin fifo_ff_gen.fifo_registers_reg[2][23] D -pin fifo_ff_gen.fifo_registers_reg[3][23] D -pin fifo_ff_gen.fifo_registers_reg[4][23] D -pin fifo_ff_gen.fifo_registers_reg[5][23] D -pin fifo_ff_gen.fifo_registers_reg[6][23] D -pin fifo_ff_gen.fifo_registers_reg[7][23] D
netloc fifo_registers[23] 1 14 1 5040
load net flags_o[pop_pointer][2] -attr @rip(#000000) 2 -port flags_o[pop_pointer][2] -pin flags_o[pop_pointer][2]_INST_0 O
load net fifo_ff_gen.fifo_registers_reg[7][5]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][5]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][5]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][5]_i_2_n_0 1 13 1 N
load net fifo_ff_gen.fifo_registers_reg[7]__0[5] -pin fifo_ff_gen.fifo_registers_reg[7][5] Q -pin {pop_o\.data[1]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[5] 1 15 1 N
load net {pop_o\.data[3]} -attr @rip(#000000) 3 -port {pop_o\.data[3]} -pin {pop_o\.data[3]_INST_0} O
load net {pop_o\.data_OBUF[6]} -pin {pop_o\.data[6]_INST_0} I -pin {pop_o\.data[6]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[6]} 1 17 1 N
load net {push_i\.data[17]} -attr @rip(#000000) {push_i\.data[17]} -pin fifo_ff_gen.fifo_registers_reg[7][21]_i_2 I -port {push_i\.data[17]}
load net fifo_ff_gen.fifo_registers_reg[4]__0[18] -pin fifo_ff_gen.fifo_registers_reg[4][18] Q -pin {pop_o\.data[14]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[18] 1 15 1 5440
load net fifo_ff_gen.fifo_registers_reg[3]__0[34] -pin fifo_ff_gen.fifo_registers_reg[3][34] Q -pin {pop_o\.data[30]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[34] 1 15 1 5400
load net {push_i\.ready} -port {push_i\.ready} -pin {push_i\.ready_INST_0} O
netloc {push_i\.ready} 1 18 1 NJ
load net {pop_o\.data[15]_INST_0_i_3_n_0} -pin {pop_o\.data[15]_INST_0_i_1} I1 -pin {pop_o\.data[15]_INST_0_i_3} O
netloc {pop_o\.data[15]_INST_0_i_3_n_0} 1 16 1 N
load net fifo_ff_gen.fifo_registers_reg[3]__0[31] -pin fifo_ff_gen.fifo_registers_reg[3][31] Q -pin {pop_o\.data[27]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[31] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[3]__0[29] -pin fifo_ff_gen.fifo_registers_reg[3][29] Q -pin {pop_o\.data[25]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[29] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7]__0[18] -pin fifo_ff_gen.fifo_registers_reg[7][18] Q -pin {pop_o\.data[14]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[18] 1 15 1 N
load net flags_o[push_pointer][4] -attr @rip(#000000) 4 -port flags_o[push_pointer][4] -pin flags_o[push_pointer][4]_INST_0 O
load net {push_i\.data[9]} -attr @rip(#000000) {push_i\.data[9]} -pin fifo_ff_gen.fifo_registers_reg[7][13]_i_2 I -port {push_i\.data[9]}
load net fifo_ff_gen.fifo_registers_reg[6]__0[31] -pin fifo_ff_gen.fifo_registers_reg[6][31] Q -pin {pop_o\.data[27]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[31] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7][17]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][17]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][17]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][17]_i_2_n_0 1 13 1 N
load net fifo_ff_gen.fifo_registers_reg[7][22]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][22]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][22]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][22]_i_2_n_0 1 13 1 N
load net fifo_ff_gen.fifo_registers_reg[1]__0[17] -pin fifo_ff_gen.fifo_registers_reg[1][17] Q -pin {pop_o\.data[13]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[17] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[5]__0[33] -pin fifo_ff_gen.fifo_registers_reg[5][33] Q -pin {pop_o\.data[29]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[33] 1 15 1 5400
load net {pop_o\.data[18]} -attr @rip(#000000) 18 -port {pop_o\.data[18]} -pin {pop_o\.data[18]_INST_0} O
load net {pop_o\.data_OBUF[17]} -pin {pop_o\.data[17]_INST_0} I -pin {pop_o\.data[17]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[17]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[32] -pin fifo_ff_gen.fifo_registers_reg[4][32] Q -pin {pop_o\.data[28]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[32] 1 15 1 5580
load net {pop_o\.data_OBUF[27]} -pin {pop_o\.data[27]_INST_0} I -pin {pop_o\.data[27]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[27]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[5]__0[30] -pin fifo_ff_gen.fifo_registers_reg[5][30] Q -pin {pop_o\.data[26]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[30] 1 15 1 5560
load net {pop_o\.data[19]_INST_0_i_2_n_0} -pin {pop_o\.data[19]_INST_0_i_1} I0 -pin {pop_o\.data[19]_INST_0_i_2} O
netloc {pop_o\.data[19]_INST_0_i_2_n_0} 1 16 1 N
load net {push_i\.data[3]} -attr @rip(#000000) {push_i\.data[3]} -pin fifo_ff_gen.fifo_registers_reg[7][7]_i_2 I -port {push_i\.data[3]}
load net fifo_ff_gen.fifo_registers_reg[5]__0[19] -pin fifo_ff_gen.fifo_registers_reg[5][19] Q -pin {pop_o\.data[15]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[19] 1 15 1 5560
load net {pop_o\.data[23]_INST_0_i_2_n_0} -pin {pop_o\.data[23]_INST_0_i_1} I0 -pin {pop_o\.data[23]_INST_0_i_2} O
netloc {pop_o\.data[23]_INST_0_i_2_n_0} 1 16 1 N
load net fifo_ff_gen.fifo_registers_reg[4]__0[24] -pin fifo_ff_gen.fifo_registers_reg[4][24] Q -pin {pop_o\.data[20]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[24] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[2]__0[7] -pin fifo_ff_gen.fifo_registers_reg[2][7] Q -pin {pop_o\.data[3]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[7] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[6]__0[6] -pin fifo_ff_gen.fifo_registers_reg[6][6] Q -pin {pop_o\.data[2]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[6] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7]__0[29] -pin fifo_ff_gen.fifo_registers_reg[7][29] Q -pin {pop_o\.data[25]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[29] 1 15 1 N
load net fifo_registers[12] -pin fifo_ff_gen.fifo_registers[7][12]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][12] D -pin fifo_ff_gen.fifo_registers_reg[1][12] D -pin fifo_ff_gen.fifo_registers_reg[2][12] D -pin fifo_ff_gen.fifo_registers_reg[3][12] D -pin fifo_ff_gen.fifo_registers_reg[4][12] D -pin fifo_ff_gen.fifo_registers_reg[5][12] D -pin fifo_ff_gen.fifo_registers_reg[6][12] D -pin fifo_ff_gen.fifo_registers_reg[7][12] D
netloc fifo_registers[12] 1 14 1 5040
load net pop_pointer_q[2] -pin {pop_o\.data[0]_INST_0_i_1} S -pin {pop_o\.data[10]_INST_0_i_1} S -pin {pop_o\.data[11]_INST_0_i_1} S -pin {pop_o\.data[12]_INST_0_i_1} S -pin {pop_o\.data[13]_INST_0_i_1} S -pin {pop_o\.data[14]_INST_0_i_1} S -pin {pop_o\.data[15]_INST_0_i_1} S -pin {pop_o\.data[16]_INST_0_i_1} S -pin {pop_o\.data[17]_INST_0_i_1} S -pin {pop_o\.data[18]_INST_0_i_1} S -pin {pop_o\.data[19]_INST_0_i_1} S -pin {pop_o\.data[1]_INST_0_i_1} S -pin {pop_o\.data[20]_INST_0_i_1} S -pin {pop_o\.data[21]_INST_0_i_1} S -pin {pop_o\.data[22]_INST_0_i_1} S -pin {pop_o\.data[23]_INST_0_i_1} S -pin {pop_o\.data[24]_INST_0_i_1} S -pin {pop_o\.data[25]_INST_0_i_1} S -pin {pop_o\.data[26]_INST_0_i_1} S -pin {pop_o\.data[27]_INST_0_i_1} S -pin {pop_o\.data[28]_INST_0_i_1} S -pin {pop_o\.data[29]_INST_0_i_1} S -pin {pop_o\.data[2]_INST_0_i_1} S -pin {pop_o\.data[30]_INST_0_i_1} S -pin {pop_o\.data[31]_INST_0_i_1} S -pin {pop_o\.data[3]_INST_0_i_1} S -pin {pop_o\.data[4]_INST_0_i_1} S -pin {pop_o\.data[5]_INST_0_i_1} S -pin {pop_o\.data[6]_INST_0_i_1} S -pin {pop_o\.data[7]_INST_0_i_1} S -pin {pop_o\.data[8]_INST_0_i_1} S -pin {pop_o\.data[9]_INST_0_i_1} S -pin {pop_o\.strb[0]_INST_0_i_1} S -pin {pop_o\.strb[1]_INST_0_i_1} S -pin {pop_o\.strb[2]_INST_0_i_1} S -pin {pop_o\.strb[3]_INST_0_i_1} S -pin pop_pointer_d_reg[2]_i_1 I1 -pin pop_pointer_q_reg[2] Q
netloc pop_pointer_q[2] 1 11 6 3390 41430 NJ 41430 NJ 41430 NJ 41430 NJ 41430 5900
load net clk_i_IBUF_BUFG -pin FSM_sequential_cs_reg[0] C -pin FSM_sequential_cs_reg[1] C -pin clk_i_IBUF_BUFG_inst O -pin fifo_ff_gen.fifo_registers_reg[0][0] C -pin fifo_ff_gen.fifo_registers_reg[0][10] C -pin fifo_ff_gen.fifo_registers_reg[0][11] C -pin fifo_ff_gen.fifo_registers_reg[0][12] C -pin fifo_ff_gen.fifo_registers_reg[0][13] C -pin fifo_ff_gen.fifo_registers_reg[0][14] C -pin fifo_ff_gen.fifo_registers_reg[0][15] C -pin fifo_ff_gen.fifo_registers_reg[0][16] C -pin fifo_ff_gen.fifo_registers_reg[0][17] C -pin fifo_ff_gen.fifo_registers_reg[0][18] C -pin fifo_ff_gen.fifo_registers_reg[0][19] C -pin fifo_ff_gen.fifo_registers_reg[0][1] C -pin fifo_ff_gen.fifo_registers_reg[0][20] C -pin fifo_ff_gen.fifo_registers_reg[0][21] C -pin fifo_ff_gen.fifo_registers_reg[0][22] C -pin fifo_ff_gen.fifo_registers_reg[0][23] C -pin fifo_ff_gen.fifo_registers_reg[0][24] C -pin fifo_ff_gen.fifo_registers_reg[0][25] C -pin fifo_ff_gen.fifo_registers_reg[0][26] C -pin fifo_ff_gen.fifo_registers_reg[0][27] C -pin fifo_ff_gen.fifo_registers_reg[0][28] C -pin fifo_ff_gen.fifo_registers_reg[0][29] C -pin fifo_ff_gen.fifo_registers_reg[0][2] C -pin fifo_ff_gen.fifo_registers_reg[0][30] C -pin fifo_ff_gen.fifo_registers_reg[0][31] C -pin fifo_ff_gen.fifo_registers_reg[0][32] C -pin fifo_ff_gen.fifo_registers_reg[0][33] C -pin fifo_ff_gen.fifo_registers_reg[0][34] C -pin fifo_ff_gen.fifo_registers_reg[0][35] C -pin fifo_ff_gen.fifo_registers_reg[0][3] C -pin fifo_ff_gen.fifo_registers_reg[0][4] C -pin fifo_ff_gen.fifo_registers_reg[0][5] C -pin fifo_ff_gen.fifo_registers_reg[0][6] C -pin fifo_ff_gen.fifo_registers_reg[0][7] C -pin fifo_ff_gen.fifo_registers_reg[0][8] C -pin fifo_ff_gen.fifo_registers_reg[0][9] C -pin fifo_ff_gen.fifo_registers_reg[1][0] C -pin fifo_ff_gen.fifo_registers_reg[1][10] C -pin fifo_ff_gen.fifo_registers_reg[1][11] C -pin fifo_ff_gen.fifo_registers_reg[1][12] C -pin fifo_ff_gen.fifo_registers_reg[1][13] C -pin fifo_ff_gen.fifo_registers_reg[1][14] C -pin fifo_ff_gen.fifo_registers_reg[1][15] C -pin fifo_ff_gen.fifo_registers_reg[1][16] C -pin fifo_ff_gen.fifo_registers_reg[1][17] C -pin fifo_ff_gen.fifo_registers_reg[1][18] C -pin fifo_ff_gen.fifo_registers_reg[1][19] C -pin fifo_ff_gen.fifo_registers_reg[1][1] C -pin fifo_ff_gen.fifo_registers_reg[1][20] C -pin fifo_ff_gen.fifo_registers_reg[1][21] C -pin fifo_ff_gen.fifo_registers_reg[1][22] C -pin fifo_ff_gen.fifo_registers_reg[1][23] C -pin fifo_ff_gen.fifo_registers_reg[1][24] C -pin fifo_ff_gen.fifo_registers_reg[1][25] C -pin fifo_ff_gen.fifo_registers_reg[1][26] C -pin fifo_ff_gen.fifo_registers_reg[1][27] C -pin fifo_ff_gen.fifo_registers_reg[1][28] C -pin fifo_ff_gen.fifo_registers_reg[1][29] C -pin fifo_ff_gen.fifo_registers_reg[1][2] C -pin fifo_ff_gen.fifo_registers_reg[1][30] C -pin fifo_ff_gen.fifo_registers_reg[1][31] C -pin fifo_ff_gen.fifo_registers_reg[1][32] C -pin fifo_ff_gen.fifo_registers_reg[1][33] C -pin fifo_ff_gen.fifo_registers_reg[1][34] C -pin fifo_ff_gen.fifo_registers_reg[1][35] C -pin fifo_ff_gen.fifo_registers_reg[1][3] C -pin fifo_ff_gen.fifo_registers_reg[1][4] C -pin fifo_ff_gen.fifo_registers_reg[1][5] C -pin fifo_ff_gen.fifo_registers_reg[1][6] C -pin fifo_ff_gen.fifo_registers_reg[1][7] C -pin fifo_ff_gen.fifo_registers_reg[1][8] C -pin fifo_ff_gen.fifo_registers_reg[1][9] C -pin fifo_ff_gen.fifo_registers_reg[2][0] C -pin fifo_ff_gen.fifo_registers_reg[2][10] C -pin fifo_ff_gen.fifo_registers_reg[2][11] C -pin fifo_ff_gen.fifo_registers_reg[2][12] C -pin fifo_ff_gen.fifo_registers_reg[2][13] C -pin fifo_ff_gen.fifo_registers_reg[2][14] C -pin fifo_ff_gen.fifo_registers_reg[2][15] C -pin fifo_ff_gen.fifo_registers_reg[2][16] C -pin fifo_ff_gen.fifo_registers_reg[2][17] C -pin fifo_ff_gen.fifo_registers_reg[2][18] C -pin fifo_ff_gen.fifo_registers_reg[2][19] C -pin fifo_ff_gen.fifo_registers_reg[2][1] C -pin fifo_ff_gen.fifo_registers_reg[2][20] C -pin fifo_ff_gen.fifo_registers_reg[2][21] C -pin fifo_ff_gen.fifo_registers_reg[2][22] C -pin fifo_ff_gen.fifo_registers_reg[2][23] C -pin fifo_ff_gen.fifo_registers_reg[2][24] C -pin fifo_ff_gen.fifo_registers_reg[2][25] C -pin fifo_ff_gen.fifo_registers_reg[2][26] C -pin fifo_ff_gen.fifo_registers_reg[2][27] C -pin fifo_ff_gen.fifo_registers_reg[2][28] C -pin fifo_ff_gen.fifo_registers_reg[2][29] C -pin fifo_ff_gen.fifo_registers_reg[2][2] C -pin fifo_ff_gen.fifo_registers_reg[2][30] C -pin fifo_ff_gen.fifo_registers_reg[2][31] C -pin fifo_ff_gen.fifo_registers_reg[2][32] C -pin fifo_ff_gen.fifo_registers_reg[2][33] C -pin fifo_ff_gen.fifo_registers_reg[2][34] C -pin fifo_ff_gen.fifo_registers_reg[2][35] C -pin fifo_ff_gen.fifo_registers_reg[2][3] C -pin fifo_ff_gen.fifo_registers_reg[2][4] C -pin fifo_ff_gen.fifo_registers_reg[2][5] C -pin fifo_ff_gen.fifo_registers_reg[2][6] C -pin fifo_ff_gen.fifo_registers_reg[2][7] C -pin fifo_ff_gen.fifo_registers_reg[2][8] C -pin fifo_ff_gen.fifo_registers_reg[2][9] C -pin fifo_ff_gen.fifo_registers_reg[3][0] C -pin fifo_ff_gen.fifo_registers_reg[3][10] C -pin fifo_ff_gen.fifo_registers_reg[3][11] C -pin fifo_ff_gen.fifo_registers_reg[3][12] C -pin fifo_ff_gen.fifo_registers_reg[3][13] C -pin fifo_ff_gen.fifo_registers_reg[3][14] C -pin fifo_ff_gen.fifo_registers_reg[3][15] C -pin fifo_ff_gen.fifo_registers_reg[3][16] C -pin fifo_ff_gen.fifo_registers_reg[3][17] C -pin fifo_ff_gen.fifo_registers_reg[3][18] C -pin fifo_ff_gen.fifo_registers_reg[3][19] C -pin fifo_ff_gen.fifo_registers_reg[3][1] C -pin fifo_ff_gen.fifo_registers_reg[3][20] C -pin fifo_ff_gen.fifo_registers_reg[3][21] C -pin fifo_ff_gen.fifo_registers_reg[3][22] C -pin fifo_ff_gen.fifo_registers_reg[3][23] C -pin fifo_ff_gen.fifo_registers_reg[3][24] C -pin fifo_ff_gen.fifo_registers_reg[3][25] C -pin fifo_ff_gen.fifo_registers_reg[3][26] C -pin fifo_ff_gen.fifo_registers_reg[3][27] C -pin fifo_ff_gen.fifo_registers_reg[3][28] C -pin fifo_ff_gen.fifo_registers_reg[3][29] C -pin fifo_ff_gen.fifo_registers_reg[3][2] C -pin fifo_ff_gen.fifo_registers_reg[3][30] C -pin fifo_ff_gen.fifo_registers_reg[3][31] C -pin fifo_ff_gen.fifo_registers_reg[3][32] C -pin fifo_ff_gen.fifo_registers_reg[3][33] C -pin fifo_ff_gen.fifo_registers_reg[3][34] C -pin fifo_ff_gen.fifo_registers_reg[3][35] C -pin fifo_ff_gen.fifo_registers_reg[3][3] C -pin fifo_ff_gen.fifo_registers_reg[3][4] C -pin fifo_ff_gen.fifo_registers_reg[3][5] C -pin fifo_ff_gen.fifo_registers_reg[3][6] C -pin fifo_ff_gen.fifo_registers_reg[3][7] C -pin fifo_ff_gen.fifo_registers_reg[3][8] C -pin fifo_ff_gen.fifo_registers_reg[3][9] C -pin fifo_ff_gen.fifo_registers_reg[4][0] C -pin fifo_ff_gen.fifo_registers_reg[4][10] C -pin fifo_ff_gen.fifo_registers_reg[4][11] C -pin fifo_ff_gen.fifo_registers_reg[4][12] C -pin fifo_ff_gen.fifo_registers_reg[4][13] C -pin fifo_ff_gen.fifo_registers_reg[4][14] C -pin fifo_ff_gen.fifo_registers_reg[4][15] C -pin fifo_ff_gen.fifo_registers_reg[4][16] C -pin fifo_ff_gen.fifo_registers_reg[4][17] C -pin fifo_ff_gen.fifo_registers_reg[4][18] C -pin fifo_ff_gen.fifo_registers_reg[4][19] C -pin fifo_ff_gen.fifo_registers_reg[4][1] C -pin fifo_ff_gen.fifo_registers_reg[4][20] C -pin fifo_ff_gen.fifo_registers_reg[4][21] C -pin fifo_ff_gen.fifo_registers_reg[4][22] C -pin fifo_ff_gen.fifo_registers_reg[4][23] C -pin fifo_ff_gen.fifo_registers_reg[4][24] C -pin fifo_ff_gen.fifo_registers_reg[4][25] C -pin fifo_ff_gen.fifo_registers_reg[4][26] C -pin fifo_ff_gen.fifo_registers_reg[4][27] C -pin fifo_ff_gen.fifo_registers_reg[4][28] C -pin fifo_ff_gen.fifo_registers_reg[4][29] C -pin fifo_ff_gen.fifo_registers_reg[4][2] C -pin fifo_ff_gen.fifo_registers_reg[4][30] C -pin fifo_ff_gen.fifo_registers_reg[4][31] C -pin fifo_ff_gen.fifo_registers_reg[4][32] C -pin fifo_ff_gen.fifo_registers_reg[4][33] C -pin fifo_ff_gen.fifo_registers_reg[4][34] C -pin fifo_ff_gen.fifo_registers_reg[4][35] C -pin fifo_ff_gen.fifo_registers_reg[4][3] C -pin fifo_ff_gen.fifo_registers_reg[4][4] C -pin fifo_ff_gen.fifo_registers_reg[4][5] C -pin fifo_ff_gen.fifo_registers_reg[4][6] C -pin fifo_ff_gen.fifo_registers_reg[4][7] C -pin fifo_ff_gen.fifo_registers_reg[4][8] C -pin fifo_ff_gen.fifo_registers_reg[4][9] C -pin fifo_ff_gen.fifo_registers_reg[5][0] C -pin fifo_ff_gen.fifo_registers_reg[5][10] C -pin fifo_ff_gen.fifo_registers_reg[5][11] C -pin fifo_ff_gen.fifo_registers_reg[5][12] C -pin fifo_ff_gen.fifo_registers_reg[5][13] C -pin fifo_ff_gen.fifo_registers_reg[5][14] C -pin fifo_ff_gen.fifo_registers_reg[5][15] C -pin fifo_ff_gen.fifo_registers_reg[5][16] C -pin fifo_ff_gen.fifo_registers_reg[5][17] C -pin fifo_ff_gen.fifo_registers_reg[5][18] C -pin fifo_ff_gen.fifo_registers_reg[5][19] C -pin fifo_ff_gen.fifo_registers_reg[5][1] C -pin fifo_ff_gen.fifo_registers_reg[5][20] C -pin fifo_ff_gen.fifo_registers_reg[5][21] C -pin fifo_ff_gen.fifo_registers_reg[5][22] C -pin fifo_ff_gen.fifo_registers_reg[5][23] C -pin fifo_ff_gen.fifo_registers_reg[5][24] C -pin fifo_ff_gen.fifo_registers_reg[5][25] C -pin fifo_ff_gen.fifo_registers_reg[5][26] C -pin fifo_ff_gen.fifo_registers_reg[5][27] C -pin fifo_ff_gen.fifo_registers_reg[5][28] C -pin fifo_ff_gen.fifo_registers_reg[5][29] C -pin fifo_ff_gen.fifo_registers_reg[5][2] C -pin fifo_ff_gen.fifo_registers_reg[5][30] C -pin fifo_ff_gen.fifo_registers_reg[5][31] C -pin fifo_ff_gen.fifo_registers_reg[5][32] C -pin fifo_ff_gen.fifo_registers_reg[5][33] C -pin fifo_ff_gen.fifo_registers_reg[5][34] C -pin fifo_ff_gen.fifo_registers_reg[5][35] C -pin fifo_ff_gen.fifo_registers_reg[5][3] C -pin fifo_ff_gen.fifo_registers_reg[5][4] C -pin fifo_ff_gen.fifo_registers_reg[5][5] C -pin fifo_ff_gen.fifo_registers_reg[5][6] C -pin fifo_ff_gen.fifo_registers_reg[5][7] C -pin fifo_ff_gen.fifo_registers_reg[5][8] C -pin fifo_ff_gen.fifo_registers_reg[5][9] C -pin fifo_ff_gen.fifo_registers_reg[6][0] C -pin fifo_ff_gen.fifo_registers_reg[6][10] C -pin fifo_ff_gen.fifo_registers_reg[6][11] C -pin fifo_ff_gen.fifo_registers_reg[6][12] C -pin fifo_ff_gen.fifo_registers_reg[6][13] C -pin fifo_ff_gen.fifo_registers_reg[6][14] C -pin fifo_ff_gen.fifo_registers_reg[6][15] C -pin fifo_ff_gen.fifo_registers_reg[6][16] C -pin fifo_ff_gen.fifo_registers_reg[6][17] C -pin fifo_ff_gen.fifo_registers_reg[6][18] C -pin fifo_ff_gen.fifo_registers_reg[6][19] C -pin fifo_ff_gen.fifo_registers_reg[6][1] C -pin fifo_ff_gen.fifo_registers_reg[6][20] C -pin fifo_ff_gen.fifo_registers_reg[6][21] C -pin fifo_ff_gen.fifo_registers_reg[6][22] C -pin fifo_ff_gen.fifo_registers_reg[6][23] C -pin fifo_ff_gen.fifo_registers_reg[6][24] C -pin fifo_ff_gen.fifo_registers_reg[6][25] C -pin fifo_ff_gen.fifo_registers_reg[6][26] C -pin fifo_ff_gen.fifo_registers_reg[6][27] C -pin fifo_ff_gen.fifo_registers_reg[6][28] C -pin fifo_ff_gen.fifo_registers_reg[6][29] C -pin fifo_ff_gen.fifo_registers_reg[6][2] C -pin fifo_ff_gen.fifo_registers_reg[6][30] C -pin fifo_ff_gen.fifo_registers_reg[6][31] C -pin fifo_ff_gen.fifo_registers_reg[6][32] C -pin fifo_ff_gen.fifo_registers_reg[6][33] C -pin fifo_ff_gen.fifo_registers_reg[6][34] C -pin fifo_ff_gen.fifo_registers_reg[6][35] C -pin fifo_ff_gen.fifo_registers_reg[6][3] C -pin fifo_ff_gen.fifo_registers_reg[6][4] C -pin fifo_ff_gen.fifo_registers_reg[6][5] C -pin fifo_ff_gen.fifo_registers_reg[6][6] C -pin fifo_ff_gen.fifo_registers_reg[6][7] C -pin fifo_ff_gen.fifo_registers_reg[6][8] C -pin fifo_ff_gen.fifo_registers_reg[6][9] C -pin fifo_ff_gen.fifo_registers_reg[7][0] C -pin fifo_ff_gen.fifo_registers_reg[7][10] C -pin fifo_ff_gen.fifo_registers_reg[7][11] C -pin fifo_ff_gen.fifo_registers_reg[7][12] C -pin fifo_ff_gen.fifo_registers_reg[7][13] C -pin fifo_ff_gen.fifo_registers_reg[7][14] C -pin fifo_ff_gen.fifo_registers_reg[7][15] C -pin fifo_ff_gen.fifo_registers_reg[7][16] C -pin fifo_ff_gen.fifo_registers_reg[7][17] C -pin fifo_ff_gen.fifo_registers_reg[7][18] C -pin fifo_ff_gen.fifo_registers_reg[7][19] C -pin fifo_ff_gen.fifo_registers_reg[7][1] C -pin fifo_ff_gen.fifo_registers_reg[7][20] C -pin fifo_ff_gen.fifo_registers_reg[7][21] C -pin fifo_ff_gen.fifo_registers_reg[7][22] C -pin fifo_ff_gen.fifo_registers_reg[7][23] C -pin fifo_ff_gen.fifo_registers_reg[7][24] C -pin fifo_ff_gen.fifo_registers_reg[7][25] C -pin fifo_ff_gen.fifo_registers_reg[7][26] C -pin fifo_ff_gen.fifo_registers_reg[7][27] C -pin fifo_ff_gen.fifo_registers_reg[7][28] C -pin fifo_ff_gen.fifo_registers_reg[7][29] C -pin fifo_ff_gen.fifo_registers_reg[7][2] C -pin fifo_ff_gen.fifo_registers_reg[7][30] C -pin fifo_ff_gen.fifo_registers_reg[7][31] C -pin fifo_ff_gen.fifo_registers_reg[7][32] C -pin fifo_ff_gen.fifo_registers_reg[7][33] C -pin fifo_ff_gen.fifo_registers_reg[7][34] C -pin fifo_ff_gen.fifo_registers_reg[7][35] C -pin fifo_ff_gen.fifo_registers_reg[7][3] C -pin fifo_ff_gen.fifo_registers_reg[7][4] C -pin fifo_ff_gen.fifo_registers_reg[7][5] C -pin fifo_ff_gen.fifo_registers_reg[7][6] C -pin fifo_ff_gen.fifo_registers_reg[7][7] C -pin fifo_ff_gen.fifo_registers_reg[7][8] C -pin fifo_ff_gen.fifo_registers_reg[7][9] C -pin pop_pointer_q_reg[0] C -pin pop_pointer_q_reg[1] C -pin pop_pointer_q_reg[2] C -pin push_pointer_q_reg[0] C -pin push_pointer_q_reg[1] C -pin push_pointer_q_reg[2] C
netloc clk_i_IBUF_BUFG 1 2 14 730 42130 NJ 42130 NJ 42130 NJ 42130 1830 42010 NJ 42010 NJ 42010 NJ 42010 3070 42190 NJ 42190 NJ 42190 NJ 42190 4980 42110 5540
load net clear_i -port clear_i -pin clear_i_IBUF_inst I
netloc clear_i 1 0 1 NJ
load net fifo_ff_gen.fifo_registers_reg[4]__0[3] -pin fifo_ff_gen.fifo_registers_reg[4][3] Q -pin {pop_o\.strb[3]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[3] 1 15 1 5400
load net pop_pointer_d[2] -pin FSM_sequential_cs[1]_i_3 I3 -pin pop_pointer_d_reg[2] Q -pin pop_pointer_q[2]_i_1 I0
netloc pop_pointer_d[2] 1 9 5 2750 41690 NJ 41690 NJ 41690 NJ 41690 4220
load net fifo_ff_gen.fifo_registers_reg[2]__0[4] -pin fifo_ff_gen.fifo_registers_reg[2][4] Q -pin {pop_o\.data[0]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[4] 1 15 1 5580
load net fifo_ff_gen.fifo_registers[5][35]_i_1_n_0 -pin fifo_ff_gen.fifo_registers[5][35]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[5][0] CE -pin fifo_ff_gen.fifo_registers_reg[5][10] CE -pin fifo_ff_gen.fifo_registers_reg[5][11] CE -pin fifo_ff_gen.fifo_registers_reg[5][12] CE -pin fifo_ff_gen.fifo_registers_reg[5][13] CE -pin fifo_ff_gen.fifo_registers_reg[5][14] CE -pin fifo_ff_gen.fifo_registers_reg[5][15] CE -pin fifo_ff_gen.fifo_registers_reg[5][16] CE -pin fifo_ff_gen.fifo_registers_reg[5][17] CE -pin fifo_ff_gen.fifo_registers_reg[5][18] CE -pin fifo_ff_gen.fifo_registers_reg[5][19] CE -pin fifo_ff_gen.fifo_registers_reg[5][1] CE -pin fifo_ff_gen.fifo_registers_reg[5][20] CE -pin fifo_ff_gen.fifo_registers_reg[5][21] CE -pin fifo_ff_gen.fifo_registers_reg[5][22] CE -pin fifo_ff_gen.fifo_registers_reg[5][23] CE -pin fifo_ff_gen.fifo_registers_reg[5][24] CE -pin fifo_ff_gen.fifo_registers_reg[5][25] CE -pin fifo_ff_gen.fifo_registers_reg[5][26] CE -pin fifo_ff_gen.fifo_registers_reg[5][27] CE -pin fifo_ff_gen.fifo_registers_reg[5][28] CE -pin fifo_ff_gen.fifo_registers_reg[5][29] CE -pin fifo_ff_gen.fifo_registers_reg[5][2] CE -pin fifo_ff_gen.fifo_registers_reg[5][30] CE -pin fifo_ff_gen.fifo_registers_reg[5][31] CE -pin fifo_ff_gen.fifo_registers_reg[5][32] CE -pin fifo_ff_gen.fifo_registers_reg[5][33] CE -pin fifo_ff_gen.fifo_registers_reg[5][34] CE -pin fifo_ff_gen.fifo_registers_reg[5][35] CE -pin fifo_ff_gen.fifo_registers_reg[5][3] CE -pin fifo_ff_gen.fifo_registers_reg[5][4] CE -pin fifo_ff_gen.fifo_registers_reg[5][5] CE -pin fifo_ff_gen.fifo_registers_reg[5][6] CE -pin fifo_ff_gen.fifo_registers_reg[5][7] CE -pin fifo_ff_gen.fifo_registers_reg[5][8] CE -pin fifo_ff_gen.fifo_registers_reg[5][9] CE
netloc fifo_ff_gen.fifo_registers[5][35]_i_1_n_0 1 14 1 4780
load net fifo_registers[7] -pin fifo_ff_gen.fifo_registers[7][7]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][7] D -pin fifo_ff_gen.fifo_registers_reg[1][7] D -pin fifo_ff_gen.fifo_registers_reg[2][7] D -pin fifo_ff_gen.fifo_registers_reg[3][7] D -pin fifo_ff_gen.fifo_registers_reg[4][7] D -pin fifo_ff_gen.fifo_registers_reg[5][7] D -pin fifo_ff_gen.fifo_registers_reg[6][7] D -pin fifo_ff_gen.fifo_registers_reg[7][7] D
netloc fifo_registers[7] 1 14 1 5040
load net push_pointer_q[0] -pin fifo_ff_gen.fifo_registers[0][35]_i_1 I1 -pin fifo_ff_gen.fifo_registers[1][35]_i_1 I1 -pin fifo_ff_gen.fifo_registers[2][35]_i_1 I0 -pin fifo_ff_gen.fifo_registers[3][35]_i_1 I1 -pin fifo_ff_gen.fifo_registers[4][35]_i_1 I0 -pin fifo_ff_gen.fifo_registers[5][35]_i_1 I1 -pin fifo_ff_gen.fifo_registers[6][35]_i_1 I2 -pin fifo_ff_gen.fifo_registers[7][35]_i_1 I2 -pin push_pointer_d_reg[0]_i_1 I0 -pin push_pointer_d_reg[1]_i_1 I0 -pin push_pointer_d_reg[2]_i_1 I0 -pin push_pointer_q_reg[0] Q
netloc push_pointer_q[0] 1 3 11 1030 41930 NJ 41930 NJ 41930 NJ 41930 2110 41730 NJ 41730 NJ 41730 NJ 41730 3450 41470 NJ 41470 4360
load net fifo_ff_gen.fifo_registers_reg[1]__0[13] -pin fifo_ff_gen.fifo_registers_reg[1][13] Q -pin {pop_o\.data[9]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[13] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[0]__0[30] -pin fifo_ff_gen.fifo_registers_reg[0][30] Q -pin {pop_o\.data[26]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[30] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[5]__0[6] -pin fifo_ff_gen.fifo_registers_reg[5][6] Q -pin {pop_o\.data[2]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[6] 1 15 1 5380
load net {pop_o\.data[27]_INST_0_i_3_n_0} -pin {pop_o\.data[27]_INST_0_i_1} I1 -pin {pop_o\.data[27]_INST_0_i_3} O
netloc {pop_o\.data[27]_INST_0_i_3_n_0} 1 16 1 5960
load net fifo_ff_gen.fifo_registers_reg[3]__0[6] -pin fifo_ff_gen.fifo_registers_reg[3][6] Q -pin {pop_o\.data[2]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[6] 1 15 1 5560
load net fifo_registers[22] -pin fifo_ff_gen.fifo_registers[7][22]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][22] D -pin fifo_ff_gen.fifo_registers_reg[1][22] D -pin fifo_ff_gen.fifo_registers_reg[2][22] D -pin fifo_ff_gen.fifo_registers_reg[3][22] D -pin fifo_ff_gen.fifo_registers_reg[4][22] D -pin fifo_ff_gen.fifo_registers_reg[5][22] D -pin fifo_ff_gen.fifo_registers_reg[6][22] D -pin fifo_ff_gen.fifo_registers_reg[7][22] D
netloc fifo_registers[22] 1 14 1 5040
load net fifo_registers[34] -pin fifo_ff_gen.fifo_registers[7][34]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][34] D -pin fifo_ff_gen.fifo_registers_reg[1][34] D -pin fifo_ff_gen.fifo_registers_reg[2][34] D -pin fifo_ff_gen.fifo_registers_reg[3][34] D -pin fifo_ff_gen.fifo_registers_reg[4][34] D -pin fifo_ff_gen.fifo_registers_reg[5][34] D -pin fifo_ff_gen.fifo_registers_reg[6][34] D -pin fifo_ff_gen.fifo_registers_reg[7][34] D
netloc fifo_registers[34] 1 14 1 4800
load net flags_o[pop_pointer][1] -attr @rip(#000000) 1 -port flags_o[pop_pointer][1] -pin flags_o[pop_pointer][1]_INST_0 O
load net flags_o[pop_pointer][4] -attr @rip(#000000) 4 -port flags_o[pop_pointer][4] -pin flags_o[pop_pointer][4]_INST_0 O
load net fifo_ff_gen.fifo_registers_reg[5]__0[3] -pin fifo_ff_gen.fifo_registers_reg[5][3] Q -pin {pop_o\.strb[3]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[3] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[6]__0[28] -pin fifo_ff_gen.fifo_registers_reg[6][28] Q -pin {pop_o\.data[24]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[28] 1 15 1 5380
load net {pop_o\.data[2]} -attr @rip(#000000) 2 -port {pop_o\.data[2]} -pin {pop_o\.data[2]_INST_0} O
load net {pop_o\.data_OBUF[5]} -pin {pop_o\.data[5]_INST_0} I -pin {pop_o\.data[5]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[5]} 1 17 1 N
load net {push_i\.data[16]} -attr @rip(#000000) {push_i\.data[16]} -pin fifo_ff_gen.fifo_registers_reg[7][20]_i_2 I -port {push_i\.data[16]}
load net fifo_ff_gen.fifo_registers_reg[3]__0[3] -pin fifo_ff_gen.fifo_registers_reg[3][3] Q -pin {pop_o\.strb[3]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[3] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7]__0[33] -pin fifo_ff_gen.fifo_registers_reg[7][33] Q -pin {pop_o\.data[29]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[33] 1 15 1 N
load net {pop_o\.data[0]_INST_0_i_2_n_0} -pin {pop_o\.data[0]_INST_0_i_1} I0 -pin {pop_o\.data[0]_INST_0_i_2} O
netloc {pop_o\.data[0]_INST_0_i_2_n_0} 1 16 1 5960
load net {pop_o\.data[16]_INST_0_i_3_n_0} -pin {pop_o\.data[16]_INST_0_i_1} I1 -pin {pop_o\.data[16]_INST_0_i_3} O
netloc {pop_o\.data[16]_INST_0_i_3_n_0} 1 16 1 5960
load net {pop_o\.data[9]_INST_0_i_3_n_0} -pin {pop_o\.data[9]_INST_0_i_1} I1 -pin {pop_o\.data[9]_INST_0_i_3} O
netloc {pop_o\.data[9]_INST_0_i_3_n_0} 1 16 1 5840
load net fifo_ff_gen.fifo_registers_reg[4]__0[20] -pin fifo_ff_gen.fifo_registers_reg[4][20] Q -pin {pop_o\.data[16]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[20] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[7]__0[15] -pin fifo_ff_gen.fifo_registers_reg[7][15] Q -pin {pop_o\.data[11]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[15] 1 15 1 N
load net {push_i\.data[28]} -attr @rip(#000000) {push_i\.data[28]} -pin fifo_ff_gen.fifo_registers_reg[7][32]_i_2 I -port {push_i\.data[28]}
load net fifo_ff_gen.fifo_registers_reg[3]__0[23] -pin fifo_ff_gen.fifo_registers_reg[3][23] Q -pin {pop_o\.data[19]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[23] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[3]__0[35] -pin fifo_ff_gen.fifo_registers_reg[3][35] Q -pin {pop_o\.data[31]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[35] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[3]__0[28] -pin fifo_ff_gen.fifo_registers_reg[3][28] Q -pin {pop_o\.data[24]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[28] 1 15 1 5380
load net {pop_o\.data[6]_INST_0_i_3_n_0} -pin {pop_o\.data[6]_INST_0_i_1} I1 -pin {pop_o\.data[6]_INST_0_i_3} O
netloc {pop_o\.data[6]_INST_0_i_3_n_0} 1 16 1 N
load net {push_i\.data[20]} -attr @rip(#000000) {push_i\.data[20]} -pin fifo_ff_gen.fifo_registers_reg[7][24]_i_2 I -port {push_i\.data[20]}
load net fifo_ff_gen.fifo_registers_reg[6]__0[30] -pin fifo_ff_gen.fifo_registers_reg[6][30] Q -pin {pop_o\.data[26]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[30] 1 15 1 5380
load net pop_pointer_q[0]_i_1_n_0 -pin pop_pointer_q[0]_i_1 O -pin pop_pointer_q_reg[0] D
netloc pop_pointer_q[0]_i_1_n_0 1 6 1 1810
load net fifo_ff_gen.fifo_registers_reg[3]__0[32] -pin fifo_ff_gen.fifo_registers_reg[3][32] Q -pin {pop_o\.data[28]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[32] 1 15 1 5380
load net flags_o[push_pointer][5] -attr @rip(#000000) 5 -port flags_o[push_pointer][5] -pin flags_o[push_pointer][5]_INST_0 O
load net fifo_ff_gen.fifo_registers_reg[1]__0[18] -pin fifo_ff_gen.fifo_registers_reg[1][18] Q -pin {pop_o\.data[14]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[18] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[5]__0[34] -pin fifo_ff_gen.fifo_registers_reg[5][34] Q -pin {pop_o\.data[30]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[34] 1 15 1 5420
load net fifo_ff_gen.fifo_registers_reg[6]__0[3] -pin fifo_ff_gen.fifo_registers_reg[6][3] Q -pin {pop_o\.strb[3]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[3] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7]__0[27] -pin fifo_ff_gen.fifo_registers_reg[7][27] Q -pin {pop_o\.data[23]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[27] 1 15 1 N
load net {pop_o\.data[19]} -attr @rip(#000000) 19 -port {pop_o\.data[19]} -pin {pop_o\.data[19]_INST_0} O
load net fifo_ff_gen.fifo_registers_reg[6]__0[21] -pin fifo_ff_gen.fifo_registers_reg[6][21] Q -pin {pop_o\.data[17]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[21] 1 15 1 5380
load net {pop_o\.data[8]_INST_0_i_3_n_0} -pin {pop_o\.data[8]_INST_0_i_1} I1 -pin {pop_o\.data[8]_INST_0_i_3} O
netloc {pop_o\.data[8]_INST_0_i_3_n_0} 1 16 1 5840
load net {pop_o\.data_OBUF[28]} -pin {pop_o\.data[28]_INST_0} I -pin {pop_o\.data[28]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[28]} 1 17 1 N
load net {pop_o\.strb[3]_INST_0_i_3_n_0} -pin {pop_o\.strb[3]_INST_0_i_1} I1 -pin {pop_o\.strb[3]_INST_0_i_3} O
netloc {pop_o\.strb[3]_INST_0_i_3_n_0} 1 16 1 5880
load net {pop_o\.valid} -port {pop_o\.valid} -pin {pop_o\.valid_INST_0} O
netloc {pop_o\.valid} 1 18 1 NJ
load net fifo_ff_gen.fifo_registers_reg[2]__0[1] -pin fifo_ff_gen.fifo_registers_reg[2][1] Q -pin {pop_o\.strb[1]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[1] 1 15 1 5540
load net {pop_o\.data[16]_INST_0_i_2_n_0} -pin {pop_o\.data[16]_INST_0_i_1} I0 -pin {pop_o\.data[16]_INST_0_i_2} O
netloc {pop_o\.data[16]_INST_0_i_2_n_0} 1 16 1 N
load net {push_i\.data[4]} -attr @rip(#000000) {push_i\.data[4]} -pin fifo_ff_gen.fifo_registers_reg[7][8]_i_2 I -port {push_i\.data[4]}
load net pop_pointer_d[1] -pin FSM_sequential_cs[1]_i_3 I5 -pin pop_pointer_d_reg[1] Q -pin pop_pointer_q[1]_i_1 I0
netloc pop_pointer_d[1] 1 9 5 2730 41870 3050J 41970 NJ 41970 3790J 41950 4220
load net fifo_ff_gen.fifo_registers[1][35]_i_1_n_0 -pin fifo_ff_gen.fifo_registers[1][35]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[1][0] CE -pin fifo_ff_gen.fifo_registers_reg[1][10] CE -pin fifo_ff_gen.fifo_registers_reg[1][11] CE -pin fifo_ff_gen.fifo_registers_reg[1][12] CE -pin fifo_ff_gen.fifo_registers_reg[1][13] CE -pin fifo_ff_gen.fifo_registers_reg[1][14] CE -pin fifo_ff_gen.fifo_registers_reg[1][15] CE -pin fifo_ff_gen.fifo_registers_reg[1][16] CE -pin fifo_ff_gen.fifo_registers_reg[1][17] CE -pin fifo_ff_gen.fifo_registers_reg[1][18] CE -pin fifo_ff_gen.fifo_registers_reg[1][19] CE -pin fifo_ff_gen.fifo_registers_reg[1][1] CE -pin fifo_ff_gen.fifo_registers_reg[1][20] CE -pin fifo_ff_gen.fifo_registers_reg[1][21] CE -pin fifo_ff_gen.fifo_registers_reg[1][22] CE -pin fifo_ff_gen.fifo_registers_reg[1][23] CE -pin fifo_ff_gen.fifo_registers_reg[1][24] CE -pin fifo_ff_gen.fifo_registers_reg[1][25] CE -pin fifo_ff_gen.fifo_registers_reg[1][26] CE -pin fifo_ff_gen.fifo_registers_reg[1][27] CE -pin fifo_ff_gen.fifo_registers_reg[1][28] CE -pin fifo_ff_gen.fifo_registers_reg[1][29] CE -pin fifo_ff_gen.fifo_registers_reg[1][2] CE -pin fifo_ff_gen.fifo_registers_reg[1][30] CE -pin fifo_ff_gen.fifo_registers_reg[1][31] CE -pin fifo_ff_gen.fifo_registers_reg[1][32] CE -pin fifo_ff_gen.fifo_registers_reg[1][33] CE -pin fifo_ff_gen.fifo_registers_reg[1][34] CE -pin fifo_ff_gen.fifo_registers_reg[1][35] CE -pin fifo_ff_gen.fifo_registers_reg[1][3] CE -pin fifo_ff_gen.fifo_registers_reg[1][4] CE -pin fifo_ff_gen.fifo_registers_reg[1][5] CE -pin fifo_ff_gen.fifo_registers_reg[1][6] CE -pin fifo_ff_gen.fifo_registers_reg[1][7] CE -pin fifo_ff_gen.fifo_registers_reg[1][8] CE -pin fifo_ff_gen.fifo_registers_reg[1][9] CE
netloc fifo_ff_gen.fifo_registers[1][35]_i_1_n_0 1 14 1 4720
load net fifo_ff_gen.fifo_registers_reg[2]__0[8] -pin fifo_ff_gen.fifo_registers_reg[2][8] Q -pin {pop_o\.data[4]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[8] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[4]__0[4] -pin fifo_ff_gen.fifo_registers_reg[4][4] Q -pin {pop_o\.data[0]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[4] 1 15 1 N
load net {pop_o\.data[15]_INST_0_i_2_n_0} -pin {pop_o\.data[15]_INST_0_i_1} I0 -pin {pop_o\.data[15]_INST_0_i_2} O
netloc {pop_o\.data[15]_INST_0_i_2_n_0} 1 16 1 5840
load net fifo_registers[21] -pin fifo_ff_gen.fifo_registers[7][21]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][21] D -pin fifo_ff_gen.fifo_registers_reg[1][21] D -pin fifo_ff_gen.fifo_registers_reg[2][21] D -pin fifo_ff_gen.fifo_registers_reg[3][21] D -pin fifo_ff_gen.fifo_registers_reg[4][21] D -pin fifo_ff_gen.fifo_registers_reg[5][21] D -pin fifo_ff_gen.fifo_registers_reg[6][21] D -pin fifo_ff_gen.fifo_registers_reg[7][21] D
netloc fifo_registers[21] 1 14 1 5040
load net fifo_registers[8] -pin fifo_ff_gen.fifo_registers[7][8]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][8] D -pin fifo_ff_gen.fifo_registers_reg[1][8] D -pin fifo_ff_gen.fifo_registers_reg[2][8] D -pin fifo_ff_gen.fifo_registers_reg[3][8] D -pin fifo_ff_gen.fifo_registers_reg[4][8] D -pin fifo_ff_gen.fifo_registers_reg[5][8] D -pin fifo_ff_gen.fifo_registers_reg[6][8] D -pin fifo_ff_gen.fifo_registers_reg[7][8] D
netloc fifo_registers[8] 1 14 1 5040
load net flags_o[pop_pointer][0] -attr @rip(#000000) 0 -port flags_o[pop_pointer][0] -pin flags_o[pop_pointer][0]_INST_0 O
load net fifo_ff_gen.fifo_registers_reg[1]__0[14] -pin fifo_ff_gen.fifo_registers_reg[1][14] Q -pin {pop_o\.data[10]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[14] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[5]__0[7] -pin fifo_ff_gen.fifo_registers_reg[5][7] Q -pin {pop_o\.data[3]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[7] 1 15 1 5380
load net {push_i\.data[15]} -attr @rip(#000000) {push_i\.data[15]} -pin fifo_ff_gen.fifo_registers_reg[7][19]_i_2 I -port {push_i\.data[15]}
load net fifo_ff_gen.fifo_registers_reg[3]__0[7] -pin fifo_ff_gen.fifo_registers_reg[3][7] Q -pin {pop_o\.data[3]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[7] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[4]__0[29] -pin fifo_ff_gen.fifo_registers_reg[4][29] Q -pin {pop_o\.data[25]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[29] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[7][29]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][29]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][29]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][29]_i_2_n_0 1 13 1 N
load net fifo_registers[35] -pin fifo_ff_gen.fifo_registers[7][35]_i_2 O -pin fifo_ff_gen.fifo_registers_reg[0][35] D -pin fifo_ff_gen.fifo_registers_reg[1][35] D -pin fifo_ff_gen.fifo_registers_reg[2][35] D -pin fifo_ff_gen.fifo_registers_reg[3][35] D -pin fifo_ff_gen.fifo_registers_reg[4][35] D -pin fifo_ff_gen.fifo_registers_reg[5][35] D -pin fifo_ff_gen.fifo_registers_reg[6][35] D -pin fifo_ff_gen.fifo_registers_reg[7][35] D
netloc fifo_registers[35] 1 14 1 4820
load net flags_o[pop_pointer][5] -attr @rip(#000000) 5 -port flags_o[pop_pointer][5] -pin flags_o[pop_pointer][5]_INST_0 O
load net {push_i\.strb[3]} -attr @rip(#000000) {push_i\.strb[3]} -pin fifo_ff_gen.fifo_registers_reg[7][3]_i_2 I -port {push_i\.strb[3]}
load net fifo_ff_gen.fifo_registers_reg[0]__0[33] -pin fifo_ff_gen.fifo_registers_reg[0][33] Q -pin {pop_o\.data[29]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[33] 1 15 1 N
load net {push_i\.data[27]} -attr @rip(#000000) {push_i\.data[27]} -pin fifo_ff_gen.fifo_registers_reg[7][31]_i_2 I -port {push_i\.data[27]}
load net fifo_ff_gen.fifo_registers_reg[3]__0[4] -pin fifo_ff_gen.fifo_registers_reg[3][4] Q -pin {pop_o\.data[0]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[4] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7]__0[34] -pin fifo_ff_gen.fifo_registers_reg[7][34] Q -pin {pop_o\.data[30]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[34] 1 15 1 5520
load net fifo_ff_gen.fifo_registers_reg[3]__0[22] -pin fifo_ff_gen.fifo_registers_reg[3][22] Q -pin {pop_o\.data[18]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[22] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7]__0[16] -pin fifo_ff_gen.fifo_registers_reg[7][16] Q -pin {pop_o\.data[12]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[16] 1 15 1 N
load net {pop_o\.data_OBUF[8]} -pin {pop_o\.data[8]_INST_0} I -pin {pop_o\.data[8]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[8]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[5]__0[13] -pin fifo_ff_gen.fifo_registers_reg[5][13] Q -pin {pop_o\.data[9]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[13] 1 15 1 5380
load net {pop_o\.strb[2]_INST_0_i_2_n_0} -pin {pop_o\.strb[2]_INST_0_i_1} I0 -pin {pop_o\.strb[2]_INST_0_i_2} O
netloc {pop_o\.strb[2]_INST_0_i_2_n_0} 1 16 1 5940
load net fifo_ff_gen.fifo_registers_reg[5]__0[31] -pin fifo_ff_gen.fifo_registers_reg[5][31] Q -pin {pop_o\.data[27]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[31] 1 15 1 5560
load net {pop_o\.strb[1]_INST_0_i_3_n_0} -pin {pop_o\.strb[1]_INST_0_i_1} I1 -pin {pop_o\.strb[1]_INST_0_i_3} O
netloc {pop_o\.strb[1]_INST_0_i_3_n_0} 1 16 1 5840
load net {push_i\.data[21]} -attr @rip(#000000) {push_i\.data[21]} -pin fifo_ff_gen.fifo_registers_reg[7][25]_i_2 I -port {push_i\.data[21]}
load net fifo_ff_gen.fifo_registers_reg[5]__0[10] -pin fifo_ff_gen.fifo_registers_reg[5][10] Q -pin {pop_o\.data[6]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[10] 1 15 1 5400
load net GND_2 -ground -pin pop_pointer_d_reg[0] CLR -pin pop_pointer_d_reg[1] CLR -pin pop_pointer_d_reg[2] CLR -pin push_pointer_d_reg[0] CLR -pin push_pointer_d_reg[1] CLR -pin push_pointer_d_reg[2] CLR
load net {pop_o\.data[14]_INST_0_i_3_n_0} -pin {pop_o\.data[14]_INST_0_i_1} I1 -pin {pop_o\.data[14]_INST_0_i_3} O
netloc {pop_o\.data[14]_INST_0_i_3_n_0} 1 16 1 N
load net fifo_ff_gen.fifo_registers_reg[3]__0[19] -pin fifo_ff_gen.fifo_registers_reg[3][19] Q -pin {pop_o\.data[15]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[19] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[6]__0[15] -pin fifo_ff_gen.fifo_registers_reg[6][15] Q -pin {pop_o\.data[11]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[15] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7]__0[26] -pin fifo_ff_gen.fifo_registers_reg[7][26] Q -pin {pop_o\.data[22]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[26] 1 15 1 N
load net flags_o[push_pointer][6] -attr @rip(#000000) 6 -port flags_o[push_pointer][6] -pin flags_o[push_pointer][6]_INST_0 O
load net {pop_o\.data[24]_INST_0_i_2_n_0} -pin {pop_o\.data[24]_INST_0_i_1} I0 -pin {pop_o\.data[24]_INST_0_i_2} O
netloc {pop_o\.data[24]_INST_0_i_2_n_0} 1 16 1 N
load net fifo_ff_gen.fifo_registers_reg[6]__0[33] -pin fifo_ff_gen.fifo_registers_reg[6][33] Q -pin {pop_o\.data[29]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[33] 1 15 1 5380
load net {pop_o\.data_OBUF[30]} -pin {pop_o\.data[30]_INST_0} I -pin {pop_o\.data[30]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[30]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[1]__0[19] -pin fifo_ff_gen.fifo_registers_reg[1][19] Q -pin {pop_o\.data[15]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[19] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[6]__0[4] -pin fifo_ff_gen.fifo_registers_reg[6][4] Q -pin {pop_o\.data[0]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[4] 1 15 1 5400
load net FSM_sequential_cs_reg[1]_i_5_n_0 -pin FSM_sequential_cs[0]_i_1 I4 -pin FSM_sequential_cs[1]_i_1 I4 -pin FSM_sequential_cs_reg[1]_i_5 O -pin pop_pointer_d_reg[2]_i_2 I0
netloc FSM_sequential_cs_reg[1]_i_5_n_0 1 1 14 330 42350 NJ 42350 1030 42310 NJ 42310 NJ 42310 NJ 42310 NJ 42310 NJ 42310 NJ 42310 NJ 42310 NJ 42310 NJ 42310 NJ 42310 5060
load net fifo_ff_gen.fifo_registers_reg[4]__0[1] -pin fifo_ff_gen.fifo_registers_reg[4][1] Q -pin {pop_o\.strb[1]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[1] 1 15 1 5420
load net fifo_ff_gen.fifo_registers_reg[6]__0[22] -pin fifo_ff_gen.fifo_registers_reg[6][22] Q -pin {pop_o\.data[18]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[22] 1 15 1 5380
load net {pop_o\.data_OBUF[29]} -pin {pop_o\.data[29]_INST_0} I -pin {pop_o\.data[29]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[29]} 1 17 1 N
load net pop_pointer_d[0] -pin FSM_sequential_cs[1]_i_3 I0 -pin pop_pointer_d_reg[0] Q -pin pop_pointer_q[0]_i_1 I0
netloc pop_pointer_d[0] 1 5 9 1590 41710 NJ 41710 NJ 41710 NJ 41710 NJ 41710 NJ 41710 NJ 41710 NJ 41710 4280J
load net fifo_ff_gen.fifo_registers_reg[2]__0[2] -pin fifo_ff_gen.fifo_registers_reg[2][2] Q -pin {pop_o\.strb[2]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[2] 1 15 1 5580
load net fifo_registers[20] -pin fifo_ff_gen.fifo_registers[7][20]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][20] D -pin fifo_ff_gen.fifo_registers_reg[1][20] D -pin fifo_ff_gen.fifo_registers_reg[2][20] D -pin fifo_ff_gen.fifo_registers_reg[3][20] D -pin fifo_ff_gen.fifo_registers_reg[4][20] D -pin fifo_ff_gen.fifo_registers_reg[5][20] D -pin fifo_ff_gen.fifo_registers_reg[6][20] D -pin fifo_ff_gen.fifo_registers_reg[7][20] D
netloc fifo_registers[20] 1 14 1 5040
load net {pop_o\.data[1]_INST_0_i_2_n_0} -pin {pop_o\.data[1]_INST_0_i_1} I0 -pin {pop_o\.data[1]_INST_0_i_2} O
netloc {pop_o\.data[1]_INST_0_i_2_n_0} 1 16 1 5960
load net fifo_ff_gen.fifo_registers_reg[6]__0[11] -pin fifo_ff_gen.fifo_registers_reg[6][11] Q -pin {pop_o\.data[7]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[11] 1 15 1 5560
load net {push_i\.data[14]} -attr @rip(#000000) {push_i\.data[14]} -pin fifo_ff_gen.fifo_registers_reg[7][18]_i_2 I -port {push_i\.data[14]}
load net fifo_ff_gen.fifo_registers_reg[1]__0[33] -pin fifo_ff_gen.fifo_registers_reg[1][33] Q -pin {pop_o\.data[29]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[33] 1 15 1 5560
load net fifo_registers[9] -pin fifo_ff_gen.fifo_registers[7][9]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][9] D -pin fifo_ff_gen.fifo_registers_reg[1][9] D -pin fifo_ff_gen.fifo_registers_reg[2][9] D -pin fifo_ff_gen.fifo_registers_reg[3][9] D -pin fifo_ff_gen.fifo_registers_reg[4][9] D -pin fifo_ff_gen.fifo_registers_reg[5][9] D -pin fifo_ff_gen.fifo_registers_reg[6][9] D -pin fifo_ff_gen.fifo_registers_reg[7][9] D
netloc fifo_registers[9] 1 14 1 5040
load net {pop_o\.strb[0]_INST_0_i_2_n_0} -pin {pop_o\.strb[0]_INST_0_i_1} I0 -pin {pop_o\.strb[0]_INST_0_i_2} O
netloc {pop_o\.strb[0]_INST_0_i_2_n_0} 1 16 1 5980
load net {push_i\.strb[2]} -attr @rip(#000000) {push_i\.strb[2]} -pin fifo_ff_gen.fifo_registers_reg[7][2]_i_2 I -port {push_i\.strb[2]}
load net fifo_ff_gen.fifo_registers_reg[1]__0[15] -pin fifo_ff_gen.fifo_registers_reg[1][15] Q -pin {pop_o\.data[11]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[15] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[0]__0[32] -pin fifo_ff_gen.fifo_registers_reg[0][32] Q -pin {pop_o\.data[28]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[32] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[7]__0[13] -pin fifo_ff_gen.fifo_registers_reg[7][13] Q -pin {pop_o\.data[9]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[13] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[3]__0[8] -pin fifo_ff_gen.fifo_registers_reg[3][8] Q -pin {pop_o\.data[4]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[8] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[0]__0[5] -pin fifo_ff_gen.fifo_registers_reg[0][5] Q -pin {pop_o\.data[1]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[5] 1 15 1 N
load net flags_o[pop_pointer][6] -attr @rip(#000000) 6 -port flags_o[pop_pointer][6] -pin flags_o[pop_pointer][6]_INST_0 O
load net fifo_ff_gen.fifo_registers_reg[3]__0[21] -pin fifo_ff_gen.fifo_registers_reg[3][21] Q -pin {pop_o\.data[17]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[21] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7]__0[10] -pin fifo_ff_gen.fifo_registers_reg[7][10] Q -pin {pop_o\.data[6]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[10] 1 15 1 N
load net {pop_o\.data[13]_INST_0_i_3_n_0} -pin {pop_o\.data[13]_INST_0_i_1} I1 -pin {pop_o\.data[13]_INST_0_i_3} O
netloc {pop_o\.data[13]_INST_0_i_3_n_0} 1 16 1 5840
load net {pop_o\.data_OBUF[7]} -pin {pop_o\.data[7]_INST_0} I -pin {pop_o\.data[7]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[7]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[3]__0[5] -pin fifo_ff_gen.fifo_registers_reg[3][5] Q -pin {pop_o\.data[1]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[5] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7]__0[35] -pin fifo_ff_gen.fifo_registers_reg[7][35] Q -pin {pop_o\.data[31]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[35] 1 15 1 5560
load net {pop_o\.data[6]} -attr @rip(#000000) 6 -port {pop_o\.data[6]} -pin {pop_o\.data[6]_INST_0} O
load net fifo_ff_gen.fifo_registers[0][35]_i_1_n_0 -pin fifo_ff_gen.fifo_registers[0][35]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][0] CE -pin fifo_ff_gen.fifo_registers_reg[0][10] CE -pin fifo_ff_gen.fifo_registers_reg[0][11] CE -pin fifo_ff_gen.fifo_registers_reg[0][12] CE -pin fifo_ff_gen.fifo_registers_reg[0][13] CE -pin fifo_ff_gen.fifo_registers_reg[0][14] CE -pin fifo_ff_gen.fifo_registers_reg[0][15] CE -pin fifo_ff_gen.fifo_registers_reg[0][16] CE -pin fifo_ff_gen.fifo_registers_reg[0][17] CE -pin fifo_ff_gen.fifo_registers_reg[0][18] CE -pin fifo_ff_gen.fifo_registers_reg[0][19] CE -pin fifo_ff_gen.fifo_registers_reg[0][1] CE -pin fifo_ff_gen.fifo_registers_reg[0][20] CE -pin fifo_ff_gen.fifo_registers_reg[0][21] CE -pin fifo_ff_gen.fifo_registers_reg[0][22] CE -pin fifo_ff_gen.fifo_registers_reg[0][23] CE -pin fifo_ff_gen.fifo_registers_reg[0][24] CE -pin fifo_ff_gen.fifo_registers_reg[0][25] CE -pin fifo_ff_gen.fifo_registers_reg[0][26] CE -pin fifo_ff_gen.fifo_registers_reg[0][27] CE -pin fifo_ff_gen.fifo_registers_reg[0][28] CE -pin fifo_ff_gen.fifo_registers_reg[0][29] CE -pin fifo_ff_gen.fifo_registers_reg[0][2] CE -pin fifo_ff_gen.fifo_registers_reg[0][30] CE -pin fifo_ff_gen.fifo_registers_reg[0][31] CE -pin fifo_ff_gen.fifo_registers_reg[0][32] CE -pin fifo_ff_gen.fifo_registers_reg[0][33] CE -pin fifo_ff_gen.fifo_registers_reg[0][34] CE -pin fifo_ff_gen.fifo_registers_reg[0][35] CE -pin fifo_ff_gen.fifo_registers_reg[0][3] CE -pin fifo_ff_gen.fifo_registers_reg[0][4] CE -pin fifo_ff_gen.fifo_registers_reg[0][5] CE -pin fifo_ff_gen.fifo_registers_reg[0][6] CE -pin fifo_ff_gen.fifo_registers_reg[0][7] CE -pin fifo_ff_gen.fifo_registers_reg[0][8] CE -pin fifo_ff_gen.fifo_registers_reg[0][9] CE
netloc fifo_ff_gen.fifo_registers[0][35]_i_1_n_0 1 14 1 4700
load net fifo_ff_gen.fifo_registers_reg[5]__0[27] -pin fifo_ff_gen.fifo_registers_reg[5][27] Q -pin {pop_o\.data[23]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[27] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7][34]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][34]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][34]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][34]_i_2_n_0 1 13 1 N
load net {pop_o\.data[0]_INST_0_i_3_n_0} -pin {pop_o\.data[0]_INST_0_i_1} I1 -pin {pop_o\.data[0]_INST_0_i_3} O
netloc {pop_o\.data[0]_INST_0_i_3_n_0} 1 16 1 N
load net pop_pointer_q[2]_i_1_n_0 -pin pop_pointer_q[2]_i_1 O -pin pop_pointer_q_reg[2] D
netloc pop_pointer_q[2]_i_1_n_0 1 10 1 2990
load net fifo_ff_gen.fifo_registers_reg[5]__0[14] -pin fifo_ff_gen.fifo_registers_reg[5][14] Q -pin {pop_o\.data[10]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[14] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7][33]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][33]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][33]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][33]_i_2_n_0 1 13 1 N
load net {pop_o\.data[11]_INST_0_i_3_n_0} -pin {pop_o\.data[11]_INST_0_i_1} I1 -pin {pop_o\.data[11]_INST_0_i_3} O
netloc {pop_o\.data[11]_INST_0_i_3_n_0} 1 16 1 N
load net {pop_o\.data[21]_INST_0_i_3_n_0} -pin {pop_o\.data[21]_INST_0_i_1} I1 -pin {pop_o\.data[21]_INST_0_i_3} O
netloc {pop_o\.data[21]_INST_0_i_3_n_0} 1 16 1 5960
load net fifo_ff_gen.fifo_registers_reg[5]__0[32] -pin fifo_ff_gen.fifo_registers_reg[5][32] Q -pin {pop_o\.data[28]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[32] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[6]__0[14] -pin fifo_ff_gen.fifo_registers_reg[6][14] Q -pin {pop_o\.data[10]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[14] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[6]__0[1] -pin fifo_ff_gen.fifo_registers_reg[6][1] Q -pin {pop_o\.strb[1]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[1] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[7]__0[25] -pin fifo_ff_gen.fifo_registers_reg[7][25] Q -pin {pop_o\.data[21]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[25] 1 15 1 N
load net {push_i\.data[22]} -attr @rip(#000000) {push_i\.data[22]} -pin fifo_ff_gen.fifo_registers_reg[7][26]_i_2 I -port {push_i\.data[22]}
load net fifo_ff_gen.fifo_registers_reg[5]__0[11] -pin fifo_ff_gen.fifo_registers_reg[5][11] Q -pin {pop_o\.data[7]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[11] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[6]__0[32] -pin fifo_ff_gen.fifo_registers_reg[6][32] Q -pin {pop_o\.data[28]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[32] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[0]__0[20] -pin fifo_ff_gen.fifo_registers_reg[0][20] Q -pin {pop_o\.data[16]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[20] 1 15 1 N
load net fifo_registers[2] -pin fifo_ff_gen.fifo_registers[7][2]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][2] D -pin fifo_ff_gen.fifo_registers_reg[1][2] D -pin fifo_ff_gen.fifo_registers_reg[2][2] D -pin fifo_ff_gen.fifo_registers_reg[3][2] D -pin fifo_ff_gen.fifo_registers_reg[4][2] D -pin fifo_ff_gen.fifo_registers_reg[5][2] D -pin fifo_ff_gen.fifo_registers_reg[6][2] D -pin fifo_ff_gen.fifo_registers_reg[7][2] D
netloc fifo_registers[2] 1 14 1 5040
load net flags_o[push_pointer][1] -attr @rip(#000000) 1 -port flags_o[push_pointer][1] -pin flags_o[push_pointer][1]_INST_0 O
load net flags_o[push_pointer][7] -attr @rip(#000000) 7 -port flags_o[push_pointer][7] -pin flags_o[push_pointer][7]_INST_0 O
load net fifo_ff_gen.fifo_registers[6][35]_i_1_n_0 -pin fifo_ff_gen.fifo_registers[6][35]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[6][0] CE -pin fifo_ff_gen.fifo_registers_reg[6][10] CE -pin fifo_ff_gen.fifo_registers_reg[6][11] CE -pin fifo_ff_gen.fifo_registers_reg[6][12] CE -pin fifo_ff_gen.fifo_registers_reg[6][13] CE -pin fifo_ff_gen.fifo_registers_reg[6][14] CE -pin fifo_ff_gen.fifo_registers_reg[6][15] CE -pin fifo_ff_gen.fifo_registers_reg[6][16] CE -pin fifo_ff_gen.fifo_registers_reg[6][17] CE -pin fifo_ff_gen.fifo_registers_reg[6][18] CE -pin fifo_ff_gen.fifo_registers_reg[6][19] CE -pin fifo_ff_gen.fifo_registers_reg[6][1] CE -pin fifo_ff_gen.fifo_registers_reg[6][20] CE -pin fifo_ff_gen.fifo_registers_reg[6][21] CE -pin fifo_ff_gen.fifo_registers_reg[6][22] CE -pin fifo_ff_gen.fifo_registers_reg[6][23] CE -pin fifo_ff_gen.fifo_registers_reg[6][24] CE -pin fifo_ff_gen.fifo_registers_reg[6][25] CE -pin fifo_ff_gen.fifo_registers_reg[6][26] CE -pin fifo_ff_gen.fifo_registers_reg[6][27] CE -pin fifo_ff_gen.fifo_registers_reg[6][28] CE -pin fifo_ff_gen.fifo_registers_reg[6][29] CE -pin fifo_ff_gen.fifo_registers_reg[6][2] CE -pin fifo_ff_gen.fifo_registers_reg[6][30] CE -pin fifo_ff_gen.fifo_registers_reg[6][31] CE -pin fifo_ff_gen.fifo_registers_reg[6][32] CE -pin fifo_ff_gen.fifo_registers_reg[6][33] CE -pin fifo_ff_gen.fifo_registers_reg[6][34] CE -pin fifo_ff_gen.fifo_registers_reg[6][35] CE -pin fifo_ff_gen.fifo_registers_reg[6][3] CE -pin fifo_ff_gen.fifo_registers_reg[6][4] CE -pin fifo_ff_gen.fifo_registers_reg[6][5] CE -pin fifo_ff_gen.fifo_registers_reg[6][6] CE -pin fifo_ff_gen.fifo_registers_reg[6][7] CE -pin fifo_ff_gen.fifo_registers_reg[6][8] CE -pin fifo_ff_gen.fifo_registers_reg[6][9] CE
netloc fifo_ff_gen.fifo_registers[6][35]_i_1_n_0 1 14 1 4760
load net {pop_o\.data_OBUF[31]} -pin {pop_o\.data[31]_INST_0} I -pin {pop_o\.data[31]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[31]} 1 17 1 N
load net pop_pointer_q[1]_i_1_n_0 -pin pop_pointer_q[1]_i_1 O -pin pop_pointer_q_reg[1] D
netloc pop_pointer_q[1]_i_1_n_0 1 10 1 2990
load net clk_i -port clk_i -pin clk_i_IBUF_inst I
netloc clk_i 1 0 1 NJ
load net fifo_ff_gen.fifo_registers_reg[4]__0[2] -pin fifo_ff_gen.fifo_registers_reg[4][2] Q -pin {pop_o\.strb[2]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[2] 1 15 1 5400
load net fifo_ff_gen.fifo_registers_reg[6]__0[23] -pin fifo_ff_gen.fifo_registers_reg[6][23] Q -pin {pop_o\.data[19]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[23] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[0]__0[17] -pin fifo_ff_gen.fifo_registers_reg[0][17] Q -pin {pop_o\.data[13]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[17] 1 15 1 N
load net {push_i\.valid} -pin FSM_sequential_cs_reg[1]_i_4 I -port {push_i\.valid}
netloc {push_i\.valid} 1 0 1 NJ
load net fifo_ff_gen.fifo_registers_reg[6]__0[10] -pin fifo_ff_gen.fifo_registers_reg[6][10] Q -pin {pop_o\.data[6]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[10] 1 15 1 5560
load net {pop_o\.data_OBUF[2]} -pin {pop_o\.data[2]_INST_0} I -pin {pop_o\.data[2]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[2]} 1 17 1 N
load net {push_i\.data[13]} -attr @rip(#000000) {push_i\.data[13]} -pin fifo_ff_gen.fifo_registers_reg[7][17]_i_2 I -port {push_i\.data[13]}
load net fifo_ff_gen.fifo_registers_reg[4]__0[27] -pin fifo_ff_gen.fifo_registers_reg[4][27] Q -pin {pop_o\.data[23]_INST_0_i_3} I5
netloc fifo_ff_gen.fifo_registers_reg[4]__0[27] 1 15 1 5580
load net {pop_o\.data[25]} -attr @rip(#000000) 25 -port {pop_o\.data[25]} -pin {pop_o\.data[25]_INST_0} O
load net {pop_o\.data_OBUF[26]} -pin {pop_o\.data[26]_INST_0} I -pin {pop_o\.data[26]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[26]} 1 17 1 N
load net {push_i\.strb[1]} -attr @rip(#000000) {push_i\.strb[1]} -pin fifo_ff_gen.fifo_registers_reg[7][1]_i_2 I -port {push_i\.strb[1]}
load net fifo_ff_gen.fifo_registers_reg[1]__0[34] -pin fifo_ff_gen.fifo_registers_reg[1][34] Q -pin {pop_o\.data[30]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[34] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[0]__0[9] -pin fifo_ff_gen.fifo_registers_reg[0][9] Q -pin {pop_o\.data[5]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[9] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[7]__0[19] -pin fifo_ff_gen.fifo_registers_reg[7][19] Q -pin {pop_o\.data[15]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[19] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[3]__0[20] -pin fifo_ff_gen.fifo_registers_reg[3][20] Q -pin {pop_o\.data[16]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[20] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[1]__0[16] -pin fifo_ff_gen.fifo_registers_reg[1][16] Q -pin {pop_o\.data[12]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[16] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7]__0[14] -pin fifo_ff_gen.fifo_registers_reg[7][14] Q -pin {pop_o\.data[10]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[14] 1 15 1 N
load net {pop_o\.strb[2]_INST_0_i_3_n_0} -pin {pop_o\.strb[2]_INST_0_i_1} I1 -pin {pop_o\.strb[2]_INST_0_i_3} O
netloc {pop_o\.strb[2]_INST_0_i_3_n_0} 1 16 1 5860
load net fifo_ff_gen.fifo_registers_reg[3]__0[9] -pin fifo_ff_gen.fifo_registers_reg[3][9] Q -pin {pop_o\.data[5]_INST_0_i_2} I0
netloc fifo_ff_gen.fifo_registers_reg[3]__0[9] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[0]__0[6] -pin fifo_ff_gen.fifo_registers_reg[0][6] Q -pin {pop_o\.data[2]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[6] 1 15 1 N
load net flags_o[pop_pointer][7] -attr @rip(#000000) 7 -port flags_o[pop_pointer][7] -pin flags_o[pop_pointer][7]_INST_0 O
load net fifo_ff_gen.fifo_registers_reg[0]__0[35] -pin fifo_ff_gen.fifo_registers_reg[0][35] Q -pin {pop_o\.data[31]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[35] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[5]__0[26] -pin fifo_ff_gen.fifo_registers_reg[5][26] Q -pin {pop_o\.data[22]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[26] 1 15 1 5560
load net {push_i\.data[29]} -attr @rip(#000000) {push_i\.data[29]} -pin fifo_ff_gen.fifo_registers_reg[7][33]_i_2 I -port {push_i\.data[29]}
load net fifo_ff_gen.fifo_registers_reg[7][24]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][24]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][24]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][24]_i_2_n_0 1 13 1 N
load net {pop_o\.data[7]} -attr @rip(#000000) 7 -port {pop_o\.data[7]} -pin {pop_o\.data[7]_INST_0} O
load net FSM_sequential_cs[1]_i_2_n_0 -pin FSM_sequential_cs[1]_i_2 O -pin FSM_sequential_cs_reg[0] CLR -pin FSM_sequential_cs_reg[1] CLR -pin fifo_ff_gen.fifo_registers_reg[0][0] CLR -pin fifo_ff_gen.fifo_registers_reg[0][10] CLR -pin fifo_ff_gen.fifo_registers_reg[0][11] CLR -pin fifo_ff_gen.fifo_registers_reg[0][12] CLR -pin fifo_ff_gen.fifo_registers_reg[0][13] CLR -pin fifo_ff_gen.fifo_registers_reg[0][14] CLR -pin fifo_ff_gen.fifo_registers_reg[0][15] CLR -pin fifo_ff_gen.fifo_registers_reg[0][16] CLR -pin fifo_ff_gen.fifo_registers_reg[0][17] CLR -pin fifo_ff_gen.fifo_registers_reg[0][18] CLR -pin fifo_ff_gen.fifo_registers_reg[0][19] CLR -pin fifo_ff_gen.fifo_registers_reg[0][1] CLR -pin fifo_ff_gen.fifo_registers_reg[0][20] CLR -pin fifo_ff_gen.fifo_registers_reg[0][21] CLR -pin fifo_ff_gen.fifo_registers_reg[0][22] CLR -pin fifo_ff_gen.fifo_registers_reg[0][23] CLR -pin fifo_ff_gen.fifo_registers_reg[0][24] CLR -pin fifo_ff_gen.fifo_registers_reg[0][25] CLR -pin fifo_ff_gen.fifo_registers_reg[0][26] CLR -pin fifo_ff_gen.fifo_registers_reg[0][27] CLR -pin fifo_ff_gen.fifo_registers_reg[0][28] CLR -pin fifo_ff_gen.fifo_registers_reg[0][29] CLR -pin fifo_ff_gen.fifo_registers_reg[0][2] CLR -pin fifo_ff_gen.fifo_registers_reg[0][30] CLR -pin fifo_ff_gen.fifo_registers_reg[0][31] CLR -pin fifo_ff_gen.fifo_registers_reg[0][32] CLR -pin fifo_ff_gen.fifo_registers_reg[0][33] CLR -pin fifo_ff_gen.fifo_registers_reg[0][34] CLR -pin fifo_ff_gen.fifo_registers_reg[0][35] CLR -pin fifo_ff_gen.fifo_registers_reg[0][3] CLR -pin fifo_ff_gen.fifo_registers_reg[0][4] CLR -pin fifo_ff_gen.fifo_registers_reg[0][5] CLR -pin fifo_ff_gen.fifo_registers_reg[0][6] CLR -pin fifo_ff_gen.fifo_registers_reg[0][7] CLR -pin fifo_ff_gen.fifo_registers_reg[0][8] CLR -pin fifo_ff_gen.fifo_registers_reg[0][9] CLR -pin fifo_ff_gen.fifo_registers_reg[1][0] CLR -pin fifo_ff_gen.fifo_registers_reg[1][10] CLR -pin fifo_ff_gen.fifo_registers_reg[1][11] CLR -pin fifo_ff_gen.fifo_registers_reg[1][12] CLR -pin fifo_ff_gen.fifo_registers_reg[1][13] CLR -pin fifo_ff_gen.fifo_registers_reg[1][14] CLR -pin fifo_ff_gen.fifo_registers_reg[1][15] CLR -pin fifo_ff_gen.fifo_registers_reg[1][16] CLR -pin fifo_ff_gen.fifo_registers_reg[1][17] CLR -pin fifo_ff_gen.fifo_registers_reg[1][18] CLR -pin fifo_ff_gen.fifo_registers_reg[1][19] CLR -pin fifo_ff_gen.fifo_registers_reg[1][1] CLR -pin fifo_ff_gen.fifo_registers_reg[1][20] CLR -pin fifo_ff_gen.fifo_registers_reg[1][21] CLR -pin fifo_ff_gen.fifo_registers_reg[1][22] CLR -pin fifo_ff_gen.fifo_registers_reg[1][23] CLR -pin fifo_ff_gen.fifo_registers_reg[1][24] CLR -pin fifo_ff_gen.fifo_registers_reg[1][25] CLR -pin fifo_ff_gen.fifo_registers_reg[1][26] CLR -pin fifo_ff_gen.fifo_registers_reg[1][27] CLR -pin fifo_ff_gen.fifo_registers_reg[1][28] CLR -pin fifo_ff_gen.fifo_registers_reg[1][29] CLR -pin fifo_ff_gen.fifo_registers_reg[1][2] CLR -pin fifo_ff_gen.fifo_registers_reg[1][30] CLR -pin fifo_ff_gen.fifo_registers_reg[1][31] CLR -pin fifo_ff_gen.fifo_registers_reg[1][32] CLR -pin fifo_ff_gen.fifo_registers_reg[1][33] CLR -pin fifo_ff_gen.fifo_registers_reg[1][34] CLR -pin fifo_ff_gen.fifo_registers_reg[1][35] CLR -pin fifo_ff_gen.fifo_registers_reg[1][3] CLR -pin fifo_ff_gen.fifo_registers_reg[1][4] CLR -pin fifo_ff_gen.fifo_registers_reg[1][5] CLR -pin fifo_ff_gen.fifo_registers_reg[1][6] CLR -pin fifo_ff_gen.fifo_registers_reg[1][7] CLR -pin fifo_ff_gen.fifo_registers_reg[1][8] CLR -pin fifo_ff_gen.fifo_registers_reg[1][9] CLR -pin fifo_ff_gen.fifo_registers_reg[2][0] CLR -pin fifo_ff_gen.fifo_registers_reg[2][10] CLR -pin fifo_ff_gen.fifo_registers_reg[2][11] CLR -pin fifo_ff_gen.fifo_registers_reg[2][12] CLR -pin fifo_ff_gen.fifo_registers_reg[2][13] CLR -pin fifo_ff_gen.fifo_registers_reg[2][14] CLR -pin fifo_ff_gen.fifo_registers_reg[2][15] CLR -pin fifo_ff_gen.fifo_registers_reg[2][16] CLR -pin fifo_ff_gen.fifo_registers_reg[2][17] CLR -pin fifo_ff_gen.fifo_registers_reg[2][18] CLR -pin fifo_ff_gen.fifo_registers_reg[2][19] CLR -pin fifo_ff_gen.fifo_registers_reg[2][1] CLR -pin fifo_ff_gen.fifo_registers_reg[2][20] CLR -pin fifo_ff_gen.fifo_registers_reg[2][21] CLR -pin fifo_ff_gen.fifo_registers_reg[2][22] CLR -pin fifo_ff_gen.fifo_registers_reg[2][23] CLR -pin fifo_ff_gen.fifo_registers_reg[2][24] CLR -pin fifo_ff_gen.fifo_registers_reg[2][25] CLR -pin fifo_ff_gen.fifo_registers_reg[2][26] CLR -pin fifo_ff_gen.fifo_registers_reg[2][27] CLR -pin fifo_ff_gen.fifo_registers_reg[2][28] CLR -pin fifo_ff_gen.fifo_registers_reg[2][29] CLR -pin fifo_ff_gen.fifo_registers_reg[2][2] CLR -pin fifo_ff_gen.fifo_registers_reg[2][30] CLR -pin fifo_ff_gen.fifo_registers_reg[2][31] CLR -pin fifo_ff_gen.fifo_registers_reg[2][32] CLR -pin fifo_ff_gen.fifo_registers_reg[2][33] CLR -pin fifo_ff_gen.fifo_registers_reg[2][34] CLR -pin fifo_ff_gen.fifo_registers_reg[2][35] CLR -pin fifo_ff_gen.fifo_registers_reg[2][3] CLR -pin fifo_ff_gen.fifo_registers_reg[2][4] CLR -pin fifo_ff_gen.fifo_registers_reg[2][5] CLR -pin fifo_ff_gen.fifo_registers_reg[2][6] CLR -pin fifo_ff_gen.fifo_registers_reg[2][7] CLR -pin fifo_ff_gen.fifo_registers_reg[2][8] CLR -pin fifo_ff_gen.fifo_registers_reg[2][9] CLR -pin fifo_ff_gen.fifo_registers_reg[3][0] CLR -pin fifo_ff_gen.fifo_registers_reg[3][10] CLR -pin fifo_ff_gen.fifo_registers_reg[3][11] CLR -pin fifo_ff_gen.fifo_registers_reg[3][12] CLR -pin fifo_ff_gen.fifo_registers_reg[3][13] CLR -pin fifo_ff_gen.fifo_registers_reg[3][14] CLR -pin fifo_ff_gen.fifo_registers_reg[3][15] CLR -pin fifo_ff_gen.fifo_registers_reg[3][16] CLR -pin fifo_ff_gen.fifo_registers_reg[3][17] CLR -pin fifo_ff_gen.fifo_registers_reg[3][18] CLR -pin fifo_ff_gen.fifo_registers_reg[3][19] CLR -pin fifo_ff_gen.fifo_registers_reg[3][1] CLR -pin fifo_ff_gen.fifo_registers_reg[3][20] CLR -pin fifo_ff_gen.fifo_registers_reg[3][21] CLR -pin fifo_ff_gen.fifo_registers_reg[3][22] CLR -pin fifo_ff_gen.fifo_registers_reg[3][23] CLR -pin fifo_ff_gen.fifo_registers_reg[3][24] CLR -pin fifo_ff_gen.fifo_registers_reg[3][25] CLR -pin fifo_ff_gen.fifo_registers_reg[3][26] CLR -pin fifo_ff_gen.fifo_registers_reg[3][27] CLR -pin fifo_ff_gen.fifo_registers_reg[3][28] CLR -pin fifo_ff_gen.fifo_registers_reg[3][29] CLR -pin fifo_ff_gen.fifo_registers_reg[3][2] CLR -pin fifo_ff_gen.fifo_registers_reg[3][30] CLR -pin fifo_ff_gen.fifo_registers_reg[3][31] CLR -pin fifo_ff_gen.fifo_registers_reg[3][32] CLR -pin fifo_ff_gen.fifo_registers_reg[3][33] CLR -pin fifo_ff_gen.fifo_registers_reg[3][34] CLR -pin fifo_ff_gen.fifo_registers_reg[3][35] CLR -pin fifo_ff_gen.fifo_registers_reg[3][3] CLR -pin fifo_ff_gen.fifo_registers_reg[3][4] CLR -pin fifo_ff_gen.fifo_registers_reg[3][5] CLR -pin fifo_ff_gen.fifo_registers_reg[3][6] CLR -pin fifo_ff_gen.fifo_registers_reg[3][7] CLR -pin fifo_ff_gen.fifo_registers_reg[3][8] CLR -pin fifo_ff_gen.fifo_registers_reg[3][9] CLR -pin fifo_ff_gen.fifo_registers_reg[4][0] CLR -pin fifo_ff_gen.fifo_registers_reg[4][10] CLR -pin fifo_ff_gen.fifo_registers_reg[4][11] CLR -pin fifo_ff_gen.fifo_registers_reg[4][12] CLR -pin fifo_ff_gen.fifo_registers_reg[4][13] CLR -pin fifo_ff_gen.fifo_registers_reg[4][14] CLR -pin fifo_ff_gen.fifo_registers_reg[4][15] CLR -pin fifo_ff_gen.fifo_registers_reg[4][16] CLR -pin fifo_ff_gen.fifo_registers_reg[4][17] CLR -pin fifo_ff_gen.fifo_registers_reg[4][18] CLR -pin fifo_ff_gen.fifo_registers_reg[4][19] CLR -pin fifo_ff_gen.fifo_registers_reg[4][1] CLR -pin fifo_ff_gen.fifo_registers_reg[4][20] CLR -pin fifo_ff_gen.fifo_registers_reg[4][21] CLR -pin fifo_ff_gen.fifo_registers_reg[4][22] CLR -pin fifo_ff_gen.fifo_registers_reg[4][23] CLR -pin fifo_ff_gen.fifo_registers_reg[4][24] CLR -pin fifo_ff_gen.fifo_registers_reg[4][25] CLR -pin fifo_ff_gen.fifo_registers_reg[4][26] CLR -pin fifo_ff_gen.fifo_registers_reg[4][27] CLR -pin fifo_ff_gen.fifo_registers_reg[4][28] CLR -pin fifo_ff_gen.fifo_registers_reg[4][29] CLR -pin fifo_ff_gen.fifo_registers_reg[4][2] CLR -pin fifo_ff_gen.fifo_registers_reg[4][30] CLR -pin fifo_ff_gen.fifo_registers_reg[4][31] CLR -pin fifo_ff_gen.fifo_registers_reg[4][32] CLR -pin fifo_ff_gen.fifo_registers_reg[4][33] CLR -pin fifo_ff_gen.fifo_registers_reg[4][34] CLR -pin fifo_ff_gen.fifo_registers_reg[4][35] CLR -pin fifo_ff_gen.fifo_registers_reg[4][3] CLR -pin fifo_ff_gen.fifo_registers_reg[4][4] CLR -pin fifo_ff_gen.fifo_registers_reg[4][5] CLR -pin fifo_ff_gen.fifo_registers_reg[4][6] CLR -pin fifo_ff_gen.fifo_registers_reg[4][7] CLR -pin fifo_ff_gen.fifo_registers_reg[4][8] CLR -pin fifo_ff_gen.fifo_registers_reg[4][9] CLR -pin fifo_ff_gen.fifo_registers_reg[5][0] CLR -pin fifo_ff_gen.fifo_registers_reg[5][10] CLR -pin fifo_ff_gen.fifo_registers_reg[5][11] CLR -pin fifo_ff_gen.fifo_registers_reg[5][12] CLR -pin fifo_ff_gen.fifo_registers_reg[5][13] CLR -pin fifo_ff_gen.fifo_registers_reg[5][14] CLR -pin fifo_ff_gen.fifo_registers_reg[5][15] CLR -pin fifo_ff_gen.fifo_registers_reg[5][16] CLR -pin fifo_ff_gen.fifo_registers_reg[5][17] CLR -pin fifo_ff_gen.fifo_registers_reg[5][18] CLR -pin fifo_ff_gen.fifo_registers_reg[5][19] CLR -pin fifo_ff_gen.fifo_registers_reg[5][1] CLR -pin fifo_ff_gen.fifo_registers_reg[5][20] CLR -pin fifo_ff_gen.fifo_registers_reg[5][21] CLR -pin fifo_ff_gen.fifo_registers_reg[5][22] CLR -pin fifo_ff_gen.fifo_registers_reg[5][23] CLR -pin fifo_ff_gen.fifo_registers_reg[5][24] CLR -pin fifo_ff_gen.fifo_registers_reg[5][25] CLR -pin fifo_ff_gen.fifo_registers_reg[5][26] CLR -pin fifo_ff_gen.fifo_registers_reg[5][27] CLR -pin fifo_ff_gen.fifo_registers_reg[5][28] CLR -pin fifo_ff_gen.fifo_registers_reg[5][29] CLR -pin fifo_ff_gen.fifo_registers_reg[5][2] CLR -pin fifo_ff_gen.fifo_registers_reg[5][30] CLR -pin fifo_ff_gen.fifo_registers_reg[5][31] CLR -pin fifo_ff_gen.fifo_registers_reg[5][32] CLR -pin fifo_ff_gen.fifo_registers_reg[5][33] CLR -pin fifo_ff_gen.fifo_registers_reg[5][34] CLR -pin fifo_ff_gen.fifo_registers_reg[5][35] CLR -pin fifo_ff_gen.fifo_registers_reg[5][3] CLR -pin fifo_ff_gen.fifo_registers_reg[5][4] CLR -pin fifo_ff_gen.fifo_registers_reg[5][5] CLR -pin fifo_ff_gen.fifo_registers_reg[5][6] CLR -pin fifo_ff_gen.fifo_registers_reg[5][7] CLR -pin fifo_ff_gen.fifo_registers_reg[5][8] CLR -pin fifo_ff_gen.fifo_registers_reg[5][9] CLR -pin fifo_ff_gen.fifo_registers_reg[6][0] CLR -pin fifo_ff_gen.fifo_registers_reg[6][10] CLR -pin fifo_ff_gen.fifo_registers_reg[6][11] CLR -pin fifo_ff_gen.fifo_registers_reg[6][12] CLR -pin fifo_ff_gen.fifo_registers_reg[6][13] CLR -pin fifo_ff_gen.fifo_registers_reg[6][14] CLR -pin fifo_ff_gen.fifo_registers_reg[6][15] CLR -pin fifo_ff_gen.fifo_registers_reg[6][16] CLR -pin fifo_ff_gen.fifo_registers_reg[6][17] CLR -pin fifo_ff_gen.fifo_registers_reg[6][18] CLR -pin fifo_ff_gen.fifo_registers_reg[6][19] CLR -pin fifo_ff_gen.fifo_registers_reg[6][1] CLR -pin fifo_ff_gen.fifo_registers_reg[6][20] CLR -pin fifo_ff_gen.fifo_registers_reg[6][21] CLR -pin fifo_ff_gen.fifo_registers_reg[6][22] CLR -pin fifo_ff_gen.fifo_registers_reg[6][23] CLR -pin fifo_ff_gen.fifo_registers_reg[6][24] CLR -pin fifo_ff_gen.fifo_registers_reg[6][25] CLR -pin fifo_ff_gen.fifo_registers_reg[6][26] CLR -pin fifo_ff_gen.fifo_registers_reg[6][27] CLR -pin fifo_ff_gen.fifo_registers_reg[6][28] CLR -pin fifo_ff_gen.fifo_registers_reg[6][29] CLR -pin fifo_ff_gen.fifo_registers_reg[6][2] CLR -pin fifo_ff_gen.fifo_registers_reg[6][30] CLR -pin fifo_ff_gen.fifo_registers_reg[6][31] CLR -pin fifo_ff_gen.fifo_registers_reg[6][32] CLR -pin fifo_ff_gen.fifo_registers_reg[6][33] CLR -pin fifo_ff_gen.fifo_registers_reg[6][34] CLR -pin fifo_ff_gen.fifo_registers_reg[6][35] CLR -pin fifo_ff_gen.fifo_registers_reg[6][3] CLR -pin fifo_ff_gen.fifo_registers_reg[6][4] CLR -pin fifo_ff_gen.fifo_registers_reg[6][5] CLR -pin fifo_ff_gen.fifo_registers_reg[6][6] CLR -pin fifo_ff_gen.fifo_registers_reg[6][7] CLR -pin fifo_ff_gen.fifo_registers_reg[6][8] CLR -pin fifo_ff_gen.fifo_registers_reg[6][9] CLR -pin fifo_ff_gen.fifo_registers_reg[7][0] CLR -pin fifo_ff_gen.fifo_registers_reg[7][10] CLR -pin fifo_ff_gen.fifo_registers_reg[7][11] CLR -pin fifo_ff_gen.fifo_registers_reg[7][12] CLR -pin fifo_ff_gen.fifo_registers_reg[7][13] CLR -pin fifo_ff_gen.fifo_registers_reg[7][14] CLR -pin fifo_ff_gen.fifo_registers_reg[7][15] CLR -pin fifo_ff_gen.fifo_registers_reg[7][16] CLR -pin fifo_ff_gen.fifo_registers_reg[7][17] CLR -pin fifo_ff_gen.fifo_registers_reg[7][18] CLR -pin fifo_ff_gen.fifo_registers_reg[7][19] CLR -pin fifo_ff_gen.fifo_registers_reg[7][1] CLR -pin fifo_ff_gen.fifo_registers_reg[7][20] CLR -pin fifo_ff_gen.fifo_registers_reg[7][21] CLR -pin fifo_ff_gen.fifo_registers_reg[7][22] CLR -pin fifo_ff_gen.fifo_registers_reg[7][23] CLR -pin fifo_ff_gen.fifo_registers_reg[7][24] CLR -pin fifo_ff_gen.fifo_registers_reg[7][25] CLR -pin fifo_ff_gen.fifo_registers_reg[7][26] CLR -pin fifo_ff_gen.fifo_registers_reg[7][27] CLR -pin fifo_ff_gen.fifo_registers_reg[7][28] CLR -pin fifo_ff_gen.fifo_registers_reg[7][29] CLR -pin fifo_ff_gen.fifo_registers_reg[7][2] CLR -pin fifo_ff_gen.fifo_registers_reg[7][30] CLR -pin fifo_ff_gen.fifo_registers_reg[7][31] CLR -pin fifo_ff_gen.fifo_registers_reg[7][32] CLR -pin fifo_ff_gen.fifo_registers_reg[7][33] CLR -pin fifo_ff_gen.fifo_registers_reg[7][34] CLR -pin fifo_ff_gen.fifo_registers_reg[7][35] CLR -pin fifo_ff_gen.fifo_registers_reg[7][3] CLR -pin fifo_ff_gen.fifo_registers_reg[7][4] CLR -pin fifo_ff_gen.fifo_registers_reg[7][5] CLR -pin fifo_ff_gen.fifo_registers_reg[7][6] CLR -pin fifo_ff_gen.fifo_registers_reg[7][7] CLR -pin fifo_ff_gen.fifo_registers_reg[7][8] CLR -pin fifo_ff_gen.fifo_registers_reg[7][9] CLR -pin pop_pointer_q_reg[0] CLR -pin pop_pointer_q_reg[1] CLR -pin pop_pointer_q_reg[2] CLR -pin push_pointer_q_reg[0] CLR -pin push_pointer_q_reg[1] CLR -pin push_pointer_q_reg[2] CLR
netloc FSM_sequential_cs[1]_i_2_n_0 1 2 14 670 42110 NJ 42110 NJ 42110 NJ 42110 1870 41990 NJ 41990 NJ 41990 NJ 41990 3030 42230 NJ 42230 NJ 42230 NJ 42230 4880 42130 N
load net fifo_ff_gen.fifo_registers_reg[6]__0[13] -pin fifo_ff_gen.fifo_registers_reg[6][13] Q -pin {pop_o\.data[9]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[13] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7]__0[24] -pin fifo_ff_gen.fifo_registers_reg[7][24] Q -pin {pop_o\.data[20]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[24] 1 15 1 N
load net {pop_o\.data_OBUF[10]} -pin {pop_o\.data[10]_INST_0} I -pin {pop_o\.data[10]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[10]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[1]__0[35] -pin fifo_ff_gen.fifo_registers_reg[1][35] Q -pin {pop_o\.data[31]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[35] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[1]__0[4] -pin fifo_ff_gen.fifo_registers_reg[1][4] Q -pin {pop_o\.data[0]_INST_0_i_2} I3
netloc fifo_ff_gen.fifo_registers_reg[1]__0[4] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[5]__0[15] -pin fifo_ff_gen.fifo_registers_reg[5][15] Q -pin {pop_o\.data[11]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[15] 1 15 1 5400
load net {pop_o\.data[20]_INST_0_i_2_n_0} -pin {pop_o\.data[20]_INST_0_i_1} I0 -pin {pop_o\.data[20]_INST_0_i_2} O
netloc {pop_o\.data[20]_INST_0_i_2_n_0} 1 16 1 N
load net fifo_ff_gen.fifo_registers_reg[6]__0[2] -pin fifo_ff_gen.fifo_registers_reg[6][2] Q -pin {pop_o\.strb[2]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[2] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7][8]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][8]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][8]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][8]_i_2_n_0 1 13 1 N
load net fifo_ff_gen.fifo_registers_reg[7]__0[6] -pin fifo_ff_gen.fifo_registers_reg[7][6] Q -pin {pop_o\.data[2]_INST_0_i_3} I0
netloc fifo_ff_gen.fifo_registers_reg[7]__0[6] 1 15 1 N
load net flags_o[push_pointer][0] -attr @rip(#000000) 0 -port flags_o[push_pointer][0] -pin flags_o[push_pointer][0]_INST_0 O
load net {pop_o\.data[7]_INST_0_i_3_n_0} -pin {pop_o\.data[7]_INST_0_i_1} I1 -pin {pop_o\.data[7]_INST_0_i_3} O
netloc {pop_o\.data[7]_INST_0_i_3_n_0} 1 16 1 5840
load net {push_i\.data[23]} -attr @rip(#000000) {push_i\.data[23]} -pin fifo_ff_gen.fifo_registers_reg[7][27]_i_2 I -port {push_i\.data[23]}
load net fifo_ff_gen.fifo_registers_reg[5]__0[12] -pin fifo_ff_gen.fifo_registers_reg[5][12] Q -pin {pop_o\.data[8]_INST_0_i_3} I3
netloc fifo_ff_gen.fifo_registers_reg[5]__0[12] 1 15 1 5380
load net FSM_sequential_cs[1]_i_3_n_0 -pin FSM_sequential_cs[0]_i_1 I0 -pin FSM_sequential_cs[1]_i_1 I0 -pin FSM_sequential_cs[1]_i_3 O
netloc FSM_sequential_cs[1]_i_3_n_0 1 1 14 290 42010 NJ 42010 NJ 42010 NJ 42010 NJ 42010 1810J 42030 NJ 42030 NJ 42030 NJ 42030 3090J 42010 NJ 42010 3710J 42050 NJ 42050 4840
load net fifo_ff_gen.fifo_registers_reg[0]__0[21] -pin fifo_ff_gen.fifo_registers_reg[0][21] Q -pin {pop_o\.data[17]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[21] 1 15 1 N
load net fifo_ff_gen.fifo_registers_reg[2]__0[0] -pin fifo_ff_gen.fifo_registers_reg[2][0] Q -pin {pop_o\.strb[0]_INST_0_i_2} I1
netloc fifo_ff_gen.fifo_registers_reg[2]__0[0] 1 15 1 5560
load net fifo_ff_gen.fifo_registers_reg[7][14]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][14]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][14]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][14]_i_2_n_0 1 13 1 N
load net fifo_registers[3] -pin fifo_ff_gen.fifo_registers[7][3]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][3] D -pin fifo_ff_gen.fifo_registers_reg[1][3] D -pin fifo_ff_gen.fifo_registers_reg[2][3] D -pin fifo_ff_gen.fifo_registers_reg[3][3] D -pin fifo_ff_gen.fifo_registers_reg[4][3] D -pin fifo_ff_gen.fifo_registers_reg[5][3] D -pin fifo_ff_gen.fifo_registers_reg[6][3] D -pin fifo_ff_gen.fifo_registers_reg[7][3] D
netloc fifo_registers[3] 1 14 1 4800
load net fifo_ff_gen.fifo_registers_reg[6]__0[35] -pin fifo_ff_gen.fifo_registers_reg[6][35] Q -pin {pop_o\.data[31]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[35] 1 15 1 5580
load net fifo_ff_gen.fifo_registers_reg[0]__0[16] -pin fifo_ff_gen.fifo_registers_reg[0][16] Q -pin {pop_o\.data[12]_INST_0_i_2} I5
netloc fifo_ff_gen.fifo_registers_reg[0]__0[16] 1 15 1 N
load net fifo_registers[0] -pin fifo_ff_gen.fifo_registers[7][0]_i_1 O -pin fifo_ff_gen.fifo_registers_reg[0][0] D -pin fifo_ff_gen.fifo_registers_reg[1][0] D -pin fifo_ff_gen.fifo_registers_reg[2][0] D -pin fifo_ff_gen.fifo_registers_reg[3][0] D -pin fifo_ff_gen.fifo_registers_reg[4][0] D -pin fifo_ff_gen.fifo_registers_reg[5][0] D -pin fifo_ff_gen.fifo_registers_reg[6][0] D -pin fifo_ff_gen.fifo_registers_reg[7][0] D
netloc fifo_registers[0] 1 14 1 4900
load net {pop_o\.data_OBUF[9]} -pin {pop_o\.data[9]_INST_0} I -pin {pop_o\.data[9]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[9]} 1 17 1 N
load net fifo_ff_gen.fifo_registers_reg[6]__0[24] -pin fifo_ff_gen.fifo_registers_reg[6][24] Q -pin {pop_o\.data[20]_INST_0_i_3} I1
netloc fifo_ff_gen.fifo_registers_reg[6]__0[24] 1 15 1 5380
load net fifo_ff_gen.fifo_registers_reg[7][13]_i_2_n_0 -pin fifo_ff_gen.fifo_registers[7][13]_i_1 I0 -pin fifo_ff_gen.fifo_registers_reg[7][13]_i_2 O
netloc fifo_ff_gen.fifo_registers_reg[7][13]_i_2_n_0 1 13 1 N
load net {pop_o\.data_OBUF[1]} -pin {pop_o\.data[1]_INST_0} I -pin {pop_o\.data[1]_INST_0_i_1} O
netloc {pop_o\.data_OBUF[1]} 1 17 1 N
load net {push_i\.data[12]} -attr @rip(#000000) {push_i\.data[12]} -pin fifo_ff_gen.fifo_registers_reg[7][16]_i_2 I -port {push_i\.data[12]}
load netBundle @flags_o_1 8 flags_o[pop_pointer][7] flags_o[pop_pointer][6] flags_o[pop_pointer][5] flags_o[pop_pointer][4] flags_o[pop_pointer][3] flags_o[pop_pointer][2] flags_o[pop_pointer][1] flags_o[pop_pointer][0] -autobundled
netbloc @flags_o_1 1 18 1 6620
load netBundle {@pop_o\.data} 32 {pop_o\.data[31]} {pop_o\.data[30]} {pop_o\.data[29]} {pop_o\.data[28]} {pop_o\.data[27]} {pop_o\.data[26]} {pop_o\.data[25]} {pop_o\.data[24]} {pop_o\.data[23]} {pop_o\.data[22]} {pop_o\.data[21]} {pop_o\.data[20]} {pop_o\.data[19]} {pop_o\.data[18]} {pop_o\.data[17]} {pop_o\.data[16]} {pop_o\.data[15]} {pop_o\.data[14]} {pop_o\.data[13]} {pop_o\.data[12]} {pop_o\.data[11]} {pop_o\.data[10]} {pop_o\.data[9]} {pop_o\.data[8]} {pop_o\.data[7]} {pop_o\.data[6]} {pop_o\.data[5]} {pop_o\.data[4]} {pop_o\.data[3]} {pop_o\.data[2]} {pop_o\.data[1]} {pop_o\.data[0]} -autobundled
netbloc {@pop_o\.data} 1 18 1 6600
load netBundle {@push_i\.strb} 4 {push_i\.strb[3]} {push_i\.strb[2]} {push_i\.strb[1]} {push_i\.strb[0]} -autobundled
netbloc {@push_i\.strb} 1 0 13 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 NJ 3410 3710
load netBundle @flags_o 8 flags_o[push_pointer][7] flags_o[push_pointer][6] flags_o[push_pointer][5] flags_o[push_pointer][4] flags_o[push_pointer][3] flags_o[push_pointer][2] flags_o[push_pointer][1] flags_o[push_pointer][0] -autobundled
netbloc @flags_o 1 18 1 6620
load netBundle {@push_i\.data} 32 {push_i\.data[31]} {push_i\.data[30]} {push_i\.data[29]} {push_i\.data[28]} {push_i\.data[27]} {push_i\.data[26]} {push_i\.data[25]} {push_i\.data[24]} {push_i\.data[23]} {push_i\.data[22]} {push_i\.data[21]} {push_i\.data[20]} {push_i\.data[19]} {push_i\.data[18]} {push_i\.data[17]} {push_i\.data[16]} {push_i\.data[15]} {push_i\.data[14]} {push_i\.data[13]} {push_i\.data[12]} {push_i\.data[11]} {push_i\.data[10]} {push_i\.data[9]} {push_i\.data[8]} {push_i\.data[7]} {push_i\.data[6]} {push_i\.data[5]} {push_i\.data[4]} {push_i\.data[3]} {push_i\.data[2]} {push_i\.data[1]} {push_i\.data[0]} -autobundled
netbloc {@push_i\.data} 1 0 13 NJ 42430 NJ 42430 NJ 42430 NJ 42430 NJ 42430 NJ 42430 NJ 42430 NJ 42430 NJ 42430 NJ 42430 NJ 42430 NJ 42430 3750
load netBundle {@pop_o\.strb} 4 {pop_o\.strb[3]} {pop_o\.strb[2]} {pop_o\.strb[1]} {pop_o\.strb[0]} -autobundled
netbloc {@pop_o\.strb} 1 18 1 6600
levelinfo -pg 1 0 40 460 840 1130 1430 1670 1970 2250 2530 2830 3190 3550 3890 4510 5190 5680 6090 6390 6640 -top 0 -bot 43490
show
zoom 0.00944491
scrollpos -756 -10
#
# initialize ictrl to current module my_hwpe_stream_fifo work:my_hwpe_stream_fifo:NOFILE
ictrl init topinfo |
