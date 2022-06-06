create table if not exists mangas (
    id int not null auto_increment primary key,
    name varchar(255) not null,
    url varchar(280) not null,
    scan varchar(100) not null,
    aliases varchar(800) not null,
    cape_url varchar(200) not null,
    author varchar(180) not null,
    nsfw boolean,
    description varchar(500) not null,
    created_at timestamp not null default current_timestamp,
    edited_at timestamp not null default current_timestamp on update current_timestamp
);

create table if not exists scans (
    id int not null auto_increment primary key,
    name varchar(100) not null,
    logo varchar(288),
    description varchar(500),
    contact varchar(800)
);

create table if not exists pages (
    id int not null auto_increment primary key,
    manga int not null,
    url varchar(200)
);

create table if not exists rating (
    id: int not null primary key,
    value int not null
);