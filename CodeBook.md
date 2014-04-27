CODEBOOK
========

RAW DATA
--------

The source of the RAW data can be found at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This data was extracted into cloudfront.net for this coursera class located at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

and a copy of that has been packaged along with this package in the file:

proj_dat.zip

VARIABLES
---------

The data contains the mean of 3-axial linear acceleration and 3-axial angular velocities
at a constant rate of 50Hz as derived from a Samsung Galaxy S smartphone worn on the hip
during different activities by 30 ~~test subjects~~ volunteers.

SUMMARY CHOICES
---------------

Only those columns that contained the mean or standard deviation were used which resulted
in the following row.names:

* Fast Fourier Transform Body Acceleration Mean X 
* Fast Fourier Transform Body Acceleration Mean Y 
* Fast Fourier Transform Body Acceleration Mean Z 
* Fast Fourier Transform Body Acceleration Standard Deviation X 
* Fast Fourier Transform Body Acceleration Standard Deviation Y 
* Fast Fourier Transform Body Acceleration Standard Deviation Z 
* Fast Fourier Transform Body Acceleration Jerk Signal Mean X 
* Fast Fourier Transform Body Acceleration Jerk Signal Mean Y 
* Fast Fourier Transform Body Acceleration Jerk Signal Mean Z 
* Fast Fourier Transform Body Acceleration Jerk Signal Standard Deviation X 
* Fast Fourier Transform Body Acceleration Jerk Signal Standard Deviation Y 
* Fast Fourier Transform Body Acceleration Jerk Signal Standard Deviation Z 
* Fast Fourier Transform Body Acceleration Euclidean Norm Mean 
* Fast Fourier Transform Body Acceleration Euclidean Norm Standard Deviation 
* Fast Fourier Transform Body Body Acceleration Jerk Signal Euclidean Norm Mean 
* Fast Fourier Transform Body Body Acceleration Jerk Signal Euclidean Norm Standard Deviation 
* Fast Fourier Transform Body Body Gyro Jerk Signal Euclidean Norm Mean 
* Fast Fourier Transform Body Body Gyro Jerk Signal Euclidean Norm Standard Deviation 
* Fast Fourier Transform Body Body Gyro Euclidean Norm Mean 
* Fast Fourier Transform Body Body Gyro Euclidean Norm Standard Deviation 
* Fast Fourier Transform Body Gyro Mean X 
* Fast Fourier Transform Body Gyro Mean Y 
* Fast Fourier Transform Body Gyro Mean Z 
* Fast Fourier Transform Body Gyro Standard Deviation X 
* Fast Fourier Transform Body Gyro Standard Deviation Y 
* Fast Fourier Transform Body Gyro Standard Deviation Z 
* Time Domain Body Acceleration Mean X 
* Time Domain Body Acceleration Mean Y 
* Time Domain Body Acceleration Mean Z 
* Time Domain Body Acceleration Standard Deviation X 
* Time Domain Body Acceleration Standard Deviation Y 
* Time Domain Body Acceleration Standard Deviation Z 
* Time Domain Body Acceleration Jerk Signal Mean X 
* Time Domain Body Acceleration Jerk Signal Mean Y 
* Time Domain Body Acceleration Jerk Signal Mean Z 
* Time Domain Body Acceleration Jerk Signal Standard Deviation X 
* Time Domain Body Acceleration Jerk Signal Standard Deviation Y 
* Time Domain Body Acceleration Jerk Signal Standard Deviation Z 
* Time Domain Body Acceleration Jerk Signal Euclidean Norm Mean 
* Time Domain Body Acceleration Jerk Signal Euclidean Norm Standard Deviation 
* Time Domain Body Acceleration Euclidean Norm Mean 
* Time Domain Body Acceleration Euclidean Norm Standard Deviation 
* Time Domain Body Gyro Mean X 
* Time Domain Body Gyro Mean Y 
* Time Domain Body Gyro Mean Z 
* Time Domain Body Gyro Standard Deviation X 
* Time Domain Body Gyro Standard Deviation Y 
* Time Domain Body Gyro Standard Deviation Z 
* Time Domain Body Gyro Jerk Signal Mean X 
* Time Domain Body Gyro Jerk Signal Mean Y 
* Time Domain Body Gyro Jerk Signal Mean Z 
* Time Domain Body Gyro Jerk Signal Standard Deviation X 
* Time Domain Body Gyro Jerk Signal Standard Deviation Y 
* Time Domain Body Gyro Jerk Signal Standard Deviation Z 
* Time Domain Body Gyro Jerk Signal Euclidean Norm Mean 
* Time Domain Body Gyro Jerk Signal Euclidean Norm Standard Deviation 
* Time Domain Body Gyro Euclidean Norm Mean 
* Time Domain Body Gyro Euclidean Norm Standard Deviation 
* Time Domain Gravity Acceleration Mean X 
* Time Domain Gravity Acceleration Mean Y 
* Time Domain Gravity Acceleration Mean Z 
* Time Domain Gravity Acceleration Standard Deviation X 
* Time Domain Gravity Acceleration Standard Deviation Y 
* Time Domain Gravity Acceleration Standard Deviation Z 
* Time Domain Gravity Acceleration Euclidean Norm Mean 
* Time Domain Gravity Acceleration Euclidean Norm Standard Deviation 

This was further broken down by subject (of which there were 30) and
activity which consisted of:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

Resulting in a total of 180 (30*6) columns.

EXPERIMENTAL STUDY DESIGN
-------------------------

The result is a summary of the data which displays averages for the mean and standard
deviation of each measurement by activity and test subject.

**No other data was harmed (used) in the processing of this data.**

RESULTING DATASET
-----------------

A single table is returned with...

* Each Column is a measure of one Subject.Activity pair
* Each Observation is contained on it's own row
* Header Row Contains the Column names
* Variable Names are Human Readable

SAMPLE OUTPUT
-------------

```
> UCIdata <- run_analysis()
> UCIdata[1:4,1:4]
```

|                                                             |  1.WALKING|   2.WALKING|   3.WALKING| 4.WALKING|
|-------------------------------------------------------------|----------:|-----------:|-----------:|---------:|
|Fast Fourier Transform Body Acceleration Mean X              |-0.06810286| 0.084727087|-0.138107866| 0.1277641|
|Fast Fourier Transform Body Acceleration Mean Y              |-0.97660964|-0.972693201|-0.977771591|-0.9838265|
|Fast Fourier Transform Body Acceleration Mean Z              |-0.97130596|-0.972116880|-0.962355639|-0.9679632|
|Fast Fourier Transform Body Acceleration Standard Deviation X|-0.14176147| 0.004590468|-0.007358565|-0.4903719|

