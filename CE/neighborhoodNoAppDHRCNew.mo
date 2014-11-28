within CE;
model neighborhoodNoAppDHRCNew "Neighborhood without appartments"

  inner IDEAS.SimInfoManager sim
    annotation (Placement(transformation(extent={{-198,180},{-178,200}})));
  IDEAS.Interfaces.BuildingDH
                            building1(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None ventilationSystem,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare CE.Models.RC_SL1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
                                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-10,-30})));
  IDEAS.Interfaces.BuildingDH
                            building2(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_D1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-34,-30})));
  IDEAS.Interfaces.BuildingDH
                            building3(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_T1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
                                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-58,-30})));
  IDEAS.Interfaces.BuildingDH
                            building4(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_T2 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
                                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-82,-30})));
  IDEAS.Interfaces.BuildingDH
                            building5(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_T1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
                                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-106,-30})));
  IDEAS.Interfaces.BuildingDH
                            building6(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_D2 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-130,-30})));
  IDEAS.Interfaces.BuildingDH
                            building7(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_SR2 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
                                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-154,-30})));
  IDEAS.Interfaces.BuildingDH
                            building8(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare CE.Models.RC_D1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
                         annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-178,-30})));
  IDEAS.Interfaces.BuildingDH
                            building9(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_SL2 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
                                      annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={36,-30})));
  IDEAS.Interfaces.BuildingDH
                            building10(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_D1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={60,-30})));
  IDEAS.Interfaces.BuildingDH
                            building11(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_T1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
                                       annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={62,-6})));
  IDEAS.Interfaces.BuildingDH
                            building13(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_D1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={62,18})));
  IDEAS.Interfaces.BuildingDH
                            building15(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_D2 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={62,44})));
  IDEAS.Interfaces.BuildingDH
                            building16(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_SR1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
                                       annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={62,68})));
  IDEAS.Interfaces.BuildingDH
                            building17(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_SL1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(extent={{-14,-14},{6,6}})));
  IDEAS.Interfaces.BuildingDH
                            building18(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_SR1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(extent={{-14,10},{6,30}})));
  IDEAS.Interfaces.BuildingDH
                            building19(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_T1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(extent={{-14,34},{6,54}})));
  IDEAS.Interfaces.BuildingDH
                            building20(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_T2 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(extent={{-14,58},{6,78}})));
  IDEAS.Interfaces.BuildingDH
                            building21(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_T2 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(extent={{-14,84},{6,104}})));
  IDEAS.Interfaces.BuildingDH
                            building22(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_T1 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(extent={{-14,106},{6,126}})));
  IDEAS.Interfaces.BuildingDH
                            building23(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_T2 building,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(extent={{-14,130},{6,150}})));
  IDEAS.Interfaces.BuildingDH
                            building24(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.RC_SL2 building,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.DistrictHeating.HeatingSystems.IndirectSH heatingSystem)
    annotation (Placement(transformation(extent={{-14,154},{6,174}})));
  inner Modelica.Fluid.System system
    annotation (Placement(transformation(extent={{-180,160},{-160,180}})));
  IDEAS.DistrictHeating.Production.PolynomialProduction polynomialProduction(
    redeclare IDEAS.DistrictHeating.Production.Data.Polynomials.Boiler2ndDegree
      data,
    m_flow_nominal=0.94,
    redeclare package Medium = IDEAS.Media.Water.Simple,
    QNom(displayUnit="kW") = 100000,
    modulationMin=10,
    modulationStart=15)
    annotation (Placement(transformation(extent={{-10,10},{10,-10}},
        rotation=0,
        origin={-92,118})));

  IDEAS.Fluid.Movers.FlowMachine_dp fan(
    motorCooledByFluid=false,
    addPowerToMedium=false,
    redeclare package Medium = IDEAS.Media.Water.Simple,
    m_flow_nominal=5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-60,144})));

  Modelica.Blocks.Sources.Constant const(k=2500*22)
    annotation (Placement(transformation(extent={{-90,170},{-70,190}})));
  Modelica.Blocks.Sources.Constant const1(k=273.15 + 70)
    annotation (Placement(transformation(extent={{-120,80},{-100,100}})));
  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=1,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=90,
        origin={6,26})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection1(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=1,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=90,
        origin={6,50})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection2(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=1,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=90,
        origin={6,74})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection3(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=1,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe(dp_nominal=0.1)) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=90,
        origin={6,98})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection4(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe,
    m_flow_nominal=1) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=90,
        origin={6,122})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection5(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=90,
        origin={6,146})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection6(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=90,
        origin={6,2})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection7(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=90,
        origin={6,-22})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection8(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=0,
        origin={-10,-54})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection9(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=0,
        origin={-34,-54})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection10(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=0,
        origin={-58,-54})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection11(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=0,
        origin={-82,-54})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection12(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=0,
        origin={-106,-54})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection13(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=0,
        origin={-130,-54})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection14(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=0,
        origin={-154,-54})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection15(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{-10,-8},{10,8}},
        rotation=0,
        origin={-178,-54})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection16(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{10,-8},{-10,8}},
        rotation=0,
        origin={36,-54})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection17(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{10,-8},{-10,8}},
        rotation=0,
        origin={60,-54})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection18(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{10,-8},{-10,8}},
        rotation=90,
        origin={74,-24})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection19(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{10,-8},{-10,8}},
        rotation=90,
        origin={74,0})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection20(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{10,-8},{-10,8}},
        rotation=90,
        origin={74,26})));

  IDEAS.DistrictHeating.Interfaces.DHConnection dHConnection21(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=5,
    redeclare IDEAS.DistrictHeating.Pipes.DoublePipes.TwinPipeGround
      districtHeatingPipe) annotation (Placement(transformation(
        extent={{10,-8},{-10,8}},
        rotation=90,
        origin={74,50})));

  Modelica.Fluid.Sources.FixedBoundary boundary(
    use_T=false,
    use_p=true,
    nPorts=1,
    redeclare package Medium = IDEAS.Media.Water.Simple,
    p=1000000)
    annotation (Placement(transformation(extent={{10,-10},{-10,10}},
        rotation=180,
        origin={-132,156})));
