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

The `unzipShape()` downloads raw GitHub zipped shapefiles or other web accessible zipped shapefiles into a temporary directory, unzips, and then stores data as an `sf` object. This does not save a copy of the shapefile to your working directory. This function should be used to load the latest shapefiles from IETC GitHub repositories.

#### Example

Create a variable holding a string with the zip file web address (should be *raw* address for GitHub files). Then use this variable as the input for `unzipShape()`.

```R
RiskRegions.z <- "https://github.com/NSF-Microplastics-Project/Risk_Region.shapefile/raw/main/Data/SFB_RiskRegions_20210304.zip"
RiskRegions <- unzipShape(RiskRegions.z)

# Or just...

RiskRegions <- unzipShape("https://github.com/NSF-Microplastics-Project/Risk_Region.shapefile/raw/main/Data/SFB_RiskRegions_20210304.zip")
```
