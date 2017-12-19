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

Date: 2017-12-19 16:26:32
*/


-- ----------------------------
-- Sequence structure for assets_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "assets_ids";
CREATE SEQUENCE "assets_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 3098
 CACHE 1;
SELECT setval('"public"."assets_ids"', 3098, true);

-- ----------------------------
-- Sequence structure for excange_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "excange_ids";
CREATE SEQUENCE "excange_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 356
 CACHE 1;
SELECT setval('"public"."excange_ids"', 356, true);

-- ----------------------------
-- Sequence structure for internal_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "internal_ids";
CREATE SEQUENCE "internal_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 0
 CACHE 1;

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
 START 3562
 CACHE 1;
SELECT setval('"public"."pair_ids"', 3562, true);

-- ----------------------------
-- Sequence structure for tikers_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "tikers_ids";
CREATE SEQUENCE "tikers_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 131701
 CACHE 1;
SELECT setval('"public"."tikers_ids"', 131701, true);

-- ----------------------------
-- Sequence structure for user_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "user_ids";
CREATE SEQUENCE "user_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 0
 CACHE 1;

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
-- Records of assets
-- ----------------------------
BEGIN;
INSERT INTO "assets" VALUES ('1802', 'bnt', 'Bancor', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1803', 'ant', 'Aragon', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1804', 'adx', 'AdEx', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1805', 'adt', 'adToken', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1806', 'ada', 'Cardano', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1807', '1st', 'FirstBlood', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1808', 'qqq', 'QQQ', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('1809', 'dgd', 'DigixDAO', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1810', 'amp', 'Synereo', '2017-12-08 14:34:12+00');
INSERT INTO "assets" VALUES ('1811', 'ardr', 'Ardor', '2017-12-08 14:34:12+00');
INSERT INTO "assets" VALUES ('1812', 'aud', 'Australian Dollar', '2017-12-08 14:34:12+00');
INSERT INTO "assets" VALUES ('1813', 'avt', 'Aventus', '2017-12-08 14:34:12+00');
INSERT INTO "assets" VALUES ('1814', 'bat', 'basic attention token', '2017-12-08 14:34:12+00');
INSERT INTO "assets" VALUES ('1815', 'bcc', 'Bitcoin Core Token', '2017-12-08 14:34:12+00');
INSERT INTO "assets" VALUES ('1816', 'bch', 'Bitcoin Cash', '2017-12-08 14:34:12+00');
INSERT INTO "assets" VALUES ('1817', 'bcn', 'Bytecoin', '2017-12-08 14:34:12+00');
INSERT INTO "assets" VALUES ('1818', 'bcu', 'Bitcoin Unlimited Token', '2017-12-08 14:34:12+00');
INSERT INTO "assets" VALUES ('1819', 'bcy', 'Bitcrystals', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1820', 'bela', 'Bela', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1821', 'bfx', 'BFX', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1822', 'blk', 'BlackCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1823', 'bt1', 'BT1', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1824', 'bt2', 'BT2', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1825', 'btc', 'Bitcoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1826', 'btcd', 'BitcoinDark', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1827', 'btg', 'Bitgem', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1828', 'btm', 'Bitmark', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1829', 'bts', 'BitShares', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1830', 'burst', 'Burst', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1831', 'cad', 'Canadian dollar', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1832', 'clam', 'Clams', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1833', 'cny', 'Chinese yuan', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1834', 'cvc', 'Civic', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1835', 'dao', 'Decentralized Autonomous Organization', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1836', 'dash', 'Dash', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1837', 'dat', 'Data', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1838', 'data', 'Data', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1839', 'dcr', 'decred', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1840', 'dgb', 'DigiByte', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1841', 'doge', 'Dogecoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1842', 'edg', 'Edgeless', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1843', 'edo', 'Eidoo', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1844', 'emc2', 'Einsteinium', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1845', 'eos', 'EOS', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1846', 'etc', 'Ethereum Classic', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1847', 'eth', 'Ethereum', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1848', 'etp', 'Metaverse ETP', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1849', 'eur', 'euro', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1850', 'exp', 'Expanse', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1851', 'fct', 'Factom', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1852', 'fldc', 'FoldingCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1853', 'flo', 'FlorinCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1854', 'game', 'GameCredits', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1855', 'gas', 'Gas', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1856', 'gbp', 'British Pound', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1857', 'gno', 'Gnosis', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1858', 'gnt', 'Golem', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1859', 'grc', 'GridCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1860', 'hkd', 'Hong Kong Dollar', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1861', 'huc', 'HunterCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1862', 'icn', 'Iconomi', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1863', 'idr', 'Indonesian Rupiah', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1864', 'inr', 'Indian Rupee', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1865', 'iot', 'IOTA', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1866', 'jpy', 'Japanese Yen', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1867', 'krw', 'South Korean Won', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1868', 'lbc', 'LBRY Credits', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1869', 'lsk', 'Lisk', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1870', 'ltc', 'Litecoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1871', 'maid', 'MaidSafe', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1872', 'mln', 'Melonport', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1873', 'mxn', 'Mexican Peso', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1874', 'naut', 'NautilusCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1875', 'nav', 'NAV Coin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1876', 'neo', 'NEO', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1877', 'neos', 'NeosCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1878', 'nmc', 'Namecoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1879', 'note', 'DNotes', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1880', 'nxc', 'Nexium', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1881', 'nxt', 'NXT', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1882', 'omg', 'OmiseGo', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1883', 'omni', 'Omni', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1884', 'pasc', 'Pascal Coin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1885', 'php', 'Philippine Peso', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1886', 'pink', 'PinkCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1887', 'pot', 'PotCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1888', 'ppc', 'Peercoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1889', 'qtum', 'Qtum', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1890', 'rads', 'Radium', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1891', 'rep', 'Augur', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1892', 'ric', 'Riecoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1893', 'rur', 'Russian Ruble', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1894', 'san', 'Santinent Network Token', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1895', 'sbd', 'Steem Dollars', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1896', 'sc', 'Siacoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1897', 'sdc', 'ShadowCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1898', 'sgd', 'Singapore Dollar', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1899', 'sjcx', 'Storjcoin X', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1900', 'steem', 'Steem', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1901', 'storj', 'Storj', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1902', 'str', 'Stellar', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1903', 'strat', 'Stratis', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1904', 'sys', 'Syscoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1905', 'usd', 'United States dollar', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1906', 'usdt', 'Tether', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1907', 'via', 'Viacoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1908', 'vrc', 'VeriCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1909', 'vrm', 'Verium', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1910', 'vtc', 'Vertcoin', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1911', 'xbc', 'Bitcoin Plus', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1912', 'xcp', 'Counterparty', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1913', 'xem', 'NEM', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1914', 'xmr', 'Monero', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1915', 'xpm', 'Primecoin', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1916', 'xrp', 'Ripple', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1917', 'xtz', 'Tezos (Pre-Launch)', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1918', 'xvc', 'Vcash', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1919', 'zar', 'South African rand', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1920', 'zec', 'ZEC', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1921', 'zen', 'ZenCash', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1922', 'zrx', '0x', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('2628', 'cfi', 'Cofound.it', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2630', 'crb', 'Creditbit', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2650', 'dnt', 'district0x', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2652', 'eng', 'Enigma', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2656', 'fun', 'FunFair', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2660', 'gup', 'Matchpool', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2662', 'hmq', 'Humaniq', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2664', 'lgd', 'Legends Room', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2667', 'lun', 'Lunyr', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2669', 'mana', 'Decentraland', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2671', 'mco', 'Monaco', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2673', 'mtl', 'Metal', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2675', 'myst', 'Mysterium', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2678', 'nmr', 'Numeraire', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2681', 'pay', 'TenX', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2683', 'powr', 'Power Ledger', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2685', 'ptoy', 'Patientory', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2687', 'qrl', 'Quantum Resistant Ledger', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2690', 'rcn', 'Ripio Credit Network', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2693', 'rlc', 'iExec RLC', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2695', 'salt', 'SALT', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2698', 'sngls', 'SingularDTV', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2700', 'snt', 'Status', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2704', 'tix', 'Blocktix', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2706', 'trst', 'WeTrust', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2708', 'vib', 'Viberate', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2710', 'waves', 'Waves', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2712', 'wings', 'Wings', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('2715', 'xlm', 'Stellar', '1970-01-01 00:00:00+00');
COMMIT;

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
-- Records of divergent
-- ----------------------------
BEGIN;
COMMIT;

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
-- Records of exchanges
-- ----------------------------
BEGIN;
INSERT INTO "exchanges" VALUES ('300', 'bitfinex', 'Bitfinex', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('301', 'gdax', 'GDAX', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('302', 'bitstamp', 'Bitstamp', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('303', 'kraken', 'Kraken', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('304', 'btce', 'BTC-e', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('305', 'cryptsy', 'Cryptsy', 'f', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('306', 'cexio', 'CEX.IO', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('307', 'gemini', 'Gemini', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('308', 'quoine', 'Quoine', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('309', 'qryptos', 'Qryptos', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('310', 'bitflyer', 'bitFlyer', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('311', 'okcoin', 'OKCoin', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('312', '796', '796', 'f', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('313', 'bitvc', 'BitVC', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('314', 'btc-china', 'BTC China', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('315', 'bitmex', 'BitMEX', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('316', 'mexbt', 'meXBT', 'f', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('317', 'huobi', 'Huobi', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('318', 'vault-of-satoshi', 'Vault of Satoshi', 'f', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('319', 'luno', 'Luno', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('320', 'poloniex', 'Poloniex', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('321', 'mtgox', 'Mt. Gox', 'f', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('322', 'bitsquare', 'Bitsquare', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('323', 'bithumb', 'Bithumb', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('324', 'bittrex', 'Bittrex', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('325', 'qqq', '', 'f', '1970-01-01 00:00:00+00');
INSERT INTO "exchanges" VALUES ('326', 'qqq1', '', 'f', '1970-01-01 00:00:00+00');
INSERT INTO "exchanges" VALUES ('352', 'quadriga', '', 'f', '1970-01-01 00:00:00+00');
INSERT INTO "exchanges" VALUES ('353', 'btc', '', 'f', '1970-01-01 00:00:00+00');
INSERT INTO "exchanges" VALUES ('354', 'eth', '', 'f', '1970-01-01 00:00:00+00');
INSERT INTO "exchanges" VALUES ('355', 'usdt', '', 'f', '1970-01-01 00:00:00+00');
INSERT INTO "exchanges" VALUES ('356', 'xmr', '', 'f', '1970-01-01 00:00:00+00');
COMMIT;

-- ----------------------------
-- Table structure for internal
-- ----------------------------
DROP TABLE IF EXISTS "internal";
CREATE TABLE "internal" (
"id" int8 DEFAULT nextval('assets_ids'::regclass) NOT NULL,
"asset0" int8 NOT NULL,
"asset1" int8 NOT NULL,
"asset2" int8 NOT NULL,
"percent" float8 NOT NULL,
"exchange" int8 NOT NULL,
"time" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of internal
-- ----------------------------
BEGIN;
COMMIT;

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
-- Records of markets
-- ----------------------------
BEGIN;
INSERT INTO "markets" VALUES ('5532', 'f', '1970-01-01 00:00:00+00', '325', '2808');
INSERT INTO "markets" VALUES ('5535', 'f', '1970-01-01 00:00:00+00', '325', '2809');
INSERT INTO "markets" VALUES ('5537', 'f', '1970-01-01 00:00:00+00', '326', '2809');
INSERT INTO "markets" VALUES ('5539', 'f', '1970-01-01 00:00:00+00', '326', '2808');
INSERT INTO "markets" VALUES ('5542', 't', '2017-12-08 14:34:17+00', '300', '2620');
INSERT INTO "markets" VALUES ('5543', 't', '2017-12-08 14:34:17+00', '300', '2716');
INSERT INTO "markets" VALUES ('5544', 't', '2017-12-08 14:34:17+00', '300', '2711');
INSERT INTO "markets" VALUES ('5545', 't', '2017-12-08 14:34:17+00', '300', '2682');
INSERT INTO "markets" VALUES ('5546', 't', '2017-12-08 14:34:17+00', '300', '2668');
INSERT INTO "markets" VALUES ('5547', 't', '2017-12-08 14:34:17+00', '300', '2660');
INSERT INTO "markets" VALUES ('5548', 't', '2017-12-08 14:34:17+00', '300', '2665');
INSERT INTO "markets" VALUES ('5549', 'f', '2017-12-08 14:34:18+00', '300', '2596');
INSERT INTO "markets" VALUES ('5550', 'f', '2017-12-08 14:34:18+00', '300', '2597');
INSERT INTO "markets" VALUES ('5551', 't', '2017-12-08 14:34:18+00', '300', '2580');
INSERT INTO "markets" VALUES ('5552', 't', '2017-12-08 14:34:18+00', '300', '2579');
INSERT INTO "markets" VALUES ('5553', 't', '2017-12-08 14:34:18+00', '300', '2593');
INSERT INTO "markets" VALUES ('5554', 't', '2017-12-08 14:34:18+00', '300', '2592');
INSERT INTO "markets" VALUES ('5555', 't', '2017-12-08 14:34:18+00', '300', '2656');
INSERT INTO "markets" VALUES ('5556', 't', '2017-12-08 14:34:18+00', '300', '2659');
INSERT INTO "markets" VALUES ('5557', 't', '2017-12-08 14:34:18+00', '300', '2657');
INSERT INTO "markets" VALUES ('5558', 't', '2017-12-08 14:34:18+00', '300', '2705');
INSERT INTO "markets" VALUES ('5559', 't', '2017-12-08 14:34:18+00', '300', '2707');
INSERT INTO "markets" VALUES ('5560', 't', '2017-12-08 14:34:18+00', '300', '2706');
INSERT INTO "markets" VALUES ('5561', 't', '2017-12-08 14:34:18+00', '300', '2802');
INSERT INTO "markets" VALUES ('5562', 't', '2017-12-08 14:34:18+00', '300', '2795');
INSERT INTO "markets" VALUES ('5563', 't', '2017-12-08 14:34:18+00', '300', '2640');
INSERT INTO "markets" VALUES ('5564', 't', '2017-12-08 14:34:18+00', '300', '2637');
INSERT INTO "markets" VALUES ('5565', 't', '2017-12-08 14:34:18+00', '300', '2787');
INSERT INTO "markets" VALUES ('5566', 't', '2017-12-08 14:34:18+00', '300', '2792');
INSERT INTO "markets" VALUES ('5567', 't', '2017-12-08 14:34:18+00', '300', '2781');
INSERT INTO "markets" VALUES ('5568', 't', '2017-12-08 14:34:18+00', '300', '2784');
INSERT INTO "markets" VALUES ('5569', 't', '2017-12-08 14:34:18+00', '300', '2738');
INSERT INTO "markets" VALUES ('5570', 't', '2017-12-08 14:34:18+00', '300', '2740');
INSERT INTO "markets" VALUES ('5571', 't', '2017-12-08 14:34:18+00', '300', '2739');
INSERT INTO "markets" VALUES ('5572', 't', '2017-12-08 14:34:18+00', '300', '2582');
INSERT INTO "markets" VALUES ('5573', 't', '2017-12-08 14:34:18+00', '300', '2588');
INSERT INTO "markets" VALUES ('5574', 't', '2017-12-08 14:34:18+00', '300', '2583');
INSERT INTO "markets" VALUES ('5575', 't', '2017-12-08 14:34:18+00', '300', '2725');
INSERT INTO "markets" VALUES ('5576', 't', '2017-12-08 14:34:18+00', '300', '2728');
INSERT INTO "markets" VALUES ('5577', 't', '2017-12-08 14:34:18+00', '300', '2726');
INSERT INTO "markets" VALUES ('5578', 't', '2017-12-08 14:34:18+00', '300', '2760');
INSERT INTO "markets" VALUES ('5579', 't', '2017-12-08 14:34:18+00', '300', '2761');
INSERT INTO "markets" VALUES ('5580', 't', '2017-12-08 14:34:18+00', '300', '2762');
INSERT INTO "markets" VALUES ('5581', 't', '2017-12-08 14:34:18+00', '300', '2577');
INSERT INTO "markets" VALUES ('5582', 't', '2017-12-08 14:34:18+00', '300', '2575');
INSERT INTO "markets" VALUES ('5583', 't', '2017-12-08 14:34:18+00', '300', '2576');
INSERT INTO "markets" VALUES ('5584', 't', '2017-12-08 14:34:18+00', '300', '2750');
INSERT INTO "markets" VALUES ('5585', 't', '2017-12-08 14:34:18+00', '300', '2748');
INSERT INTO "markets" VALUES ('5586', 't', '2017-12-08 14:34:18+00', '300', '2747');
INSERT INTO "markets" VALUES ('5587', 't', '2017-12-08 14:34:18+00', '300', '2601');
INSERT INTO "markets" VALUES ('5588', 't', '2017-12-08 14:34:18+00', '300', '2600');
INSERT INTO "markets" VALUES ('5589', 't', '2017-12-08 14:34:18+00', '300', '2654');
INSERT INTO "markets" VALUES ('5590', 't', '2017-12-08 14:34:18+00', '300', '2603');
INSERT INTO "markets" VALUES ('5591', 't', '2017-12-08 14:34:18+00', '300', '2602');
INSERT INTO "markets" VALUES ('5592', 'f', '2017-12-08 14:34:18+00', '300', '2767');
INSERT INTO "markets" VALUES ('5593', 't', '2017-12-08 14:34:18+00', '300', '2686');
INSERT INTO "markets" VALUES ('5594', 't', '2017-12-08 14:34:18+00', '300', '2684');
INSERT INTO "markets" VALUES ('5595', 't', '2017-12-08 14:34:18+00', '300', '2685');
INSERT INTO "markets" VALUES ('5596', 't', '2017-12-08 14:34:18+00', '300', '2652');
INSERT INTO "markets" VALUES ('5597', 't', '2017-12-08 14:34:18+00', '300', '2653');
INSERT INTO "markets" VALUES ('5598', 't', '2017-12-08 14:34:18+00', '300', '2625');
INSERT INTO "markets" VALUES ('5599', 't', '2017-12-08 14:34:18+00', '300', '2623');
INSERT INTO "markets" VALUES ('5600', 't', '2017-12-08 14:34:18+00', '300', '2644');
INSERT INTO "markets" VALUES ('5601', 't', '2017-12-08 14:34:18+00', '300', '2642');
INSERT INTO "markets" VALUES ('5602', 't', '2017-12-08 14:34:18+00', '300', '2643');
INSERT INTO "markets" VALUES ('5603', 't', '2017-12-08 14:34:18+00', '300', '2645');
INSERT INTO "markets" VALUES ('5604', 't', '2017-12-08 14:34:18+00', '300', '2647');
INSERT INTO "markets" VALUES ('5605', 't', '2017-12-08 14:34:18+00', '300', '2646');
INSERT INTO "markets" VALUES ('5606', 't', '2017-12-08 14:34:18+00', '301', '2620');
INSERT INTO "markets" VALUES ('5607', 't', '2017-12-08 14:34:18+00', '301', '2609');
INSERT INTO "markets" VALUES ('5608', 't', '2017-12-08 14:34:18+00', '301', '2610');
INSERT INTO "markets" VALUES ('5609', 't', '2017-12-08 14:34:18+00', '301', '2682');
INSERT INTO "markets" VALUES ('5610', 't', '2017-12-08 14:34:18+00', '301', '2668');
INSERT INTO "markets" VALUES ('5611', 't', '2017-12-08 14:34:18+00', '301', '2716');
INSERT INTO "markets" VALUES ('5612', 't', '2017-12-08 14:34:18+00', '301', '2711');
INSERT INTO "markets" VALUES ('5613', 't', '2017-12-08 14:34:18+00', '301', '2671');
INSERT INTO "markets" VALUES ('5614', 't', '2017-12-08 14:34:18+00', '301', '2714');
INSERT INTO "markets" VALUES ('5615', 't', '2017-12-08 14:34:18+00', '302', '2620');
INSERT INTO "markets" VALUES ('5616', 't', '2017-12-08 14:34:18+00', '302', '2609');
INSERT INTO "markets" VALUES ('5617', 't', '2017-12-08 14:34:18+00', '302', '2792');
INSERT INTO "markets" VALUES ('5618', 't', '2017-12-08 14:34:18+00', '302', '2789');
INSERT INTO "markets" VALUES ('5619', 't', '2017-12-08 14:34:18+00', '302', '2787');
INSERT INTO "markets" VALUES ('5620', 't', '2017-12-08 14:34:18+00', '302', '2711');
INSERT INTO "markets" VALUES ('5621', 't', '2017-12-08 14:34:18+00', '302', '2716');
INSERT INTO "markets" VALUES ('5622', 't', '2017-12-08 14:34:18+00', '302', '2714');
INSERT INTO "markets" VALUES ('5623', 't', '2017-12-08 14:34:18+00', '302', '2687');
INSERT INTO "markets" VALUES ('5624', 't', '2017-12-08 14:34:18+00', '302', '2682');
INSERT INTO "markets" VALUES ('5625', 't', '2017-12-08 14:34:18+00', '302', '2671');
INSERT INTO "markets" VALUES ('5626', 't', '2017-12-08 14:34:18+00', '302', '2668');
INSERT INTO "markets" VALUES ('5627', 't', '2017-12-08 14:34:18+00', '303', '2609');
INSERT INTO "markets" VALUES ('5628', 't', '2017-12-08 14:34:18+00', '303', '2620');
INSERT INTO "markets" VALUES ('5629', 't', '2017-12-08 14:34:18+00', '303', '2610');
INSERT INTO "markets" VALUES ('5630', 't', '2017-12-08 14:34:18+00', '303', '2614');
INSERT INTO "markets" VALUES ('5631', 't', '2017-12-08 14:34:18+00', '303', '2605');
INSERT INTO "markets" VALUES ('5632', 't', '2017-12-08 14:34:18+00', '303', '2714');
INSERT INTO "markets" VALUES ('5633', 't', '2017-12-08 14:34:18+00', '303', '2711');
INSERT INTO "markets" VALUES ('5634', 't', '2017-12-08 14:34:18+00', '303', '2712');
INSERT INTO "markets" VALUES ('5635', 't', '2017-12-08 14:34:19+00', '303', '2716');
INSERT INTO "markets" VALUES ('5636', 't', '2017-12-08 14:34:19+00', '303', '2668');
INSERT INTO "markets" VALUES ('5637', 't', '2017-12-08 14:34:19+00', '303', '2682');
INSERT INTO "markets" VALUES ('5638', 't', '2017-12-08 14:34:19+00', '303', '2671');
INSERT INTO "markets" VALUES ('5639', 't', '2017-12-08 14:34:19+00', '303', '2669');
INSERT INTO "markets" VALUES ('5640', 't', '2017-12-08 14:34:19+00', '303', '2672');
INSERT INTO "markets" VALUES ('5641', 't', '2017-12-08 14:34:19+00', '303', '2676');
INSERT INTO "markets" VALUES ('5642', 't', '2017-12-08 14:34:19+00', '303', '2660');
INSERT INTO "markets" VALUES ('5643', 't', '2017-12-08 14:34:19+00', '303', '2662');
INSERT INTO "markets" VALUES ('5644', 't', '2017-12-08 14:34:19+00', '303', '2665');
INSERT INTO "markets" VALUES ('5645', 't', '2017-12-08 14:34:19+00', '303', '2663');
INSERT INTO "markets" VALUES ('5646', 't', '2017-12-08 14:34:19+00', '303', '2695');
INSERT INTO "markets" VALUES ('5647', 't', '2017-12-08 14:34:19+00', '303', '2696');
INSERT INTO "markets" VALUES ('5648', 't', '2017-12-08 14:34:19+00', '303', '2698');
INSERT INTO "markets" VALUES ('5649', 't', '2017-12-08 14:34:19+00', '303', '2697');
INSERT INTO "markets" VALUES ('5650', 't', '2017-12-08 14:34:19+00', '303', '2657');
INSERT INTO "markets" VALUES ('5651', 't', '2017-12-08 14:34:19+00', '303', '2656');
INSERT INTO "markets" VALUES ('5652', 'f', '2017-12-08 14:34:19+00', '303', '2658');
INSERT INTO "markets" VALUES ('5653', 'f', '2017-12-08 14:34:19+00', '303', '2659');
INSERT INTO "markets" VALUES ('5654', 't', '2017-12-08 14:34:19+00', '303', '2703');
INSERT INTO "markets" VALUES ('5655', 't', '2017-12-08 14:34:19+00', '303', '2704');
INSERT INTO "markets" VALUES ('5656', 't', '2017-12-08 14:34:19+00', '303', '2721');
INSERT INTO "markets" VALUES ('5657', 't', '2017-12-08 14:34:19+00', '303', '2722');
INSERT INTO "markets" VALUES ('5658', 't', '2017-12-08 14:34:19+00', '303', '2753');
INSERT INTO "markets" VALUES ('5659', 't', '2017-12-08 14:34:19+00', '303', '2754');
INSERT INTO "markets" VALUES ('5660', 't', '2017-12-08 14:34:19+00', '303', '2755');
INSERT INTO "markets" VALUES ('5661', 't', '2017-12-08 14:34:19+00', '303', '2756');
INSERT INTO "markets" VALUES ('5662', 't', '2017-12-08 14:34:19+00', '303', '2757');
INSERT INTO "markets" VALUES ('5663', 't', '2017-12-08 14:34:19+00', '303', '2752');
INSERT INTO "markets" VALUES ('5664', 't', '2017-12-08 14:34:19+00', '303', '2796');
INSERT INTO "markets" VALUES ('5665', 't', '2017-12-08 14:34:19+00', '303', '2798');
INSERT INTO "markets" VALUES ('5666', 't', '2017-12-08 14:34:19+00', '303', '2799');
INSERT INTO "markets" VALUES ('5667', 't', '2017-12-08 14:34:19+00', '303', '2800');
INSERT INTO "markets" VALUES ('5668', 't', '2017-12-08 14:34:19+00', '303', '2802');
INSERT INTO "markets" VALUES ('5669', 't', '2017-12-08 14:34:19+00', '303', '2795');
INSERT INTO "markets" VALUES ('5670', 't', '2017-12-08 14:34:19+00', '303', '2781');
INSERT INTO "markets" VALUES ('5671', 't', '2017-12-08 14:34:19+00', '303', '2782');
INSERT INTO "markets" VALUES ('5672', 't', '2017-12-08 14:34:19+00', '303', '2784');
INSERT INTO "markets" VALUES ('5673', 't', '2017-12-08 14:34:19+00', '303', '2650');
INSERT INTO "markets" VALUES ('5674', 't', '2017-12-08 14:34:19+00', '303', '2767');
INSERT INTO "markets" VALUES ('5675', 't', '2017-12-08 14:34:19+00', '303', '2768');
INSERT INTO "markets" VALUES ('5676', 't', '2017-12-08 14:34:19+00', '303', '2769');
INSERT INTO "markets" VALUES ('5677', 't', '2017-12-08 14:34:19+00', '303', '2787');
INSERT INTO "markets" VALUES ('5678', 't', '2017-12-08 14:34:19+00', '303', '2792');
INSERT INTO "markets" VALUES ('5679', 't', '2017-12-08 14:34:19+00', '303', '2789');
INSERT INTO "markets" VALUES ('5680', 't', '2017-12-08 14:34:19+00', '303', '2788');
INSERT INTO "markets" VALUES ('5681', 't', '2017-12-08 14:34:19+00', '303', '2790');
INSERT INTO "markets" VALUES ('5682', 't', '2017-12-08 14:34:19+00', '303', '2637');
INSERT INTO "markets" VALUES ('5683', 't', '2017-12-08 14:34:19+00', '303', '2638');
INSERT INTO "markets" VALUES ('5684', 't', '2017-12-08 14:34:19+00', '303', '2640');
INSERT INTO "markets" VALUES ('5685', 't', '2017-12-08 14:34:19+00', '303', '2773');
INSERT INTO "markets" VALUES ('5686', 't', '2017-12-08 14:34:19+00', '303', '2582');
INSERT INTO "markets" VALUES ('5687', 't', '2017-12-08 14:34:19+00', '303', '2588');
INSERT INTO "markets" VALUES ('5688', 't', '2017-12-08 14:34:19+00', '303', '2584');
INSERT INTO "markets" VALUES ('5689', 't', '2017-12-08 14:34:19+00', '304', '2620');
INSERT INTO "markets" VALUES ('5690', 't', '2017-12-08 14:34:19+00', '304', '2609');
INSERT INTO "markets" VALUES ('5691', 't', '2017-12-08 14:34:19+00', '304', '2618');
INSERT INTO "markets" VALUES ('5692', 't', '2017-12-08 14:34:19+00', '304', '2716');
INSERT INTO "markets" VALUES ('5693', 't', '2017-12-08 14:34:19+00', '304', '2711');
INSERT INTO "markets" VALUES ('5694', 't', '2017-12-08 14:34:19+00', '304', '2731');
INSERT INTO "markets" VALUES ('5695', 't', '2017-12-08 14:34:19+00', '304', '2746');
INSERT INTO "markets" VALUES ('5696', 't', '2017-12-08 14:34:19+00', '304', '2668');
INSERT INTO "markets" VALUES ('5697', 't', '2017-12-08 14:34:19+00', '304', '2682');
INSERT INTO "markets" VALUES ('5698', 't', '2017-12-08 14:34:19+00', '304', '2671');
INSERT INTO "markets" VALUES ('5699', 't', '2017-12-08 14:34:19+00', '304', '2678');
INSERT INTO "markets" VALUES ('5700', 't', '2017-12-08 14:34:19+00', '304', '2680');
INSERT INTO "markets" VALUES ('5701', 't', '2017-12-08 14:34:19+00', '304', '2588');
INSERT INTO "markets" VALUES ('5702', 't', '2017-12-08 14:34:19+00', '304', '2582');
INSERT INTO "markets" VALUES ('5703', 't', '2017-12-08 14:34:19+00', '304', '2795');
INSERT INTO "markets" VALUES ('5704', 't', '2017-12-08 14:34:19+00', '304', '2802');
INSERT INTO "markets" VALUES ('5705', 'f', '2017-12-08 14:34:19+00', '304', '2637');
INSERT INTO "markets" VALUES ('5706', 'f', '2017-12-08 14:34:19+00', '304', '2640');
INSERT INTO "markets" VALUES ('5707', 'f', '2017-12-08 14:34:19+00', '305', '2620');
INSERT INTO "markets" VALUES ('5708', 'f', '2017-12-08 14:34:19+00', '305', '2609');
INSERT INTO "markets" VALUES ('5709', 'f', '2017-12-08 14:34:19+00', '305', '2716');
INSERT INTO "markets" VALUES ('5710', 'f', '2017-12-08 14:34:19+00', '305', '2711');
INSERT INTO "markets" VALUES ('5711', 'f', '2017-12-08 14:34:19+00', '305', '2640');
INSERT INTO "markets" VALUES ('5712', 'f', '2017-12-08 14:34:19+00', '305', '2637');
INSERT INTO "markets" VALUES ('5713', 'f', '2017-12-08 14:34:19+00', '305', '2682');
INSERT INTO "markets" VALUES ('5714', 'f', '2017-12-08 14:34:19+00', '305', '2668');
INSERT INTO "markets" VALUES ('5715', 't', '2017-12-08 14:34:19+00', '306', '2620');
INSERT INTO "markets" VALUES ('5716', 't', '2017-12-08 14:34:19+00', '306', '2609');
INSERT INTO "markets" VALUES ('5717', 't', '2017-12-08 14:34:19+00', '306', '2716');
INSERT INTO "markets" VALUES ('5718', 't', '2017-12-08 14:34:19+00', '306', '2711');
INSERT INTO "markets" VALUES ('5719', 't', '2017-12-08 14:34:19+00', '306', '2588');
INSERT INTO "markets" VALUES ('5720', 't', '2017-12-08 14:34:19+00', '306', '2668');
INSERT INTO "markets" VALUES ('5721', 't', '2017-12-08 14:34:19+00', '306', '2682');
INSERT INTO "markets" VALUES ('5722', 't', '2017-12-08 14:34:19+00', '307', '2620');
INSERT INTO "markets" VALUES ('5723', 't', '2017-12-08 14:34:19+00', '307', '2668');
INSERT INTO "markets" VALUES ('5724', 't', '2017-12-08 14:34:19+00', '307', '2682');
INSERT INTO "markets" VALUES ('5725', 't', '2017-12-08 14:34:20+00', '308', '2614');
INSERT INTO "markets" VALUES ('5726', 't', '2017-12-08 14:34:20+00', '308', '2620');
INSERT INTO "markets" VALUES ('5727', 't', '2017-12-08 14:34:20+00', '308', '2609');
INSERT INTO "markets" VALUES ('5728', 't', '2017-12-08 14:34:20+00', '308', '2619');
INSERT INTO "markets" VALUES ('5729', 't', '2017-12-08 14:34:20+00', '308', '2611');
INSERT INTO "markets" VALUES ('5730', 't', '2017-12-08 14:34:20+00', '308', '2612');
INSERT INTO "markets" VALUES ('5731', 't', '2017-12-08 14:34:20+00', '308', '2604');
INSERT INTO "markets" VALUES ('5732', 't', '2017-12-08 14:34:20+00', '308', '2617');
INSERT INTO "markets" VALUES ('5733', 't', '2017-12-08 14:34:20+00', '308', '2606');
INSERT INTO "markets" VALUES ('5734', 't', '2017-12-08 14:34:20+00', '308', '2613');
INSERT INTO "markets" VALUES ('5735', 't', '2017-12-08 14:34:20+00', '308', '2682');
INSERT INTO "markets" VALUES ('5736', 't', '2017-12-08 14:34:20+00', '308', '2671');
INSERT INTO "markets" VALUES ('5737', 't', '2017-12-08 14:34:20+00', '308', '2676');
INSERT INTO "markets" VALUES ('5738', 't', '2017-12-08 14:34:20+00', '308', '2681');
INSERT INTO "markets" VALUES ('5739', 't', '2017-12-08 14:34:20+00', '308', '2673');
INSERT INTO "markets" VALUES ('5740', 't', '2017-12-08 14:34:20+00', '308', '2674');
INSERT INTO "markets" VALUES ('5741', 't', '2017-12-08 14:34:20+00', '308', '2667');
INSERT INTO "markets" VALUES ('5742', 't', '2017-12-08 14:34:20+00', '308', '2679');
INSERT INTO "markets" VALUES ('5743', 't', '2017-12-08 14:34:20+00', '308', '2670');
INSERT INTO "markets" VALUES ('5744', 't', '2017-12-08 14:34:20+00', '308', '2675');
INSERT INTO "markets" VALUES ('5745', 't', '2017-12-08 14:34:20+00', '308', '2668');
INSERT INTO "markets" VALUES ('5746', 't', '2017-12-08 14:34:20+00', '308', '2588');
INSERT INTO "markets" VALUES ('5747', 't', '2017-12-08 14:34:20+00', '308', '2585');
INSERT INTO "markets" VALUES ('5748', 't', '2017-12-08 14:34:20+00', '308', '2587');
INSERT INTO "markets" VALUES ('5749', 't', '2017-12-08 14:34:20+00', '309', '2795');
INSERT INTO "markets" VALUES ('5750', 't', '2017-12-08 14:34:20+00', '309', '2752');
INSERT INTO "markets" VALUES ('5751', 't', '2017-12-08 14:34:20+00', '309', '2781');
INSERT INTO "markets" VALUES ('5752', 't', '2017-12-08 14:34:20+00', '309', '2668');
INSERT INTO "markets" VALUES ('5753', 't', '2017-12-08 14:34:20+00', '309', '2660');
INSERT INTO "markets" VALUES ('5754', 't', '2017-12-08 14:34:20+00', '309', '2787');
INSERT INTO "markets" VALUES ('5755', 't', '2017-12-08 14:34:20+00', '309', '2711');
INSERT INTO "markets" VALUES ('5756', 't', '2017-12-08 14:34:20+00', '310', '2614');
INSERT INTO "markets" VALUES ('5757', 't', '2017-12-08 14:34:20+00', '310', '2668');
INSERT INTO "markets" VALUES ('5758', 't', '2017-12-08 14:34:20+00', '310', '2582');
INSERT INTO "markets" VALUES ('5759', 't', '2017-12-08 14:34:20+00', '311', '2606');
INSERT INTO "markets" VALUES ('5760', 't', '2017-12-08 14:34:20+00', '311', '2713');
INSERT INTO "markets" VALUES ('5761', 't', '2017-12-08 14:34:20+00', '311', '2620');
INSERT INTO "markets" VALUES ('5762', 't', '2017-12-08 14:34:20+00', '311', '2716');
INSERT INTO "markets" VALUES ('5763', 'f', '2017-12-08 14:34:20+00', '311', '2670');
INSERT INTO "markets" VALUES ('5764', 'f', '2017-12-08 14:34:20+00', '314', '2606');
INSERT INTO "markets" VALUES ('5765', 'f', '2017-12-08 14:34:20+00', '314', '2713');
INSERT INTO "markets" VALUES ('5766', 'f', '2017-12-08 14:34:20+00', '314', '2711');
INSERT INTO "markets" VALUES ('5767', 'f', '2017-12-08 14:34:20+00', '316', '2616');
INSERT INTO "markets" VALUES ('5768', 'f', '2017-12-08 14:34:20+00', '316', '2620');
INSERT INTO "markets" VALUES ('5769', 'f', '2017-12-08 14:34:20+00', '317', '2606');
INSERT INTO "markets" VALUES ('5770', 'f', '2017-12-08 14:34:20+00', '317', '2713');
INSERT INTO "markets" VALUES ('5771', 'f', '2017-12-08 14:34:20+00', '317', '2670');
INSERT INTO "markets" VALUES ('5772', 'f', '2017-12-08 14:34:20+00', '317', '2661');
INSERT INTO "markets" VALUES ('5773', 'f', '2017-12-08 14:34:20+00', '318', '2605');
INSERT INTO "markets" VALUES ('5774', 'f', '2017-12-08 14:34:20+00', '318', '2712');
INSERT INTO "markets" VALUES ('5775', 't', '2017-12-08 14:34:20+00', '319', '2622');
INSERT INTO "markets" VALUES ('5776', 't', '2017-12-08 14:34:20+00', '320', '2668');
INSERT INTO "markets" VALUES ('5777', 't', '2017-12-08 14:34:20+00', '320', '2683');
INSERT INTO "markets" VALUES ('5778', 't', '2017-12-08 14:34:20+00', '320', '2660');
INSERT INTO "markets" VALUES ('5779', 't', '2017-12-08 14:34:20+00', '320', '2662');
INSERT INTO "markets" VALUES ('5780', 't', '2017-12-08 14:34:20+00', '320', '2666');
INSERT INTO "markets" VALUES ('5781', 't', '2017-12-08 14:34:20+00', '320', '2637');
INSERT INTO "markets" VALUES ('5782', 't', '2017-12-08 14:34:20+00', '320', '2631');
INSERT INTO "markets" VALUES ('5783', 't', '2017-12-08 14:34:20+00', '320', '2632');
INSERT INTO "markets" VALUES ('5784', 't', '2017-12-08 14:34:20+00', '320', '2709');
INSERT INTO "markets" VALUES ('5785', 't', '2017-12-08 14:34:20+00', '320', '2710');
INSERT INTO "markets" VALUES ('5786', 't', '2017-12-08 14:34:20+00', '320', '2752');
INSERT INTO "markets" VALUES ('5787', 't', '2017-12-08 14:34:20+00', '320', '2754');
INSERT INTO "markets" VALUES ('5788', 't', '2017-12-08 14:34:20+00', '320', '2758');
INSERT INTO "markets" VALUES ('5789', 't', '2017-12-08 14:34:20+00', '320', '2695');
INSERT INTO "markets" VALUES ('5790', 't', '2017-12-08 14:34:20+00', '320', '2696');
INSERT INTO "markets" VALUES ('5791', 't', '2017-12-08 14:34:20+00', '320', '2719');
INSERT INTO "markets" VALUES ('5792', 't', '2017-12-08 14:34:20+00', '320', '2724');
INSERT INTO "markets" VALUES ('5793', 't', '2017-12-08 14:34:20+00', '320', '2765');
INSERT INTO "markets" VALUES ('5794', 't', '2017-12-08 14:34:20+00', '320', '2627');
INSERT INTO "markets" VALUES ('5795', 't', '2017-12-08 14:34:20+00', '320', '2689');
INSERT INTO "markets" VALUES ('5796', 't', '2017-12-08 14:34:20+00', '320', '2621');
INSERT INTO "markets" VALUES ('5797', 't', '2017-12-08 14:34:20+00', '320', '2795');
INSERT INTO "markets" VALUES ('5798', 't', '2017-12-08 14:34:20+00', '320', '2797');
INSERT INTO "markets" VALUES ('5799', 't', '2017-12-08 14:34:20+00', '320', '2804');
INSERT INTO "markets" VALUES ('5800', 't', '2017-12-08 14:34:20+00', '320', '2803');
INSERT INTO "markets" VALUES ('5801', 't', '2017-12-08 14:34:20+00', '320', '2711');
INSERT INTO "markets" VALUES ('5802', 't', '2017-12-08 14:34:20+00', '320', '2717');
INSERT INTO "markets" VALUES ('5803', 't', '2017-12-08 14:34:20+00', '320', '2734');
INSERT INTO "markets" VALUES ('5804', 't', '2017-12-08 14:34:20+00', '320', '2737');
INSERT INTO "markets" VALUES ('5805', 't', '2017-12-08 14:34:20+00', '320', '2736');
INSERT INTO "markets" VALUES ('5806', 't', '2017-12-08 14:34:20+00', '320', '2785');
INSERT INTO "markets" VALUES ('5807', 't', '2017-12-08 14:34:20+00', '320', '2781');
INSERT INTO "markets" VALUES ('5808', 't', '2017-12-08 14:34:20+00', '320', '2793');
INSERT INTO "markets" VALUES ('5809', 't', '2017-12-08 14:34:20+00', '320', '2787');
INSERT INTO "markets" VALUES ('5810', 't', '2017-12-08 14:34:20+00', '320', '2770');
INSERT INTO "markets" VALUES ('5811', 't', '2017-12-08 14:34:20+00', '320', '2767');
INSERT INTO "markets" VALUES ('5812', 't', '2017-12-08 14:34:20+00', '320', '2718');
INSERT INTO "markets" VALUES ('5813', 't', '2017-12-08 14:34:20+00', '320', '2582');
INSERT INTO "markets" VALUES ('5814', 't', '2017-12-08 14:34:20+00', '320', '2699');
INSERT INTO "markets" VALUES ('5815', 't', '2017-12-08 14:34:21+00', '320', '2649');
INSERT INTO "markets" VALUES ('5816', 't', '2017-12-08 14:34:21+00', '320', '2589');
INSERT INTO "markets" VALUES ('5817', 't', '2017-12-08 14:34:21+00', '320', '2777');
INSERT INTO "markets" VALUES ('5818', 't', '2017-12-08 14:34:21+00', '320', '2701');
INSERT INTO "markets" VALUES ('5819', 't', '2017-12-08 14:34:21+00', '320', '2574');
INSERT INTO "markets" VALUES ('5820', 't', '2017-12-08 14:34:21+00', '320', '2723');
INSERT INTO "markets" VALUES ('5821', 't', '2017-12-08 14:34:21+00', '320', '2766');
INSERT INTO "markets" VALUES ('5822', 't', '2017-12-08 14:34:21+00', '320', '2608');
INSERT INTO "markets" VALUES ('5823', 't', '2017-12-08 14:34:21+00', '320', '2607');
INSERT INTO "markets" VALUES ('5824', 't', '2017-12-08 14:34:21+00', '320', '2583');
INSERT INTO "markets" VALUES ('5825', 't', '2017-12-08 14:34:21+00', '320', '2720');
INSERT INTO "markets" VALUES ('5826', 't', '2017-12-08 14:34:21+00', '320', '2629');
INSERT INTO "markets" VALUES ('5827', 't', '2017-12-08 14:34:21+00', '320', '2590');
INSERT INTO "markets" VALUES ('5828', 't', '2017-12-08 14:34:21+00', '320', '2743');
INSERT INTO "markets" VALUES ('5829', 't', '2017-12-08 14:34:21+00', '320', '2727');
INSERT INTO "markets" VALUES ('5830', 't', '2017-12-08 14:34:21+00', '320', '2780');
INSERT INTO "markets" VALUES ('5831', 't', '2017-12-08 14:34:21+00', '320', '2591');
INSERT INTO "markets" VALUES ('5832', 't', '2017-12-08 14:34:21+00', '320', '2599');
INSERT INTO "markets" VALUES ('5833', 't', '2017-12-08 14:34:21+00', '320', '2751');
INSERT INTO "markets" VALUES ('5834', 't', '2017-12-08 14:34:21+00', '320', '2598');
INSERT INTO "markets" VALUES ('5835', 't', '2017-12-08 14:34:21+00', '320', '2702');
INSERT INTO "markets" VALUES ('5836', 't', '2017-12-08 14:34:21+00', '320', '2807');
INSERT INTO "markets" VALUES ('5837', 't', '2017-12-08 14:34:21+00', '320', '2764');
INSERT INTO "markets" VALUES ('5838', 't', '2017-12-08 14:34:21+00', '320', '2774');
INSERT INTO "markets" VALUES ('5839', 't', '2017-12-08 14:34:21+00', '320', '2641');
INSERT INTO "markets" VALUES ('5840', 't', '2017-12-08 14:34:21+00', '320', '2573');
INSERT INTO "markets" VALUES ('5841', 't', '2017-12-08 14:34:21+00', '320', '2733');
INSERT INTO "markets" VALUES ('5842', 't', '2017-12-08 14:34:21+00', '320', '2595');
INSERT INTO "markets" VALUES ('5843', 't', '2017-12-08 14:34:21+00', '320', '2763');
INSERT INTO "markets" VALUES ('5844', 't', '2017-12-08 14:34:21+00', '320', '2794');
INSERT INTO "markets" VALUES ('5845', 't', '2017-12-08 14:34:21+00', '320', '2778');
INSERT INTO "markets" VALUES ('5846', 't', '2017-12-08 14:34:21+00', '320', '2745');
INSERT INTO "markets" VALUES ('5847', 't', '2017-12-08 14:34:21+00', '320', '2693');
INSERT INTO "markets" VALUES ('5848', 't', '2017-12-08 14:34:21+00', '320', '2628');
INSERT INTO "markets" VALUES ('5849', 't', '2017-12-08 14:34:21+00', '320', '2691');
INSERT INTO "markets" VALUES ('5850', 't', '2017-12-08 14:34:21+00', '320', '2648');
INSERT INTO "markets" VALUES ('5851', 't', '2017-12-08 14:34:21+00', '320', '2694');
INSERT INTO "markets" VALUES ('5852', 't', '2017-12-08 14:34:21+00', '320', '2655');
INSERT INTO "markets" VALUES ('5853', 't', '2017-12-08 14:34:21+00', '320', '2594');
INSERT INTO "markets" VALUES ('5854', 't', '2017-12-08 14:34:21+00', '320', '2742');
INSERT INTO "markets" VALUES ('5855', 't', '2017-12-08 14:34:21+00', '320', '2700');
INSERT INTO "markets" VALUES ('5856', 't', '2017-12-08 14:34:21+00', '320', '2690');
INSERT INTO "markets" VALUES ('5857', 't', '2017-12-08 14:34:21+00', '320', '2688');
INSERT INTO "markets" VALUES ('5858', 't', '2017-12-08 14:34:21+00', '320', '2708');
INSERT INTO "markets" VALUES ('5859', 't', '2017-12-08 14:34:21+00', '320', '2775');
INSERT INTO "markets" VALUES ('5860', 't', '2017-12-08 14:34:21+00', '320', '2730');
INSERT INTO "markets" VALUES ('5861', 't', '2017-12-08 14:34:21+00', '320', '2744');
INSERT INTO "markets" VALUES ('5862', 't', '2017-12-08 14:34:21+00', '320', '2806');
INSERT INTO "markets" VALUES ('5863', 't', '2017-12-08 14:34:21+00', '320', '2692');
INSERT INTO "markets" VALUES ('5864', 't', '2017-12-08 14:34:21+00', '320', '2741');
INSERT INTO "markets" VALUES ('5865', 't', '2017-12-08 14:34:21+00', '320', '2739');
INSERT INTO "markets" VALUES ('5866', 't', '2017-12-08 14:34:21+00', '320', '2732');
INSERT INTO "markets" VALUES ('5867', 't', '2017-12-08 14:34:21+00', '320', '2759');
INSERT INTO "markets" VALUES ('5868', 't', '2017-12-08 14:34:21+00', '320', '2786');
INSERT INTO "markets" VALUES ('5869', 't', '2017-12-08 14:34:21+00', '320', '2630');
INSERT INTO "markets" VALUES ('5870', 't', '2017-12-08 14:34:21+00', '320', '2771');
INSERT INTO "markets" VALUES ('5871', 't', '2017-12-08 14:34:21+00', '320', '2779');
INSERT INTO "markets" VALUES ('5872', 't', '2017-12-08 14:34:21+00', '320', '2738');
INSERT INTO "markets" VALUES ('5873', 't', '2017-12-08 14:34:21+00', '320', '2626');
INSERT INTO "markets" VALUES ('5874', 't', '2017-12-08 14:34:21+00', '320', '2650');
INSERT INTO "markets" VALUES ('5875', 'f', '2017-12-08 14:34:21+00', '321', '2620');
INSERT INTO "markets" VALUES ('5876', 't', '2017-12-08 14:34:21+00', '322', '2609');
INSERT INTO "markets" VALUES ('5877', 't', '2017-12-08 14:34:21+00', '322', '2620');
INSERT INTO "markets" VALUES ('5878', 't', '2017-12-08 14:34:21+00', '322', '2604');
INSERT INTO "markets" VALUES ('5879', 't', '2017-12-08 14:34:21+00', '322', '2668');
INSERT INTO "markets" VALUES ('5880', 't', '2017-12-08 14:34:21+00', '322', '2660');
INSERT INTO "markets" VALUES ('5881', 't', '2017-12-08 14:34:21+00', '322', '2711');
INSERT INTO "markets" VALUES ('5882', 't', '2017-12-08 14:34:21+00', '323', '2615');
INSERT INTO "markets" VALUES ('5883', 't', '2017-12-08 14:34:21+00', '323', '2639');
INSERT INTO "markets" VALUES ('5884', 't', '2017-12-08 14:34:21+00', '323', '2677');
INSERT INTO "markets" VALUES ('5885', 't', '2017-12-08 14:34:21+00', '323', '2664');
INSERT INTO "markets" VALUES ('5886', 't', '2017-12-08 14:34:21+00', '323', '2715');
INSERT INTO "markets" VALUES ('5887', 't', '2017-12-08 14:34:21+00', '323', '2791');
INSERT INTO "markets" VALUES ('5888', 't', '2017-12-08 14:34:21+00', '323', '2586');
INSERT INTO "markets" VALUES ('5889', 't', '2017-12-08 14:34:21+00', '323', '2783');
INSERT INTO "markets" VALUES ('5890', 't', '2017-12-08 14:34:21+00', '323', '2801');
INSERT INTO "markets" VALUES ('5891', 't', '2017-12-08 14:34:21+00', '324', '2668');
INSERT INTO "markets" VALUES ('5892', 't', '2017-12-08 14:34:21+00', '324', '2725');
INSERT INTO "markets" VALUES ('5893', 't', '2017-12-08 14:34:21+00', '324', '2739');
INSERT INTO "markets" VALUES ('5894', 't', '2017-12-08 14:34:21+00', '324', '2738');
INSERT INTO "markets" VALUES ('5895', 't', '2017-12-08 14:34:21+00', '324', '2726');
INSERT INTO "markets" VALUES ('5896', 't', '2017-12-08 14:34:21+00', '324', '2598');
INSERT INTO "markets" VALUES ('5897', 't', '2017-12-08 14:34:22+00', '324', '2651');
INSERT INTO "markets" VALUES ('5898', 't', '2017-12-08 14:34:22+00', '324', '2621');
INSERT INTO "markets" VALUES ('5899', 't', '2017-12-08 14:34:22+00', '324', '2683');
INSERT INTO "markets" VALUES ('5900', 't', '2017-12-08 14:34:22+00', '324', '2729');
INSERT INTO "markets" VALUES ('5901', 't', '2017-12-08 14:34:22+00', '324', '2648');
INSERT INTO "markets" VALUES ('5902', 't', '2017-12-08 14:34:22+00', '324', '2578');
INSERT INTO "markets" VALUES ('5903', 'f', '2017-12-08 14:34:22+00', '324', '2582');
INSERT INTO "markets" VALUES ('5904', 't', '2017-12-08 14:34:22+00', '324', '2579');
INSERT INTO "markets" VALUES ('5905', 't', '2017-12-08 14:34:22+00', '324', '2581');
INSERT INTO "markets" VALUES ('5906', 't', '2017-12-08 14:34:22+00', '324', '2666');
INSERT INTO "markets" VALUES ('5907', 't', '2017-12-08 14:34:22+00', '324', '2662');
INSERT INTO "markets" VALUES ('5908', 't', '2017-12-08 14:34:22+00', '324', '2660');
INSERT INTO "markets" VALUES ('5909', 't', '2017-12-08 14:34:22+00', '324', '2777');
INSERT INTO "markets" VALUES ('5910', 't', '2017-12-08 14:34:22+00', '324', '2803');
INSERT INTO "markets" VALUES ('5911', 't', '2017-12-08 14:34:22+00', '324', '2793');
INSERT INTO "markets" VALUES ('5912', 'f', '2017-12-08 14:34:22+00', '324', '2767');
INSERT INTO "markets" VALUES ('5913', 't', '2017-12-08 14:34:22+00', '324', '2805');
INSERT INTO "markets" VALUES ('5914', 't', '2017-12-08 14:34:22+00', '324', '2775');
INSERT INTO "markets" VALUES ('5915', 't', '2017-12-08 14:34:22+00', '324', '2776');
INSERT INTO "markets" VALUES ('5916', 't', '2017-12-08 14:34:22+00', '323', '2747');
INSERT INTO "markets" VALUES ('5917', 't', '2017-12-08 14:34:22+00', '323', '2749');
INSERT INTO "markets" VALUES ('5918', 't', '2017-12-08 14:34:22+00', '323', '2748');
INSERT INTO "markets" VALUES ('5919', 't', '2017-12-08 14:34:22+00', '324', '2747');
INSERT INTO "markets" VALUES ('5920', 't', '2017-12-08 14:34:22+00', '300', '2609');
INSERT INTO "markets" VALUES ('5921', 't', '2017-12-08 14:34:22+00', '323', '2624');
INSERT INTO "markets" VALUES ('5922', 't', '2017-12-08 14:34:22+00', '310', '2620');
INSERT INTO "markets" VALUES ('5923', 't', '2017-12-08 14:34:22+00', '302', '2582');
INSERT INTO "markets" VALUES ('5924', 't', '2017-12-08 14:34:22+00', '302', '2588');
INSERT INTO "markets" VALUES ('5925', 't', '2017-12-08 14:34:22+00', '302', '2584');
COMMIT;

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
-- Records of pairs
-- ----------------------------
BEGIN;
INSERT INTO "pairs" VALUES ('2573', 'ampbtc', 'Synereo', 'amp', 'Bitcoin', 'btc', '2017-12-08 14:34:14+00');
INSERT INTO "pairs" VALUES ('2574', 'ardrbtc', 'Ardor', 'ardr', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2575', 'avtbtc', 'Aventus', 'avt', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2576', 'avteth', 'Aventus', 'avt', 'Ethereum', 'eth', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2577', 'avtusd', 'Aventus', 'avt', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2578', 'batbtc', 'basic attention token', 'bat', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2579', 'bccbtc', 'Bitcoin Core Token', 'bcc', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2580', 'bccusd', 'Bitcoin Core Token', 'bcc', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2581', 'bccusdt', 'Bitcoin Core Token', 'bcc', 'Tether', 'usdt', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2582', 'bchbtc', 'Bitcoin Cash', 'bch', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2583', 'bcheth', 'Bitcoin Cash', 'bch', 'Ethereum', 'eth', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2584', 'bcheur', 'Bitcoin Cash', 'bch', 'euro', 'eur', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2585', 'bchjpy', 'Bitcoin Cash', 'bch', 'Japanese Yen', 'jpy', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2586', 'bchkrw', 'Bitcoin Cash', 'bch', 'South Korean Won', 'krw', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2587', 'bchsgd', 'Bitcoin Cash', 'bch', 'Singapore Dollar', 'sgd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2588', 'bchusd', 'Bitcoin Cash', 'bch', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2589', 'bchusdt', 'Bitcoin Cash', 'bch', 'Tether', 'usdt', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2590', 'bcnbtc', 'Bytecoin', 'bcn', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2591', 'bcnxmr', 'Bytecoin', 'bcn', 'Monero', 'xmr', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2592', 'bcubtc', 'Bitcoin Unlimited Token', 'bcu', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2593', 'bcuusd', 'Bitcoin Unlimited Token', 'bcu', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2594', 'bcybtc', 'Bitcrystals', 'bcy', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2595', 'belabtc', 'Bela', 'bela', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2596', 'bfxbtc', 'BFX', 'bfx', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2597', 'bfxusd', 'BFX', 'bfx', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2598', 'blkbtc', 'BlackCoin', 'blk', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2599', 'blkxmr', 'BlackCoin', 'blk', 'Monero', 'xmr', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2600', 'bt1btc', 'BT1', 'bt1', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2601', 'bt1usd', 'BT1', 'bt1', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2602', 'bt2btc', 'BT2', 'bt2', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2603', 'bt2usd', 'BT2', 'bt2', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2604', 'btcaud', 'Bitcoin', 'btc', 'Australian Dollar', 'aud', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2605', 'btccad', 'Bitcoin', 'btc', 'Canadian dollar', 'cad', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2606', 'btccny', 'Bitcoin', 'btc', 'Chinese yuan', 'cny', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2607', 'btcdbtc', 'BitcoinDark', 'btcd', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2608', 'btcdxmr', 'BitcoinDark', 'btcd', 'Monero', 'xmr', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2609', 'btceur', 'Bitcoin', 'btc', 'euro', 'eur', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2610', 'btcgbp', 'Bitcoin', 'btc', 'British Pound', 'gbp', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2611', 'btchkd', 'Bitcoin', 'btc', 'Hong Kong Dollar', 'hkd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2612', 'btcidr', 'Bitcoin', 'btc', 'Indonesian Rupiah', 'idr', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2613', 'btcinr', 'Bitcoin', 'btc', 'Indian Rupee', 'inr', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2614', 'btcjpy', 'Bitcoin', 'btc', 'Japanese Yen', 'jpy', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2615', 'btckrw', 'Bitcoin', 'btc', 'South Korean Won', 'krw', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2616', 'btcmxn', 'Bitcoin', 'btc', 'Mexican Peso', 'mxn', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2617', 'btcphp', 'Bitcoin', 'btc', 'Philippine Peso', 'php', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2618', 'btcrur', 'Bitcoin', 'btc', 'Russian Ruble', 'rur', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2619', 'btcsgd', 'Bitcoin', 'btc', 'Singapore Dollar', 'sgd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2620', 'btcusd', 'Bitcoin', 'btc', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2621', 'btcusdt', 'Bitcoin', 'btc', 'Tether', 'usdt', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2622', 'btczar', 'Bitcoin', 'btc', 'South African rand', 'zar', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2623', 'btgbtc', 'Bitgem', 'btg', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2624', 'btgkrw', 'Bitgem', 'btg', 'South Korean Won', 'krw', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2625', 'btgusd', 'Bitgem', 'btg', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2626', 'btmbtc', 'Bitmark', 'btm', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2627', 'btsbtc', 'BitShares', 'bts', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2628', 'clambtc', 'Clams', 'clam', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2629', 'cvcbtc', 'Civic', 'cvc', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2630', 'cvceth', 'Civic', 'cvc', 'Ethereum', 'eth', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2631', 'daobtc', 'Decentralized Autonomous Organization', 'dao', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2632', 'daoeth', 'Decentralized Autonomous Organization', 'dao', 'Ethereum', 'eth', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2633', 'daoeur', 'Decentralized Autonomous Organization', 'dao', 'euro', 'eur', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2634', 'daogbp', 'Decentralized Autonomous Organization', 'dao', 'British Pound', 'gbp', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2635', 'daojpy', 'Decentralized Autonomous Organization', 'dao', 'Japanese Yen', 'jpy', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2636', 'daousd', 'Decentralized Autonomous Organization', 'dao', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2637', 'dashbtc', 'Dash', 'dash', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2638', 'dasheur', 'Dash', 'dash', 'euro', 'eur', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2639', 'dashkrw', 'Dash', 'dash', 'South Korean Won', 'krw', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2640', 'dashusd', 'Dash', 'dash', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2641', 'dashxmr', 'Dash', 'dash', 'Monero', 'xmr', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2642', 'databtc', 'Data', 'data', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2643', 'dataeth', 'Data', 'data', 'Ethereum', 'eth', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2644', 'datausd', 'Data', 'data', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2645', 'datbtc', 'Data', 'dat', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2646', 'dateth', 'Data', 'dat', 'Ethereum', 'eth', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2647', 'datusd', 'Data', 'dat', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2648', 'dcrbtc', 'decred', 'dcr', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2649', 'dgbbtc', 'DigiByte', 'dgb', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2650', 'dogebtc', 'Dogecoin', 'doge', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2651', 'edgbtc', 'Edgeless', 'edg', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2652', 'edobtc', 'Eidoo', 'edo', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2653', 'edoeth', 'Eidoo', 'edo', 'Ethereum', 'eth', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2654', 'edousd', 'Eidoo', 'edo', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2655', 'emc2btc', 'Einsteinium', 'emc2', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2656', 'eosbtc', 'EOS', 'eos', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2657', 'eoseth', 'EOS', 'eos', 'Ethereum', 'eth', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2658', 'eoseur', 'EOS', 'eos', 'euro', 'eur', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2659', 'eosusd', 'EOS', 'eos', 'United States dollar', 'usd', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2660', 'etcbtc', 'Ethereum Classic', 'etc', 'Bitcoin', 'btc', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2661', 'etccny', 'Ethereum Classic', 'etc', 'Chinese yuan', 'cny', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2662', 'etceth', 'Ethereum Classic', 'etc', 'Ethereum', 'eth', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2663', 'etceur', 'Ethereum Classic', 'etc', 'euro', 'eur', '2017-12-08 14:34:15+00');
INSERT INTO "pairs" VALUES ('2664', 'etckrw', 'Ethereum Classic', 'etc', 'South Korean Won', 'krw', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2665', 'etcusd', 'Ethereum Classic', 'etc', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2666', 'etcusdt', 'Ethereum Classic', 'etc', 'Tether', 'usdt', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2667', 'ethaud', 'Ethereum', 'eth', 'Australian Dollar', 'aud', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2668', 'ethbtc', 'Ethereum', 'eth', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2669', 'ethcad', 'Ethereum', 'eth', 'Canadian dollar', 'cad', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2670', 'ethcny', 'Ethereum', 'eth', 'Chinese yuan', 'cny', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2671', 'etheur', 'Ethereum', 'eth', 'euro', 'eur', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2672', 'ethgbp', 'Ethereum', 'eth', 'British Pound', 'gbp', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2673', 'ethhkd', 'Ethereum', 'eth', 'Hong Kong Dollar', 'hkd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2674', 'ethidr', 'Ethereum', 'eth', 'Indonesian Rupiah', 'idr', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2675', 'ethinr', 'Ethereum', 'eth', 'Indian Rupee', 'inr', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2676', 'ethjpy', 'Ethereum', 'eth', 'Japanese Yen', 'jpy', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2677', 'ethkrw', 'Ethereum', 'eth', 'South Korean Won', 'krw', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2678', 'ethltc', 'Ethereum', 'eth', 'Litecoin', 'ltc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2679', 'ethphp', 'Ethereum', 'eth', 'Philippine Peso', 'php', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2680', 'ethrur', 'Ethereum', 'eth', 'Russian Ruble', 'rur', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2681', 'ethsgd', 'Ethereum', 'eth', 'Singapore Dollar', 'sgd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2682', 'ethusd', 'Ethereum', 'eth', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2683', 'ethusdt', 'Ethereum', 'eth', 'Tether', 'usdt', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2684', 'etpbtc', 'Metaverse ETP', 'etp', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2685', 'etpeth', 'Metaverse ETP', 'etp', 'Ethereum', 'eth', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2686', 'etpusd', 'Metaverse ETP', 'etp', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2687', 'eurusd', 'euro', 'eur', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2688', 'expbtc', 'Expanse', 'exp', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2689', 'fctbtc', 'Factom', 'fct', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2690', 'fldcbtc', 'FoldingCoin', 'fldc', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2691', 'flobtc', 'FlorinCoin', 'flo', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2692', 'gamebtc', 'GameCredits', 'game', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2693', 'gasbtc', 'Gas', 'gas', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2694', 'gaseth', 'Gas', 'gas', 'Ethereum', 'eth', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2695', 'gnobtc', 'Gnosis', 'gno', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2696', 'gnoeth', 'Gnosis', 'gno', 'Ethereum', 'eth', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2697', 'gnoeur', 'Gnosis', 'gno', 'euro', 'eur', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2698', 'gnousd', 'Gnosis', 'gno', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2699', 'gntbtc', 'Golem', 'gnt', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2700', 'gnteth', 'Golem', 'gnt', 'Ethereum', 'eth', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2701', 'grcbtc', 'GridCoin', 'grc', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2702', 'hucbtc', 'HunterCoin', 'huc', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2703', 'icnbtc', 'Iconomi', 'icn', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2704', 'icneth', 'Iconomi', 'icn', 'Ethereum', 'eth', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2705', 'iotbtc', 'IOTA', 'iot', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2706', 'ioteth', 'IOTA', 'iot', 'Ethereum', 'eth', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2707', 'iotusd', 'IOTA', 'iot', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2708', 'lbcbtc', 'LBRY Credits', 'lbc', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2709', 'lskbtc', 'Lisk', 'lsk', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2710', 'lsketh', 'Lisk', 'lsk', 'Ethereum', 'eth', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2711', 'ltcbtc', 'Litecoin', 'ltc', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2712', 'ltccad', 'Litecoin', 'ltc', 'Canadian dollar', 'cad', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2713', 'ltccny', 'Litecoin', 'ltc', 'Chinese yuan', 'cny', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2714', 'ltceur', 'Litecoin', 'ltc', 'euro', 'eur', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2715', 'ltckrw', 'Litecoin', 'ltc', 'South Korean Won', 'krw', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2716', 'ltcusd', 'Litecoin', 'ltc', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2717', 'ltcusdt', 'Litecoin', 'ltc', 'Tether', 'usdt', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2718', 'ltcxmr', 'Litecoin', 'ltc', 'Monero', 'xmr', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2719', 'maidbtc', 'MaidSafe', 'maid', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2720', 'maidxmr', 'MaidSafe', 'maid', 'Monero', 'xmr', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2721', 'mlnbtc', 'Melonport', 'mln', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2722', 'mlneth', 'Melonport', 'mln', 'Ethereum', 'eth', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2723', 'nautbtc', 'NautilusCoin', 'naut', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2724', 'navbtc', 'NAV Coin', 'nav', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2725', 'neobtc', 'NEO', 'neo', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2726', 'neoeth', 'NEO', 'neo', 'Ethereum', 'eth', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2727', 'neosbtc', 'NeosCoin', 'neos', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2728', 'neousd', 'NEO', 'neo', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2729', 'neousdt', 'NEO', 'neo', 'Tether', 'usdt', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2730', 'nmcbtc', 'Namecoin', 'nmc', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2731', 'nmcusd', 'Namecoin', 'nmc', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2732', 'notebtc', 'DNotes', 'note', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2733', 'nxcbtc', 'Nexium', 'nxc', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2734', 'nxtbtc', 'NXT', 'nxt', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2735', 'nxtusd', 'NXT', 'nxt', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2736', 'nxtusdt', 'NXT', 'nxt', 'Tether', 'usdt', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2737', 'nxtxmr', 'NXT', 'nxt', 'Monero', 'xmr', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2738', 'omgbtc', 'OmiseGo', 'omg', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2739', 'omgeth', 'OmiseGo', 'omg', 'Ethereum', 'eth', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2740', 'omgusd', 'OmiseGo', 'omg', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2741', 'omnibtc', 'Omni', 'omni', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2742', 'pascbtc', 'Pascal Coin', 'pasc', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2743', 'pinkbtc', 'PinkCoin', 'pink', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2744', 'potbtc', 'PotCoin', 'pot', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2745', 'ppcbtc', 'Peercoin', 'ppc', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2746', 'ppcusd', 'Peercoin', 'ppc', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2747', 'qtumbtc', 'Qtum', 'qtum', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2748', 'qtumeth', 'Qtum', 'qtum', 'Ethereum', 'eth', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2749', 'qtumkrw', 'Qtum', 'qtum', 'South Korean Won', 'krw', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2750', 'qtumusd', 'Qtum', 'qtum', 'United States dollar', 'usd', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2751', 'radsbtc', 'Radium', 'rads', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2752', 'repbtc', 'Augur', 'rep', 'Bitcoin', 'btc', '2017-12-08 14:34:16+00');
INSERT INTO "pairs" VALUES ('2753', 'repcad', 'Augur', 'rep', 'Canadian dollar', 'cad', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2754', 'repeth', 'Augur', 'rep', 'Ethereum', 'eth', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2755', 'repeur', 'Augur', 'rep', 'euro', 'eur', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2756', 'repjpy', 'Augur', 'rep', 'Japanese Yen', 'jpy', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2757', 'repusd', 'Augur', 'rep', 'United States dollar', 'usd', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2758', 'repusdt', 'Augur', 'rep', 'Tether', 'usdt', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2759', 'ricbtc', 'Riecoin', 'ric', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2760', 'sanbtc', 'Santinent Network Token', 'san', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2761', 'saneth', 'Santinent Network Token', 'san', 'Ethereum', 'eth', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2762', 'sanusd', 'Santinent Network Token', 'san', 'United States dollar', 'usd', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2763', 'sbdbtc', 'Steem Dollars', 'sbd', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2764', 'scbtc', 'Siacoin', 'sc', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2765', 'sdcbtc', 'ShadowCoin', 'sdc', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2766', 'sjcxbtc', 'Storjcoin X', 'sjcx', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2767', 'strbtc', 'Stellar', 'str', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2768', 'streur', 'Stellar', 'str', 'euro', 'eur', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2769', 'strusd', 'Stellar', 'str', 'United States dollar', 'usd', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2770', 'strusdt', 'Stellar', 'str', 'Tether', 'usdt', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2771', 'sysbtc', 'Syscoin', 'sys', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2772', 'usdcny', 'United States dollar', 'usd', 'Chinese yuan', 'cny', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2773', 'usdtusd', 'Tether', 'usdt', 'United States dollar', 'usd', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2774', 'viabtc', 'Viacoin', 'via', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2775', 'vrcbtc', 'VeriCoin', 'vrc', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2776', 'vrmbtc', 'Verium', 'vrm', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2777', 'vtcbtc', 'Vertcoin', 'vtc', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2778', 'xbcbtc', 'Bitcoin Plus', 'xbc', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2779', 'xcpbtc', 'Counterparty', 'xcp', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2780', 'xembtc', 'NEM', 'xem', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2781', 'xmrbtc', 'Monero', 'xmr', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2782', 'xmreur', 'Monero', 'xmr', 'euro', 'eur', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2783', 'xmrkrw', 'Monero', 'xmr', 'South Korean Won', 'krw', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2784', 'xmrusd', 'Monero', 'xmr', 'United States dollar', 'usd', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2785', 'xmrusdt', 'Monero', 'xmr', 'Tether', 'usdt', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2786', 'xpmbtc', 'Primecoin', 'xpm', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2787', 'xrpbtc', 'Ripple', 'xrp', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2788', 'xrpcad', 'Ripple', 'xrp', 'Canadian dollar', 'cad', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2789', 'xrpeur', 'Ripple', 'xrp', 'euro', 'eur', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2790', 'xrpjpy', 'Ripple', 'xrp', 'Japanese Yen', 'jpy', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2791', 'xrpkrw', 'Ripple', 'xrp', 'South Korean Won', 'krw', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2792', 'xrpusd', 'Ripple', 'xrp', 'United States dollar', 'usd', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2793', 'xrpusdt', 'Ripple', 'xrp', 'Tether', 'usdt', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2794', 'xvcbtc', 'Vcash', 'xvc', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2795', 'zecbtc', 'ZEC', 'zec', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2796', 'zeccad', 'ZEC', 'zec', 'Canadian dollar', 'cad', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2797', 'zeceth', 'ZEC', 'zec', 'Ethereum', 'eth', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2798', 'zeceur', 'ZEC', 'zec', 'euro', 'eur', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2799', 'zecgbp', 'ZEC', 'zec', 'British Pound', 'gbp', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2800', 'zecjpy', 'ZEC', 'zec', 'Japanese Yen', 'jpy', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2801', 'zeckrw', 'ZEC', 'zec', 'South Korean Won', 'krw', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2802', 'zecusd', 'ZEC', 'zec', 'United States dollar', 'usd', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2803', 'zecusdt', 'ZEC', 'zec', 'Tether', 'usdt', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2804', 'zecxmr', 'ZEC', 'zec', 'Monero', 'xmr', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2805', 'zenbtc', 'ZenCash', 'zen', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2806', 'zrxbtc', '0x', 'zrx', 'Bitcoin', 'btc', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2807', 'zrxeth', '0x', 'zrx', 'Ethereum', 'eth', '2017-12-08 14:34:17+00');
INSERT INTO "pairs" VALUES ('2808', 'wwww', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('2809', 'wwww1', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3045', 'btgcad', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3046', 'bchcad', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3047', 'btc-aur', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3048', 'btc-apx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3049', 'btc-aeon', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3050', 'btc-dash', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3051', 'btc-1st', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3052', 'btc-amp', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3053', 'btc-efl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3054', 'btc-ardr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3055', 'btc-agrs', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3056', 'btc-egc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3057', 'btc-2give', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3058', 'btc-edg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3059', 'btc-btcd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3060', 'btc-btg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3061', 'btc-swift', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3062', 'btc-hmq', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3063', 'btc-gup', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3064', 'btc-emc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3065', 'btc-eng', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3066', 'btc-ark', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3067', 'btc-emc2', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3068', 'btc-incnt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3069', 'btc-infx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3070', 'btc-ant', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3071', 'btc-aby', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3072', 'btc-enrg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3073', 'btc-ion', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3074', 'btc-dcr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3075', 'btc-erc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3076', 'btc-etc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3077', 'btc-ioc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3078', 'btc-iop', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3079', 'btc-eth', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3080', 'btc-excl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3081', 'btc-exp', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3082', 'btc-pkb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3083', 'btc-pivx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3084', 'btc-pink', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3085', 'btc-kmd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3086', 'btc-pot', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3087', 'btc-lbc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3088', 'btc-powr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3089', 'btc-fair', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3090', 'btc-lgd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3091', 'btc-kore', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3092', 'btc-lsk', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3093', 'btc-lmc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3094', 'btc-dct', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3095', 'btc-fct', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3096', 'btc-ptc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3097', 'btc-flo', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3098', 'btc-burst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3099', 'btc-ftc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3100', 'btc-fldc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3101', 'btc-qtum', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3102', 'btc-ltc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3103', 'btc-ppc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3104', 'btc-lun', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3105', 'btc-ptoy', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3106', 'btc-qrl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3107', 'btc-gam', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3108', 'btc-qwark', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3109', 'btc-maid', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3110', 'btc-fun', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3111', 'btc-mana', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3112', 'btc-game', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3113', 'btc-rads', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3114', 'btc-gbg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3115', 'btc-rcn', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3116', 'btc-gld', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3117', 'btc-rep', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3118', 'btc-meme', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3119', 'btc-mtl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3120', 'btc-mer', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3121', 'btc-rby', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3122', 'btc-mona', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3123', 'btc-rise', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3124', 'btc-geo', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3125', 'btc-gbyte', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3126', 'btc-rdd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3127', 'btc-grc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3128', 'btc-salt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3129', 'btc-rlc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3130', 'btc-mue', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3131', 'btc-ada', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3132', 'btc-music', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3133', 'btc-sbd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3134', 'btc-cann', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3135', 'btc-synx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3136', 'btc-seq', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3137', 'btc-safex', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3138', 'eth-dnt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3139', 'btc-sys', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3140', 'btc-mco', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3141', 'btc-swt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3142', 'btc-gnt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3143', 'btc-nav', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3144', 'btc-gno', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3145', 'btc-byc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3146', 'btc-sc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3147', 'btc-mln', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3148', 'btc-myst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3149', 'btc-gcr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3150', 'btc-tix', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3151', 'btc-shift', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3152', 'btc-sib', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3153', 'btc-nbt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3154', 'btc-trst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3155', 'btc-nxc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3156', 'btc-nlg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3157', 'btc-tks', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3158', 'btc-thc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3159', 'btc-nxs', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3160', 'btc-neos', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3161', 'btc-trust', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3162', 'btc-trig', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3163', 'btc-golos', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3164', 'btc-neo', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3165', 'btc-unb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3166', 'btc-nmr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3167', 'btc-ubq', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3168', 'btc-nxt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3169', 'btc-sngls', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3170', 'btc-ok', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3171', 'btc-pay', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3172', 'btc-omg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3173', 'btc-vib', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3174', 'btc-tx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3175', 'btc-snt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3176', 'btc-adx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3177', 'btc-snrg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3178', 'btc-sls', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3179', 'btc-adt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3180', 'btc-vox', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3181', 'btc-omni', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3182', 'btc-slr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3183', 'btc-via', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3184', 'btc-spr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3185', 'btc-vrc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3186', 'btc-vrm', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3187', 'btc-part', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3188', 'btc-grs', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3189', 'btc-pdc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3190', 'btc-vtc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3191', 'btc-waves', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3192', 'btc-steem', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3193', 'btc-vtr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3194', 'btc-bay', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3195', 'btc-start', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3196', 'btc-storj', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3197', 'btc-strat', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3198', 'btc-xaur', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3199', 'btc-xlm', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3200', 'btc-xdn', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3201', 'btc-xcp', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3202', 'btc-xel', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3203', 'btc-sphr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3204', 'btc-xmg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3205', 'btc-xmr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3206', 'btc-xem', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3207', 'btc-xrp', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3208', 'btc-xst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3209', 'btc-xzc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3210', 'btc-xvc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3211', 'btc-xwc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3212', 'btc-wings', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3213', 'btc-xvg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3214', 'btc-zcl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3215', 'eth-1st', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3216', 'btc-zec', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3217', 'btc-zen', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3218', 'eth-adt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3219', 'btc-bcc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3220', 'eth-bcc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3221', 'eth-bnt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3222', 'btc-cfi', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3223', 'eth-etc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3224', 'eth-adx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3225', 'eth-fct', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3226', 'eth-btg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3227', 'eth-gnt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3228', 'eth-myst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3229', 'eth-cfi', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3230', 'eth-eng', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3231', 'eth-cvc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3232', 'eth-fun', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3233', 'eth-gup', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3234', 'eth-dgb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3235', 'eth-hmq', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3236', 'eth-ant', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3237', 'eth-crb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3238', 'eth-dgd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3239', 'btc-xmy', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3240', 'eth-lgd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3241', 'eth-bat', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3242', 'eth-gno', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3243', 'eth-pay', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3244', 'eth-ada', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3245', 'eth-salt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3246', 'eth-omg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3247', 'eth-dash', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3248', 'eth-ltc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3249', 'eth-mana', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3250', 'eth-xrp', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3251', 'btc-dgb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3252', 'eth-nmr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3253', 'eth-sc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3254', 'eth-powr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3255', 'eth-neo', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3256', 'eth-ptoy', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3257', 'eth-qrl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3258', 'eth-snt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3259', 'btc-clam', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3260', 'eth-sngls', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3261', 'eth-tix', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3262', 'eth-strat', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3263', 'eth-storj', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3264', 'eth-mco', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3265', 'eth-vib', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3266', 'eth-lun', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3267', 'eth-mtl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3268', 'usdt-eth', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3269', 'eth-qtum', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3270', 'usdt-bcc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3271', 'eth-wings', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3272', 'eth-trst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3273', 'btc-bat', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3274', 'usdt-btc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3275', 'eth-rep', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3276', 'usdt-ltc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3277', 'usdt-etc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3278', 'eth-waves', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3279', 'usdt-neo', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3280', 'eth-rlc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3281', 'usdt-dash', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3282', 'eth-xem', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3283', 'usdt-xrp', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3284', 'usdt-xmr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3285', 'eth-rcn', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3286', 'usdt-zec', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3287', 'usdt-btg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3288', 'eth-zec', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3289', 'usdt-omg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3290', 'eth-xlm', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3291', 'eth-xmr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3292', 'btc-bcy', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3293', 'btc-bitb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3294', 'btc-dgd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3295', 'btc-dmd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3296', 'btc-cloak', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3297', 'btc-blitz', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3298', 'btc-club', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3299', 'btc-dnt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3300', 'btc-coval', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3301', 'btc-blk', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3302', 'btc-crb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3303', 'btc-doge', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3304', 'btc-block', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3305', 'btc-cpc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3306', 'btc-bnt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3307', 'btc-dope', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3308', 'btc-crw', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3309', 'btc-dtb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3310', 'btc-cure', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3311', 'btc-brx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3312', 'btc-brk', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3313', 'btc-cvc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3314', 'btc-bsd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3315', 'btc-dyn', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3316', 'btc-ebst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3317', 'xmr-bcn', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3318', 'xmr-dash', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3319', 'btc-str', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3320', 'usdt-nxt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3321', 'btc-nmc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3322', 'usdt-bch', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3323', 'btc-bela', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3324', 'eth-zrx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3325', 'btc-btm', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3326', 'xmr-blk', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3327', 'eth-bch', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3328', 'eth-steem', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3329', 'btc-pasc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3330', 'xmr-btcd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3331', 'btc-xbc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3332', 'eth-lsk', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3333', 'usdt-rep', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3334', 'xmr-nxt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3335', 'xmr-ltc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3336', 'xmr-zec', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3337', 'usdt-str', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3338', 'btc-ric', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3339', 'xmr-maid', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3340', 'btc-bcn', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3341', 'btc-xpm', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3342', 'btc-gas', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3343', 'btc-zrx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3344', 'eth-gas', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3345', 'btc-huc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3346', 'btc-bts', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3347', 'btc-bch', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3348', 'dgb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3349', 'thc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3350', 'aeon', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3351', 'nbt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3352', 'swift', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3353', 'swt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3354', 'spr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3355', 'xmr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3356', 'bela', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3357', 'bitb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3358', 'cvc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3359', 'edg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3360', 'sngls', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3361', 'trust', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3362', 'dtb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3363', 'emc2', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3364', 'kore', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3365', 'xmg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3366', 'bay', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3367', 'nxc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3368', 'block', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3369', 'bnt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3370', 'burst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3371', 'gbyte', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3372', 'mana', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3373', 'trst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3374', 'pasc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3375', 'emc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3376', 'erc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3377', 'pkb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3378', 'amp', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3379', 'dash', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3380', 'doge', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3381', '1st', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3382', 'sls', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3383', 'gas', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3384', 'mtl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3385', 'xcp', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3386', 'golos', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3387', 'mue', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3388', 'nmr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3389', 'ptc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3390', 'rads', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3391', 'ant', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3392', 'pay', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3393', 'synx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3394', 'xel', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3395', 'myst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3396', 'part', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3397', 'btcd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3398', 'gld', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3399', 'gnt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3400', 'brx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3401', 'byc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3402', 'rlc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3403', 'waves', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3404', 'efl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3405', 'fair', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3406', 'gbg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3407', 'bch', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3408', 'egc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3409', 'sbd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3410', 'storj', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3411', 'dope', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3412', 'ioc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3413', 'zcl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3414', 'zen', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3415', 'excl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3416', 'rep', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3417', 'vtc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3418', 'xmy', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3419', 'adt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3420', 'lmc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3421', 'ada', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3422', 'cloak', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3423', 'wings', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3424', 'eth', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3425', 'ftc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3426', 'kmd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3427', 'ppc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3428', 'zrx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3429', 'slr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3430', 'ardr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3431', 'qtum', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3432', 'btg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3433', 'lun', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3434', 'nmc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3435', 'exp', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3436', 'str', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3437', 'blitz', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3438', 'gcr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3439', 'grc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3440', 'sys', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3441', 'pink', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3442', 'rise', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3443', 'start', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3444', 'brk', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3445', 'dmd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3446', 'flo', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3447', 'omni', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3448', 'fct', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3449', 'fun', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3450', 'vtr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3451', 'ric', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3452', 'nlg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3453', 'steem', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3454', 'xdn', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3455', 'xst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3456', 'gno', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3457', 'gup', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3458', 'pot', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3459', 'huc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3460', 'bcy', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3461', 'bsd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3462', 'sib', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3463', 'trig', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3464', 'vox', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3465', 'dyn', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3466', 'music', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3467', 'sc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3468', 'xbc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3469', 'game', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3470', 'omg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3471', 'tks', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3472', 'xwc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3473', 'tix', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3474', 'apx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3475', 'ark', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3476', 'bcc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3477', 'clam', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3478', 'xaur', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3479', 'rdd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3480', 'crb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3481', 'seq', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3482', 'vrm', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3483', 'xem', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3484', 'bts', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3485', '2give', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3486', 'aby', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3487', 'neos', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3488', 'nxs', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3489', 'cfi', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3490', 'coval', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3491', 'safex', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3492', 'xvc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3493', 'btc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3494', 'ptoy', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3495', 'powr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3496', 'qrl', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3497', 'cann', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3498', 'ebst', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3499', 'xlm', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3500', 'snt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3501', 'crw', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3502', 'eng', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3503', 'gam', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3504', 'rcn', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3505', 'tx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3506', 'enrg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3507', 'fldc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3508', 'ubq', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3509', 'via', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3510', 'mer', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3511', 'sphr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3512', 'adx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3513', 'hmq', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3514', 'incnt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3515', 'infx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3516', 'nav', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3517', 'unb', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3518', 'cpc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3519', 'dgd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3520', 'lsk', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3521', 'strat', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3522', 'geo', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3523', 'ok', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3524', 'xzc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3525', 'vrc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3526', 'xrp', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3527', 'zec', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3528', 'ltc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3529', 'maid', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3530', 'iop', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3531', 'meme', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3532', 'bat', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3533', 'ion', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3534', 'xvg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3535', 'mona', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3536', 'agrs', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3537', 'club', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3538', 'lbc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3539', 'lgd', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3540', 'grs', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3541', 'shift', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3542', 'xpm', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3543', 'btm', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3544', 'aur', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3545', 'blk', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3546', 'pdc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3547', 'qwark', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3548', 'rby', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3549', 'etc', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3550', 'mln', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3551', 'dcr', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3552', 'dct', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3553', 'dnt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3554', 'nxt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3555', 'mco', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3556', 'pivx', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3557', 'bcn', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3558', 'neo', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3559', 'salt', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3560', 'vib', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3561', 'snrg', '', '', '', '', '1970-01-01 00:00:00+00');
INSERT INTO "pairs" VALUES ('3562', 'cure', '', '', '', '', '1970-01-01 00:00:00+00');
COMMIT;

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
-- Records of tikers
-- ----------------------------
BEGIN;
COMMIT;

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
-- Records of tikers_1m
-- ----------------------------
BEGIN;
COMMIT;

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
-- Records of tikers_1s
-- ----------------------------
BEGIN;
COMMIT;

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
"id" int8 DEFAULT nextval('tikers_ids'::regclass) NOT NULL,
"volume" float8
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tikers_source
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "users";
CREATE TABLE "users" (
"id" int8 DEFAULT nextval('assets_ids'::regclass) NOT NULL,
"userlogin" varchar(255) COLLATE "default" NOT NULL,
"password" varchar(255) COLLATE "default" NOT NULL,
"email" varchar(255) COLLATE "default" NOT NULL,
"banned" bool DEFAULT false NOT NULL,
"username" varchar(255) COLLATE "default" NOT NULL,
"role" int4 NOT NULL,
"created" timestamptz(6) NOT NULL,
"settings" varchar COLLATE "default" DEFAULT ''::character varying NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;

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
		insert into assets("symbol","name","time") values (COALESCE($1, 'Undefined'), '', to_timestamp(0)) RETURNING "id" into _id;
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
  LANGUAGE 'plpgsql' VOLATILE COST 100
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
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Function structure for get_role_id
-- ----------------------------
CREATE OR REPLACE FUNCTION "get_role_id"("key" varchar)
  RETURNS "pg_catalog"."int8" AS $BODY$BEGIN
	--Routine body goes here...

	RETURN 0;
END
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Function structure for save_internal
-- ----------------------------
CREATE OR REPLACE FUNCTION "save_internal"("p_asset0" varchar, "p_asset1" varchar, "p_asset2" varchar, "p_percent" float8, "p_exchange" varchar, "p_time" timestamptz)
  RETURNS "pg_catalog"."void" AS $BODY$DECLARE
  _asset0 assets.id%TYPE;
  _asset1 assets.id%TYPE;
  _asset2 assets.id%TYPE;
  _exchange exchanges.id%TYPE;

BEGIN
	--Routine body goes here...


	SELECT get_asset_id(p_asset0) INTO _asset0;
	SELECT get_asset_id(p_asset1) INTO _asset1;
	SELECT get_asset_id(p_asset2) INTO _asset2;
	SELECT get_exchange_id(p_exchange) INTO _exchange;

	INSERT INTO internal(asset0, asset1, asset2, "percent", exchange, "time")
										VALUES(_asset0, _asset1, _asset2, p_percent, _exchange, p_time)
	ON CONFLICT (asset0,asset1,asset2,exchange) DO UPDATE SET "percent"=p_percent, "time"=p_time;

	RETURN;
END
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Function structure for save_tikers
-- ----------------------------
CREATE OR REPLACE FUNCTION "save_tikers"("p_exchange" varchar, "p_pair" varchar, "p_value" float8, "p_ask" float8, "p_bid" float8, "p_time" timestamp, "p_volume" float8)
  RETURNS "pg_catalog"."void" AS $BODY$DECLARE
  _exchange_id exchanges.id%TYPE;
  _pair_id pairs.id%TYPE;

BEGIN
	--Routine body goes here...

	INSERT INTO tikers_source(time,exchange,pair,value,ask,bid, volume) values(p_time,p_exchange,p_pair,p_value,p_ask,p_bid, p_volume);

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
-- Indexes structure for table internal
-- ----------------------------
CREATE UNIQUE INDEX "internal_asset0_asset1_asser2_exchange_idx" ON "internal" USING btree ("asset0", "asset1", "asset2", "exchange");

-- ----------------------------
-- Primary Key structure for table internal
-- ----------------------------
ALTER TABLE "internal" ADD PRIMARY KEY ("id");

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

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "users" ADD PRIMARY KEY ("id");
