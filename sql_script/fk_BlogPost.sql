-- BlogPost
ALTER TABLE BlogPost ADD FOREIGN KEY (author) REFERENCES Author(id);
ALTER TABLE BlogPost ADD FOREIGN KEY (type) REFERENCES BlogPostType(id);

-- BlogPostTag
ALTER TABLE BlogPostTag ADD FOREIGN KEY (blogPost) REFERENCES BlogPost(id);
ALTER TABLE BlogPostTag ADD FOREIGN KEY (tag) REFERENCES Tag(id);

-- BlogPostRelatedProject
ALTER TABLE BlogPostRelatedProject ADD FOREIGN KEY (blogPost) REFERENCES BlogPost(id);
ALTER TABLE BlogPostRelatedProject ADD FOREIGN KEY (project) REFERENCES Project(id);
