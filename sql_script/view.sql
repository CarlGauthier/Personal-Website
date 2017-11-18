CREATE VIEW ProjectView AS (
	SELECT P.id, P.name, image, priority, PT.name type
    FROM Project P
    INNER JOIN ProjectType PT
		ON P.type = PT.id
	ORDER BY priority
);

CREATE VIEW HomeProjectView AS (
	SELECT *
    FROM ProjectView
	LIMIT 5
);

CREATE VIEW BlogPostView AS (
	SELECT BP.id, title, image, ribbonColorHex, ribbonColorHex2, fontColorHex, description, text,
    BPT.name type, date_format(publicationDate, "%Y-%m-%d")publicationDate, lastEditDate, A.name author 
    FROM BlogPost BP
    INNER JOIN Author A
		ON BP.author = A.id
	INNER JOIN BlogPostType BPT
		ON BP.type = BPT.id
	ORDER BY publicationDate
);

CREATE VIEW HomeBlogPostView AS (
	SELECT *
    FROM BlogPostView BP
    LIMIT 2
);
