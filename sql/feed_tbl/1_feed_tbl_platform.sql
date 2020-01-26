INSERT INTO platform (name)
	SELECT platform AS name
	FROM csv_component
	GROUP BY name;