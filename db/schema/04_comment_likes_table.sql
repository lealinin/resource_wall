CREATE TABLE comment_likes (
  id SERIAL PRIMARY KEY NOT NULL,
  rating SMALLINT DEFAULT 0,
  description TEXT,
  like_this BOOLEAN,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  resource_id INTEGER REFERENCES resources(id) ON DELETE CASCADE
);
