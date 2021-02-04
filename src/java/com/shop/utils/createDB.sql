/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  aoife
 * Created: 21 Jan 2021
 */

DROP TABLE "USERDATA";
CREATE TABLE "USERDATA"
(
"USER_ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),   
"EMAIL" VARCHAR(50), 
"PASSWORD" VARCHAR(50), 
"FIRSTNAME" VARCHAR(50),   
"LASTNAME" VARCHAR(50),
"USERTYPE" VARCHAR(10)
);

DROP TABLE "PRODUCTS";
CREATE TABLE "PRODUCTS"
(
"PRODUCT_CODE" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
"PRODUCT_NAME" VARCHAR(255),
"PRODUCT_DESCRIPTION" VARCHAR(255),   
"BRAND_NAME" VARCHAR(100),
"PRICE" INTEGER,
"COLOUR" VARCHAR(100), 
"ANIMAL" VARCHAR(100),
"IMAGE" VARCHAR(100),
"CATEGORY" VARCHAR(100)
); 


