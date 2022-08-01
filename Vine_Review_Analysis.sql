-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

-- create table with votes more than or equal to 20
CREATE TABLE votes_20_plus AS
SELECT
*
FROM vine_table
WHERE total_votes >= 20;

-- create table where helpful_votes % is more than or equal to 50%
CREATE TABLE helpful_votes AS
SELECT *
FROM votes_20_plus
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

-- create table where review comes from paid Vine program
CREATE TABLE paid_review AS
SELECT *
FROM helpful_votes
WHERE vine = 'Y';

-- -- create table where review comes from unpaid Vine program
CREATE TABLE unpaid_review AS
SELECT *
FROM helpful_votes
WHERE vine = 'N';


-- total number of reviews, total 5 star rating, total 5 star rating by paid vs. unpaid
SELECT COUNT(review_id) AS review_ct,
COUNT(CASE WHEN star_rating = 5 THEN review_id ELSE NULL END) AS five_star_rating,
COUNT(CASE WHEN star_rating = 5 and vine = 'Y' THEN review_id ELSE NULL END) AS five_star_paid,
COUNT(CASE WHEN star_rating = 5 and vine = 'N' THEN review_id ELSE NULL END) AS five_star_unpaid
FROM vine_table;
