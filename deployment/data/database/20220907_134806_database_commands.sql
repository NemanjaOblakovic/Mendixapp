ALTER TABLE "myfirstmodule$order" ADD "info_intern" VARCHAR_IGNORECASE(360) NULL;
ALTER TABLE "myfirstmodule$order" ADD "info_extern" VARCHAR_IGNORECASE(360) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('0d9b4caa-dd13-4d63-87f4-cb6c6422a367', 
'79e99dd5-6bed-4ff4-bffe-4b6df9079502', 
'Info_Intern', 
'info_intern', 
30, 
360, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('26f81b86-be6f-4dcd-9f86-1d42834fd43e', 
'79e99dd5-6bed-4ff4-bffe-4b6df9079502', 
'Info_Extern', 
'info_extern', 
30, 
360, 
'', 
false);
CREATE TABLE "myfirstmodule$pdf" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('a9906132-89ae-48fd-ba17-4966647a9bbf', 
'MyFirstModule.PDF', 
'myfirstmodule$pdf', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
false, 
false);
CREATE TABLE "myfirstmodule$pdf_order" (
	"myfirstmodule$pdfid" BIGINT NOT NULL,
	"myfirstmodule$orderid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$pdfid","myfirstmodule$orderid"),
	CONSTRAINT "uniq_myfirstmodule$pdf_order_myfirstmodule$pdfid" UNIQUE ("myfirstmodule$pdfid"));
CREATE INDEX "idx_myfirstmodule$pdf_order_myfirstmodule$order_myfirstmodule$pdf" ON "myfirstmodule$pdf_order" ("myfirstmodule$orderid" ASC,"myfirstmodule$pdfid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('4aef2c34-0370-4ab2-9fe1-289af64c2ad4', 
'MyFirstModule.PDF_Order', 
'myfirstmodule$pdf_order', 
'a9906132-89ae-48fd-ba17-4966647a9bbf', 
'79e99dd5-6bed-4ff4-bffe-4b6df9079502', 
'myfirstmodule$pdfid', 
'myfirstmodule$orderid', 
'idx_myfirstmodule$pdf_order_myfirstmodule$order_myfirstmodule$pdf');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$pdf_order_myfirstmodule$pdfid', 
'4aef2c34-0370-4ab2-9fe1-289af64c2ad4', 
'803c678e-a1cf-36b2-b97d-5f9e58093536');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20220907 13:48:05';
