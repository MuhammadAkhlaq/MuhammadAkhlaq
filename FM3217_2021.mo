within ;
package FM3217_2021 "Collection of models as created in FM3217"
  package Tutorial1
    model SimplePendulum
     constant Modelica.SIunits.Acceleration g = 9.81;
     parameter Modelica.SIunits.Length  L=1;
      Modelica.SIunits.Angle Theta(start=0.1, fixed= true);
      Modelica.SIunits.AngularVelocity  ThetaDot;
    equation
      ThetaDot=der(Theta);
      der(ThetaDot)=-g/L*sin(Theta);

    end SimplePendulum;
  end Tutorial1;

  package Tutorial2
  end Tutorial2;
  annotation (uses(Modelica(version="3.2.3")));
end FM3217_2021;
