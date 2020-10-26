# Movie Ratings and Genres

Perform analysis on movie ratings and thier genres.

Communication Tools: Slack, Zoom Meetings

Collaboration: Google Drive/Colab, Github


## Reason for Project

With the current impact of COVID-19 and sheltering in place requirements, movie streaming platforms have experienced an exponential increase in usage. If there is a way to predict movie popularity and genre trends, it could allow movie steaming platforms to select potentially more popular movies and increase their viewer counts even more.

## Project Plan/Expectations

The source data has a lot of potential with various features. The data is comprised of movie titles, imdb ids, rating, genres, release years. Through this project we plan to focus on the following business predictions/questions:

1. Predict popular movie genres within certain release period and intricate genres relationships based on release years.
2. Predict if movie runtime affects ratings (analysis discrepancies on votes
2. If higher ratings are driven by popular directors?

Steps:
1.  Use ETL pipeline to cleaning and transforming the data:
    * Encode the columns, split the genres, and clean up categorical feature as required.
2.  Database connections
3.  Pre-processing steps:
    * Feature scaling
4.  Create ML model:
    * Perform Linear Regression model
    * Perform Random forest model
    * Compare the statistics between the models and identify model with better accuracy
5.  Predictions and Conclusions

## Team & Communications:

Team:
* PM/DB - Hema Mallisetty 
* ETL - Sam Erdman 
* Dashboard - Aaron Kitamura 
* ML - Angel Zhang 

Communications:
1. Slack Channel
2. Google docs & drive
3. Git-hub collaborations
4. Meeting Cadence: Class sessions (Tues & Thus) and additional Zoom session on (Sat/Sun)

## Data Exploration Phase:

Movie data pulled from: https://www.imdb.com/interfaces/

Through this segment, we explored 4 data sets;
1. Movie_akas: has information tconst, ordering, title, region, language, types, attributes, isOriginalTitle
2. Movie_basics: tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres
3. Movie_ratings: tconst, averageRating, numVotes
4. Movie_crew: tconst, directors, writers

The tconst being common imbd_id across all data sets that helped with merge, each data set has promising information for analysis. 
 
![Summary](https://github.com/hemsmalli5/Final-Project---Week1/blob/master/ERD.PNG)

Top picks for project are title, start year (release year), runtime minutes, genres, average ratings, number of votes, and directors.

## Data Analysis & Cleaning: 

1.	Several pre data cleaning steps were completed on a merged dataframe, that contained the 4 above mentioned files, in Jupyter Notebook. These cleaning steps included dropping all rows that were not movies (TV shows, videogames, etc…), converting the data type for some columns, dropping movies that were older than 1950, dropping movies that had NaN in the runtime and genres columns. A final list of unique tconst values was extracted from the cleaned dataframe and this list was used to filter each individual data file, so they each contained only the movie rows we needed, before the four files were loaded into the DB and merged.
2. A connection was made to our local Postgres server and the clean individual files were updated and the tables were merged into a single movie_analysis_db database. All tables are left joined on tconst(imdb_id) to produce common table movie_data_sql (movie_data in pandas data frame)
3. Additional data cleaning steps were carried out on the final dataframe, which included encoding certain columns using MultiLabelBinarizer, dropping unneeded columns after encoding, and renaming column names.
4. All machine learning modals will be execute on this final data frame.

## Machine Learning Analysis: 

Features on movie runtime and top genres:
1. Use Supervised Learning to analyze and predict. 
2. Build three models as: logistic regression model, classic decision tree, and random forest tree.
3. Fit the model with predicted datasets, and use confusion matrix to report model accuracy and performance. 

## 2nd segment in-depth descriptions of ML process:

1. How to split into training and testing dataset in Machine Learning? 

         As we work with datasets, a machine learning algorithm works in two stages. In this analysis, we chose to 
         
         split the data around 20% - 80% between testing and training stages. Under supervised learning, we split a dataset into
         
         a training data and test data in ML. The code test_size = 0.2 suggests that the test data should be 20% of the datasets and 
         
         the rest should be training data. Data is split using ML train_test_split menthod.

2. How much of data is in each group? 
      
         We used X.shape method to see how much of data is in each group. As a result, there are 59112 data in both X training dataset 
         and y training dataset. In the X testing datasets and y testing dataset, there are 14778 entires. 
         
         X and y has same size of data in Machine Learning model. 
         

3. Why choose the model of logistic regression, classic decision tree and random forest tree as Machine Learning models? 

         Since we mainly analyzed the categorical variable in this project and it is discrete variable, we choose to use classification model. 
      

4. What was the decision-making process around feature selection? 


         Initially we plan to test the ML model with encoding "director" column to see the difference in accuracy.
         However, during the process, we found that encoding the Directors column will create over 40, 511 new columns, 
         which takes an extremely long time to complete. 
         If the Directors column is encoded (40, 511 columns) it will take an extremely long time to split. 
         If the Director column is not encoded, it will need to be dropped as you cannot standardize non-numerical values.
         After long team group discussion, we decided to drop "Director" features, 
         instead, to use "generes" features to figure out customers preference. 
         In term of Genres Feartures, we use One - hot encoding method to covert text infomation to numerics information.
         


## 3rd segment deliverable:

1. Description of data preprocessing: 
      
      In order to analysis genres, we used one-hot encoding technical algorithm to split the generes into numerical variables. 
      We split the average rating into two main groups: high and low. Afterwards, the data is splitted into training and testing 
      datasets by 2/8 ratios. Then, we scale the datasets as we want all training sets as well as testing sets are in standard scale. 
      
2.  Description of feature engineering and the feature selection, including their decisionmaking process.

      Same as the 2nd segment, initially we plan to test the ML model with encoding "director" column to see the difference in accuracy.
         However, during the process, we found that encoding the Directors column will create over 40, 511 new columns, 
         which takes an extremely long time to complete. 
         If the Directors column is encoded (40, 511 columns) it will take an extremely long time to split. 
         If the Director column is not encoded, it will need to be dropped as you cannot standardize non-numerical values.
         After long team group discussion, we decided to drop "Director" features, 
         instead, to use "genres" features to figure out customers preference. 
         In term of Genres Feartures, we use One-hot encoding method to covert text infomation to numerics information.
         
3. Description of how data was split into training and testing sets. 

         Same with 2nd segement, As we work with datasets, a machine learning algorithm works in two stages. In this analysis, 
    
         we chose to split the data around 20% - 80% between testing and training stages. Under supervised learning, we split a dataset 
         
         into a training data and test data in ML. The code test_size = 0.2 suggests that the test data should be 20% of the datasets
         
         and the rest should be training data. 
        
4.  Explanation of model choice, including limitations and benefits.

         Since we mainly analysis the customer perference on movies'generes, we use classficatin models. 
         
         We choose over three machine learning models: logistic regression, classic decision trees, and random forest trees models. 
         
         a)Logistic regression benefits:
         Easier to implement, interpret, and very efficient to train, moreover, the logistic regression model is less inclined to 
         over-fitting but it can overfit in high demensional datasets. 
         Since we have 19 generes and it is high demensional datasets, we choose to use logistical regression model. 
         
         Logistic regression limitations: 
         The major limitation of Logistic Regression is the assumption of linearity between the dependent variable and the independent 
         variables. it can only be used to predict discrete functions. Hence, the dependent variable of Logistic Regression is bound to the discrete number set.
         
         b)Random forest model regression 
         Advantages:
         Random forest model creates as many as trees on the subset of the data and combines the output of all the trees. In 
         this ways. it reduces overfitting problem in decision trees and also reduces the variance and therefore imporves the accuracy. Random forest model regression     
         
         Disadvantages: 
         1. Complexity: Random Forest creates a lot of trees (unlike only one tree in case of decision tree) and combines their outputs. 
         This algorithm requires much more computational power and resources.
         2. Longer Training Period: Random Forest require much more time to train as compared to decision trees as it generates a lot of trees 
         (instead of one tree in case of decision tree) and makes decision on the majority of votes.
         
         
