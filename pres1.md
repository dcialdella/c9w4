Course Project: Shiny Application and Reproducible Pitch
========================================================
author: Daniel Cialdella - dcialdella@gmail.com
date:   24-10-2016
autosize: true

Overview
========================================================

This presentation was built as part of a deliverable for the course Developing Data Products as part of the Coursera Data Science Specialization. Course 9 - Week 4. (c9w4b)

The data used was based in Diamonds information.

- Running code: https://dcialdella.shinyapps.io/c9w4/
- The source code: https://github.com/dcialdella/c9w4
- The PPT stored on: https://dcialdella.shinyapps.io/c9w4/
- Relevant info: http://www.lumeradiamonds.com/diamond-education/index

Rules to take care about it:

- Shiny used to build data product application demo.
- R-presentation editor to create the Presentation associated.
- Information provided by Cityhall Alcalá de Henares.


Slide Reference data
========================================================
Welcome page, show VARs to complete/Select, brief detail about the data and the information provided.
VARIABLES
- Price - will show line with this referenced value
- Carat - Used to select Carat (between 0.2 and 5.01)
- Color - Select quality (0-all, 1 to 7 means I to D quality)
- Records - Select records used for the process (try to test it with a few records first)
- Show/Hide - Used as boolean var to show/hide reference lines on graphics

You could refresh all graphics in all tabs.


```
     carat               cut        color        clarity     
 Min.   :0.2000   Fair     : 1610   D: 6775   SI1    :13065  
 1st Qu.:0.4000   Good     : 4906   E: 9797   VS2    :12258  
 Median :0.7000   Very Good:12082   F: 9542   SI2    : 9194  
 Mean   :0.7979   Premium  :13791   G:11292   VS1    : 8171  
 3rd Qu.:1.0400   Ideal    :21551   H: 8304   VVS2   : 5066  
 Max.   :5.0100                     I: 5422   VVS1   : 3655  
                                    J: 2808   (Other): 2531  
     depth           table           price             x         
 Min.   :43.00   Min.   :43.00   Min.   :  326   Min.   : 0.000  
 1st Qu.:61.00   1st Qu.:56.00   1st Qu.:  950   1st Qu.: 4.710  
 Median :61.80   Median :57.00   Median : 2401   Median : 5.700  
 Mean   :61.75   Mean   :57.46   Mean   : 3933   Mean   : 5.731  
 3rd Qu.:62.50   3rd Qu.:59.00   3rd Qu.: 5324   3rd Qu.: 6.540  
 Max.   :79.00   Max.   :95.00   Max.   :18823   Max.   :10.740  
                                                                 
       y                z         
 Min.   : 0.000   Min.   : 0.000  
 1st Qu.: 4.720   1st Qu.: 2.910  
 Median : 5.710   Median : 3.530  
 Mean   : 5.735   Mean   : 3.539  
 3rd Qu.: 6.540   3rd Qu.: 4.040  
 Max.   :58.900   Max.   :31.800  
                                  
```

Slide With Histogram Graphic
========================================================

![plot of chunk c2](pres1-figure/c2-1.png)

Slide with Comparatives Graphic
========================================================

![plot of chunk unnamed-chunk-1](pres1-figure/unnamed-chunk-1-1.png)

