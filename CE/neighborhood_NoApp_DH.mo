within CE;
model neighborhood_NoApp_DH "Neighborhood without appartments"

  inner IDEAS.SimInfoManager sim
    annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
  IDEAS.Interfaces.Building building1(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Models.SL1 building(orientation=0),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true,
    redeclare IDEAS.VentilationSystems.None ventilationSystem)
                                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-90,-30})));
  IDEAS.Interfaces.Building building2(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.D1 building(orientation=3.1415926535898),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-80,-70})));
  IDEAS.Interfaces.Building building3(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.T1 building(orientation=0),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
                                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-70,-30})));
  IDEAS.Interfaces.Building building4(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.T2 building(orientation=0),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
                                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-50,-30})));
  IDEAS.Interfaces.Building building5(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.T1 building(orientation=0),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
                                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-30,-30})));
  IDEAS.Interfaces.Building building6(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.D2 building(orientation=3.1415926535898),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={4200,9500,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-20,-70})));
  IDEAS.Interfaces.Building building7(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Models.SR2 building(orientation=0),
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={3000,7000,0},
        numberOfConnections=1),                                            DH=true)
                                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-10,-30})));
  IDEAS.Interfaces.Building building8(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare CE.Models.D1 building(orientation=3.1415926535898),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
                         annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={10,-70})));
  IDEAS.Interfaces.Building building9(
    redeclare CE.Models.SL2 building(orientation=0),
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={3000,7000,0},
        numberOfConnections=1),                                            DH=true)
                                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={30,-30})));
  IDEAS.Interfaces.Building building10(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.D1 building(orientation=3.1415926535898),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={40,-70})));
  IDEAS.Interfaces.Building building11(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.T1 building(orientation=0),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
                                       annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={50,-30})));
  IDEAS.Interfaces.Building building13(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.D1 building(orientation=3.1415926535898),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={80,-70})));
  IDEAS.Interfaces.Building building15(
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.D2 building(orientation=3.1415926535898),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={4200,9500,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={100,-70})));
  IDEAS.Interfaces.Building building16(
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare CE.Models.SR1 building(orientation=0),
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={3000,7000,0},
        numberOfConnections=v1),                                            DH=true)
                                       annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={110,-30})));
  IDEAS.Interfaces.Building building17(
    redeclare CE.Models.SL1 building(orientation=-1.5707963267949),
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={3000,7000,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(extent={{-20,0},{0,20}})));
  IDEAS.Interfaces.Building building18(
    redeclare CE.Models.SR1 building(orientation=1.5707963267949),
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(extent={{20,4},{40,24}})));
  IDEAS.Interfaces.Building building19(
    redeclare CE.Models.T1 building(orientation=-1.5707963267949),
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(extent={{-20,20},{0,40}})));
  IDEAS.Interfaces.Building building20(
    redeclare CE.Models.T2 building(orientation=1.5707963267949),
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={2200,4200,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(extent={{20,24},{40,44}})));
  IDEAS.Interfaces.Building building21(
    redeclare CE.Models.T2 building(orientation=-1.5707963267949),
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={2200,4200,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  IDEAS.Interfaces.Building building22(
    redeclare CE.Models.T1 building(orientation=1.5707963267949),
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(extent={{20,44},{40,64}})));
  IDEAS.Interfaces.Building building23(
    redeclare CE.Models.T2 building(orientation=-1.5707963267949),
    redeclare CE.Occupants.ISO13790 occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={1000,1100,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(extent={{-20,60},{0,80}})));
  IDEAS.Interfaces.Building building24(
    redeclare CE.Models.SL2 building(orientation=1.5707963267949),
    redeclare IDEAS.Buildings.Validation.BaseClasses.Occupant.None occupant,
    redeclare IDEAS.Interfaces.BaseClasses.CausalInhomeFeeder inHomeGrid,
    redeclare IDEAS.VentilationSystems.None
      ventilationSystem,
    redeclare IDEAS.HeatingSystems.Interfaces.Partial_HydraulicHeating_District
                                         heatingSystem(QNom={3000,7000,0},
        numberOfConnections=1),                                            DH=true)
    annotation (Placement(transformation(extent={{20,64},{40,84}})));
  inner Modelica.Fluid.System system
    annotation (Placement(transformation(extent={{-80,80},{-60,100}})));
  IDEAS.DistrictHeating.Production.PolynomialProduction polynomialProduction(
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,
    redeclare IDEAS.DistrictHeating.Production.Data.Polynomials.Boiler2ndDegree
      data,
    QNom=117000,
    m_flow_nominal=0.94)
    annotation (Placement(transformation(extent={{-24,-20},{-8,-2}})));

  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX23 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={7,61})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX21 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={7,39})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX19 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={7,19})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX17 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={7,-1})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX24 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={11,71})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX22 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={11,49})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX20 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={11,29})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX18 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={11,9})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe2324_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=90,
        origin={11,66})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe2223_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=90,
        origin={11,56})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe2122_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=90,
        origin={11,44})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe2021_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=90,
        origin={11,34})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1929_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=90,
        origin={11,24})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1819_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=90,
        origin={11,14})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1718_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=90,
        origin={11,4})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1718_ret(
    pipeLength=10,
    pipeDiameter=0.373,
    U=0.1) annotation (Placement(transformation(
        extent={{-2,-1},{2,1}},
        rotation=270,
        origin={7,4})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1819_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=270,
        origin={7,14})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1920_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=270,
        origin={7,24})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe2021_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=270,
        origin={7,34})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe2122_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=270,
        origin={7,44})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe2223_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=270,
        origin={7,56})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe2324_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=270,
        origin={7,66})));
  IDEAS.Fluid.Movers.FlowMachine_dp fan(
    motorCooledByFluid=false,
    redeclare package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater,

    m_flow_nominal=0.94,
    addPowerToMedium=false)
    annotation (Placement(transformation(extent={{-8,-20},{0,-12}})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX1 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=0,
        origin={-91,-49})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX3 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=0,
        origin={-63,-49})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe12_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=180,
        origin={-81,-50})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe12_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=0,
        origin={-81,-52})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX4 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=0,
        origin={-49,-49})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe34_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=180,
        origin={-57,-50})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe34_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=0,
        origin={-57,-52})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX2 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-75,-53})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe23_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=180,
        origin={-69,-50})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe23_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=0,
        origin={-69,-52})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX5 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=0,
        origin={-31,-49})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe45_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=180,
        origin={-39,-50})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe45_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=0,
        origin={-39,-52})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe56_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=180,
        origin={-25,-50})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe56_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=0,
        origin={-25,-52})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX6 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-19,-53})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX7 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=0,
        origin={-5,-49})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe67_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=180,
        origin={-13,-50})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe67_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=0,
        origin={-13,-52})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX8 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={17,-53})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX9 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=0,
        origin={29,-49})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe89_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=180,
        origin={23,-50})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe89_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=0,
        origin={23,-52})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX10 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={29,-57})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1011_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=180,
        origin={39,-50})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1011_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=0,
        origin={39,-52})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX11 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=0,
        origin={49,-49})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1113_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=180,
        origin={57,-50})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1113_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=0,
        origin={57,-52})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX13 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={71,-53})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1315_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=180,
        origin={77,-50})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1315_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=0,
        origin={77,-52})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX15 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={91,-53})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1516_ret annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=180,
        origin={99,-50})));
  IDEAS.DistrictHeating.Pipes.InsulatedPipeM pipe1516_sup annotation (Placement(
        transformation(
        extent={{-2,-1},{2,1}},
        rotation=0,
        origin={99,-52})));
  IDEAS.DistrictHeating.Substations.SingleHeatExchanger HX16 annotation (
      Placement(transformation(
        extent={{-3,-3},{3,3}},
        rotation=0,
        origin={109,-49})));
