ALTER TABLE "myfirstmodule$order" ALTER COLUMN "info_intern" SET DATA TYPE VARCHAR_IGNORECASE(500);
ALTER TABLE "myfirstmodule$order" ALTER COLUMN "info_extern" SET DATA TYPE VARCHAR_IGNORECASE(500);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '79e99dd5-6bed-4ff4-bffe-4b6df9079502', 
"attribute_name" = 'Info_Intern', 
"column_name" = 'info_intern', 
"type" = 30, 
"length" = 500, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '0d9b4caa-dd13-4d63-87f4-cb6c6422a367';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '79e99dd5-6bed-4ff4-bffe-4b6df9079502', 
"attribute_name" = 'Info_Extern', 
"column_name" = 'info_extern', 
"type" = 30, 
"length" = 500, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '26f81b86-be6f-4dcd-9f86-1d42834fd43e';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20220907 14:53:51';
