BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(2,'Food Provider 2','');
INSERT INTO "Account" VALUES(3,'Food Provider 1','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2023-03-29','Non-refrigerated','Fruit','3');
INSERT INTO "Delivery_Item__c" VALUES(2,'2023-04-05','Refrigerated','dairy','3');
INSERT INTO "Delivery_Item__c" VALUES(3,'2023-07-31','Frozen','More Meat','2');
INSERT INTO "Delivery_Item__c" VALUES(4,'2023-03-15','Refrigerated','meat','3');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2023-03-15T19:00:00.000+0000','Requested','3');
INSERT INTO "Delivery__c" VALUES(2,'2023-03-22T19:00:00.000+0000','Scheduled','2');
INSERT INTO "Delivery__c" VALUES(3,'2023-03-22T19:00:00.000+0000','Requested','2');
COMMIT;
