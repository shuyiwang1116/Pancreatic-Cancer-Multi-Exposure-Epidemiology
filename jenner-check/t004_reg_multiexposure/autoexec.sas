/* cap input rows for the captured run */
options obs=100;

/* Stand up a small synthetic A.pboy1 with the strid1 by-group key plus the
   SRATE, pcookwt_AVG (meat intake) and o3_mean (ozone) columns the PROC REG
   step reads. The real dataset is withheld for Taiwan Cancer Registry privacy. */
libname a "%sysfunc(pathname(work))";

data a.pboy1;
  input strid1 SRATE pcookwt_AVG o3_mean @@;
  datalines;
1 4.2 120 32 1 4.5 130 34 1 4.1 118 31 1 4.6 132 35 1 4.3 124 33
2 5.1 140 36 2 5.3 145 37 2 4.9 138 35 2 5.2 142 36 2 5.0 139 35
;
run;