equation
 building1.building.UserGains = -building1.occupant.heatPortCon.Q_flow-building1.occupant.heatPortRad.Q_flow;
building1.building.Heating =  -building1.heatingSystem.heatPortCon.Q_flow-building1.heatingSystem.heatPortRad.Q_flow;
 building2.building.UserGains = -building2.occupant.heatPortCon.Q_flow-building2.occupant.heatPortRad.Q_flow;
building2.building.Heating =  -building2.heatingSystem.heatPortCon.Q_flow-building2.heatingSystem.heatPortRad.Q_flow;
 building3.building.UserGains = -building3.occupant.heatPortCon.Q_flow-building3.occupant.heatPortRad.Q_flow;
building3.building.Heating =  -building3.heatingSystem.heatPortCon.Q_flow-building3.heatingSystem.heatPortRad.Q_flow;
 building4.building.UserGains = -building4.occupant.heatPortCon.Q_flow-building4.occupant.heatPortRad.Q_flow;
building4.building.Heating =  -building4.heatingSystem.heatPortCon.Q_flow-building4.heatingSystem.heatPortRad.Q_flow;
 building5.building.UserGains = -building5.occupant.heatPortCon.Q_flow-building5.occupant.heatPortRad.Q_flow;
building5.building.Heating =  -building5.heatingSystem.heatPortCon.Q_flow-building5.heatingSystem.heatPortRad.Q_flow;
 building6.building.UserGains = -building6.occupant.heatPortCon.Q_flow-building6.occupant.heatPortRad.Q_flow;
building6.building.Heating =  -building6.heatingSystem.heatPortCon.Q_flow-building6.heatingSystem.heatPortRad.Q_flow;
 building7.building.UserGains = -building7.occupant.heatPortCon.Q_flow-building7.occupant.heatPortRad.Q_flow;
building7.building.Heating =  -building7.heatingSystem.heatPortCon.Q_flow-building7.heatingSystem.heatPortRad.Q_flow;
 building8.building.UserGains = -building8.occupant.heatPortCon.Q_flow-building8.occupant.heatPortRad.Q_flow;
building8.building.Heating =  -building8.heatingSystem.heatPortCon.Q_flow-building8.heatingSystem.heatPortRad.Q_flow;
 building9.building.UserGains = -building9.occupant.heatPortCon.Q_flow-building9.occupant.heatPortRad.Q_flow;
building9.building.Heating =  -building9.heatingSystem.heatPortCon.Q_flow-building9.heatingSystem.heatPortRad.Q_flow;
 building10.building.UserGains = -building10.occupant.heatPortCon.Q_flow-building10.occupant.heatPortRad.Q_flow;
