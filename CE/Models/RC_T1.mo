within CE.Models;
model RC_T1 "2Zone RC model for Annex T1"
parameter Boolean geometric=false;
extends IDEAS.Interfaces.BaseClasses.Structure(
    nZones=2,
    ATrans=558.3,
    AZones={134.3,144.7},
    VZones={369,397},nEmb=nZones);

//states
  Real TiD(start=293);
  Real TwD(start=293);
  Real TwiD(start=293);
  Real TflD(start=293);

  Real TfiD(start=293);
 Real TfiN(start=293);

   Real TiN(start=293);
  Real TwN(start=293);
  Real TwiN(start=293);

//inputs
  Real Te;
  Real solGainsDirDay;
  Real solGainsDifDay;
  Real solGainsDirNight;
  Real solGainsDifNight;
input Real[nZones]  UserGains;
                            // cannot be seperated from heating using convective and radiative port, therefore equal to zero (problem??)
input Real[nZones] Heating;
//Theoretical parameters
parameter Real AwinNDay = 6.00;
parameter Real AwinEDay = 0;
parameter Real AwinSDay = 2.88;
parameter Real AwinWDay = 0.00;

parameter Real AwinNNight = 6.96;
parameter Real AwinENight = 0;
parameter Real AwinSNight = 6.96;
parameter Real AwinWNight = 0.00;

//Parameters in model
parameter Real abs1ED =  0;
parameter Real abs1ND =  0.906;
parameter Real abs1SD =  0.43488;
parameter Real abs1WD =  0;
parameter Real abs2ED =  0;
parameter Real abs2ND =  0.906;
parameter Real abs2SD =  0.43488;
parameter Real abs2WD =  0;
parameter Real abs3ED =  0;
parameter Real abs3ND =  0;
parameter Real abs3SD =  0;
parameter Real abs3WD =  0;
parameter Real abs4ED =  0;
parameter Real abs4ND =  0.906;
parameter Real abs4SD =  0.43488;
parameter Real abs4WD =  0;
parameter Real abs5ED =  0;
parameter Real abs5ND =  0.906;
parameter Real abs5SD =  0.43488;
parameter Real abs5WD =  0;

 parameter Real     CiD =  8.440E+05;
 parameter Real     CwD =  3.262E+06;
 parameter Real     CwiD =  1.483E+07;
 parameter Real     CflD =  5.37E+06;

 parameter Real     f1D =  0.05;
 parameter Real     f2D =  0.1;
 parameter Real     f3D =  0.7;
 parameter Real     f4D =  0.05;

 parameter Real     hwD =  34.53603604;
 parameter Real     hflD =  130.3675532;
 parameter Real     hwiD =  340.2133554;
 parameter Real     infD =  28.09028827;
 parameter Real     UwD =  9.439419534;
 parameter Real     UflD =  13.25659243;

parameter Real abs1EN =  0;
parameter Real abs1NN =  1.19592;
parameter Real abs1SN =  0.5740416;
parameter Real abs1WN =  0;
parameter Real abs2EN = 0;
parameter Real abs2NN =  1.19592;
parameter Real abs2SN = 0.5740416;
parameter Real abs2WN =  0;
parameter Real abs3EN = 0;
parameter Real abs3NN = 0;
parameter Real abs3SN = 0;
parameter Real abs3WN = 0;
parameter Real abs5EN = 0;
parameter Real abs5NN = 1.19592;
parameter Real abs5SN = 0.5740416;
parameter Real abs5WN = 0;

 parameter Real     CiN =  1.602E+06;
 parameter Real     CwN =  5.989E+06;
 parameter Real     CwiN =  6.444E+07;
 parameter Real     f1N =  0.1;
 parameter Real     f2N =  0.1;
 parameter Real     f3N =  0.7;

 parameter Real     hwN =  141.4978023;
 parameter Real     hwiN =  972.0621022;
 parameter Real     infN =  30.68539764;
 parameter Real     UwN =  32.81609224;

 parameter Real     CfiD =  13497814.65;
 parameter Real     CfiN =  13497814.65;
 parameter Real     f5D =  0.1;
 parameter Real     f5N =  0.1;
 parameter Real     UfDN =  112.2697311;
 parameter Real     Ufi =  224.5394622;
 parameter Real     UfND =  112.2697311;

