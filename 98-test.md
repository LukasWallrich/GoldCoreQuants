# Test (pls ignore - CQ)


```r
library(dplyr)
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
mtcars %>% group_by(cyl) %>% summarise(mean(mpg))
```

```
## `summarise()` ungrouping output (override with `.groups` argument)
```

```r
sessionInfo()
```

```
## [90m# A tibble: 3 x 2[39m
##     cyl `mean(mpg)`
##   [3m[90m<dbl>[39m[23m       [3m[90m<dbl>[39m[23m
## [90m1[39m     4        26.7
## [90m2[39m     6        19.7
## [90m3[39m     8        15.1
## R version 4.0.2 (2020-06-22)
## Platform: x86_64-pc-linux-gnu (64-bit)
## Running under: Ubuntu 18.04.5 LTS
## 
## Matrix products: default
## BLAS:   /usr/lib/x86_64-linux-gnu/openblas/libblas.so.3
## LAPACK: /usr/lib/x86_64-linux-gnu/libopenblasp-r0.2.20.so
## 
## locale:
##  [1] LC_CTYPE=C.UTF-8       LC_NUMERIC=C           LC_TIME=C.UTF-8       
##  [4] LC_COLLATE=C.UTF-8     LC_MONETARY=C.UTF-8    LC_MESSAGES=C.UTF-8   
##  [7] LC_PAPER=C.UTF-8       LC_NAME=C              LC_ADDRESS=C          
## [10] LC_TELEPHONE=C         LC_MEASUREMENT=C.UTF-8 LC_IDENTIFICATION=C   
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] dplyr_1.0.2   webex_0.9.1   ggplot2_3.3.2
## 
## loaded via a namespace (and not attached):
##  [1] knitr_1.30       magrittr_1.5     tidyselect_1.1.0 munsell_0.5.0   
##  [5] colorspace_1.4-1 R6_2.4.1         rlang_0.4.7      fansi_0.4.1     
##  [9] stringr_1.4.0    tools_4.0.2      grid_4.0.2       gtable_0.3.0    
## [13] xfun_0.18        utf8_1.1.4       cli_2.0.2        withr_2.3.0     
## [17] htmltools_0.5.0  ellipsis_0.3.1   assertthat_0.2.1 yaml_2.2.1      
## [21] digest_0.6.25    tibble_3.0.3     lifecycle_0.2.0  crayon_1.3.4    
## [25] bookdown_0.20    purrr_0.3.4      vctrs_0.3.4      glue_1.4.2      
## [29] evaluate_0.14    rmarkdown_2.3    stringi_1.5.3    compiler_4.0.2  
## [33] pillar_1.4.6     generics_0.0.2   scales_1.1.1     pkgconfig_2.0.3
```

