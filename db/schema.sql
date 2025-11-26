

DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS users;


CREATE TABLE users (
    id serial PRIMARY KEY,
    username text NOT NULL, 
    password text NOT NULL
);

CREATE TABLE tasks (
    title text NOT NULL,
    done boolean NOT NULL,
    user_id integer NOT NULL REFERENCES users(id) ON DELETE CASCADE
);