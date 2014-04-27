datasciencecoursera-3
=====================

Getting and Cleaning Data Project

This library uses R to tidy up wearable computing data collected 
from accelerometers on the Samsung Galaxy S smartphone.  The data
is publicy available from:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This script was created from the following dataset:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

and a copy of that dataset is included with this distribution.

INITIALIZATION
--------------

Before running R you will want to unpack your data in this repo.
This can be achieved by either unzip'ing the included package
proj_dat.zip or retrieving a new dataset from one of the above URLs.
The library expects the main directory for the dataset to be called:

```
UCI HAR Dataset
```

If it is otherwise you will want to alter the **UCIdir** variable within
*run_analysis.R* to reflect the new directory name.  Everything else should remain
the same.  

USAGE
-----

1. set your working directory to the main directory in this repo
2. load run_analysis.R ie: > source('run_analysis.R')
3. run run_analysis() - it will return a data.frame that contains
the following:

| row.names | #.ACTIVITY | #.ACTIVITY | ... |
------------|------------|------------|-----|
| MEASUREMENT | #.###### | #.###### | ... |
| MEASUREMENT | #.###### | #.###### | ... |

Where each MEASUREMENT is a label for either the mean or standard
deviation of feature sets recorded by the smartphone.  For example:

* Fast Fourier Transform Body Acceleration Euclidean Norm Mean
* Time Domain Body Acceleration Euclidean Norm Mean
* Time Domain Gravity Acceleration Standard Deviation X

Are recorded for each subject and the activity they were recording.
Hence, the column names *#.ACTIVITY* which is the number assigned to
the specific subject separated by a '.' followed by the *ACTIVITY*.
For example:

* 2.WALKING
* 14.SITTING
* 28.LAYING


