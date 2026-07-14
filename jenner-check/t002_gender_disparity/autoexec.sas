/* cap input rows for the captured run */
options obs=100;

/* Stand up a small synthetic A.pancreatic_nsex2 with the sex and stand_rate
   columns the PROC TTEST and PROC NPAR1WAY steps read. The real dataset is
   withheld for Taiwan Cancer Registry privacy. */
libname a "%sysfunc(pathname(work))";

data a.pancreatic_nsex2;
  input sex $ stand_rate @@;
  datalines;
M 5.1 M 4.8 M 6.0 M 5.5 M 5.9 M 5.2 M 5.7 F 4.2 F 3.9 F 4.5 F 4.0 F 4.3 F 4.1 F 4.6
;
run;
