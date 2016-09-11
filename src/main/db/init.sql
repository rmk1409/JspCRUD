DROP TABLE IF EXISTS user_data;
DROP SEQUENCE IF EXISTS user_id;

CREATE SEQUENCE user_id;
CREATE TABLE IF NOT EXISTS "user_data" (
  "id" integer PRIMARY KEY default nextval('user_id'),
  "name" varchar(20) NOT NULL,
  "sex" varchar(10) NOT NULL,
  "phone_number" varchar(16) NOT NULL,
  "registration_date" varchar(10) NOT NULL
);

INSERT into user_data(name, sex, phone_number, registration_date) values ('Ivan', 'Male','+7(904)555-55-55', '10.09.2016');
INSERT into user_data(name, sex, phone_number, registration_date) values ('Max', 'Male','+7(921)000-55-55', '09.09.2016');
INSERT into user_data(name, sex, phone_number, registration_date) values ('Rmk', 'Male','+7(911)345-67-89', '11.09.2016');
INSERT into user_data(name, sex, phone_number, registration_date) values ('Sala', 'Female','+7(951)123-34-45', '05.09.2016');
INSERT into user_data(name, sex, phone_number, registration_date) values ('Solo', 'Male','+7(080)800-00-00', '31.08.2016');
