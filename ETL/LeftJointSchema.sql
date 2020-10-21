SELECT
    ma.tconst,
    ma.title,
    ma.region,
    ma.language,
    ma.types,
    ma.attributes,
    mb."movieTitleOriginal",
    mb."movieTitleType",
    mb."primaryMovieTitle",
    mb."startYear",
    mb."runtimeMinutes",
    mb."genres",
    mc."directors",
    mr."averageRating",
    mr."numVotes"
into movie_data_sql
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
