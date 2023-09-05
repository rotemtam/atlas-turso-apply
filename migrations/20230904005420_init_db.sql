-- Create "users" table
CREATE TABLE `users` (`id` int NOT NULL, `name` varchar NOT NULL, `manager_id` int NOT NULL, PRIMARY KEY (`id`), CONSTRAINT `manager_fk` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`));
-- Create index "idx_name" to table: "users"
CREATE UNIQUE INDEX `idx_name` ON `users` (`name`);