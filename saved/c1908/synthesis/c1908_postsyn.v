/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP5-2
// Date      : Wed Jun 13 11:18:20 2018
/////////////////////////////////////////////////////////////


module c1908 ( N1, N4, N7, N10, N13, N16, N19, N22, N25, N28, N31, N34, N37, 
        N40, N43, N46, N49, N53, N56, N60, N63, N66, N69, N72, N76, N79, N82, 
        N85, N88, N91, N94, N99, N104, N2753, N2754, N2755, N2756, N2762, 
        N2767, N2768, N2779, N2780, N2781, N2782, N2783, N2784, N2785, N2786, 
        N2787, N2811, N2886, N2887, N2888, N2889, N2890, N2891, N2892, N2899
 );
  input N1, N4, N7, N10, N13, N16, N19, N22, N25, N28, N31, N34, N37, N40, N43,
         N46, N49, N53, N56, N60, N63, N66, N69, N72, N76, N79, N82, N85, N88,
         N91, N94, N99, N104;
  output N2753, N2754, N2755, N2756, N2762, N2767, N2768, N2779, N2780, N2781,
         N2782, N2783, N2784, N2785, N2786, N2787, N2811, N2886, N2887, N2888,
         N2889, N2890, N2891, N2892, N2899;
  wire   n346, n345, n340, n179, n181, n183, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n348, n349, n350, n351,
         n352;

  HS65_LL_IVX13 U177 ( .A(n352), .Z(N2888) );
  HS65_LL_IVX13 U180 ( .A(n350), .Z(N2890) );
  HS65_LL_IVX13 U183 ( .A(n351), .Z(N2889) );
  HS65_LL_IVX13 U186 ( .A(n349), .Z(N2899) );
  HS65_LL_IVX13 U189 ( .A(n348), .Z(N2887) );
  HS65_LL_IVX2 U191 ( .A(n340), .Z(n179) );
  HS65_LL_IVX13 U192 ( .A(n179), .Z(N2756) );
  HS65_LL_MUXI21X2 U193 ( .D0(N10), .D1(n288), .S0(n287), .Z(n340) );
  HS65_LL_IVX2 U194 ( .A(n345), .Z(n181) );
  HS65_LL_IVX13 U195 ( .A(n181), .Z(N2891) );
  HS65_LL_MUXI21X2 U196 ( .D0(n300), .D1(n299), .S0(n298), .Z(n345) );
  HS65_LL_IVX2 U197 ( .A(n346), .Z(n183) );
  HS65_LL_IVX13 U198 ( .A(n183), .Z(N2892) );
  HS65_LL_MUXI21X2 U199 ( .D0(n309), .D1(n308), .S0(n307), .Z(n346) );
  HS65_LL_OAI21X2 U200 ( .A(n275), .B(n274), .C(n272), .Z(n273) );
  HS65_LL_OAI21X2 U201 ( .A(n270), .B(n269), .C(n272), .Z(n268) );
  HS65_LL_NOR2X5 U202 ( .A(n339), .B(n255), .Z(n271) );
  HS65_LL_NAND2X2 U203 ( .A(n253), .B(n252), .Z(n287) );
  HS65_LL_NOR3X1 U204 ( .A(n242), .B(n332), .C(n244), .Z(n279) );
  HS65_LL_OAI21X2 U205 ( .A(N94), .B(n226), .C(N56), .Z(n206) );
  HS65_LL_OAI21X2 U206 ( .A(N94), .B(N72), .C(N49), .Z(n200) );
  HS65_LL_NOR3X1 U214 ( .A(n284), .B(n279), .C(n249), .Z(n254) );
  HS65_LL_NOR3X1 U215 ( .A(n283), .B(n281), .C(n277), .Z(n232) );
  HS65_LL_OAI112X1 U216 ( .A(n328), .B(n313), .C(n312), .D(n311), .Z(n338) );
  HS65_LLS_XNOR2X3 U217 ( .A(N79), .B(n210), .Z(n311) );
  HS65_LLS_XNOR2X3 U220 ( .A(N76), .B(n191), .Z(n314) );
  HS65_LLS_XNOR2X3 U221 ( .A(N85), .B(n221), .Z(n235) );
  HS65_LLS_XOR2X3 U222 ( .A(n206), .B(n205), .Z(n313) );
  HS65_LLS_XNOR2X3 U223 ( .A(N82), .B(n216), .Z(n234) );
  HS65_LL_OAI21X2 U224 ( .A(N91), .B(n240), .C(n326), .Z(n222) );
  HS65_LLS_XNOR2X3 U225 ( .A(N1), .B(n207), .Z(n208) );
  HS65_LL_OAI21X2 U226 ( .A(N94), .B(n226), .C(N60), .Z(n227) );
  HS65_LLS_XNOR2X3 U227 ( .A(N46), .B(n220), .Z(n197) );
  HS65_LLS_XNOR2X3 U228 ( .A(N46), .B(n301), .Z(n215) );
  HS65_LL_AOI12X23 U230 ( .A(n261), .B(n260), .C(n259), .Z(N2886) );
  HS65_LL_NAND2X14 U231 ( .A(n185), .B(n186), .Z(N2782) );
  HS65_LL_IVX2 U232 ( .A(n292), .Z(n187) );
  HS65_LL_NAND2X2 U233 ( .A(n292), .B(n293), .Z(n185) );
  HS65_LL_NAND2X2 U234 ( .A(N22), .B(n187), .Z(n186) );
  HS65_LL_NOR3AX2 U235 ( .A(n243), .B(n244), .C(n325), .Z(n292) );
  HS65_LL_IVX2 U236 ( .A(n323), .Z(n327) );
  HS65_LL_NOR2X2 U237 ( .A(N94), .B(n258), .Z(n191) );
  HS65_LL_NAND2X2 U238 ( .A(n313), .B(n225), .Z(n332) );
  HS65_LL_NAND3X2 U239 ( .A(N69), .B(N60), .C(n330), .Z(n203) );
  HS65_LLS_XOR2X3 U240 ( .A(N43), .B(N28), .Z(n220) );
  HS65_LLS_XNOR2X3 U241 ( .A(n197), .B(N34), .Z(n188) );
  HS65_LLS_XNOR2X3 U242 ( .A(n200), .B(n199), .Z(n316) );
  HS65_LL_NOR2X2 U243 ( .A(N94), .B(n261), .Z(n199) );
  HS65_LL_NAND2X2 U244 ( .A(n227), .B(n314), .Z(n323) );
  HS65_LL_NOR2X2 U245 ( .A(N94), .B(n264), .Z(n205) );
  HS65_LL_NAND3X2 U246 ( .A(N94), .B(N104), .C(n201), .Z(n240) );
  HS65_LL_CBI4I6X2 U247 ( .A(N88), .B(n240), .C(n326), .D(n239), .Z(n246) );
  HS65_LL_IVX2 U248 ( .A(n238), .Z(n239) );
  HS65_LL_NOR2X2 U249 ( .A(N94), .B(n267), .Z(n221) );
  HS65_LL_NOR2X2 U250 ( .A(n313), .B(n311), .Z(n230) );
  HS65_LL_IVX2 U251 ( .A(n311), .Z(n225) );
  HS65_LL_IVX2 U252 ( .A(n235), .Z(n224) );
  HS65_LL_NOR2X2 U253 ( .A(N94), .B(n270), .Z(n216) );
  HS65_LL_NAND2X2 U254 ( .A(n247), .B(n246), .Z(n250) );
  HS65_LLS_XNOR2X3 U255 ( .A(N25), .B(N40), .Z(n301) );
  HS65_LL_IVX2 U256 ( .A(N72), .Z(n212) );
  HS65_LL_IVX2 U257 ( .A(n315), .Z(n310) );
  HS65_LL_IVX2 U258 ( .A(n247), .Z(n322) );
  HS65_LL_NAND2X2 U259 ( .A(n235), .B(n234), .Z(n315) );
  HS65_LL_NOR2X2 U260 ( .A(n317), .B(n316), .Z(n319) );
  HS65_LL_NAND3X2 U261 ( .A(N99), .B(n330), .C(n201), .Z(n326) );
  HS65_LL_NAND3X2 U262 ( .A(n247), .B(n319), .C(n222), .Z(n231) );
  HS65_LL_NOR2X2 U263 ( .A(n242), .B(n231), .Z(n233) );
  HS65_LL_NAND2X2 U264 ( .A(n238), .B(n222), .Z(n228) );
  HS65_LL_NAND2X2 U265 ( .A(n313), .B(n311), .Z(n325) );
  HS65_LL_NAND2X2 U266 ( .A(n251), .B(n320), .Z(n241) );
  HS65_LL_NAND2X2 U267 ( .A(n327), .B(n246), .Z(n244) );
  HS65_LL_IVX2 U268 ( .A(n321), .Z(n242) );
  HS65_LL_NOR2X2 U269 ( .A(n322), .B(n228), .Z(n236) );
  HS65_LL_NOR2X2 U270 ( .A(n235), .B(n234), .Z(n243) );
  HS65_LL_NAND2X2 U271 ( .A(n234), .B(n224), .Z(n223) );
  HS65_LL_NAND2X2 U272 ( .A(n236), .B(n230), .Z(n229) );
  HS65_LL_NOR2X2 U273 ( .A(n225), .B(n313), .Z(n253) );
  HS65_LL_IVX2 U274 ( .A(n223), .Z(n320) );
  HS65_LL_NOR2X2 U275 ( .A(n250), .B(n325), .Z(n248) );
  HS65_LL_NOR2X2 U276 ( .A(n224), .B(n234), .Z(n321) );
  HS65_LL_IVX2 U277 ( .A(n332), .Z(n251) );
  HS65_LL_NOR2X2 U278 ( .A(n315), .B(n250), .Z(n252) );
  HS65_LLS_XOR2X3 U279 ( .A(n306), .B(n304), .Z(n305) );
  HS65_LL_NAND3X2 U280 ( .A(N69), .B(N56), .C(n330), .Z(n218) );
  HS65_LL_NAND3X2 U281 ( .A(N53), .B(n330), .C(n212), .Z(n213) );
  HS65_LL_NAND2X2 U282 ( .A(N66), .B(n330), .Z(n189) );
  HS65_LLS_XNOR2X3 U283 ( .A(n295), .B(n198), .Z(n261) );
  HS65_LL_NAND2X2 U284 ( .A(N63), .B(n330), .Z(n196) );
  HS65_LL_OR2X4 U285 ( .A(N99), .B(n330), .Z(n272) );
  HS65_LL_OAI21X2 U286 ( .A(n332), .B(n331), .C(n330), .Z(n333) );
  HS65_LL_IVX2 U287 ( .A(N22), .Z(n293) );
  HS65_LL_NAND2X2 U288 ( .A(N56), .B(n271), .Z(n263) );
  HS65_LL_NAND2X2 U289 ( .A(N85), .B(n271), .Z(n266) );
  HS65_LL_CBI4I6X2 U290 ( .A(n336), .B(n335), .C(n334), .D(n333), .Z(n337) );
  HS65_LL_XNOR2X18 U291 ( .A(N7), .B(n285), .Z(N2755) );
  HS65_LL_NAND2X2 U292 ( .A(n320), .B(n248), .Z(n285) );
  HS65_LL_XNOR2X18 U293 ( .A(N31), .B(n290), .Z(N2784) );
  HS65_LL_NAND2X2 U294 ( .A(n251), .B(n233), .Z(n290) );
  HS65_LL_XNOR2X18 U295 ( .A(N40), .B(n291), .Z(N2787) );
  HS65_LL_NAND2X2 U296 ( .A(n233), .B(n253), .Z(n291) );
  HS65_LL_XNOR2X18 U297 ( .A(N1), .B(n289), .Z(N2753) );
  HS65_LL_NAND2X2 U298 ( .A(n251), .B(n252), .Z(n289) );
  HS65_LL_XNOR2X18 U299 ( .A(N4), .B(n286), .Z(N2754) );
  HS65_LL_NAND2X2 U300 ( .A(n321), .B(n248), .Z(n286) );
  HS65_LL_XNOR2X18 U301 ( .A(N43), .B(n282), .Z(N2767) );
  HS65_LL_NAND3X2 U302 ( .A(n236), .B(n251), .C(n243), .Z(n282) );
  HS65_LL_XOR2X18 U303 ( .A(N34), .B(n283), .Z(N2785) );
  HS65_LL_NOR2X2 U304 ( .A(n231), .B(n241), .Z(n283) );
  HS65_LL_XOR2X18 U305 ( .A(N13), .B(n279), .Z(N2779) );
  HS65_LL_XOR2X18 U306 ( .A(N28), .B(n281), .Z(N2762) );
  HS65_LL_NOR2X2 U307 ( .A(n229), .B(n223), .Z(n281) );
  HS65_LL_XOR2X18 U308 ( .A(N16), .B(n284), .Z(N2780) );
  HS65_LL_NOR2X2 U309 ( .A(n241), .B(n244), .Z(n284) );
  HS65_LL_XOR2X18 U310 ( .A(N19), .B(n278), .Z(N2781) );
  HS65_LL_NOR2X2 U311 ( .A(n245), .B(n244), .Z(n278) );
  HS65_LL_XOR2X18 U312 ( .A(N46), .B(n280), .Z(N2768) );
  HS65_LL_NOR2X2 U313 ( .A(n242), .B(n229), .Z(n280) );
  HS65_LL_XOR2X18 U314 ( .A(N25), .B(n277), .Z(N2783) );
  HS65_LL_XOR2X18 U315 ( .A(N37), .B(n276), .Z(N2786) );
  HS65_LL_NOR2X2 U316 ( .A(n231), .B(n245), .Z(n276) );
  HS65_LL_OR3ABCX18 U317 ( .A(n339), .B(n338), .C(n337), .Z(N2811) );
  HS65_LL_NAND2X2 U318 ( .A(N49), .B(n271), .Z(n260) );
  HS65_LL_NAND2X2 U319 ( .A(N76), .B(n271), .Z(n257) );
  HS65_LL_NOR2X2 U320 ( .A(N94), .B(N72), .Z(n193) );
  HS65_LL_NAND2X2 U321 ( .A(N69), .B(N72), .Z(n201) );
  HS65_LL_NAND3X2 U322 ( .A(n330), .B(N49), .C(n212), .Z(n207) );
  HS65_LL_IVX2 U323 ( .A(N94), .Z(n255) );
  HS65_LL_IVX2 U324 ( .A(n302), .Z(n303) );
  HS65_LL_NAND2X2 U325 ( .A(n230), .B(n310), .Z(n245) );
  HS65_LL_NAND2X2 U326 ( .A(N79), .B(n271), .Z(n274) );
  HS65_LL_NAND2X2 U327 ( .A(N82), .B(n271), .Z(n269) );
  HS65_LLS_XOR3X2 U328 ( .A(N1), .B(N4), .C(N7), .Z(n194) );
  HS65_LLS_XOR3X2 U329 ( .A(N37), .B(N31), .C(n188), .Z(n302) );
  HS65_LLS_XOR3X2 U330 ( .A(N10), .B(N40), .C(n189), .Z(n190) );
  HS65_LLS_XOR3X2 U331 ( .A(n194), .B(n302), .C(n190), .Z(n258) );
  HS65_LL_NAND2X2 U332 ( .A(N69), .B(n255), .Z(n192) );
  HS65_LL_NOR2AX3 U333 ( .A(N53), .B(n193), .Z(n317) );
  HS65_LLS_XOR3X2 U334 ( .A(N19), .B(N16), .C(N13), .Z(n209) );
  HS65_LLS_XOR3X2 U335 ( .A(N10), .B(n209), .C(n194), .Z(n195) );
  HS65_LL_MUXI21X2 U336 ( .D0(n293), .D1(N22), .S0(n195), .Z(n295) );
  HS65_LLS_XOR3X2 U337 ( .A(n197), .B(N25), .C(n196), .Z(n198) );
  HS65_LL_IVX2 U338 ( .A(N69), .Z(n226) );
  HS65_LL_IVX2 U339 ( .A(N10), .Z(n288) );
  HS65_LL_MUXI21X2 U340 ( .D0(n288), .D1(N10), .S0(N19), .Z(n202) );
  HS65_LLS_XOR3X2 U341 ( .A(N28), .B(N37), .C(n202), .Z(n204) );
  HS65_LLS_XOR3X2 U342 ( .A(n215), .B(n204), .C(n203), .Z(n264) );
  HS65_LLS_XOR3X2 U343 ( .A(n209), .B(n208), .C(n303), .Z(n275) );
  HS65_LLS_XOR3X2 U344 ( .A(N22), .B(N13), .C(N31), .Z(n211) );
  HS65_LLS_XOR3X2 U345 ( .A(N4), .B(N43), .C(n211), .Z(n214) );
  HS65_LLS_XOR3X2 U346 ( .A(n215), .B(n214), .C(n213), .Z(n270) );
  HS65_LL_MUXI21X2 U347 ( .D0(n293), .D1(N22), .S0(N16), .Z(n217) );
  HS65_LLS_XOR3X2 U348 ( .A(N7), .B(n217), .C(N34), .Z(n219) );
  HS65_LLS_XOR3X2 U349 ( .A(n220), .B(n219), .C(n218), .Z(n267) );
  HS65_LL_NOR2AX3 U350 ( .A(n316), .B(n317), .Z(n238) );
  HS65_LL_NOR4ABX2 U351 ( .A(n321), .B(n253), .C(n323), .D(n228), .Z(n277) );
  HS65_LL_NOR4ABX2 U352 ( .A(n232), .B(n290), .C(n280), .D(n276), .Z(n237) );
  HS65_LL_NAND4ABX3 U353 ( .A(n292), .B(n278), .C(n286), .D(n285), .Z(n249) );
  HS65_LL_IVX2 U354 ( .A(n295), .Z(n297) );
  HS65_LL_MUXI21X2 U355 ( .D0(n295), .D1(n297), .S0(n294), .Z(n296) );
  HS65_LL_AND2X4 U356 ( .A(N63), .B(N88), .Z(n299) );
  HS65_LL_MUXI21X2 U357 ( .D0(n296), .D1(n299), .S0(N104), .Z(n300) );
  HS65_LL_AOI12X2 U358 ( .A(N88), .B(n297), .C(n330), .Z(n298) );
  HS65_LL_MUXI21X2 U359 ( .D0(n303), .D1(n302), .S0(n301), .Z(n306) );
  HS65_LL_AND2X4 U360 ( .A(N66), .B(N91), .Z(n308) );
  HS65_LL_MUXI21X2 U361 ( .D0(n305), .D1(n308), .S0(N104), .Z(n309) );
  HS65_LL_AOI12X2 U362 ( .A(N91), .B(n306), .C(n330), .Z(n307) );
  HS65_LL_IVX2 U363 ( .A(n326), .Z(n328) );
  HS65_LL_NAND2X2 U364 ( .A(n319), .B(n310), .Z(n329) );
  HS65_LL_NOR2X2 U365 ( .A(n323), .B(n329), .Z(n312) );
  HS65_LL_NOR2AX3 U366 ( .A(n314), .B(n329), .Z(n336) );
  HS65_LL_AOI12X2 U367 ( .A(n317), .B(n316), .C(n315), .Z(n318) );
  HS65_LL_CBI4I6X2 U368 ( .A(n321), .B(n320), .C(n319), .D(n318), .Z(n324) );
  HS65_LL_OAI22X1 U369 ( .A(n324), .B(n323), .C(n322), .D(n329), .Z(n335) );
  HS65_LL_NOR2X2 U370 ( .A(n326), .B(n325), .Z(n334) );
  HS65_LL_NAND3AX3 U371 ( .A(n329), .B(n328), .C(n327), .Z(n331) );
  HS65_LL_IVX2 U176 ( .A(N104), .Z(n330) );
  HS65_LL_NOR2X2 U178 ( .A(N94), .B(n275), .Z(n210) );
  HS65_LL_OAI21X2 U179 ( .A(n264), .B(n263), .C(n272), .Z(n262) );
  HS65_LL_OAI21X2 U181 ( .A(n258), .B(n257), .C(n272), .Z(n256) );
  HS65_LL_NAND3X2 U182 ( .A(n254), .B(n289), .C(n287), .Z(n294) );
  HS65_LL_OAI21X2 U184 ( .A(n261), .B(n260), .C(n272), .Z(n259) );
  HS65_LL_AO12X4 U185 ( .A(n258), .B(n257), .C(n256), .Z(n348) );
  HS65_LL_AO12X4 U187 ( .A(n275), .B(n274), .C(n273), .Z(n349) );
  HS65_LL_AO12X4 U188 ( .A(n264), .B(n263), .C(n262), .Z(n350) );
  HS65_LL_AO12X4 U190 ( .A(n267), .B(n266), .C(n265), .Z(n351) );
  HS65_LL_AO12X4 U208 ( .A(n270), .B(n269), .C(n268), .Z(n352) );
  HS65_LL_AOI12X2 U207 ( .A(N60), .B(n192), .C(n314), .Z(n247) );
  HS65_LL_OAI21X2 U209 ( .A(n267), .B(n266), .C(n272), .Z(n265) );
  HS65_LL_NAND3X2 U210 ( .A(n237), .B(n291), .C(n282), .Z(n304) );
  HS65_LL_NOR2X2 U211 ( .A(n304), .B(n294), .Z(n339) );
endmodule

