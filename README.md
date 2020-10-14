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

## Machine Learning analysis: 
features on runtime and average rating in movies.
1. use Supervised Learning to analysis and predict. 
2. build three models as: linear regression model, logistic regression model, and SVC model.
3. fit the model with predicted datasets, and use confusion matrix to report its accuracy and model performance. 

## Machine Learning second segment summary:

Short Summary:
1. Linear regression model  is completed correctly. For linear regression model,to do a loss function to analysis its accuracy for third segment deliverable.
2. classification model right now has imbalanced datasets problem, so need to take oversampling to re-scale the data. In that way, the model performance is not accuracy. For Classification model, need to use oversampling methdo to deal with imbalance data in third segement deliverable. 

Third segment deliverable to do list:
1. use RMSE or R-square to analysis the linear regression model performance.
2. use SMOTEENN method to deal with the imbalance datasets.
3. Add random forest decision tree models to re-predict the models
4. add feature importance 
5. compared the F-1 score and evaluate the model performance
6. add writing description for ML model analysis. 
7. add Logistic Regression and SVC model visulization. 


Presentation:

1. Create a dashboard displaying effects of different datasets on ratings.

ERD from QuickDBD: https://app.quickdatabasediagrams.com/#/d/YUIU3s

Mock Storyboard: https://ninjamock.com/s/N37F6Gx

   The overall objective is to look into factors affecting ratings
   We are potentially looking at:
   
      1. Genres on Rating
      2. Director on Rating
      3. Runtime on Rating
      
   Rating is being utilize as a stand in for popularity. This may allow us to decide which
   films can be used to attract new customers and increase membership.
   
## Data Source

Movie data pulled from:
https://www.imdb.com/interfaces/
