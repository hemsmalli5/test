SELECT
    movie_akas_us.tconst,
    movie_akas_us.title,
    movie_akas_us.region,
    movie_akas_us.language,
    movie_akas_us.type,
    movie_akas_us.attributes,
    movie_akas_us.isOriginalTitle,
    movie_basics.titleType,
    movie_basics.primaryTitle,
    movie_basics.originalTitle,
    movie_basics.startYear,
    movie_basics.runtimeMinutes,
    movie_basics.genres,
    movie_crew.directors,
    movie_ratings.averageRating,
    movie_ratings.numVotes

INTO movie_data_sql

FROM
    movie_akas_us as ma
	LEFT JOIN movie_basics as mb
		ON mb.tconst = ma.tconst
    LEFT JOIN movie_crew as mc
		ON mc.tconst = mb.tconst
    LEFT JOIN movie_ratings as mr
		ON mr.tconst = mc.tconst
ORDER BY
    tconst;

