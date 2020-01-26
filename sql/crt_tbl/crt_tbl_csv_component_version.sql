create table csv_component_version (
    uid varchar(255) not null,
    componentUid varchar(255),
    createdBy varchar(255),
    modifiedBy varchar(255),
    updated timestamp,
--    qualityGrade int8,
    qualityGrade varchar(255),
    componentReleaseVersion varchar(255),
    versionValidated varchar(255),
    versionValidationError text
);
