DROP TABLE IF EXISTS user_data;
DROP SEQUENCE IF EXISTS user_id;

CREATE SEQUENCE user_id;
CREATE TABLE IF NOT EXISTS "user_data" (
  "id" integer PRIMARY KEY default nextval('user_id'),
  "name" varchar(20) NOT NULL,
  "sex" varchar(10) NOT NULL,
  "registrationc_date" date NOT NULL
);

INSERT into user_data(name, sex, registrationc_date) values ('Ivan', 'Male', '10.09.16');
INSERT into user_data(name, sex, registrationc_date) values ('Max', 'Male', '09.09.16');
INSERT into user_data(name, sex, registrationc_date) values ('Rmk', 'Male', '11.09.16');
INSERT into user_data(name, sex, registrationc_date) values ('Sala', 'Female', '05.09.16');
