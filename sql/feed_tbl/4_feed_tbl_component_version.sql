CREATE TABLE tmp_component_version AS
	SELECT csv_cv.componentUid AS componentUid, c.id AS component_id, csv_cv.createdBy AS created_by, csv_cv.modifiedBy AS modified_by, csv_cv.updated AS updated, csv_cv.qualityGrade AS quality_grade,  csv_cv.componentReleaseVersion AS version, csv_cv.versionValidated AS validated, csv_cv.versionValidationError AS validation_error
	FROM platform AS p
		INNER JOIN component_group AS cg
			ON p.id = cg.platform_id
		INNER JOIN component AS c
		        ON cg.id = c.component_group_id
		INNER JOIN csv_component AS csv_c
			ON c.name = csv_c.component
		INNER JOIN csv_component_version AS csv_cv
			ON csv_c.uid = csv_cv.componentUid
	GROUP BY csv_cv.componentUid, component_id, csv_cv.createdBy, csv_cv.modifiedBy, csv_cv.updated, quality_grade, version, validated, validation_error;

INSERT INTO component_version (component_id, version, quality_grade, validated, validation_error, created_by, updated_date, updated_by)
	(SELECT component_id, version, quality_grade, validated, validation_error, created_by, updated, modified_by FROM tmp_component_version);
