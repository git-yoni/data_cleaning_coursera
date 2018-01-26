# Code Book
## Coursera: Getting and Cleaning Data
### Course Project

Note that the full description of the features is found from `features_info.txt` included in the [original data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). One may also visit the data set's  [homepage](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). This codebook contains  mainly the information relevant to the contents of the repository.

## Data Set

The data set is obtainable at:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### Transformations

1. Mergin of training and test sets were performed using `rbind` and `cbind`
2. Only the mean and standard deviation were extracted from the data set using `grepl` on `"mean()|std()"`. As a result, 79 features were filtered from the original data.  
3. Activity names were replaced with more understandable labels instead of the original integer coding. The functions `gsub` and `sapply` were used for this.
4. A second, independent tidy data set with the average of each variable for each activity and each subject was created.

### Identifiers
* `subject`
  Subject identifier (integer) [1:30]
* `activity`
	Activity identifier: 
	- `WALKING` (value = `1`): subject was walking during the test
	- `WALKING_UPSTAIRS` (value = `2`): subject was walking up a staircase during the test
	- `WALKING_DOWNSTAIRS` (value = `3`): subject was walking down a staircase during the test
	- `SITTING` (value = `4`): subject was sitting during the test
	- `STANDING` (value = `5`): subject was standing during the test
	- `LAYING` (value = `6`): subject was laying down during the test
	
### Measurements

#### Time-domain signals

- Average acceleration in the X, Y and Z directions:

	* `Time-Body-Acc-Mean--X`
	* `Time-Body-Acc-Mean--Y`
	* `Time-Body-Acc-Mean--Z`

- Standard deviation of acceleration in the X, Y and Z directions:

	* `Time-Body-Acc-Sigma-X`
	* `Time-Body-Acc-Sigma-Y`
	* `Time-Body-Acc-Sigma-Z`

- Average gravity acceleration in the X, Y and Z directions:

	* `Time-GravityAcc-Mean--X`
	* `Time-GravityAcc-Mean--Y`
	* `Time-GravityAcc-Mean--Z`

- Standard deviation of gravity acceleration in the X, Y and Z directions:

	* `Time-GravityAcc-Sigma-X`
	* `Time-GravityAcc-Sigma-Y`
	* `Time-GravityAcc-Sigma-Z`
	
- Average acceleration jerk in the X, Y and Z directions:

	* `Time-Body-AccJerk-Mean--X`
	* `Time-Body-AccJerk-Mean--Y`
	* `Time-Body-AccJerk-Mean--Z`
	
- Standard deviation of acceleration jerk in the X, Y and Z directions:

	* `Time-Body-AccJerk-Sigma-X`
	* `Time-Body-AccJerk-Sigma-Y`
	* `Time-Body-AccJerk-Sigma-Z`
	
- Average angular velocity in the X, Y and Z directions:

	* `Time-Body-Gyro--Mean--X`
	* `Time-Body-Gyro--Mean--Y`
	* `Time-Body-Gyro--Mean--Z`
	
- Standard deviation of  angular velocity in the X, Y and Z directions:

	* `Time-Body-Gyro--Sigma-X`
	* `Time-Body-Gyro--Sigma-Y`
	* `Time-Body-Gyro--Sigma-Z`
	
- Average angular velocity jerk in the X, Y and Z directions:

	* `Time-Body-Gyro-Jerk-Mean--X`
	* `Time-Body-Gyro-Jerk-Mean--Y`
	* `Time-Body-Gyro-Jerk-Mean--Z`
	
- Standard deviation of angular velocity jerk in the X, Y and Z directions:

	* `Time-Body-Gyro-Jerk-Sigma-X`
	* `Time-Body-Gyro-Jerk-Sigma-Y`
	* `Time-Body-Gyro-Jerk-Sigma-Z`
	
- Average and standard deviation of magnitude of acceleration:

	* `Time-Body-AccMag--Mean-`
	* `Time-Body-AccMag--Sigma`
	
