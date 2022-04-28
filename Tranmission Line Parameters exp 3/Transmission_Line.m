%Nominal Pi Model for Medium Line & Equivalent Pi Model for long Line & Nominal T Model for Medium Line

r=0.036;   g=0; f=60;

l=0.8;    c=0.0112;

length=130; VR3ph=325;

VR=VR3ph/sqrt (3) +j*0;

[Z,Y,ABCD]=rlc3abcd(r,l,c,g,f,length);

AR=acos(0.8);

SR=270*(cos(AR)+j*sin(AR));

IR=conj(SR)/(3*conj(VR))

VsIs=ABCD*[VR;IR];

Vs=VsIs(1);

Vs3ph=sqrt(3)*abs(Vs);

Is=VsIs(2);

Ism=1000*abs(Is)

Pfs=cos(angle(Vs)-angle(Is));

Ss=3*Vs*conj(Is);

Sr=3*VR*conj(IR);

REG=Vs3ph/abs(ABCD(1,1)-VR3ph/VR3ph*100);

EFF=real(Sr)/real(Ss)*100;

fprintf('Is=%gA\n',Ism)

fprintf('pf=%g \n',Pfs)

fprintf('Vs=%g Kv (l-l) \n',Vs3ph)

fprintf('ps=%g MW \n',real(Ss))

fprintf('Qs=%g Mvar\n',imag(Ss))

fprintf('percent voltage Regulation=%g\n',REG)

fprintf('Effeciency =%g\n',EFF)