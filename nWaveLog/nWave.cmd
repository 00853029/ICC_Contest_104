wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/JengDeChang/2016_grad_cell/LBP.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/LBP"
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/LBP/LBP_value\[7:0\]} \
{/testfixture/LBP/clk} \
{/testfixture/LBP/col\[7:0\]} \
{/testfixture/LBP/counter\[3:0\]} \
{/testfixture/LBP/finish} \
{/testfixture/LBP/finish_reg} \
{/testfixture/LBP/g_center\[7:0\]} \
{/testfixture/LBP/gray_addr\[13:0\]} \
{/testfixture/LBP/gray_addr_reg\[13:0\]} \
{/testfixture/LBP/gray_data\[7:0\]} \
{/testfixture/LBP/gray_ready} \
{/testfixture/LBP/gray_req} \
{/testfixture/LBP/gray_req_reg} \
{/testfixture/LBP/lbp_addr\[13:0\]} \
{/testfixture/LBP/lbp_data\[7:0\]} \
{/testfixture/LBP/lbp_valid} \
{/testfixture/LBP/lbp_valid_reg} \
{/testfixture/LBP/reset} \
{/testfixture/LBP/row\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/LBP/LBP_value\[7:0\]} \
{/testfixture/LBP/clk} \
{/testfixture/LBP/col\[7:0\]} \
{/testfixture/LBP/counter\[3:0\]} \
{/testfixture/LBP/finish} \
{/testfixture/LBP/finish_reg} \
{/testfixture/LBP/g_center\[7:0\]} \
{/testfixture/LBP/gray_addr\[13:0\]} \
{/testfixture/LBP/gray_addr_reg\[13:0\]} \
{/testfixture/LBP/gray_data\[7:0\]} \
{/testfixture/LBP/gray_ready} \
{/testfixture/LBP/gray_req} \
{/testfixture/LBP/gray_req_reg} \
{/testfixture/LBP/lbp_addr\[13:0\]} \
{/testfixture/LBP/lbp_data\[7:0\]} \
{/testfixture/LBP/lbp_valid} \
{/testfixture/LBP/lbp_valid_reg} \
{/testfixture/LBP/reset} \
{/testfixture/LBP/row\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 2322973.642706 -snap {("G2" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 67234364.667814 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectGroup -win $_nWave1 {G2}
wvExit
