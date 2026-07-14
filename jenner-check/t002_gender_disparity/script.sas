/* 2. Comparative Analysis: Gender Disparity */
/* Using T-Test and Wilcoxon (Non-parametric) to validate sex-based differences */
proc ttest data=a.pancreatic_nsex2;
    class sex;
    var stand_rate;
run;

PROC NPAR1WAY WILCOXON DATA=a.pancreatic_nsex2;
    CLASS sex;
    VAR STAND_RATE;
RUN;
