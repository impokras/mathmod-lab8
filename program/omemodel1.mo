model omemodel1
  Real M1;
  Real M2;
  Real p_cr = 35;
  Real N = 30;
  Real q = 1;
  Real p1 = 9.9;
  Real p2 = 8.5;
  Real tau1 = 16;
  Real tau2 = 20;
  Real a1 = p_cr / (tau1 * tau1 * p1 * p1 * N * q);
  Real a2 = p_cr / (tau2 * tau2 * p2 * p2 * N * q);
  Real b = p_cr / (tau1 * tau1 * tau2 * tau2 * p1 * p1 * p2 * p2 * N * q);
  Real c1 = (p_cr - p1) / (tau1 * p1);
  Real c2 = (p_cr - p2) / (tau2 * p2);
  initial equation
  M1 = 6.5;
  M2 = 5.5;
  equation
  der(M1) = M1 - b / c1 * M1 * M2 - a1 / c1 * M1 * M1;
  der(M2) = c2 / c1 * M2 - b / c1 * M1 * M2 - a2 / c1 * M2 * M2;
  annotation(experiment(StartTime=No, StopTime=30, Tolerance=1e-6, Interval=0.01));
end omemodel1;
