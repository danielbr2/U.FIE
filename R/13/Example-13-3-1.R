data(kielmc, package='wooldridge')

# Separate regressions for 1978 and 1981: report coefficients only
coef( lm(rprice~nearinc, data=kielmc, subset=(year==1978)) )
coef( lm(rprice~nearinc, data=kielmc, subset=(year==1981)) )

# Joint regression including an interaction term 
library(lmtest)
coeftest( lm(rprice~nearinc*y81, data=kielmc) )

