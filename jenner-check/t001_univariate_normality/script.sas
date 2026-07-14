/* 1. Exploratory Data Analysis (EDA) */
/* Assessing the normality of cancer incidence rates to select appropriate tests */
PROC univariate DATA=A.PGIRL2 normal plot;
    VAR STAND_RATE;
RUN;
