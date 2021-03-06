within IDEAS.Buildings.Components;
model Zone "thermal building zone"

  extends IDEAS.Buildings.Components.Interfaces.StateZone;

  replaceable package Medium = IDEAS.Media.Air
    constrainedby Modelica.Media.Interfaces.PartialMedium
    "Medium in the component"
      annotation (choicesAllMatching = true);

  parameter Modelica.SIunits.Volume V "Total zone air volume";
  parameter Real n50(min=0.01)=0.4
    "n50 value cfr airtightness, i.e. the ACH at a pressure diffence of 50 Pa";
  parameter Real corrCV=5 "Multiplication factor for the zone air capacity";
  parameter Modelica.SIunits.Temperature TOpStart=297.15;

  parameter Boolean linear=true;

  final parameter Modelica.SIunits.Power QNom=1012*1.204*V/3600*n50/20*(273.15
       + 21 - sim.Tdes) "Design heat losses at reference outdoor temperature";
  final parameter Modelica.SIunits.MassFlowRate m_flow_nominal = 0.1*1.224*V/3600;

  Modelica.SIunits.Temperature TAir=senTem.T;
  Modelica.SIunits.Temperature TStar=radDistr.TRad;

protected
  IDEAS.Buildings.Components.BaseClasses.ZoneLwGainDistribution radDistr(final
      nSurf=nSurf) "distribution of radiative internal gains" annotation (
      Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=-90,
        origin={-54,-44})));
  BaseClasses.AirLeakage airLeakage(
    redeclare package Medium = Medium,
    m_flow_nominal=V/3600*n50/20,
    V=V,
    n50=0.1)
    annotation (Placement(transformation(extent={{40,30},{60,50}})));
  IDEAS.Buildings.Components.BaseClasses.ZoneLwDistribution radDistrLw(final
      nSurf=nSurf, final linear=linear)
    "internal longwave radiative heat exchange" annotation (Placement(
        transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-54,-10})));
  Modelica.Blocks.Math.Sum sum(
    nin=2,
    k={0.5,0.5},
    y(start=TOpStart))
    annotation (Placement(transformation(extent={{0,-66},{12,-54}})));
public
  Fluid.MixingVolumes.MixingVolume         vol(
    V=V,
    m_flow_nominal=m_flow_nominal,
    nPorts=4,
    redeclare package Medium = Medium)         annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-10,30})));
  Fluid.Interfaces.FlowPort_b flowPort_Out(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-30,90},{-10,110}})));
  Fluid.Interfaces.FlowPort_a flowPort_In(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{10,90},{30,110}})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCap(C=1012*1.204*V
        *(corrCV-1), T(start=293.15)) "air capacity"
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-10,2})));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor senTem
    annotation (Placement(transformation(extent={{0,-28},{-16,-12}})));
