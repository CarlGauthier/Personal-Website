-- ProjectTag
ALTER TABLE ProjectTag ADD FOREIGN KEY (project) REFERENCES Project(id);
ALTER TABLE ProjectTag ADD FOREIGN KEY (tag) REFERENCES Tag(id);