Real solN;
Real solE;
Real solW;
Real solS;

  IDEAS.Climate.Meteo.Solar.RadSol radSolN(
    inc = IDEAS.Constants.Wall,
    azi=IDEAS.Constants.North,
    A=1)
    annotation (Placement(transformation(extent={{-102,82},{-92,92}})));
  IDEAS.Climate.Meteo.Solar.RadSol radSolE(
    inc = IDEAS.Constants.Wall,
    azi=IDEAS.Constants.East,
    A=1) annotation (Placement(transformation(extent={{-100,42},{-90,52}})));
  IDEAS.Climate.Meteo.Solar.RadSol radSolS(
    inc = IDEAS.Constants.Wall,
    azi=IDEAS.Constants.South,
    A=1) annotation (Placement(transformation(extent={{-100,-2},{-88,10}})));
  IDEAS.Climate.Meteo.Solar.RadSol radSolW(
    inc = IDEAS.Constants.Wall,
    azi=IDEAS.Constants.West,
    A=1) annotation (Placement(transformation(extent={{-102,-56},{-92,-46}})));
public
  IDEAS.Buildings.Data.Glazing.GlaBesTest glazing
    annotation (Placement(transformation(extent={{-132,68},{-112,88}})));
public
  Modelica.Blocks.Math.Gain[2] AwinW(k={AwinWDay,AwinWNight})
    annotation (Placement(transformation(extent={{-54,-40},{-46,-32}})));
  Modelica.Blocks.Math.Gain[2] AwinW1(k={AwinWDay,AwinWNight})
    annotation (Placement(transformation(extent={{-54,-58},{-46,-50}})));
  Modelica.Blocks.Math.Gain[2] AwinN(k={AwinNDay,AwinNNight})
    annotation (Placement(transformation(extent={{-54,86},{-46,94}})));
  Modelica.Blocks.Math.Gain[2] AwinN2(k={AwinNDay,AwinNNight})
    annotation (Placement(transformation(extent={{-54,74},{-46,82}})));
  Modelica.Blocks.Math.Gain[2] AwinE(k={AwinEDay,AwinENight})
    annotation (Placement(transformation(extent={{-54,46},{-46,54}})));
  Modelica.Blocks.Math.Gain[2] AwinE2(k={AwinEDay,AwinENight})
    annotation (Placement(transformation(extent={{-54,32},{-46,40}})));
  Modelica.Blocks.Math.Gain[2] AwinS(k={AwinSDay,AwinSNight})
    annotation (Placement(transformation(extent={{-54,6},{-46,14}})));
  Modelica.Blocks.Math.Gain[2] AwinS2(k={AwinSDay,AwinSNight})
    annotation (Placement(transformation(extent={{-54,-12},{-46,-4}})));
  Modelica.Blocks.Math.Sum[2] solDir(nin=4)
    annotation (Placement(transformation(extent={{34,18},{54,38}})));
  Modelica.Blocks.Math.Sum[2] solDif(nin=4)
    annotation (Placement(transformation(extent={{34,-60},{54,-40}})));
  CE.Models.BaseClasses.SwWindowResponse swWindowResponse(
    final nLay=glazing.nLay,
    final SwAbs=glazing.SwAbs,
    final SwTrans=glazing.SwTrans,
    final SwTransDif=glazing.SwTransDif,
    final SwAbsDif=glazing.SwAbsDif)
    annotation (Placement(transformation(extent={{-82,82},{-72,92}})));
  CE.Models.BaseClasses.SwWindowResponse swWindowResponse1(
    final nLay=glazing.nLay,
    final SwAbs=glazing.SwAbs,
    final SwTrans=glazing.SwTrans,
    final SwTransDif=glazing.SwTransDif,
    final SwAbsDif=glazing.SwAbsDif)
    annotation (Placement(transformation(extent={{-84,40},{-72,52}})));
  CE.Models.BaseClasses.SwWindowResponse swWindowResponse2(
    final nLay=glazing.nLay,
    final SwAbs=glazing.SwAbs,
    final SwTrans=glazing.SwTrans,
    final SwTransDif=glazing.SwTransDif,
    final SwAbsDif=glazing.SwAbsDif)
    annotation (Placement(transformation(extent={{-82,-2},{-70,10}})));
  CE.Models.BaseClasses.SwWindowResponse swWindowResponse3(
    final nLay=glazing.nLay,
    final SwAbs=glazing.SwAbs,
    final SwTrans=glazing.SwTrans,
    final SwTransDif=glazing.SwTransDif,
    final SwAbsDif=glazing.SwAbsDif)
    annotation (Placement(transformation(extent={{-82,-58},{-70,-46}})));
