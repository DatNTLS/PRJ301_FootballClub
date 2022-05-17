create table Account_HE153704_SE1606
(
	userId int not null identity(1,1) primary key,
	userName nvarchar(255) null,
	email nvarchar(255) null,
	[password] nvarchar(255) null,
	isAdmin bit null,
)

create table Favorite_HE153704_SE1606
(
	userId int not null,
	newsId int not null,
)

create table TypeNews_HE153704_SE1606
(
	typeId int not null identity(1,1) primary key,
	typeName nvarchar(255) null
)

create table News_HE153704_SE1606
(
	newsId int not null identity(1,1) primary key,
	title nvarchar(255) null,
	img nvarchar(max) null,
	datePublished date null,
	shortDescription text null,
	content text null,
	detail text null,
	typeId int null
)

create table TagPlayer_HE153704_SE1606
(
	newsId int not null,
	playerId int null,
)

create table TagCoach_HE153704_SE1606
(
	newsId int not null,
	coachId int null,
)

create table Nationality_HE153704_SE1606
(
	nationalityId int not null identity(1,1) primary key,
	nationalityName nvarchar(255) null,
	img nvarchar(max) null
)

create table PlayerRole_HE153704_SE1606
(
	roleId int not null identity(1,1) primary key,
	roleName nvarchar(255) null
)

create table Player_HE153704_SE1606
(
	playerId int not null identity(1,1) primary key,
	playerName nvarchar(255) null,
	img nvarchar(max) null,
	dob date null,
	birthPlace nvarchar(255) null,
	nationalityId int null,
	height float null,
	[weight] float null,
	roleId int null,
	imgBackground nvarchar(max) null,
	number int null,
	shortDescription text null,
	playerInfor text null,
	detail text null
)

create table CoachRole_HE153704_SE1606
(
	roleId int not null identity(1,1) primary key,
	roleName nvarchar(255) null
)

create table Coach_HE153704_SE1606
(
	coachId int not null identity(1,1) primary key,
	coachName nvarchar(255) null,
	img nvarchar(max) null,
	nationalityId int null,
	roleId int null,
	shortDescription text null,
	coachInfor text null,
	detail text null
)