equation

  connect(radDistr.radGain, gainRad) annotation (Line(
      points={{-50.2,-54},{-50,-54},{-50,-72},{80,-72},{80,-60},{100,-60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(propsBus[:].surfRad, radDistrLw.port_a) annotation (Line(
      points={{-100,40},{-74,40},{-74,-26},{-54,-26},{-54,-20}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(sum.y, TSensor) annotation (Line(
      points={{12.6,-60},{59.3,-60},{59.3,0},{106,0}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(radDistr.TRad, sum.u[1]) annotation (Line(
      points={{-44,-44},{-22,-44},{-22,-60.6},{-1.2,-60.6}},
      color={0,0,127},
      smooth=Smooth.None));

  connect(propsBus.area, radDistr.area) annotation (Line(
      points={{-100,40},{-82,40},{-82,-40},{-64,-40}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(propsBus.area, radDistrLw.A) annotation (Line(
      points={{-100,40},{-82,40},{-82,-14},{-64,-14}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(propsBus.epsLw, radDistrLw.epsLw) annotation (Line(
      points={{-100,40},{-82,40},{-82,-10},{-64,-10}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(propsBus.epsLw, radDistr.epsLw) annotation (Line(
      points={{-100,40},{-82,40},{-82,-44},{-64,-44}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(propsBus.epsSw, radDistr.epsSw) annotation (Line(
      points={{-100,40},{-82,40},{-82,-48},{-64,-48}},
      color={127,0,0},
      smooth=Smooth.None), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(vol.heatPort, gainCon) annotation (Line(
      points={{0,30},{10,30},{10,-30},{100,-30}},
      color={191,0,0},
      smooth=Smooth.None));

for i in 1:nSurf loop
  connect(radDistr.iSolDir, propsBus[i].iSolDir) annotation (Line(
      points={{-58,-54},{-58,-80},{-100,-80},{-100,40}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(radDistr.iSolDif, propsBus[i].iSolDif) annotation (Line(
      points={{-54,-54},{-54,-76},{-100,-76},{-100,40}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(propsBus[i].surfCon, vol.heatPort) annotation (Line(
      points={{-100,40},{-46,40},{-46,12},{10,12},{10,30},{4.44089e-16,30}},
      color={191,0,0},
      smooth=Smooth.None));
end for;
  connect(flowPort_In, vol.ports[1]) annotation (Line(
      points={{20,100},{20,40},{-7,40}},
      color={0,128,255},
      smooth=Smooth.None));
  connect(heatCap.port, gainCon) annotation (Line(
      points={{0,2},{10,2},{10,-30},{100,-30}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(flowPort_Out, vol.ports[2]) annotation (Line(
      points={{-20,100},{-20,40},{-9,40}},
      color={0,128,255},
      smooth=Smooth.None));
  connect(senTem.port, gainCon) annotation (Line(
      points={{0,-20},{10,-20},{10,-30},{100,-30}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(senTem.T, sum.u[2]) annotation (Line(
      points={{-16,-20},{-18,-20},{-18,-59.4},{-1.2,-59.4}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(airLeakage.port_a, vol.ports[3]) annotation (Line(
      points={{40,40},{-11,40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(airLeakage.port_b, vol.ports[4]) annotation (Line(
      points={{60,40},{70,40},{70,14},{-32,14},{-32,40},{-13,40}},
      color={0,127,255},
      smooth=Smooth.None));
  connect(radDistr.radSurfTot, radDistrLw.port_a) annotation (Line(
      points={{-54,-34},{-54,-20}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
         graphics),
    Documentation(info="<html>
<p><h4><font color=\"#008000\">General description</font></h4></p>
<p><h5>Goal</h5></p>
<p>Also the thermal response of a zone can be divided into a convective, longwave radiative and shortwave radiative process influencing both thermal comfort in the depicted zone as well as the response of adjacent wall structures.</p>
<p><h5>Description</h5></p>
<p>The air within the zone is modeled based on the assumption that it is well-stirred, i.e. it is characterized by a single uniform air temperature. This is practically accomplished with the mixing caused by the air distribution system. The convective gains and the resulting change in air temperature T_{a} of a single thermal zone can be modeled as a thermal circuit. The resulting heat balance for the air node can be described as c_{a}.V_{a}.dT_{a}/dt = som(Q_{ia}) + sum(h_{ci}.A_{si}.(T_{a}-T_{si})) + sum(m_{az}.(h_{a}-h_{az})) + m_{ae}(h_{a}-h_{ae}) + m_{sys}(h_{a}-h_{sys}) wherefore h_{a} is the specific air enthalpy and where T_{a} is the air temperature of the zone, c_{a} is the specific heat capacity of air at constant pressure, V_{a} is the zone air volume, Q_{a} is a convective internal load, R_{si} is the convective surface resistance of surface s_{i}, A_{si} is the area of surface s_{i}, T_{si} the surface temperature of surface s_{i}, m_{az} is the mass flow rate between zones, m_{ae} is the mass flow rate between the exterior by natural infiltrationa and m_{sys} is the mass flow rate provided by the ventilation system. </p>
<p>Infiltration and ventilation systems provide air to the zones, undesirably or to meet heating or cooling loads. The thermal energy provided to the zone by this air change rate can be formulated from the difference between the supply air enthalpy and the enthalpy of the air leaving the zone <img src=\"modelica://IDEAS/Images/equations/equation-jiSQ22c0.png\" alt=\"h_a\"/>. It is assumed that the zone supply air mass flow rate is exactly equal to the sum of the air flow rates leaving the zone, and all air streams exit the zone at the zone mean air temperature. The moisture dependence of the air enthalpy is neglected.</p>
<p>A multiplier for the zone capacitance f_{ca} is included. A f_{ca} equaling unity represents just the capacitance of the air volume in the specified zone. This multiplier can be greater than unity if the zone air capacitance needs to be increased for stability of the simulation. This multiplier increases the capacitance of the air volume by increasing the zone volume and can be done for numerical reasons or to account for the additional capacitances in the zone to see the effect on the dynamics of the simulation. This multiplier is constant throughout the simulation and is set to 5.0 if the value is not defined <a href=\"IDEAS.Buildings.UsersGuide.References\">[Masy 2008]</a>.</p>
<p>The exchange of longwave radiation in a zone has been previously described in the building component models and further considering the heat balance of the interior surface. Here, an expression based on <i>radiant interchange configuration factors</i> or <i>view factors</i> is avoided based on a delta-star transformation and by definition of a <i>radiant star temperature</i> T_{rs}. Literature <a href=\"IDEAS.Buildings.UsersGuide.References\">[Liesen 1997]</a> shows that the overall model is not significantly sensitive to this assumption. ThisT_{rs} can be derived from the law of energy conservation in the radiant star node as sum(Q_{si,rs}) must equal zero. Long wave radiation from internal sources are dealt with by including them in the heat balance of the radiant star node resulting in a diffuse distribution of the radiative source.</p>
<p>Transmitted shortwave solar radiation is distributed over all surfaces in the zone in a prescribed scale. This scale is an input value which may be dependent on the shape of the zone and the location of the windows, but literature <a href=\"IDEAS.Buildings.UsersGuide.References\">[Liesen 1997]</a> shows that the overall model is not significantly sensitive to this assumption.</p>
<p><h4><font color=\"#008000\">Validation </font></h4></p>
<p>By means of the <code>BESTEST.mo</code> examples in the <code>Validation.mo</code> package.</p>
</html>"),
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}}),     graphics));
end Zone;