building10.building.Heating =  -building10.heatingSystem.heatPortCon.Q_flow-building10.heatingSystem.heatPortRad.Q_flow;
 building11.building.UserGains = -building11.occupant.heatPortCon.Q_flow-building11.occupant.heatPortRad.Q_flow;
building11.building.Heating =  -building11.heatingSystem.heatPortCon.Q_flow-building11.heatingSystem.heatPortRad.Q_flow;
 building13.building.UserGains = -building13.occupant.heatPortCon.Q_flow-building13.occupant.heatPortRad.Q_flow;
building13.building.Heating =  -building13.heatingSystem.heatPortCon.Q_flow-building13.heatingSystem.heatPortRad.Q_flow;
 building15.building.UserGains = -building15.occupant.heatPortCon.Q_flow-building15.occupant.heatPortRad.Q_flow;
building15.building.Heating =  -building15.heatingSystem.heatPortCon.Q_flow-building15.heatingSystem.heatPortRad.Q_flow;
 building16.building.UserGains = -building16.occupant.heatPortCon.Q_flow-building16.occupant.heatPortRad.Q_flow;
building16.building.Heating =  -building16.heatingSystem.heatPortCon.Q_flow-building16.heatingSystem.heatPortRad.Q_flow;
 building17.building.UserGains = -building17.occupant.heatPortCon.Q_flow-building17.occupant.heatPortRad.Q_flow;
building17.building.Heating =  -building17.heatingSystem.heatPortCon.Q_flow-building17.heatingSystem.heatPortRad.Q_flow;
 building18.building.UserGains = -building18.occupant.heatPortCon.Q_flow-building18.occupant.heatPortRad.Q_flow;
building18.building.Heating =  -building18.heatingSystem.heatPortCon.Q_flow-building18.heatingSystem.heatPortRad.Q_flow;
 building19.building.UserGains = -building19.occupant.heatPortCon.Q_flow-building19.occupant.heatPortRad.Q_flow;
building19.building.Heating =  -building19.heatingSystem.heatPortCon.Q_flow-building19.heatingSystem.heatPortRad.Q_flow;
 building20.building.UserGains = -building20.occupant.heatPortCon.Q_flow-building20.occupant.heatPortRad.Q_flow;
building20.building.Heating =  -building20.heatingSystem.heatPortCon.Q_flow-building20.heatingSystem.heatPortRad.Q_flow;
 building21.building.UserGains = -building21.occupant.heatPortCon.Q_flow-building21.occupant.heatPortRad.Q_flow;
building21.building.Heating =  -building21.heatingSystem.heatPortCon.Q_flow-building21.heatingSystem.heatPortRad.Q_flow;
 building22.building.UserGains = -building22.occupant.heatPortCon.Q_flow-building22.occupant.heatPortRad.Q_flow;
building22.building.Heating =  -building22.heatingSystem.heatPortCon.Q_flow-building22.heatingSystem.heatPortRad.Q_flow;
 building23.building.UserGains = -building23.occupant.heatPortCon.Q_flow-building23.occupant.heatPortRad.Q_flow;
building23.building.Heating =  -building23.heatingSystem.heatPortCon.Q_flow-building23.heatingSystem.heatPortRad.Q_flow;
 building24.building.UserGains = -building24.occupant.heatPortCon.Q_flow-building24.occupant.heatPortRad.Q_flow;
