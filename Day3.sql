--user and photos
-- One user many photos

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  username VARCHAR(50)	
);


INSERT INTO users (username)
VALUES
('mohanan93'),
('pferrer'),
('si93onis'),
('99stroman');


CREATE TABLE photos(
id SERIAL PRIMARY KEY,
url VARCHAR(200),
user_id INTEGER references users(id)
);

INSERT INTO photos(url,user_id)
VALUES
('http://abc.com',1),
('http://def.com',2),
('http://ghi.com',3),
('http://jkl.com',4);

---user (id)---->photos(user_id)


--get photos  posted by a user with id
select * from photos where user_id=1;

---join two tables
select username,url from photos join users on users.id=photos.user_id;


-- Create table called 'boats'
CREATE TABLE boats (
    -- Note that this environment doesn't support 'SERIAL' keyword
    -- so 'AUTOINCREMENT' is used instead. Postgres always uses 'SERIAL'
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR
);


-- Insert two boats 
INSERT INTO boats (name)
VALUES ('Rogue Wave'), ('Harbor Master');


-- Create table called 'crew_members'
CREATE TABLE crew_members (
    -- Note that this environment doenst support 'SERIAL' keyword
    -- so 'AUTOINCREMENT' is used instead. Postgres always uses 'SERIAL'
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR,
    -- >>>>>>>> TODO #1 HERE!!!
    boat_id INTEGER references boats(id)
);

-- Insert three crew members
INSERT INTO crew_members (first_name, boat_id)
VALUES ('Alex', 1), ('Lucia', 1), ('Ari', 2);


-- Write query here to fetch all columns for all crew_members associated with the boat that has an ID of 1
-- >>>>>>>> TODO #2 HERE!!!
   SELECT crew_members.id,first_name,crew_members.boat_id FROM crew_members join boats on crew_members.boat_id=boats.id where boats.id=1;
