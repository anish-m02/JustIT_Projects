USE test_schema;

CREATE TABLE new_data (
    Textvalue VARCHAR(50)
); 

INSERT INTO new_data(Textvalue) 
	VALUES ('Hello');

SELECT 
    Textvalue
FROM
    new_data; 