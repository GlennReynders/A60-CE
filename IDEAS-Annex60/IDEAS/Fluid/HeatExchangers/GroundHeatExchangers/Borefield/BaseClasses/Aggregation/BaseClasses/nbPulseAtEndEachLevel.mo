within IDEAS.Fluid.HeatExchangers.GroundHeatExchangers.Borefield.BaseClasses.Aggregation.BaseClasses;
function nbPulseAtEndEachLevel
  "Calculates the number of pulse at the end of each cells"
  extends Interface.partialAggFunction;

  input Integer[q_max] rArr "width of cell at each level";
  output Integer[q_max,p_max] nuMat "number of pulse at the end of each cells";

protected
  Integer levelTerm;

algorithm
  levelTerm := 0;
  for q in 1:q_max loop
    for p in 1:p_max loop
      nuMat[q, p] := levelTerm + rArr[q]*p;
    end for;
    levelTerm := levelTerm + rArr[q]*p_max;
  end for;

    annotation (Documentation(info="<html>
    <p>Calculates the number of pulse at the end of each cells.</p>
</html>", revisions="<html>
<ul>
<li>
July 2014, by Damien Picard:<br>
First implementation.
</li>
</ul>
</html>"));
end nbPulseAtEndEachLevel;
