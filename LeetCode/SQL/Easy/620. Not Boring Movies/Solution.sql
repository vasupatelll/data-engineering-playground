SELECT
    movie_report.id, 
    movie_report.movie,
    movie_report.description,
    movie_report.rating
FROM 
    Cinema movie_report
WHERE
    movie_report.id % 2 != 0
    AND movie_report.description != 'boring'
ORDER BY 4 DESC