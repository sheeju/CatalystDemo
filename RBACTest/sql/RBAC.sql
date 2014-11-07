DROP TYPE IF EXISTS UserStatusType CASCADE;
CREATE TYPE UserStatusType AS ENUM ('Inactive','Active');

DROP TYPE IF EXISTS PasswordHashType CASCADE;
CREATE TYPE PasswordHashType AS ENUM ('MD5','SHA-1','SHA-256');

DROP TABLE IF EXISTS "User";
CREATE TABLE "User" (
	-- Globally unique PAMS user ID
	"Id"				SERIAL PRIMARY KEY NOT NULL,

	"LastLoginEpoch"	INTEGER NULL,

	-- Login username/e-mail address
	"UserName"			VARCHAR(255) NOT NULL,

	-- Login password
	"PasswordSalt"		BYTEA NOT NULL,
	"PasswordHash"		BYTEA NOT NULL,
	"PasswordHashType"	PasswordHashType NOT NULL,

	"Status"			UserStatusType NOT NULL
);

DROP TABLE IF EXISTS "UserRole";
CREATE TABLE "UserRole" (
	"UserId"				INTEGER NOT NULL,
	"RoleId"				INTEGER NOT NULL
);

DROP TABLE IF EXISTS "Role";
CREATE TABLE "Role" (
	"Id"				SERIAL PRIMARY KEY NOT NULL,
	"Name"				VARCHAR(255) NOT NULL,
	"Description"		TEXT NULL,
	-- ParentId will be used while populating UserRole table to assign roles applicable for a User
	"ParentId"			INTEGER NULL
);

DROP TABLE IF EXISTS "RolePermission";
CREATE TABLE "RolePermission" (
	"Id"				SERIAL PRIMARY KEY NOT NULL,
	"RoleId"			INTEGER NOT NULL,
	"UtilityId"			INTEGER NOT NULL,
	"PermissionId"		INTEGER NOT NULL	
);

DROP TABLE IF EXISTS "Permission";
CREATE TABLE "Permission" (
	"Id"				SERIAL PRIMARY KEY NOT NULL,
	-- URL/Method which describes the permission
	"Permission"		VARCHAR(255) NOT NULL	
);

INSERT INTO "Role" ("Name", "ParentId") 
VALUES 
('SuperAdmin', NULL),
('Admin', NULL),
('Manager', NULL),
('User', NULL);


INSERT INTO "User" ("UserName", "PasswordSalt", "PasswordHash", "PasswordHashType", "Status")
VALUES 
('sheeju', '', E'\\x5f4dcc3b5aa765d61d8327deb882cf99', 'MD5', 'Active'),
('sheeju1', '', E'\\x5f4dcc3b5aa765d61d8327deb882cf99', 'MD5', 'Active'),
('sheeju2', '', E'\\x5f4dcc3b5aa765d61d8327deb882cf99', 'MD5', 'Active'),
('sheeju3', '', E'\\x5f4dcc3b5aa765d61d8327deb882cf99', 'MD5', 'Active');

INSERT INTO "UserRole" ("UserId", "RoleId")
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(3, 4),
(4, 4);
