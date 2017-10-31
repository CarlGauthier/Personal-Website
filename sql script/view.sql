CREATE VIEW ProjectView AS (
	SELECT P.name, image, priority, C.name context
    FROM Project P
    INNER JOIN (Context C)
		ON (P.context = C.id)
	ORDER BY priority
);
-- Select * From ProjectView;