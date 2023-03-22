create table auto_user
(
    id   serial primary key,
    login varchar not null unique,
    password varchar not null
);

create table auto_post
(
    id   serial primary key,
    description varchar not null,
    created timestamp not null,
    auto_user_id int references auto_user(id) not null,
    post_user_id int references auto_post(id) not null
);