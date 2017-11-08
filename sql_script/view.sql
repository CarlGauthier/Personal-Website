CREATE VIEW HomeProjectView AS (
	SELECT P.id, P.name, image, priority, C.name context
    FROM Project P
    INNER JOIN Context C
		ON P.context = C.id
	ORDER BY priority
    LIMIT 5
);
-- Select * From HomeProjectView;

CREATE VIEW HomeBlogPostView AS (
	SELECT title, image, content, date_format(creationDate, "%Y-%m-%d") creationDate, lastEditDate, A.name author 
    FROM BlogPost BP
    INNER JOIN Author A
		ON BP.author = A.id
	ORDER BY creationDate
    LIMIT 2
);
-- Select * From HomeBlogPostView;