equation
  //Definition inputs
  Te= sim.Te;
  solGainsDirDay=solDir[1].y;
  solGainsDifDay=solDif[1].y;
  solGainsDirNight=solDir[2].y;
  solGainsDifNight=solDif[2].y;

  solN=radSolN.solDir+radSolN.solDif;
  solE=radSolE.solDir+radSolE.solDif;
  solW=radSolW.solDir+radSolW.solDif;
  solS=radSolS.solDir+radSolS.solDif;

  //Heating=sum(heatPortRad[nZones].Q_flow)+sum(heatPortCon[nZones].Q_flow);
  //Model

   der(TiD)= (infD/CiD*(Te-TiD)+ hwD/(CiD)*(TwD-TiD)+hwiD/CiD*(TwiD-TiD)+hflD/CiD*(TflD-TiD)+UfDN/CiD*(TfiD-TiD)+abs3ED*(solE)/CiD+abs3WD*(solW)/CiD+abs3ND*(solN)/CiD+abs3SD*(solS)/CiD+f3D*(UserGains[1]+Heating[1])/CiD);
    der(TwD)= ( UwD/(CwD)*(Te-TwD) +hwD/(CwD)*(TiD-TwD)+abs1ED*(solE)/CwD+abs1WD*(solW)/CwD+abs1ND*(solN)/CwD+abs1SD*(solS)/CwD+f1D*(UserGains[1]+Heating[1])/CwD);
    der(TwiD)= ( hwiD/CwiD*(TiD-TwiD)+abs2ED*(solE)/CwiD+abs2WD*(solW)/CwiD+abs2ND*(solN)/CwiD+abs2SD*(solS)/CwiD+f2D*(UserGains[1]+Heating[1])/CwiD);
    der(TflD)= ( UflD/CflD*(286.15-TflD)+hflD/CflD*(TiD-TflD)+abs4ED*(solE)/CflD+abs4WD*(solW)/CflD+abs4ND*(solN)/CflD+abs4SD*(solS)/CflD+f4D*(UserGains[1]+Heating[1])/CflD);

   der(TfiD)= ( UfDN/CfiD*(TiD-TfiD)+Ufi/CfiD*(TfiN-TfiD)+abs5ED*(solE)/CfiD+abs5WD*(solW)/CfiD+abs5ND*(solN)/CfiD+abs5SD*(solS)/CfiD+f5D*(UserGains[1]+Heating[1])/CfiD);
   der(TfiN)= ( UfND/CfiN*(TiN-TfiN)+Ufi/CfiN*(TfiD-TfiN)+abs5EN*(solE)/CfiN+abs5WN*(solW)/CfiN+abs5NN*(solN)/CfiN+abs5SN*(solS)/CfiN+f5N*(UserGains[2]+Heating[2])/CfiN);

   der(TiN)= (infN/CiN*(Te-TiN)+ hwN/(CiN)*(TwN-TiN)+hwiN/CiN*(TwiN-TiN)+UfND/CiN*(TfiN-TiN)+abs3EN*(solE)/CiN+abs3WN*(solW)/CiN+abs3NN*(solN)/CiN+abs3SN*(solS)/CiN+f3N*(UserGains[2]+Heating[2])/CiN);
   der(TwN)= ( UwN/(CwN)*(Te-TwN) +hwN/(CwN)*(TiN-TwN)+abs1EN*(solE)/CwN+abs1WN*(solW)/CwN+abs1NN*(solN)/CwN+abs1SN*(solS)/CwN+f1N*(UserGains[2]+Heating[2])/CwN);
   der(TwiN)= ( hwiN*(TiN-TwiN)/CwiN+abs2EN*(solE)/CwiN+abs2WN*(solW)/CwiN+abs2NN*(solN)/CwiN+abs2SN*(solS)/CwiN+f2N*(UserGains[2]+Heating[2])/CwiN);

