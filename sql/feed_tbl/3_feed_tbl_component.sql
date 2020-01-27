INSERT INTO component (component_group_id, name, asset_insight_id, created_by, updated_date, updated_by)
	SELECT cg.id AS component_group_id, csv_c.component AS name, csv_c.applicationId AS asset_insight_id, csv_c.createdByUserUserId AS created_by, csv_c.updated AS updated_date, csv_c.modifiedByUserUserId AS updated_by
	FROM platform as p
		INNER JOIN component_group AS cg
			ON p.id = cg.platform_id
		INNER JOIN csv_component AS csv_c
			ON csv_c.platform = p.name AND csv_c.componentGroup = cg.name
	GROUP BY cg.id, csv_c.component, csv_c.applicationId, csv_c.createdByUserUserId, csv_c.updated, csv_c.modifiedByUserUserId;

-- createdByUserUserId, modifiedByUserUserId, updated
--    created_date timestamp,
--    created_by varchar(255),
--    updated_date timestamp,
--    updated_by varchar(255),
