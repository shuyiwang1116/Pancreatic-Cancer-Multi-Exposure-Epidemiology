/* cap input rows for the captured run */
options obs=100;

/* The source script reads datasets from an external library A. whose data
   is withheld for Taiwan Cancer Registry privacy. This autoexec stands up a
   small synthetic A.PGIRL2 with the STAND_RATE column the PROC UNIVARIATE
   step reads, so the analysis runs standalone. */
libname a "%sysfunc(pathname(work))";

data a.PGIRL2;
  input STAND_RATE @@;
  datalines;
4.2 5.1 3.8 6.0 4.9 5.5 4.1 3.6 5.8 4.4 6.2 3.9 5.0 4.7 5.3
;
run;
