%String Efficiency with Guard Ring
fprintf('input parameters \n');
k1=input('capcitance ratio of self capacitance to shunt capacitance, k1 = ');
k2=input('capcitance ratio of gaurd ring to shunt capacitance, k2 = ');
V=input('line voltage (in kV) = ');

v=V/(sqrt(3)); %calclating phase voltage

v1=v*((1+(3*k2)+(k2*k2)+(k1*k2))/(3+(4*k2)+(4*k1)+(2*k1*k2)+(k1*k1)+(k2*k2)));
v3=((1+(3*k1)+(k1*k1)+(k1*k2))/(1+(3*k2)+(k2*k2)+(k1*k2)))*v1;
v2=((1+k1+k2)/(1+(3*k2)+(k2*k2)+(k1*k2)))*v1;

se= (v*100)/(3*v3);
fprintf('voltages accross insulators and string efficiecy \n');
fprintf('vl = %f kV \n v2 = %f kV \n v3 = %f kV \n', v1, v2,v3);
fprintf('string efficiency = %f \n', se);