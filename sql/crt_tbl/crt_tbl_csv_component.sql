create table csv_component (
    uid varchar(255) not null,
    platform varchar(255) not null,
    component varchar(255) not null,
    componentGroup varchar(255) not null,
    createdByUserUserId varchar(255),
    modifiedByUserUserId varchar(255),
    updated timestamp,
    applicationId int8 
);