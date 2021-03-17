-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "combined_df" (
    "Job_ID" SERIAL   NOT NULL,
    "Job_Title" VARCHAR(50)   NOT NULL,
    "Size" VARCHAR(40)   NOT NULL,
    "Industry" VARCHAR(50)   NOT NULL,
    "avg_salary" DEC   NOT NULL,
    "Salary_Range" VARCHAR(8)   NOT NULL,
    "Cost_of_Living_Index" DEC   NOT NULL,
    "City_ID" SERIAL   NOT NULL,
    "Adj_Purchasing_Power" DEC   NOT NULL,
    CONSTRAINT "pk_combined_df" PRIMARY KEY (
        "Job_ID"
     )
);

CREATE TABLE "City" (
    "City_ID" SERIAL   NOT NULL,
    "City" VARCHAR(40)   NOT NULL,
    CONSTRAINT "pk_City" PRIMARY KEY (
        "City_ID"
     )
);

ALTER TABLE "combined_df" ADD CONSTRAINT "fk_combined_df_City_ID" FOREIGN KEY("City_ID")
REFERENCES "City" ("City_ID");

