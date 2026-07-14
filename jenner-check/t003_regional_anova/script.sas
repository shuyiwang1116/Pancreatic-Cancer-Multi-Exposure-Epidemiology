/* 3. Regional Variance Analysis */
/* Comparing standard incidence rates across different townships/districts */
proc anova data=a.pboy2;
    class tname;
    model stand_rate = tname;
run;
