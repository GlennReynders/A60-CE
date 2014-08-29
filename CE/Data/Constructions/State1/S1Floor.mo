within CE.Data.Constructions.State1;
model S1Floor "S1 Floor for the period after 2007"

  extends IDEAS.Buildings.Data.Interfaces.Construction(nLay=4, mats={
        Materials.Tile(),
        Materials.Screed(d=0.06),
        Insulation.XPS(d=0.05),
        Materials.Concrete(d=0.20)});
end S1Floor;
