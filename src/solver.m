clc;
clear all;

% Thermal conductivity of aluminum nitride (AIN)
ka=170;

% Thermal conductivity of copper
kc=400;

% Ambient temperature of air
Ta=25;

% Anbient temperature of water
Tw=25;

% Thermal resistance of 
R=0.00015/(400*0.001*0.001)+0.000315/(170*0.001*0.001);

% Symbolic scalar variables declaration
syms T1 T2 T3 T4 T5 T6 T7 T8 T9 T10 T11 T12 T13 T14 T15 T16 T17 T18 T19 T20 T21 T22 T23 T24 T25 T26 T27 T28 T29 T30 T31 T32 T33 T34 T35 T36 T37 T38 T39

% Linear equations. eqnx stands for xth node block
eqn1  =  2+kc*0.0003*(T7-T1)+(T2-T1)/R==0  ;
eqn2  =  2+kc*0.0003*(T13-T7)+(T8-T7)/R+kc*0.0003*(T1-T7)==0  ;
eqn3  =  2+kc*0.0003*(T18-T13)+(T14-T13)/R+kc*0.0003*(T7-T13)==0  ;
eqn4  =  2+kc*0.0003*(T23-T18)+(T19-T18)/R+kc*0.0003*(T13-T18)==0  ;
eqn5  =  2+5*0.0003*0.001*(Ta-T23)+(T24-T23)/R+kc*0.0003*(T18-T23)==0  ;
eqn6  =  (T1-T2)/R+ka*0.00063*(T8-T2)+(T3-T2)/R==0  ;
eqn7  =  (T7-T8)/R+ka*0.00063*(T14-T8)+(T9-T8)/R+ka*0.00063*(T2-T8)==0  ;
eqn8  =  (T13-T14)/R+ka*0.00063*(T19-T14)+(T15-T14)/R+ka*0.00063*(T8-T14)==0  ;
eqn9  =  (T18-T19)/R+ka*0.00063*(T24-T19)+(T20-T19)/R+ka*0.00063*(T14-T19)==0  ;
eqn10  =  (T23-T24)/R+5*0.00063*0.001*(Ta-T24)+(T25-T24)/R+ka*0.00063*(T19-T24)==0  ;
eqn11  =  (T2-T3)/R+kc*0.0003*(T9-T3)+kc*0.001*0.001*(T4-T3)/0.00065==0  ;
eqn12  =  (T8-T9)/R+kc*0.0003*(T15-T9)+kc*0.001*0.001*(T10-T9)/0.00065+kc*0.0003*(T3-T9)==0  ;
eqn13  =  (T14-T15)/R+kc*0.0003*(T20-T15)+kc*0.001*0.001*(T16-T15)/0.00065+kc*0.0003*(T9-T15)==0  ;
eqn14  =  (T19-T20)/R+kc*0.0003*(T25-T20)+kc*0.001*0.001*(T21-T20)/0.00065+kc*0.0003*(T15-T20)==0  ;
eqn15  =  (T24-T25)/R+5*0.0003*0.001*(Ta-T25)+kc*0.001*0.001*(T26-T25)/0.00065+kc*0.0003*(T20-T25)==0  ;
eqn16  =  kc*0.001*0.001*(T3-T4)/0.00065+kc*0.001*(T10-T4)+kc*0.001*(T5-T4)==0  ;
eqn17  =  kc*0.001*0.001*(T9-T10)/0.00065+kc*0.001*(T16-T10)+kc*0.001*(T11-T10)+kc*0.001*(T4-T10)==0  ;
eqn18  =  kc*0.001*0.001*(T15-T16)/0.00065+kc*0.001*(T21-T16)+kc*0.001*(T17-T16)+kc*0.001*(T10-T16)==0  ;
eqn19  =  kc*0.001*0.001*(T20-T21)/0.00065+kc*0.001*(T26-T21)+kc*0.001*(T22-T21)+kc*0.001*(T16-T21)==0  ;
eqn20  =  kc*0.001*0.001*(T25-T26)/0.00065+kc*0.001*(T28-T26)+kc*0.001*(T27-T26)+kc*0.001*(T21-T26)==0  ;
eqn21  =  5*0.001*0.001*(Ta-T28)+kc*0.001*(T30-T28)+kc*0.001*(T29-T28)+kc*0.001*(T26-T28)==0  ;
eqn22  =  5*0.001*0.001*(Ta-T30)+kc*0.001*(T32-T30)+kc*0.001*(T31-T30)+kc*0.001*(T28-T30)==0  ;
eqn23  =  5*0.001*0.001*(Ta-T32)+kc*0.001*(T34-T32)+kc*0.001*(T33-T32)+kc*0.001*(T30-T32)==0  ;
eqn24  =  5*0.001*0.001*(Ta-T34)+kc*0.001*(T37-T34)+kc*0.001*(T35-T34)+kc*0.001*(T32-T34)==0  ;
eqn25  =  5*0.001*0.001*(Ta-T37)+5*0.001*0.001*(Ta-T37)+kc*0.001*(T38-T37)+kc*0.001*(T34-T37)==0  ;
eqn26  =  kc*0.001*(T4-T5)+kc*0.001*(T11-T5)+kc*0.001*(T6-T5)==0  ;
eqn27  =  kc*0.001*(T10-T11)+kc*0.001*(T17-T11)+kc*0.001*(T12-T11)+kc*0.001*(T5-T11)==0  ;
eqn28  =  kc*0.001*(T16-T17)+kc*0.001*(T22-T17)+30000*0.001*0.001*(Tw-T17)+kc*0.001*(T11-T17)==0  ;
eqn29  =  kc*0.001*(T21-T22)+kc*0.001*(T27-T22)+30000*0.001*0.001*(Tw-T22)+kc*0.001*(T17-T22)==0  ;
eqn30  =  kc*0.001*(T26-T27)+kc*0.001*(T29-T27)+30000*0.001*0.001*(Tw-T27)+kc*0.001*(T22-T27)==0  ;
eqn31  =  kc*0.001*(T28-T29)+kc*0.001*(T31-T29)+30000*0.001*0.001*(Tw-T29)+kc*0.001*(T27-T29)==0  ;
eqn32  =  kc*0.001*(T30-T31)+kc*0.001*(T33-T31)+30000*0.001*0.001*(Tw-T31)+kc*0.001*(T29-T31)==0  ;
eqn33  =  kc*0.001*(T32-T33)+kc*0.001*(T35-T33)+30000*0.001*0.001*(Tw-T33)+kc*0.001*(T31-T33)==0  ;
eqn34  =  kc*0.001*(T34-T35)+kc*0.001*(T38-T35)+kc*0.001*(T36-T35)+kc*0.001*(T33-T35)==0  ;
eqn35  =  kc*0.001*(T37-T38)+5*0.001*0.001*(Ta-T38)+kc*0.001*(T39-T38)+kc*0.001*(T35-T38)==0  ;
eqn36  =  kc*0.001*(T5-T6)+kc*0.001*(T12-T6)==0  ;
eqn37  =  kc*0.001*(T11-T12)+30000*0.001*0.001*(Tw-T12)+kc*0.001*(T6-T12)==0  ;
eqn38  =  kc*0.001*(T35-T36)+kc*0.001*(T39-T36)+30000*0.001*0.001*(Tw-T36)==0  ;
eqn39  =  kc*0.001*(T38-T39)+5*0.001*0.001*(Ta-T39)+kc*0.001*(T36-T39)==0  ;

% Solve the linear eqation
 [A,B] = equationsToMatrix([eqn1,eqn2,eqn3,eqn4,eqn5,eqn6,eqn7,eqn8,eqn9,eqn10,eqn11,eqn12,eqn13,eqn14,eqn15,eqn16,eqn17,eqn18,eqn19,eqn20,eqn21,eqn22,eqn23,eqn24,eqn25,eqn26,eqn27,eqn28,eqn29,eqn30,eqn31,eqn32,eqn33,eqn34,eqn35,eqn36,eqn37,eqn38,eqn39
     ], [T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19,T20,T21,T22,T23,T24,T25,T26,T27,T28,T29,T30,T31,T32,T33,T34,T35,T36,T37,T38,T39]);
T = linsolve(A,B)

% Print the results
vpa(T)
R
 