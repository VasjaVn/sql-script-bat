INSERT INTO component_version (component_id, version, validated, validation_error)
	SELECT c.id AS component_id, csv_cv.componentReleaseVersion AS version, csv_cv.versionValidated AS validated, csv_cv.versionValidationError AS validation_error
	FROM platform AS p
		INNER JOIN component_group AS cg
			ON p.id = cg.platform_id
		INNER JOIN component AS c
		        ON cg.id = c.component_group_id
		INNER JOIN csv_component AS csv_c
			ON c.name = csv_c.component
		INNER JOIN csv_component_version AS csv_cv
			ON csv_c.uid = csv_cv.componentUid
	GROUP BY component_id, version, validated, validation_error;

--INSERT INTO component_version (component_id, version, validated, validation_error)
--	SELECT c.id AS component_id, csv_cv.componentReleaseVersion AS version, csv_cv.versionValidated AS validated, csv_cv.versionValidationError AS validation_error
--	FROM component AS c
--		INNER JOIN csv_component AS csv_c
--			ON c.name = csv_c.component
--		INNER JOIN csv_component_version AS csv_cv
--			ON csv_c.uid = csv_cv.componentUid
--	GROUP BY component_id, version, validated, validation_error;

