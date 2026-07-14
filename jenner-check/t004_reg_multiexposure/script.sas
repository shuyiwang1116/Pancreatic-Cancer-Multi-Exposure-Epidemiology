/* 4. Multi-Exposure Modeling (PROC REG) */
/* Analyzing atmospheric pollutants (O3) and dietary intake (Meat) on incidence */
proc sort data=a.pboy1; by strid1; run;
PROC reg DATA=A.Pboy1 PLOTS(maxpoints=none);
    MODEL SRATE = pcookwt_AVG o3_mean / STB CLB;
    by strid1;
RUN;
quit;