- Average and standard deviation of  magnitude of gravity acceleration:

	* `Time-GravityAccMag--Mean-`
	* `Time-GravityAccMag--Sigma`
	

- Average and standard deviation of magnitude of acceleration jerk:

	* `Time-Body-AccJerkMag--Mean-`
	* `Time-Body-AccJerkMag--Sigma`

- Average and standard deviation of magnitude of angular velocity:

	* `Time-Body-Gyro-Mag--Mean-`
	* `Time-Body-Gyro-Mag--Sigma`

- Average and standard deviation of magnitude of angular velocity jerk:

	* `Time-Body-Gyro-JerkMag--Mean-`
	* `Time-Body-Gyro-JerkMag--Sigma`

#### Frequency-domain signals

- Average acceleration in the X, Y and Z directions:

	* `Nu-Body-Acc-Mean--X`
	* `Nu-Body-Acc-Mean--Y`
	* `Nu-Body-Acc-Mean--Z`
	
- Standard deviation of acceleration in the X, Y and Z directions:

	* `Nu-Body-Acc-Sigma-X`
	* `Nu-Body-Acc-Sigma-Y`
	* `Nu-Body-Acc-Sigma-Z`
	
- Weighted average of the frequency-domain acceleration in the X, Y and Z directions:

	* `Nu-Body-Acc-Mean-Freq-X`
	* `Nu-Body-Acc-Mean-Freq-Y`
	* `Nu-Body-Acc-Mean-Freq-Z`

- Average acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	* `Nu-Body-AccJerk-Mean--X`
	* `Nu-Body-AccJerk-Mean--Y`
	* `Nu-Body-AccJerk-Mean--Z`
	
- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	* `Nu-Body-AccJerk-Sigma-X`
	* `Nu-Body-AccJerk-Sigma-Y`
	* `Nu-Body-AccJerk-Sigma-Z`
	
- Weighted average of the frequency components of acceleration jerk in the X, Y and Z directions:

	* `Nu-Body-AccJerk-Mean-Freq-X`
	* `Nu-Body-AccJerk-Mean-Freq-Y`
	* `Nu-Body-AccJerk-Mean-Freq-Z`
	
- Average angular velocity in the X, Y and Z directions:

	* `Nu-Body-Gyro--Mean--X`
	* `Nu-Body-Gyro--Mean--Y`
	* `Nu-Body-Gyro--Mean--Z`
	
- Standard deviation of  angular velocity in the X, Y and Z directions:

	* `Nu-Body-Gyro--Sigma-X`
	* `Nu-Body-Gyro--Sigma-Y`
	* `Nu-Body-Gyro--Sigma-Z`
	
- Weighted average of angular velocity in the X, Y and Z directions:

	* `Nu-Body-Gyro--Mean-Freq-X`
	* `Nu-Body-Gyro--Mean-Freq-Y`
	* `Nu-Body-Gyro--Mean-Freq-Z`
	
- Average, standard deviation, and weighted average of the frequency components of acceleration:

	* `Nu-Body-AccMag--Mean-`
	* `Nu-Body-AccMag--Sigma`
	* `Nu-Body-AccMag--Mean-Freq`
	
- Average, standard deviation, and weighted average of the frequency components of acceleration jerk:

	* `Nu-Body-AccJerkMag--Mean-`
	* `Nu-Body-AccJerkMag--Sigma`
	* `Nu-Body-AccJerkMag--Mean-Freq`
	
- Average, standard deviation, and weighted average of the frequency components of angular velocity:

	* `Nu-Body-Gyro-Mag--Mean-`
	* `Nu-Body-Gyro-Mag--Sigma`
	* `Nu-Body-Gyro-Mag--Mean-Freq`

- Average, standard deviation, and weighted average of the frequency components of angular velocity jerk:

	* `Nu-Body-Gyro-JerkMag--Mean-`
	* `Nu-Body-Gyro-JerkMag--Sigma`
	* `Nu-Body-Gyro-JerkMag--Mean-Freq`
