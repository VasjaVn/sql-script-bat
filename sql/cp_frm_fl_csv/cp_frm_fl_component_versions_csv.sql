COPY csv_component_version (uid, componentUid, createdBy, modifiedBy, updated, qualityGrade, componentReleaseVersion, versionValidated, versionValidationError)
FROM 'D:\PROJECTS\EPAM-PROJECTS\CSV-PARSER\sql-script-bat\csv\componentVersion.csv' DELIMITER ',' CSV HEADER NULL ' ';

UPDATE csv_component_version
SET uid = trim(uid),
    componentUid = trim(componentUid),
    createdBy = trim(createdBy),
    modifiedBy = trim(modifiedBy),
    componentReleaseVersion = trim(componentReleaseVersion),
    versionValidated = trim(versionValidated),
    versionValidationError = trim(versionValidationError);