5. Description of current accuracy score 

         Overall, we got the highest accuracy scores as 71.2% in random forest model. In the logistic regression model, the accuracy does not 
         looks well as it only have 54% accuracy. The classic decision trees has better accuracy score than traditional logistical regression models with 69.1% accuracy scores.

![](FinalProject/dtree_8.PNG)

## Tableau Storyboard

https://public.tableau.com/views/BootcampFinalPresentation/MovieGenrePreferences?:language=en&:display_count=y&publish=yes&:origin=viz_share_link

![Example: Intro Slide](https://github.com/hemsmalli5/Final-Project---Week1/blob/master/Tableau_Dash/Intro_slide.PNG)

![Example: Genres Slide](https://github.com/hemsmalli5/Final-Project---Week1/blob/master/Tableau_Dash/TopGenres_slide.PNG)

## Final Project Presentation:
https://drive.google.com/file/d/1n_0op18KnhYyl2f119nW3ItnpJAJXs-L/view?usp=sharing

## Story Board

Create a dashboard displaying effects of different datasets on ratings:

ERD from QuickDBD: https://app.quickdatabasediagrams.com/#/d/YUIU3s

Mock Storyboard: https://ninjamock.com/s/N37F6Gx (note: please activate comments to see explanations within the storyboard)

The overall objective is to look into factors affecting ratings. We are potentially looking at:
   
      1. Genres on Rating
      2. Director on Rating
      3. Runtime on Rating
      
Moive ratings will be used to reflect popularity. This may allow us to decide which films can be used to attract new customers and increase membership.
   
The first page will show the factors that we will be focusing on (ratings and genres). We will also discuss our Machine Learning models, which will hopefully be able to predict a future movie's popularity. The presentation will also display a sample of the data we will be using. Finally, there will be specific pages for genres and ratings and we will look at how they impact one another. In our conclusion we will look at what we learned from the process, and how we can improve our Machine Learning models, and what we can potentially use the new information for.
   
The dashboard will be built using Tableau. Below are sample slides:
   
   ![Slide 1](https://github.com/hemsmalli5/Final-Project---Week1/blob/master/Ninjamock/Sheet_%201.PNG)
   
   ![Slide 2](https://github.com/hemsmalli5/Final-Project---Week1/blob/master/Ninjamock/Sheet_2.PNG)
   
   ![Slide 3](https://github.com/hemsmalli5/Final-Project---Week1/blob/master/Ninjamock/Sheet_3.PNG)
