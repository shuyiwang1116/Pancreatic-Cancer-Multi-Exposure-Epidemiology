/* cap input rows for the captured run */
options obs=100;

/* Stand up a small synthetic A.pboy2 with the tname (township/district) and
   stand_rate columns the PROC ANOVA step reads. The real dataset is withheld
   for Taiwan Cancer Registry privacy. */
libname a "%sysfunc(pathname(work))";

data a.pboy2;
  input tname $ stand_rate @@;
  datalines;
T1 4.1 T1 4.3 T1 4.0 T2 5.2 T2 5.5 T2 5.3 T3 3.8 T3 4.0 T3 3.9 T1 4.2 T2 5.0 T3 3.7
;
run;
