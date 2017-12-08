/*
Navicat PGSQL Data Transfer

Source Server         : office
Source Server Version : 90504
Source Host           : 10.0.1.1:5432
Source Database       : bc
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90504
File Encoding         : 65001

Date: 2017-12-08 20:25:15
*/


-- ----------------------------
-- Sequence structure for assets_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "assets_ids";
CREATE SEQUENCE "assets_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 2035
 CACHE 1;
SELECT setval('"public"."assets_ids"', 2035, true);

-- ----------------------------
-- Sequence structure for excange_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "excange_ids";
CREATE SEQUENCE "excange_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 351
 CACHE 1;
SELECT setval('"public"."excange_ids"', 351, true);

-- ----------------------------
-- Sequence structure for market_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "market_ids";
CREATE SEQUENCE "market_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 5925
 CACHE 1;
SELECT setval('"public"."market_ids"', 5925, true);

-- ----------------------------
-- Sequence structure for pair_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "pair_ids";
CREATE SEQUENCE "pair_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 3044
 CACHE 1;
SELECT setval('"public"."pair_ids"', 3044, true);

-- ----------------------------
-- Sequence structure for tikers_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "tikers_ids";
CREATE SEQUENCE "tikers_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 19254
 CACHE 1;
SELECT setval('"public"."tikers_ids"', 19254, true);

