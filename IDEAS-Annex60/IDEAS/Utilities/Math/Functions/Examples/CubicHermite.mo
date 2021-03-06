within IDEAS.Utilities.Math.Functions.Examples;
model CubicHermite "Test problem for cubic hermite splines"
  extends Modelica.Icons.Example;
  parameter Real[:] xd={-1,1,5,6} "Support points";
  parameter Real[size(xd, 1)] yd={-1,1,2,10} "Support points";
  parameter Real[size(xd, 1)] d(each fixed=false)
    "Derivatives at the support points";
  parameter Real[size(xd, 1)] dMonotone(each fixed=false)
    "Derivatives at the support points";
  parameter Boolean ensureMonotonicity=true;
  Real x "Independent variable";
  Real y "Dependent variable without monotone interpolation";
  Real yMonotone "Dependent variable with monotone interpolation";
  discrete Integer i "Integer to select data interval";
  Real test;

initial algorithm
  // Get the derivative values at the support points
  d := IDEAS.Utilities.Math.Functions.splineDerivatives(
    x=xd,
    y=yd,
    ensureMonotonicity=false);
  dMonotone := IDEAS.Utilities.Math.Functions.splineDerivatives(x=xd, y=yd,
      ensureMonotonicity=true);
algorithm
  x := xd[1] + time*1.2*(xd[size(xd, 1)] - xd[1]) - 0.5;
  // i is a counter that is used to pick the derivative of d or dMonotonic
  // that correspond to the interval that contains x

  (test,i) := IDEAS.Utilities.Math.Functions.searchIndex1D(xd,x,pre(i),false);

   y := IDEAS.Utilities.Math.Functions.cubicHermiteLinearExtrapolation(
     x=x,
     x1=xd[i],
     x2=xd[i + 1],
     y1=yd[i],
     y2=yd[i + 1],
     y1d=d[i],
     y2d=d[i + 1]);
  yMonotone :=
    IDEAS.Utilities.Math.Functions.cubicHermiteLinearExtrapolation(
    x=x,
    x1=xd[i],
    x2=xd[i + 1],
    y1=yd[i],
    y2=yd[i + 1],
    y1d=dMonotone[i],
    y2d=dMonotone[i + 1]);
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
            100,100}})),
    __Dymola_Commands(file=
          "modelica://IDEAS/Resources/Scripts/Dymola/Utilities/Math/Functions/Examples/CubicHermite.mos"
        "Simulate and plot"),
    experiment(StopTime=1.0),
    Documentation(info="<html>
<p>
This example demonstrates the use of the function for cubic hermite interpolation
and linear extrapolation.
The example use interpolation with two different settings: One settings
produces a monotone cubic hermite, whereas the other setting
does not enforce monotonicity.
The resulting plot should look as shown below, where for better visibility, the support points have been marked with black dots.
Notice that the red curve is monotone increasing.
</p>
<p align=\"center\"><img alt=\"image\" src=\"modelica://IDEAS/Resources/Images/Utilities/Math/Functions/Examples/cubicHermite.png\"/></p>
</html>", revisions="<html>
<ul>
<li>
March 8, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
end CubicHermite;
