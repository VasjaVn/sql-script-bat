COPY csv_component (uid, platform, component, componentGroup, createdByUserUserId, modifiedByUserUserId, updated, applicationId) 
FROM 'D:\PROJECTS\EPAM-PROJECTS\CSV-PARSER\sql-script-bat\csv\components__.csv' DELIMITER ',' CSV HEADER NULL ' ';

UPDATE csv_component
SET uid = trim(uid),
    platform = trim(platform),
    component = trim(component),
    componentGroup = trim(componentGroup),
    createdByUserUserId = concat('userId:', trim(createdByUserUserId)),
    modifiedByUserUserId = concat('userId:', trim(modifiedByUserUserId));