// Outputs
TSensor[1]=TiD;
heatPortEmb[1].T=TiD;
heatPortCon[1].T=TiD;
heatPortRad[1].T=TiD;
TSensor[2]=TiN;
heatPortEmb[2].T=TiN;
heatPortCon[2].T=TiN;
heatPortRad[2].T=TiN;

  connect(AwinN.y, solDir.u[1]) annotation (Line(
      points={{-45.6,90},{-8,90},{-8,26.5},{32,26.5}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(AwinE.y, solDir.u[2]) annotation (Line(
      points={{-45.6,50},{-8,50},{-8,28},{12,28},{32,27.5}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(AwinS.y, solDir.u[3]) annotation (Line(
      points={{-45.6,10},{-7.8,10},{-7.8,28.5},{32,28.5}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(AwinW.y, solDir.u[4]) annotation (Line(
      points={{-45.6,-36},{-8,-36},{-8,29.5},{32,29.5}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(AwinN2.y, solDif.u[1]) annotation (Line(
      points={{-45.6,78},{6,78},{6,-51.5},{32,-51.5}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(AwinE2.y, solDif.u[2]) annotation (Line(
      points={{-45.6,36},{6,36},{6,-52},{32,-52},{32,-50.5}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(AwinS2.y, solDif.u[3]) annotation (Line(
      points={{-45.6,-8},{6,-8},{6,-49.5},{32,-49.5}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(AwinW1.y, solDif.u[4]) annotation (Line(
      points={{-45.6,-54},{6,-54},{6,-48.5},{32,-48.5}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse.iSolDir, AwinN[1].u) annotation (Line(
      points={{-72,89.7},{-58,89.7},{-58,90},{-54.8,90}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse.iSolDir, AwinN[2].u) annotation (Line(
      points={{-72,89.7},{-58,89.7},{-58,90},{-54.8,90}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolN.solDir, swWindowResponse.solDir) annotation (Line(
      points={{-92,90},{-82,90}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolN.solDif, swWindowResponse.solDif) annotation (Line(
      points={{-92,88},{-82,88}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolN.angInc, swWindowResponse.angInc) annotation (Line(
      points={{-92,85},{-88,85},{-88,84},{-82,84}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse.iSolDf, AwinN2[1].u) annotation (Line(
      points={{-72,85.5},{-64,85.5},{-64,78},{-54.8,78}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse.iSolDf, AwinN2[2].u) annotation (Line(
      points={{-72,85.5},{-64,85.5},{-64,78},{-54.8,78}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolE.solDir, swWindowResponse1.solDir) annotation (Line(
      points={{-90,50},{-87,50},{-87,49.6},{-84,49.6}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolE.solDif, swWindowResponse1.solDif) annotation (Line(
      points={{-90,48},{-88,48},{-88,47.2},{-84,47.2}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolE.angInc, swWindowResponse1.angInc) annotation (Line(
      points={{-90,45},{-88,45},{-88,42.4},{-84,42.4}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse1.iSolDir, AwinE[1].u) annotation (Line(
      points={{-72,49.24},{-62,49.24},{-62,50},{-54.8,50}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse1.iSolDf, AwinE2[1].u) annotation (Line(
      points={{-72,44.2},{-62,44.2},{-62,36},{-54.8,36}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse1.iSolDir, AwinE[2].u) annotation (Line(
      points={{-72,49.24},{-62,49.24},{-62,50},{-54.8,50}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse1.iSolDf, AwinE2[2].u) annotation (Line(
      points={{-72,44.2},{-62,44.2},{-62,36},{-54.8,36}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolS.solDir, swWindowResponse2.solDir) annotation (Line(
      points={{-88,7.6},{-82,7.6}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolS.solDif, swWindowResponse2.solDif) annotation (Line(
      points={{-88,5.2},{-82,5.2}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolS.angInc, swWindowResponse2.angInc) annotation (Line(
      points={{-88,1.6},{-84,1.6},{-84,0.4},{-82,0.4}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse2.iSolDir, AwinS[1].u) annotation (Line(
      points={{-70,7.24},{-62,7.24},{-62,10},{-54.8,10}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse2.iSolDir, AwinS[2].u) annotation (Line(
      points={{-70,7.24},{-62,7.24},{-62,10},{-54.8,10}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse2.iSolDf, AwinS2[1].u) annotation (Line(
      points={{-70,2.2},{-62,2.2},{-62,-8},{-54.8,-8}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse2.iSolDf, AwinS2[2].u) annotation (Line(
      points={{-70,2.2},{-62,2.2},{-62,-8},{-54.8,-8}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolW.solDir, swWindowResponse3.solDir) annotation (Line(
      points={{-92,-48},{-87,-48},{-87,-48.4},{-82,-48.4}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolW.solDif, swWindowResponse3.solDif) annotation (Line(
      points={{-92,-50},{-87,-50},{-87,-50.8},{-82,-50.8}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radSolW.angInc, swWindowResponse3.angInc) annotation (Line(
      points={{-92,-53},{-88,-53},{-88,-55.6},{-82,-55.6}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse3.iSolDir, AwinW[1].u) annotation (Line(
      points={{-70,-48.76},{-64,-48.76},{-64,-36},{-54.8,-36}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse3.iSolDir, AwinW[2].u) annotation (Line(
      points={{-70,-48.76},{-64,-48.76},{-64,-36},{-54.8,-36}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse3.iSolDf, AwinW1[1].u) annotation (Line(
      points={{-70,-53.8},{-62,-53.8},{-62,-54},{-54.8,-54}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(swWindowResponse3.iSolDf, AwinW1[2].u) annotation (Line(
      points={{-70,-53.8},{-62,-53.8},{-62,-54},{-54.8,-54}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(flowPort_Out, flowPort_In) annotation (Line(
      points={{-20,100},{0,100},{0,100},{20,100}},
      color={0,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-150,
            -100},{150,100}}), graphics));
end RC_T1;
