<Qucs Schematic 0.0.19>
<Properties>
  <View=130,131,1674,861,0.868493,0,0>
  <Grid=10,10,1>
  <DataSet=lorentz_sim_sparm_plot.dat>
  <DataDisplay=lorentz_sim_sparm_plot.dpl>
  <OpenDisplay=1>
  <Script=lorentz_sim_sparm_plot.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.SP SP1 1 180 620 0 81 0 0 "log" 1 "0.1MHz" 1 "14GHz" 1 "2000" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Pac P2 1 1100 290 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 1100 320 0 0 0 0>
  <Pac P1 1 350 300 18 -26 0 1 "1" 1 "50" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 350 330 0 0 0 0>
  <GND * 1 790 270 0 0 0 0>
  <Eqn Eqn1 1 370 630 -28 15 0 0 "dBS21=dB(S[2,1])" 1 "dBS11=dB(S[1,1])" 1 "yes" 0>
  <SPfile X2 1 790 240 -26 -69 0 0 "/home/radioactive/projects/github/jPCBSim_demos/lorentz_experiment_koledintseva_et_al/lorentz_debye_fr4.s2p" 1 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
</Components>
<Wires>
  <1100 240 1100 260 "" 0 0 0 "">
  <350 240 350 270 "" 0 0 0 "">
  <350 240 760 240 "" 0 0 0 "">
  <820 240 1100 240 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
