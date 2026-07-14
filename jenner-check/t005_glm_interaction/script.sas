/* Synthetic A.pgirl1 sample (SRATE, pcookwt_AVG meat intake, pm25_mean PM2.5).
   The real dataset is withheld for Taiwan Cancer Registry privacy; this small
   stand-in has the column shape the interaction model reads, so the PROC GLM
   below runs standalone (also usable directly against /v1/quick). */
libname a "%sysfunc(pathname(work))";
data a.pgirl1;
  input SRATE pcookwt_AVG pm25_mean @@;
  datalines;
4.2 120 22 4.5 130 24 4.1 118 21 5.1 140 26 5.3 145 27 4.9 138 25 4.4 125 23 5.0 135 25 4.3 122 22 5.2 143 27 4.0 115 20 4.8 133 24
;
run;

/* 5. Interaction Effect Analysis (PROC GLM) */
/* Testing for synergistic effects between Diet and PM2.5 (e.g., pcookwt_AVG*pm25_mean) */
proc glm data=a.pgirl1;
    model SRATE = pcookwt_AVG pm25_mean pcookwt_AVG*pm25_mean / ss3;
run;
quit;
