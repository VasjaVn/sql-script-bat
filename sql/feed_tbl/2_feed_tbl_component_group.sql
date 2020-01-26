INSERT INTO component_group (platform_id, name)
	SELECT p.id AS platform_id, csv_c.componentGroup AS name
	FROM platform AS p
		INNER JOIN csv_component AS csv_c
			ON p.name = csv_c.platform
	GROUP BY platform_id, csv_c.componentGroup;