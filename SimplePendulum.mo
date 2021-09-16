within ;
model SimplePendulum
 constant Modelica.SIunits.Acceleration g = 9.81;
 parameter Modelica.SIunits.Length  L=1;
  Modelica.SIunits.Angle Theta(start=0.1, fixed= true);
  Modelica.SIunits.AngularVelocity  ThetaDot;
equation
  ThetaDot=der(Theta);
  der(ThetaDot)=-g/L*sin(Theta);

end SimplePendulum;