building24.building.Heating =  -building24.heatingSystem.heatPortCon.Q_flow-building24.heatingSystem.heatPortRad.Q_flow;

  connect(dHConnection.flowPort_supply_in, dHConnection1.flowPort_supply_out)
    annotation (Line(
      points={{10,42},{10,46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection.flowPort_return_out, dHConnection1.flowPort_return_in)
    annotation (Line(
      points={{14,42},{14,46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPort_supply_in, dHConnection2.flowPort_supply_out)
    annotation (Line(
      points={{10,66},{10,70}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPort_return_out, dHConnection2.flowPort_return_in)
    annotation (Line(
      points={{14,66},{14,70}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection2.flowPort_supply_in, dHConnection3.flowPort_supply_out)
    annotation (Line(
      points={{10,90},{10,94}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection2.flowPort_return_out, dHConnection3.flowPort_return_in)
    annotation (Line(
      points={{14,90},{14,94}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection3.flowPort_supply_in, dHConnection4.flowPort_supply_out)
    annotation (Line(
      points={{10,114},{10,118}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection4.flowPort_return_in, dHConnection3.flowPort_return_out)
    annotation (Line(
      points={{14,118},{14,114}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection4.flowPort_supply_in, dHConnection5.flowPort_supply_out)
    annotation (Line(
      points={{10,138},{10,142}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection5.flowPort_return_in, dHConnection4.flowPort_return_out)
    annotation (Line(
      points={{14,142},{14,138}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building19.flowPortSupplyIn, dHConnection.flowPortOut) annotation (
      Line(
      points={{-2,34.2},{-2,34},{4,34}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection.flowPortIn, building19.flowPortReturnOut) annotation (
      Line(
      points={{4,30},{-6,30},{-6,34.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection1.flowPortOut, building20.flowPortSupplyIn) annotation (
      Line(
      points={{4,58},{0,58},{0,58.2},{-2,58.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building20.flowPortReturnOut, dHConnection1.flowPortIn) annotation (
      Line(
      points={{-6,58.2},{-6,54},{4,54}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection2.flowPortOut, building21.flowPortSupplyIn) annotation (
      Line(
      points={{4,82},{-2,82},{-2,84.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building21.flowPortReturnOut, dHConnection2.flowPortIn) annotation (
      Line(
      points={{-6,84.2},{-6,78},{4,78}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection3.flowPortOut, building22.flowPortSupplyIn) annotation (
      Line(
      points={{4,106},{-2,106},{-2,106.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building22.flowPortReturnOut, dHConnection3.flowPortIn) annotation (
      Line(
      points={{-6,106.2},{-6,102},{4,102}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection4.flowPortOut, building23.flowPortSupplyIn) annotation (
      Line(
      points={{4,130},{-2,130},{-2,130.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building23.flowPortReturnOut, dHConnection4.flowPortIn) annotation (
      Line(
      points={{-6,130.2},{-6,126},{4,126}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection5.flowPortOut, building24.flowPortSupplyIn) annotation (
      Line(
      points={{4,154},{-2,154},{-2,154.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building24.flowPortReturnOut, dHConnection5.flowPortIn) annotation (
      Line(
      points={{-6,154.2},{-6,150},{4,150}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building18.flowPortSupplyIn, dHConnection6.flowPortOut) annotation (
      Line(
      points={{-2,10.2},{2,10.2},{2,10},{4,10}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building18.flowPortReturnOut, dHConnection6.flowPortIn) annotation (
      Line(
      points={{-6,10.2},{-6,6},{4,6}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection.flowPort_supply_out, dHConnection6.flowPort_supply_in)
    annotation (Line(
      points={{10,22},{10,18}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection.flowPort_return_in, dHConnection6.flowPort_return_out)
    annotation (Line(
      points={{14,22},{14,18}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection6.flowPort_supply_out, dHConnection7.flowPort_supply_in)
    annotation (Line(
      points={{10,-2},{10,-6}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection6.flowPort_return_in, dHConnection7.flowPort_return_out)
    annotation (Line(
      points={{14,-2},{14,-6}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building17.flowPortSupplyIn, dHConnection7.flowPortOut) annotation (
      Line(
      points={{-2,-13.8},{-2,-14},{4,-14}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building17.flowPortReturnOut, dHConnection7.flowPortIn) annotation (
      Line(
      points={{-6,-13.8},{-6,-18},{4,-18}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection9.flowPort_supply_out, dHConnection10.flowPort_supply_in)
    annotation (Line(
      points={{-44,-52},{-48,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection10.flowPort_supply_out, dHConnection11.flowPort_supply_in)
    annotation (Line(
      points={{-68,-52},{-72,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection11.flowPort_supply_out, dHConnection12.flowPort_supply_in)
    annotation (Line(
      points={{-92,-52},{-96,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building8.flowPortReturnOut, dHConnection15.flowPortIn) annotation (
      Line(
      points={{-180,-39.8},{-180,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building8.flowPortSupplyIn, dHConnection15.flowPortOut) annotation (
      Line(
      points={{-176,-39.8},{-176,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection15.flowPort_supply_in, dHConnection14.flowPort_supply_out)
    annotation (Line(
      points={{-168,-52},{-164,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection15.flowPort_return_out, dHConnection14.flowPort_return_in)
    annotation (Line(
      points={{-168,-56},{-164,-56}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building7.flowPortReturnOut, dHConnection14.flowPortIn) annotation (
      Line(
      points={{-156,-39.8},{-156,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building7.flowPortSupplyIn, dHConnection14.flowPortOut) annotation (
      Line(
      points={{-152,-39.8},{-152,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection14.flowPort_supply_in, dHConnection13.flowPort_supply_out)
    annotation (Line(
      points={{-144,-52},{-140,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection14.flowPort_return_out, dHConnection13.flowPort_return_in)
    annotation (Line(
      points={{-144,-56},{-140,-56}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building6.flowPortReturnOut, dHConnection13.flowPortIn) annotation (
      Line(
      points={{-132,-39.8},{-132,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building6.flowPortSupplyIn, dHConnection13.flowPortOut) annotation (
      Line(
      points={{-128,-39.8},{-128,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection13.flowPort_supply_in, dHConnection12.flowPort_supply_out)
    annotation (Line(
      points={{-120,-52},{-116,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection13.flowPort_return_out, dHConnection12.flowPort_return_in)
    annotation (Line(
      points={{-120,-56},{-116,-56}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building5.flowPortReturnOut, dHConnection12.flowPortIn) annotation (
      Line(
      points={{-108,-39.8},{-108,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building5.flowPortSupplyIn, dHConnection12.flowPortOut) annotation (
      Line(
      points={{-104,-39.8},{-104,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection12.flowPort_return_out, dHConnection11.flowPort_return_in)
    annotation (Line(
      points={{-96,-56},{-92,-56}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building4.flowPortReturnOut, dHConnection11.flowPortIn) annotation (
      Line(
      points={{-84,-39.8},{-84,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building4.flowPortSupplyIn, dHConnection11.flowPortOut) annotation (
      Line(
      points={{-80,-39.8},{-80,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection11.flowPort_return_out, dHConnection10.flowPort_return_in)
    annotation (Line(
      points={{-72,-56},{-68,-56}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building3.flowPortReturnOut, dHConnection10.flowPortIn) annotation (
      Line(
      points={{-60,-39.8},{-60,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building3.flowPortSupplyIn, dHConnection10.flowPortOut) annotation (
      Line(
      points={{-56,-39.8},{-56,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection10.flowPort_return_out, dHConnection9.flowPort_return_in)
    annotation (Line(
      points={{-48,-56},{-44,-56}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building2.flowPortReturnOut, dHConnection9.flowPortIn) annotation (
      Line(
      points={{-36,-39.8},{-36,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building2.flowPortSupplyIn, dHConnection9.flowPortOut) annotation (
      Line(
      points={{-32,-39.8},{-32,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection9.flowPort_supply_in, dHConnection8.flowPort_supply_out)
    annotation (Line(
      points={{-24,-52},{-20,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection9.flowPort_return_out, dHConnection8.flowPort_return_in)
    annotation (Line(
      points={{-24,-56},{-20,-56}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building1.flowPortReturnOut, dHConnection8.flowPortIn) annotation (
      Line(
      points={{-12,-39.8},{-12,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building1.flowPortSupplyIn, dHConnection8.flowPortOut) annotation (
      Line(
      points={{-8,-39.8},{-8,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection17.flowPort_supply_out, dHConnection18.flowPort_supply_in)
    annotation (Line(
      points={{70,-52},{78,-52},{78,-28}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection17.flowPort_return_in, dHConnection18.flowPort_return_out)
    annotation (Line(
      points={{70,-56},{82,-56},{82,-28}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection18.flowPort_supply_out, dHConnection19.flowPort_supply_in)
    annotation (Line(
      points={{78,-8},{78,-4}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection19.flowPort_return_out, dHConnection18.flowPort_return_in)
    annotation (Line(
      points={{82,-4},{82,-8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection19.flowPort_supply_out, dHConnection20.flowPort_supply_in)
    annotation (Line(
      points={{78,16},{78,22}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection20.flowPort_return_out, dHConnection19.flowPort_return_in)
    annotation (Line(
      points={{82,22},{82,16}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection20.flowPort_supply_out, dHConnection21.flowPort_supply_in)
    annotation (Line(
      points={{78,42},{78,46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection21.flowPort_return_out, dHConnection20.flowPort_return_in)
    annotation (Line(
      points={{82,46},{82,42}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection7.flowPort_supply_out, dHConnection8.flowPort_supply_in)
    annotation (Line(
      points={{10,-26},{10,-52},{0,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection7.flowPort_return_in, dHConnection8.flowPort_return_out)
    annotation (Line(
      points={{14,-26},{14,-56},{0,-56}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection17.flowPort_supply_in, dHConnection16.flowPort_supply_out)
    annotation (Line(
      points={{50,-52},{46,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection16.flowPort_return_in, dHConnection17.flowPort_return_out)
    annotation (Line(
      points={{46,-56},{50,-56}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection16.flowPortOut, building9.flowPortSupplyIn) annotation (
      Line(
      points={{34,-46},{34,-39.8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building9.flowPortReturnOut, dHConnection16.flowPortIn) annotation (
      Line(
      points={{38,-39.8},{38,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection17.flowPortOut, building10.flowPortSupplyIn) annotation (
      Line(
      points={{58,-46},{58,-39.8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building10.flowPortReturnOut, dHConnection17.flowPortIn) annotation (
      Line(
      points={{62,-39.8},{62,-46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection18.flowPortIn, building11.flowPortReturnOut) annotation (
      Line(
      points={{72,-16},{68,-16},{68,-15.8},{64,-15.8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection18.flowPortOut, building11.flowPortSupplyIn) annotation (
      Line(
      points={{72,-20},{60,-20},{60,-15.8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection19.flowPortOut, building13.flowPortSupplyIn) annotation (
      Line(
      points={{72,4},{60,4},{60,8.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building13.flowPortReturnOut, dHConnection19.flowPortIn) annotation (
      Line(
      points={{64,8.2},{68,8.2},{68,8},{72,8}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection20.flowPortOut, building15.flowPortSupplyIn) annotation (
      Line(
      points={{72,30},{60,30},{60,34.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building15.flowPortReturnOut, dHConnection20.flowPortIn) annotation (
      Line(
      points={{64,34.2},{68,34.2},{68,34},{72,34}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection21.flowPortOut, building16.flowPortSupplyIn) annotation (
      Line(
      points={{72,54},{60,54},{60,58.2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building16.flowPortReturnOut, dHConnection21.flowPortIn) annotation (
      Line(
      points={{64,58.2},{70,58.2},{70,58},{72,58}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(polynomialProduction.port_a, dHConnection5.flowPort_return_out)
    annotation (Line(
      points={{-81.8,115.273},{-36,115.273},{-36,178},{14,178},{14,162}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(polynomialProduction.port_b, fan.port_a) annotation (Line(
      points={{-81.8,122.545},{-81.8,144},{-70,144}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(fan.port_b, dHConnection5.flowPort_supply_in) annotation (Line(
      points={{-50,144},{-42,144},{-42,174},{10,174},{10,162}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(const.y, fan.dp_in) annotation (Line(
      points={{-69,180},{-60.2,180},{-60.2,156}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(const1.y, polynomialProduction.TSet) annotation (Line(
      points={{-99,90},{-93,90},{-93,108}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(boundary.ports[1], fan.port_a) annotation (Line(
      points={{-122,156},{-74,156},{-74,144},{-70,144}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(dHConnection15.flowPort_supply_out, dHConnection16.flowPort_supply_in)
    annotation (Line(
      points={{-188,-52},{-192,-52},{-192,-64},{18,-64},{18,-52},{26,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(dHConnection15.flowPort_return_in, dHConnection16.flowPort_return_out)
    annotation (Line(
      points={{-188,-56},{-196,-56},{-196,-68},{22,-68},{22,-56},{26,-56}},
      color={0,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(extent={{-200,-80},{100,200}},
          preserveAspectRatio=false), graphics={
        Line(
          points={{-188,-48},{6,-48}},
          smooth=Smooth.None,
          color={127,0,0}),
        Line(
          points={{18,166},{18,-48}},
          color={127,0,0},
          smooth=Smooth.None),
        Line(
          points={{6,166},{6,-48}},
          color={127,0,0},
          smooth=Smooth.None),
        Line(
          points={{18,-48},{92,-48}},
          color={127,0,0},
          smooth=Smooth.None),
        Line(
          points={{-188,-60},{94,-60}},
          color={127,0,0},
          smooth=Smooth.None)}),Icon(coordinateSystem(extent={{-200,-80},{100,200}})),
    experiment(
      StopTime=2.6e+006,
      Interval=900,
      __Dymola_Algorithm="Dassl"),
    __Dymola_experimentSetupOutput);
end neighborhoodNoAppDHRCNew;
