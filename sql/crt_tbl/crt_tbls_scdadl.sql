create table platform (
    id  bigserial not null,
    name varchar(255) not null,
    created_date timestamp,
    created_by varchar(255),
    updated_date timestamp,
    updated_by varchar(255),
    primary key (id)
);

create table component_group (
    id  bigserial not null,
    platform_id int8,
    name varchar(255) not null,
    created_date timestamp,
    created_by varchar(255),
    updated_date timestamp,
    updated_by varchar(255),
    primary key (id)
);

create table component (
    id  bigserial not null,
    component_group_id int8,
    name varchar(255) not null,
    asset_insight_id int8,
    created_date timestamp,
    created_by varchar(255),
    updated_date timestamp,
    updated_by varchar(255),
    primary key (id)
);
    
create table component_version (
    id  bigserial not null,
    component_id int8,
    version varchar(255),
    package_url varchar(255),
    format varchar(255),
    quality_grade varchar(255),
    validated varchar(255),
    version_avoid varchar(255),
    validation_error text,
    created_date timestamp,
    created_by varchar(255),
    updated_date timestamp,
    updated_by varchar(255),
    primary key (id)
);

alter table if exists component_group 
    add constraint FKComponentGroup_platformId 
    foreign key (platform_id) 
    references platform;

alter table if exists component 
    add constraint FKComponent_componentGroupId 
    foreign key (component_group_id) 
    references component_group;
    
alter table if exists component_version 
    add constraint FKComponentVersion_componentId 
    foreign key (component_id) 
    references component;