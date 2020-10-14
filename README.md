# Movie Ratings and Genres
Perform analysis on movie ratings and genres

## Reason for Project

COVID situations and mandatory stay at home requirements exponentially put high demand on streaming platforms. If there is a way to predict past movie ratings and genre trends over a period of duration, it could be one of the good sources to provide user-based recommendations relevant to years on streaming platforms. 
testing master and individual branches

## Project Plan/Expectations

The source data has lot of potential with various features. The data comprises movie titles, imdb ids, rating, genres, release years. Through this project we plan to focus on following business predictions/questions:

1. Predict popular movie genres within certain release period and intricate genres relationships based on release years.
2. Predict if movie runtime affects ratings (analysis discrepancies on votes
2. If higher ratings are driven by Papular directors?

Steps:
1.	Use ETL pipeline to cleaning and transforming the data:
    * Encode the columns, split the genres, and clean up categorical feature as required.
2.	Database connections
3.	Pre-processing steps:
    * Feature scaling
4.	Create ML model:
    * Perform Linear Regression model
    * Perform Random forest model
    * Compare the statistics between the models and identify model with better accuracy
5.	Predictions and Conculsions

## Data exploration phase:
Through this segment, we explored 4 data sets;
1. Movie_akas: has information tconst,	ordering,	title,	region,	language,	types,	attributes,	isOriginalTitle
2. Movie_basics: tconst,	titleType,	primaryTitle,	originalTitle,	isAdult,	startYear,	endYear,	runtimeMinutes,	genres
3. Movie_ratings: tconst,	averageRating,	numVotes
4. Movie_crew: tconst,	directors,	writers

The tconst being common imbd_id across all data sets that helped with merge, each data set has promising information for analysis. 
Inline-style: 
![Summary](https://github.com/hemsmalli5/Final-Project---Week1/blob/master/ERD.PNG)

Top picks for project are title, start year (release year), runtime minutes, genres, average ratings, number of votes, and directors.

## Data analysis: 
1. As part of the ETL steps, all data sets are filetred up on tconst for common values.
2. Connections made to local Postgres server and updated final version of tables into moview_analysis_db database. All tables are left joined up on tconst to produce common table movie_data_sql (movie_data in pandas data frame)
3. movie_data further transformed with MultiLabelBinarizer
4. execute ML models on the finalised data frame.


Presentation:

1. Create a dashboard displaying effects of different datasets on ratings.

ERD from QuickDBD: https://app.quickdatabasediagrams.com/#/d/YUIU3s

Mock Storyboard: https://ninjamock.com/s/N37F6Gx

## Data Source

Movie data pulled from:
https://www.imdb.com/interfaces/
