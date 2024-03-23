create database fashion_ecommerce;

use fashion_ecommerce;

create table if not exists `users` (
	`id` int primary key auto_increment,
    `username` varchar(100) unique not null,
    `password` varchar(255) not null,
    `active` tinyint not null default 0,
    `created_at` datetime default current_timestamp,
    `updated_at` datetime default current_timestamp on update current_timestamp,
    `deleted_at` datetime null
);

create table if not exists categories (
	`id` int primary key auto_increment,
    `name` varchar(255) not null,
    `slug` varchar(255) not null,
    `description` varchar(500) null,
	`active` tinyint not null default 0,
    `created_at` datetime default current_timestamp,
    `updated_at` datetime default current_timestamp on update current_timestamp,
    `deleted_at` datetime null
);

create table if not exists products (
	`id` int primary key auto_increment,
    `name` varchar(255) not null,
    `slug` varchar(255) not null,
    `description` varchar(500) null,
    `category_id` int references categories(id),
	`active` tinyint not null default 0,
    `created_at` datetime default current_timestamp,
    `updated_at` datetime default current_timestamp on update current_timestamp,
    `deleted_at` datetime null
);

create table if not exists product_attributes (
	`id` int primary key auto_increment,
    `name` varchar(100) not null,
	`active` tinyint not null default 0,
    `created_at` datetime default current_timestamp,
    `updated_at` datetime default current_timestamp on update current_timestamp,
    `deleted_at` datetime null
);

create table if not exists product_details (
	`id` int primary key auto_increment,
    `key` varchar(100) not null,
    `value` varchar(255) not null,
    `product_id` int not null references products(id),
	`active` tinyint not null default 0,
    `created_at` datetime default current_timestamp,
    `updated_at` datetime default current_timestamp on update current_timestamp,
    `deleted_at` datetime null
);

create table if not exists images(
	`id` int primary key auto_increment,
    `name` varchar(255) not null,
	`active` tinyint not null default 0,
    `created_at` datetime default current_timestamp,
    `updated_at` datetime default current_timestamp on update current_timestamp,
    `deleted_at` datetime null
);