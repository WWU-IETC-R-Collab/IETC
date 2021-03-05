# IETC
IETC general functions package.

## Installation

Install this package from GitHub!

```R
devtools::install_github("WWU-IETC-R-Collab/IETC")
library(IETC)
```

#### Issues/Problems?

Please create an [issue](https://github.com/NSF-Microplastics-Project/Risk_Region.shapefile/issues).

<br>

## unzipShape()

#### Example

Create a variable holding a string with the zip file web address (should be *raw* address for GitHub files). Then use this variable as the input for `unzipShape()`.

```R
RiskRegions.z <- "https://github.com/NSF-Microplastics-Project/Risk_Region.shapefile/raw/main/Data/SFB_RiskRegions_20210304.zip"
```

Load Shapefile Using `unzipShape` and Raw Address:

```R
RiskRegions <- unzipShape(RiskRegions.z)
```