equation
  connect(HX24.flowPort_b1, building24.port_return) annotation (Line(
      points={{14,71.6},{22,71.6},{22,64},{28.4,64}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building24.port_supply, HX24.flowPort_a1) annotation (Line(
      points={{31.6,64},{32,64},{32,62},{18,62},{18,70.4},{14,70.4}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(building23.port_supply, HX23.flowPort_a1) annotation (Line(
      points={{-8.4,60},{-4,60},{-4,61.6},{4,61.6}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX23.flowPort_b1, building23.port_return) annotation (Line(
      points={{4,60.4},{2,60.4},{2,58},{-11.6,58},{-11.6,60}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX22.flowPort_b1, building22.port_return) annotation (Line(
      points={{14,49.6},{16,49.6},{16,44},{28.4,44}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX22.flowPort_a1, building22.port_supply) annotation (Line(
      points={{14,48.4},{14,42},{31.6,42},{31.6,44}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX21.flowPort_a1, building21.port_supply) annotation (Line(
      points={{4,39.6},{-2,39.6},{-2,40},{-8.4,40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX21.flowPort_b1, building21.port_return) annotation (Line(
      points={{4,38.4},{-12,38.4},{-12,40},{-11.6,40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX20.flowPort_b1, building20.port_return) annotation (Line(
      points={{14,29.6},{16,29.6},{16,30},{20,30},{20,24},{28.4,24}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX20.flowPort_a1, building20.port_supply) annotation (Line(
      points={{14,28.4},{16,28.4},{16,22},{31.6,22},{31.6,24}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX19.flowPort_a1, building19.port_supply) annotation (Line(
      points={{4,19.6},{2,19.6},{2,20},{-8.4,20}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX19.flowPort_b1, building19.port_return) annotation (Line(
      points={{4,18.4},{-12,18.4},{-12,20},{-11.6,20}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX17.flowPort_a1, building17.port_supply) annotation (Line(
      points={{4,-0.4},{-2,-0.4},{-2,0},{-8.4,0}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX17.flowPort_b1, building17.port_return) annotation (Line(
      points={{4,-1.6},{-4,-1.6},{-4,-2},{-11.6,-2},{-11.6,0}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX18.flowPort_b1, building18.port_return) annotation (Line(
      points={{14,9.6},{22,9.6},{22,4},{28.4,4}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX18.flowPort_a1, building18.port_supply) annotation (Line(
      points={{14,8.4},{18,8.4},{18,2},{31.6,2},{31.6,4}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX24.flowPort_supply_in, pipe2324_sup.port_b) annotation (Line(
      points={{9.8,68},{11,68}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe2324_sup.port_a, HX23.flowPort_return_out) annotation (Line(
      points={{11,64},{9.4,64}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX22.flowPort_supply_out, pipe2223_sup.port_a) annotation (Line(
      points={{9.8,52},{10,52},{10,54},{11,54}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX23.flowPort_return_in, pipe2223_sup.port_b) annotation (Line(
      points={{9.4,58},{11,58}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX22.flowPort_supply_in, pipe2122_sup.port_b) annotation (Line(
      points={{9.8,46},{11,46}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX21.flowPort_return_out, pipe2122_sup.port_a) annotation (Line(
      points={{9.4,42},{11,42}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX20.flowPort_supply_out, pipe2021_sup.port_a) annotation (Line(
      points={{9.8,32},{11,32}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX21.flowPort_return_in, pipe2021_sup.port_b) annotation (Line(
      points={{9.4,36},{11,36}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX20.flowPort_supply_in, pipe1929_sup.port_b) annotation (Line(
      points={{9.8,26},{11,26}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX19.flowPort_return_out, pipe1929_sup.port_a) annotation (Line(
      points={{9.4,22},{11,22}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX18.flowPort_supply_out, pipe1819_sup.port_a) annotation (Line(
      points={{9.8,12},{11,12}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX19.flowPort_return_in, pipe1819_sup.port_b) annotation (Line(
      points={{9.4,16},{11,16}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX18.flowPort_supply_in, pipe1718_sup.port_b) annotation (Line(
      points={{9.8,6},{11,6}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX17.flowPort_return_out, pipe1718_sup.port_a) annotation (Line(
      points={{9.4,2},{11,2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX17.flowPort_supply_in, pipe1718_ret.port_b) annotation (Line(
      points={{8.2,2},{7,2}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe1718_ret.port_a, HX18.flowPort_return_out) annotation (Line(
      points={{7,6},{8.6,6}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX19.flowPort_supply_out, pipe1819_ret.port_a) annotation (Line(
      points={{8.2,16},{7,16}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe1819_ret.port_b, HX18.flowPort_return_in) annotation (Line(
      points={{7,12},{8.6,12}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX19.flowPort_supply_in, pipe1920_ret.port_b) annotation (Line(
      points={{8.2,22},{7,22}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe1920_ret.port_a, HX20.flowPort_return_out) annotation (Line(
      points={{7,26},{8.6,26}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX21.flowPort_supply_out, pipe2021_ret.port_a) annotation (Line(
      points={{8.2,36},{7,36}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe2021_ret.port_b, HX20.flowPort_return_in) annotation (Line(
      points={{7,32},{8.6,32}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX21.flowPort_supply_in, pipe2122_ret.port_b) annotation (Line(
      points={{8.2,42},{7,42}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe2122_ret.port_a, HX22.flowPort_return_out) annotation (Line(
      points={{7,46},{8.6,46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX23.flowPort_supply_out, pipe2223_ret.port_a) annotation (Line(
      points={{8.2,58},{7,58}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe2223_ret.port_b, HX22.flowPort_return_in) annotation (Line(
      points={{7,54},{8.6,54},{8.6,52}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX23.flowPort_supply_in, pipe2324_ret.port_b) annotation (Line(
      points={{8.2,64},{7,64}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe2324_ret.port_a, HX24.flowPort_return_out) annotation (Line(
      points={{7,68},{8.6,68}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(polynomialProduction.port_b, fan.port_a) annotation (Line(
      points={{-7.84,-15.0909},{-8,-15.0909},{-8,-16}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(fan.port_b, HX17.flowPort_return_in) annotation (Line(
      points={{0,-16},{9.4,-16},{9.4,-4}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(polynomialProduction.port_a, HX17.flowPort_supply_out) annotation (
      Line(
      points={{-7.84,-8.54545},{8.2,-8.54545},{8.2,-4}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(building1.port_return, HX1.flowPort_b1) annotation (Line(
      points={{-91.6,-40},{-91.6,-46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(building1.port_supply, HX1.flowPort_a1) annotation (Line(
      points={{-88.4,-40},{-90.4,-40},{-90.4,-46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(building3.port_return, HX3.flowPort_b1) annotation (Line(
      points={{-71.6,-40},{-71.6,-46},{-63.6,-46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(building3.port_supply, HX3.flowPort_a1) annotation (Line(
      points={{-68.4,-40},{-68.4,-46},{-62.4,-46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX1.flowPort_supply_in, pipe12_ret.port_b) annotation (Line(
      points={{-88,-50.2},{-86,-50.2},{-86,-50},{-83,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX1.flowPort_return_out, pipe12_sup.port_a) annotation (Line(
      points={{-88,-51.4},{-86,-51.4},{-86,-52},{-83,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe34_ret.port_a, HX4.flowPort_supply_out) annotation (Line(
      points={{-55,-50},{-54,-50},{-54,-50.2},{-52,-50.2}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe34_sup.port_b, HX4.flowPort_return_in) annotation (Line(
      points={{-55,-52},{-54,-52},{-54,-51.4},{-52,-51.4}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe12_ret.port_a, HX2.flowPort_return_out) annotation (Line(
      points={{-79,-50},{-78,-50},{-78,-50.6}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe12_sup.port_b, HX2.flowPort_supply_in) annotation (Line(
      points={{-79,-52},{-78,-52},{-78,-51.8}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX2.flowPort_b1, building2.port_return) annotation (Line(
      points={{-74.4,-56},{-74,-56},{-74,-64},{-68,-64},{-68,-90},{-81.6,-90},{
          -81.6,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX2.flowPort_a1, building2.port_supply) annotation (Line(
      points={{-75.6,-56},{-76,-56},{-76,-66},{-72,-66},{-72,-82},{-78.4,-82},{
          -78.4,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX3.flowPort_return_out, pipe34_sup.port_a) annotation (Line(
      points={{-60,-51.4},{-59.5,-51.4},{-59.5,-52},{-59,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX3.flowPort_supply_in, pipe34_ret.port_b) annotation (Line(
      points={{-60,-50.2},{-60,-50},{-59,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX2.flowPort_supply_out, pipe23_sup.port_a) annotation (Line(
      points={{-72,-51.8},{-72,-52},{-71,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX2.flowPort_return_in, pipe23_ret.port_b) annotation (Line(
      points={{-72,-50.6},{-72,-50},{-71,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe23_ret.port_a, HX3.flowPort_supply_out) annotation (Line(
      points={{-67,-50},{-66,-50},{-66,-50.2}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe23_sup.port_b, HX3.flowPort_return_in) annotation (Line(
      points={{-67,-52},{-66,-52},{-66,-51.4}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe45_ret.port_a, HX5.flowPort_supply_out) annotation (Line(
      points={{-37,-50},{-36,-50},{-36,-50.2},{-34,-50.2}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe45_sup.port_b, HX5.flowPort_return_in) annotation (Line(
      points={{-37,-52},{-36,-52},{-36,-51.4},{-34,-51.4}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX4.flowPort_supply_in, pipe45_ret.port_b) annotation (Line(
      points={{-46,-50.2},{-44,-50.2},{-44,-50},{-41,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX4.flowPort_return_out, pipe45_sup.port_a) annotation (Line(
      points={{-46,-51.4},{-44,-51.4},{-44,-52},{-41,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe56_ret.port_a, HX6.flowPort_return_out) annotation (Line(
      points={{-23,-50},{-22,-50},{-22,-50.6}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe56_sup.port_b, HX6.flowPort_supply_in) annotation (Line(
      points={{-23,-52},{-22,-52},{-22,-51.8}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX5.flowPort_supply_in, pipe56_ret.port_b) annotation (Line(
      points={{-28,-50.2},{-28,-50},{-27,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX5.flowPort_return_out, pipe56_sup.port_a) annotation (Line(
      points={{-28,-51.4},{-28,-52},{-27,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX6.flowPort_a1, building6.port_supply) annotation (Line(
      points={{-19.6,-56},{-20,-56},{-20,-60},{-12,-60},{-12,-82},{-18.4,-82},{
          -18.4,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX6.flowPort_b1, building6.port_return) annotation (Line(
      points={{-18.4,-56},{-18,-56},{-18,-58},{-10,-58},{-10,-84},{-21.6,-84},{
          -21.6,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe67_ret.port_a, HX7.flowPort_supply_out) annotation (Line(
      points={{-11,-50},{-10,-50},{-10,-50.2},{-8,-50.2}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe67_sup.port_b, HX7.flowPort_return_in) annotation (Line(
      points={{-11,-52},{-10,-52},{-10,-51.4},{-8,-51.4}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX6.flowPort_supply_out, pipe67_sup.port_a) annotation (Line(
      points={{-16,-51.8},{-16,-52},{-15,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX6.flowPort_return_in, pipe67_ret.port_b) annotation (Line(
      points={{-16,-50.6},{-16,-50},{-15,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building5.port_return, HX5.flowPort_b1) annotation (Line(
      points={{-31.6,-40},{-31.6,-46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX5.flowPort_a1, building5.port_supply) annotation (Line(
      points={{-30.4,-46},{-30,-46},{-30,-40},{-28.4,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building7.port_return, HX7.flowPort_b1) annotation (Line(
      points={{-11.6,-40},{-12,-40},{-12,-44},{-5.6,-44},{-5.6,-46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(building7.port_supply, HX7.flowPort_a1) annotation (Line(
      points={{-8.4,-40},{-8,-40},{-8,-42},{-4.4,-42},{-4.4,-46}},
      color={0,127,255},
      smooth=Smooth.None));

  connect(HX7.flowPort_return_out, polynomialProduction.port_a) annotation (
      Line(
      points={{-2,-51.4},{0,-51.4},{0,-52},{8,-52},{8,-8.54545},{-7.84,-8.54545}},
      color={0,0,0},
      smooth=Smooth.None));

  connect(HX8.flowPort_return_in, pipe89_ret.port_b) annotation (Line(
      points={{20,-50.6},{20,-50},{21,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX8.flowPort_supply_out, pipe89_sup.port_a) annotation (Line(
      points={{20,-51.8},{21,-51.8},{21,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe89_ret.port_a, HX9.flowPort_supply_out) annotation (Line(
      points={{25,-50},{26,-50},{26,-50.2}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe89_sup.port_b, HX9.flowPort_return_in) annotation (Line(
      points={{25,-52},{26,-52},{26,-51.4}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe89_ret.port_a, HX10.flowPort_return_out) annotation (Line(
      points={{25,-50},{26,-50},{26,-54.6}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe89_sup.port_b, HX10.flowPort_supply_in) annotation (Line(
      points={{25,-52},{26,-52},{26,-55.8}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX9.flowPort_supply_in, pipe1011_ret.port_b) annotation (Line(
      points={{32,-50.2},{32,-50},{37,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX9.flowPort_return_out, pipe1011_sup.port_a) annotation (Line(
      points={{32,-51.4},{34,-51.4},{34,-52},{37,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX10.flowPort_return_in, pipe1011_ret.port_b) annotation (Line(
      points={{32,-54.6},{36,-54.6},{36,-50},{37,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX10.flowPort_supply_out, pipe1011_sup.port_a) annotation (Line(
      points={{32,-55.8},{36,-55.8},{36,-52},{37,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building8.port_return, HX8.flowPort_b1) annotation (Line(
      points={{8.4,-80},{8,-80},{8,-84},{22,-84},{22,-60},{17.6,-60},{17.6,-56}},
      color={0,127,255},
      smooth=Smooth.None));

  connect(HX8.flowPort_a1, building8.port_supply) annotation (Line(
      points={{16.4,-56},{16,-56},{16,-62},{18,-62},{18,-82},{11.6,-82},{11.6,
          -80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX9.flowPort_b1, building9.port_return) annotation (Line(
      points={{28.4,-46},{28.4,-40}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building9.port_supply, HX9.flowPort_a1) annotation (Line(
      points={{31.6,-40},{29.6,-40},{29.6,-46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX10.flowPort_b1, building10.port_return) annotation (Line(
      points={{29.6,-60},{30,-60},{30,-82},{38.4,-82},{38.4,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX10.flowPort_a1, building10.port_supply) annotation (Line(
      points={{28.4,-60},{28,-60},{28,-86},{41.6,-86},{41.6,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe1011_ret.port_a, HX11.flowPort_supply_out) annotation (Line(
      points={{41,-50},{44,-50},{44,-50.2},{46,-50.2}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe1011_sup.port_b, HX11.flowPort_return_in) annotation (Line(
      points={{41,-52},{44,-52},{44,-51.4},{46,-51.4}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(building11.port_return, HX11.flowPort_b1) annotation (Line(
      points={{48.4,-40},{48.4,-46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(building11.port_supply, HX11.flowPort_a1) annotation (Line(
      points={{51.6,-40},{49.6,-40},{49.6,-46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX11.flowPort_supply_in, pipe1113_ret.port_b) annotation (Line(
      points={{52,-50.2},{54,-50.2},{54,-50},{55,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX11.flowPort_return_out, pipe1113_sup.port_a) annotation (Line(
      points={{52,-51.4},{54,-51.4},{54,-52},{55,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe1113_sup.port_b, HX13.flowPort_supply_in) annotation (Line(
      points={{59,-52},{66,-52},{66,-51.8},{68,-51.8}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe1113_ret.port_a, HX13.flowPort_return_out) annotation (Line(
      points={{59,-50},{64,-50},{64,-50.6},{68,-50.6}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX13.flowPort_a1, building13.port_supply) annotation (Line(
      points={{70.4,-56},{70,-56},{70,-90},{81.6,-90},{81.6,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX13.flowPort_b1, building13.port_return) annotation (Line(
      points={{71.6,-56},{72,-56},{72,-84},{78.4,-84},{78.4,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe1315_sup.port_b, HX15.flowPort_supply_in) annotation (Line(
      points={{79,-52},{86,-52},{86,-51.8},{88,-51.8}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe1315_ret.port_a, HX15.flowPort_return_out) annotation (Line(
      points={{79,-50},{84,-50},{84,-50.6},{88,-50.6}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX13.flowPort_return_in, pipe1315_ret.port_b) annotation (Line(
      points={{74,-50.6},{74,-50},{75,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX13.flowPort_supply_out, pipe1315_sup.port_a) annotation (Line(
      points={{74,-51.8},{75,-51.8},{75,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX15.flowPort_a1, building15.port_supply) annotation (Line(
      points={{90.4,-56},{90,-56},{90,-88},{101.6,-88},{101.6,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX15.flowPort_b1, building15.port_return) annotation (Line(
      points={{91.6,-56},{92,-56},{92,-84},{98.4,-84},{98.4,-80}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(pipe1516_ret.port_a, HX16.flowPort_supply_out) annotation (Line(
      points={{101,-50},{104,-50},{104,-50.2},{106,-50.2}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(pipe1516_sup.port_b, HX16.flowPort_return_in) annotation (Line(
      points={{101,-52},{104,-52},{104,-51.4},{106,-51.4}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX15.flowPort_return_in, pipe1516_ret.port_b) annotation (Line(
      points={{94,-50.6},{96,-50.6},{96,-50},{97,-50}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX15.flowPort_supply_out, pipe1516_sup.port_a) annotation (Line(
      points={{94,-51.8},{97,-51.8},{97,-52}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(building16.port_return, HX16.flowPort_b1) annotation (Line(
      points={{108.4,-40},{108.4,-40},{108.4,-46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(building16.port_supply, HX16.flowPort_a1) annotation (Line(
      points={{111.6,-40},{109.6,-40},{109.6,-46}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(HX8.flowPort_return_out, polynomialProduction.port_a) annotation (
      Line(
      points={{14,-50.6},{12,-50.6},{12,-8.54545},{-7.84,-8.54545}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX8.flowPort_supply_in, fan.port_b) annotation (Line(
      points={{14,-51.8},{14,-52},{10,-52},{10,-16},{0,-16}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(HX7.flowPort_supply_in, HX17.flowPort_supply_out) annotation (Line(
      points={{-2,-50.2},{2,-50.2},{2,-50},{6,-50},{6,-8},{8.2,-8.54545},{8.2,
          -4}},
      color={0,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(extent={{-100,-100},{120,100}},
          preserveAspectRatio=false), graphics={
        Line(
          points={{-100,-46},{4,-46}},
          smooth=Smooth.None,
          color={127,0,0}),
        Line(
          points={{-100,-56},{120,-56}},
          smooth=Smooth.None,
          color={127,0,0}),
        Line(
          points={{14,80},{14,-46}},
          color={127,0,0},
          smooth=Smooth.None),
        Line(
          points={{4,80},{4,-46}},
          color={127,0,0},
          smooth=Smooth.None),
        Line(
          points={{14,-46},{120,-46}},
          color={127,0,0},
          smooth=Smooth.None)}),Icon(coordinateSystem(extent={{-100,-100},{120,
            100}})),
    experiment(
      StopTime=2.6e+006,
      Interval=900,
      __Dymola_Algorithm="Dassl"),
    __Dymola_experimentSetupOutput);
end neighborhood_NoApp_DH;
