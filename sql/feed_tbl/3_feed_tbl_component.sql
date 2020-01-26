INSERT INTO component (component_group_id, name, asset_insight_id)
	SELECT cg.id AS component_group_id, csv_c.component AS name, csv_c.applicationId AS asset_insight_id
	FROM platform as p
		INNER JOIN component_group AS cg
			ON p.id = cg.platform_id
		INNER JOIN csv_component AS csv_c
			ON csv_c.platform = p.name AND csv_c.componentGroup = cg.name
	GROUP BY cg.id, csv_c.component, csv_c.applicationId;