-- ----------------------------
-- Table structure for assets
-- ----------------------------
DROP TABLE IF EXISTS "assets";
CREATE TABLE "assets" (
"id" int8 DEFAULT nextval('assets_ids'::regclass) NOT NULL,
"symbol" varchar(255) COLLATE "default" NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"time" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for divergent
-- ----------------------------
DROP TABLE IF EXISTS "divergent";
CREATE TABLE "divergent" (
"pair_id" int4,
"exchanges1_id" int4,
"exchanges2_id" int4,
"diff" float8,
"time" timestamptz(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for exchanges
-- ----------------------------
DROP TABLE IF EXISTS "exchanges";
CREATE TABLE "exchanges" (
"id" int4 DEFAULT nextval('excange_ids'::regclass) NOT NULL,
"key" varchar(255) COLLATE "default" NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"active" bool DEFAULT false NOT NULL,
"time" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for markets
-- ----------------------------
DROP TABLE IF EXISTS "markets";
CREATE TABLE "markets" (
"id" int4 DEFAULT nextval('market_ids'::regclass) NOT NULL,
"active" bool NOT NULL,
"time" timestamptz(6) NOT NULL,
"exchange_id" int4 NOT NULL,
"pair_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for pairs
-- ----------------------------
DROP TABLE IF EXISTS "pairs";
CREATE TABLE "pairs" (
"id" int4 DEFAULT nextval('pair_ids'::regclass) NOT NULL,
"pair_name" varchar(255) COLLATE "default" NOT NULL,
"base_key" varchar(255) COLLATE "default" NOT NULL,
"base_name" varchar(255) COLLATE "default" NOT NULL,
"quote_key" varchar(255) COLLATE "default" NOT NULL,
"quote_name" varchar(255) COLLATE "default" NOT NULL,
"time" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tikers
-- ----------------------------
DROP TABLE IF EXISTS "tikers";
CREATE TABLE "tikers" (
"market" varchar(255) COLLATE "default",
"valute" varchar(255) COLLATE "default",
"value" float8,
"ask" float8,
"bid" float8,
"time" timestamptz(6),
"id" int8 DEFAULT nextval('tikers_ids'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tikers_1m
-- ----------------------------
DROP TABLE IF EXISTS "tikers_1m";
CREATE TABLE "tikers_1m" (
"value" float8 NOT NULL,
"ask" float8 NOT NULL,
"bid" float8 NOT NULL,
"time" timestamptz(6) NOT NULL,
"id" int8 DEFAULT nextval('tikers_ids'::regclass) NOT NULL,
"exchange_id" int4 NOT NULL,
"pair_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tikers_1s
-- ----------------------------
DROP TABLE IF EXISTS "tikers_1s";
CREATE TABLE "tikers_1s" (
"value" float8 NOT NULL,
"ask" float8 NOT NULL,
"bid" float8 NOT NULL,
"time" timestamptz(6) NOT NULL,
"id" int8 DEFAULT nextval('tikers_ids'::regclass) NOT NULL,
"exchange_id" int4 NOT NULL,
"pair_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tikers_source
-- ----------------------------
DROP TABLE IF EXISTS "tikers_source";
CREATE TABLE "tikers_source" (
"exchange" varchar(255) COLLATE "default",
"pair" varchar(255) COLLATE "default",
"value" float8,
"ask" float8,
"bid" float8,
"time" timestamptz(6),
"id" int8 DEFAULT nextval('tikers_ids'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Function structure for get_asset_id
-- ----------------------------
CREATE OR REPLACE FUNCTION "get_asset_id"("key" varchar)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
  _id assets.id%TYPE;
BEGIN

--LOCK TABLE statistics_cities IN EXCLUSIVE MODE;

	select "id" into _id from assets where symbol = COALESCE($1, 'Undefined');
	IF NOT FOUND THEN
		insert into assets(symbol) values (COALESCE($1, 'Undefined')) RETURNING "id" into _id;
	END IF;

return _id;

END;
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Function structure for get_exchange_id
-- ----------------------------
CREATE OR REPLACE FUNCTION "get_exchange_id"("p_key" varchar)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
  _id assets.id%TYPE;
BEGIN

--LOCK TABLE statistics_cities IN EXCLUSIVE MODE;

	select "id" into _id from exchanges where "key" = COALESCE($1, 'Undefined');
	IF NOT FOUND THEN
		insert into exchanges("key","name","active","time") values (COALESCE($1, 'Undefined'),'',false,to_timestamp(0)) RETURNING "id" into _id;
	END IF;

return _id;

END;
$BODY$
  LANGUAGE 'plpgsql' IMMUTABLE COST 100
;

-- ----------------------------
-- Function structure for get_pair_id
-- ----------------------------
CREATE OR REPLACE FUNCTION "get_pair_id"("key" varchar)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
  _id pairs.id%TYPE;
BEGIN

--LOCK TABLE statistics_cities IN EXCLUSIVE MODE;

	select "id" into _id from pairs where "pair_name" = COALESCE($1, 'Undefined');
	IF NOT FOUND THEN
		insert into pairs("pair_name","base_name","base_key","quote_name","quote_key","time") values (COALESCE($1, 'Undefined'),'','','','', to_timestamp(0)) RETURNING "id" into _id;
	END IF;

return _id;

END;
$BODY$
  LANGUAGE 'plpgsql' IMMUTABLE COST 100
;

-- ----------------------------
-- Function structure for save_tikers
-- ----------------------------
CREATE OR REPLACE FUNCTION "save_tikers"("p_exchange" varchar, "p_pair" varchar, "p_value" float8, "p_ask" float8, "p_bid" float8, "p_time" timestamp)
  RETURNS "pg_catalog"."void" AS $BODY$DECLARE
  _exchange_id exchanges.id%TYPE;
  _pair_id pairs.id%TYPE;

BEGIN
	--Routine body goes here...

	INSERT INTO tikers_source(time,exchange,pair,value,ask,bid) values(p_time,p_exchange,p_pair,p_value,p_ask,p_bid);

	SELECT get_exchange_id(p_exchange) INTO _exchange_id;
	SELECT get_pair_id(p_pair) INTO _pair_id;

	INSERT INTO tikers_1s(time,exchange_id,pair_id,value,ask,bid) values(p_time,_exchange_id,_pair_id,p_value,p_ask,p_bid);
	
	--INSERT INTO tikers_1m(time,_exchange_id,_pair_id,value,ask,bid) values(p_time,p_exchange,p_pair,p_value,p_ask,p_bid);

	RETURN;
END
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Function structure for set_asset
-- ----------------------------
CREATE OR REPLACE FUNCTION "set_asset"("p_symbol" varchar, "p_name" varchar, "p_time" timestamptz)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	--Routine body goes here...

		INSERT INTO assets ("symbol", "name", "time") VALUES(p_symbol, p_name, p_time)
		ON CONFLICT ("symbol") DO UPDATE SET "symbol"=p_symbol, "name"=p_name, "time"=p_time;

	RETURN;
END
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Function structure for set_exchange
-- ----------------------------
CREATE OR REPLACE FUNCTION "set_exchange"("p_key" varchar, "p_name" varchar, "p_active" bool, "p_time" timestamptz)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	--Routine body goes here...

		INSERT INTO exchanges ("key", "name", "active", "time") VALUES(p_key, p_name, p_active, p_time)
		ON CONFLICT ("key") DO UPDATE SET "name"=p_name, "active"=p_active, "time"=p_time;

	RETURN;
END
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Function structure for set_market
-- ----------------------------
CREATE OR REPLACE FUNCTION "set_market"("p_exchange" varchar, "p_pair" varchar, "p_active" bool, "p_time" timestamptz)
  RETURNS "pg_catalog"."void" AS $BODY$DECLARE
  _exchange_id exchanges.id%TYPE;
  _pair_id pairs.id%TYPE;

BEGIN
	--Routine body goes here...

	SELECT get_exchange_id(p_exchange) INTO _exchange_id;
	SELECT get_pair_id(p_pair) INTO _pair_id;

	INSERT INTO markets ("exchange_id", "pair_id", "active", "time") VALUES(_exchange_id, _pair_id, p_active, p_time)
	ON CONFLICT (exchange_id, pair_id) DO UPDATE SET "active"=p_active, "time"=p_time;

	RETURN;
END
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Function structure for set_pair
-- ----------------------------
CREATE OR REPLACE FUNCTION "set_pair"("p_pair_name" varchar, "p_base_key" varchar, "p_base_name" varchar, "p_quote_key" varchar, "p_quote_name" varchar, "p_time" timestamptz)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	--Routine body goes here...

		INSERT INTO pairs ("pair_name", "base_key", "base_name", "quote_key", "quote_name", "time") VALUES(p_pair_name, p_base_key, p_base_name, p_quote_key, p_quote_name, p_time)
		ON CONFLICT ("pair_name") DO UPDATE SET "base_key"=p_base_key, "base_name"=p_base_name, "quote_key"=p_quote_key, "quote_name"=p_quote_name, "time"=p_time;

	RETURN;
END
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Indexes structure for table assets
-- ----------------------------
CREATE UNIQUE INDEX "assets_symbol_idx" ON "assets" USING btree ("symbol");

-- ----------------------------
-- Primary Key structure for table assets
-- ----------------------------
ALTER TABLE "assets" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table exchanges
-- ----------------------------
CREATE UNIQUE INDEX "exchanges_key_idx" ON "exchanges" USING btree ("key");

-- ----------------------------
-- Primary Key structure for table exchanges
-- ----------------------------
ALTER TABLE "exchanges" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table markets
-- ----------------------------
CREATE UNIQUE INDEX "markets_exchange_id_pair_id_idx" ON "markets" USING btree ("exchange_id", "pair_id");

-- ----------------------------
-- Primary Key structure for table markets
-- ----------------------------
ALTER TABLE "markets" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table pairs
-- ----------------------------
CREATE UNIQUE INDEX "pairs_pair_name_idx" ON "pairs" USING btree ("pair_name");

-- ----------------------------
-- Primary Key structure for table pairs
-- ----------------------------
ALTER TABLE "pairs" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tikers
-- ----------------------------
ALTER TABLE "tikers" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tikers_1m
-- ----------------------------
ALTER TABLE "tikers_1m" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tikers_1s
-- ----------------------------
ALTER TABLE "tikers_1s" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tikers_source
-- ----------------------------
ALTER TABLE "tikers_source" ADD PRIMARY KEY ("id");
