-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" VARCHAR(50)   NOT NULL,
    "campaign_description" VARCHAR(100)   NOT NULL,
    "goal" numeric   NOT NULL,
    "pledged" numeric   NOT NULL,
    "outcome" VARCHAR(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" VARCHAR(20)   NOT NULL,
    "currency" VARCHAR(20)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" VARCHAR(50)   NOT NULL,
    "subcategory_id" VARCHAR(50)   NOT NULL,
    CONSTRAINT "Pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
); 


CREATE TABLE "Category" (
    "Category_id" VARCHAR(50)  NOT NULL,
    "Category_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "Category_id"
     )
);
CREATE TABLE "Subcategory" (
    "Subcategory_id" VARCHAR(50)   NOT NULL,
    "Subcategory_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "Subcategory_id"
     )
);
CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Contact_id" FOREIGN KEY("Contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Category_id" FOREIGN KEY("Category_id")
REFERENCES "Category" ("Category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Subcategory_id" FOREIGN KEY("Subcategory_id")
REFERENCES "Subcategory" ("Subcategory_id");

select * from "Campaign";
