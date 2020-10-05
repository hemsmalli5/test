# Movie Ratings and Genres
Perform analysis on movie ratings and genres

## Reason for Project

COVID situations and mandatory stay at home requirements exponentially put high demand on streaming platforms. If there is a way to predict past movie ratings and genre trends over a period of duration, it could be one of the good sources to provide user-based recommendations relevant to years on streaming platforms. 
testing master and individual branches

## Project Plan/Expectations

The source data has lot of potential with various features. The data comprises movie titles, imdb ids, rating, genres, release years. Through this project we plan to focus on following business predictions/questions:

1. Predict popular movie ratings and/or genres within certain release period and intricate genres relationships based on investment and release years.
2. Analysis specific to one genre, predict if highest budget action movies delivered better revenue?

Steps:
1.	Use ETL pipeline to cleaning and transforming the data.
    ⋅⋅ a. Encode the columns, split the genres, and clean up categorical feature as required.
2.	Database connections
3.	Pre-processing steps
    ⋅⋅ a. Feature scaling
4.	Create ML model
    ⋅⋅ a. Perform Linear Regression model
    ⋅⋅ b. Perform Random forest model
    ⋅⋅ c. Compare the statistics between the models and identify model with better accuracy
5.	Predictions and Conculsions

## Data Source

Movie data pulled from:
https://www.imdb.com/interfaces/