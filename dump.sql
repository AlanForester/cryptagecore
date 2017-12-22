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

Date: 2017-12-22 14:58:23
*/


-- ----------------------------
-- Sequence structure for active_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "active_ids";
CREATE SEQUENCE "active_ids"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for assets_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "assets_ids";
CREATE SEQUENCE "assets_ids"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 68550
 CACHE 1;
SELECT setval('"public"."assets_ids"', 68550, true);

-- ----------------------------
-- Sequence structure for excange_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "excange_ids";
CREATE SEQUENCE "excange_ids"
 INCREMENT 1
 MINVALUE 1
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
 START 5870
 CACHE 1;
SELECT setval('"public"."pair_ids"', 5870, true);

-- ----------------------------
-- Sequence structure for signal_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "signal_ids";
CREATE SEQUENCE "signal_ids"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 20
 CACHE 1;
SELECT setval('"public"."signal_ids"', 20, true);

-- ----------------------------
-- Sequence structure for tikers_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "tikers_ids";
CREATE SEQUENCE "tikers_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 142535
 CACHE 1;
SELECT setval('"public"."tikers_ids"', 142535, true);

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
-- Table structure for actives
-- ----------------------------
DROP TABLE IF EXISTS "actives";
CREATE TABLE "actives" (
"id" int8 DEFAULT nextval('active_ids'::regclass) NOT NULL,
"user_id" int8 NOT NULL,
"valute_id" int8 NOT NULL,
"type" int2 DEFAULT 1 NOT NULL,
"summ" int8 DEFAULT 0 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of actives
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for assets
-- ----------------------------
DROP TABLE IF EXISTS "assets";
CREATE TABLE "assets" (
"id" int8 DEFAULT nextval('assets_ids'::regclass) NOT NULL,
"symbol" varchar(255) COLLATE "default" NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"time" timestamptz(6) NOT NULL,
"course" float8 DEFAULT 0 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of assets
-- ----------------------------
BEGIN;
INSERT INTO "assets" VALUES ('1802', 'bnt', 'Bancor Network', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1803', 'ant', 'Aragon', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1804', 'adx', 'AdEx', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1805', 'adt', 'adToken', '2017-12-21 08:34:30+00', '3.68e-06');
INSERT INTO "assets" VALUES ('1806', 'ada', 'Cardano', '2017-12-21 08:34:28+00', '2.889e-05');
INSERT INTO "assets" VALUES ('1807', '1st', 'First Blood', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1808', 'qqq', 'QQQ', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('1809', 'dgd', 'DigixDAO', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1810', 'amp', 'Synereo AMP', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1811', 'ardr', 'Ardor', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1812', 'aud', 'Australian Dollar', '2017-12-08 14:34:12+00', '0');
INSERT INTO "assets" VALUES ('1813', 'avt', 'Aventus', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1814', 'bat', 'BatCoin', '2017-12-21 08:34:41+00', '5e-10');
INSERT INTO "assets" VALUES ('1815', 'bcc', 'BitConnect', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1816', 'bch', 'Bitcoin Cash', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1817', 'bcn', 'Bytecoin', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1818', 'bcu', 'Bitcoin Unlimited Token', '2017-12-08 14:34:12+00', '0');
INSERT INTO "assets" VALUES ('1819', 'bcy', 'Bitcrystals', '2017-12-21 08:34:31+00', '4.08e-05');
INSERT INTO "assets" VALUES ('1820', 'bela', 'Bela', '2017-12-21 08:34:32+00', '1.699e-05');
INSERT INTO "assets" VALUES ('1821', 'bfx', 'BFX', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1822', 'blk', 'BlackCoin', '2017-12-21 08:34:30+00', '3.654e-05');
INSERT INTO "assets" VALUES ('1823', 'bt1', 'BT1 [CST]', '2017-12-21 08:34:41+00', '1.12797');
INSERT INTO "assets" VALUES ('1824', 'bt2', 'BT2 [CST]', '2017-12-21 08:34:40+00', '0.0156907');
INSERT INTO "assets" VALUES ('1825', 'btc', 'Bitcoin', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1826', 'btcd', 'BitcoinDark', '2017-12-21 08:34:28+00', '0.0173095');
INSERT INTO "assets" VALUES ('1827', 'btg', 'Bitcoin Gold', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1828', 'btm', 'Bytom', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1829', 'bts', 'BitShares', '2017-12-21 08:34:28+00', '3.643e-05');
INSERT INTO "assets" VALUES ('1830', 'burst', 'Burst', '2017-12-21 08:34:30+00', '2.4e-06');
INSERT INTO "assets" VALUES ('1831', 'cad', 'Canadian dollar', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1832', 'clam', 'Clams', '2017-12-21 08:34:30+00', '0.00069181');
INSERT INTO "assets" VALUES ('1833', 'cny', 'Chinese yuan', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1834', 'cvc', 'CVC Civic', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1835', 'dao', 'Decentralized Autonomous Organization', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1836', 'dash', 'Dash', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1837', 'dat', 'Datum', '2017-12-21 08:34:40+00', '2.6e-06');
INSERT INTO "assets" VALUES ('1838', 'data', 'Streamr DATAcoin', '2017-12-21 08:34:29+00', '1.67e-05');
INSERT INTO "assets" VALUES ('1839', 'dcr', 'Decred', '2017-12-21 08:34:28+00', '0.005835');
INSERT INTO "assets" VALUES ('1840', 'dgb', 'DigiByte', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1841', 'doge', 'Dogecoin', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1842', 'edg', 'EDG', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1843', 'edo', 'Eidoo Token', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('1844', 'emc2', 'Einsteinium', '2017-12-21 08:34:29+00', '8.393e-05');
INSERT INTO "assets" VALUES ('1845', 'eos', 'EOS', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1846', 'etc', 'Ethereum Classic', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1847', 'eth', 'Ethereum', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1848', 'etp', 'Metaverse ETP', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1849', 'eur', 'euro', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1850', 'exp', 'Expanse', '2017-12-21 08:34:30+00', '0.00026601');
INSERT INTO "assets" VALUES ('1851', 'fct', 'Factom', '2017-12-21 08:34:28+00', '0.0026181');
INSERT INTO "assets" VALUES ('1852', 'fldc', 'FoldingCoin', '2017-12-21 08:34:30+00', '3.68e-06');
INSERT INTO "assets" VALUES ('1853', 'flo', 'FlorinCoin', '2017-12-21 08:34:30+00', '1.798e-05');
INSERT INTO "assets" VALUES ('1854', 'game', 'GameCredits', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1855', 'gas', 'Gas', '2017-12-21 08:34:29+00', '0.00199124');
INSERT INTO "assets" VALUES ('1856', 'gbp', 'British Pound', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1857', 'gno', 'Gnosis', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1858', 'gnt', 'Golem', '2017-12-21 08:34:28+00', '4.315e-05');
INSERT INTO "assets" VALUES ('1859', 'grc', 'GridCoin', '2017-12-21 08:34:30+00', '6.31e-06');
INSERT INTO "assets" VALUES ('1860', 'hkd', 'Hong Kong Dollar', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1861', 'huc', 'HunterCoin', '2017-12-21 08:34:33+00', '1.678e-05');
INSERT INTO "assets" VALUES ('1862', 'icn', 'Iconomi', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1863', 'idr', 'Indonesian Rupiah', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1864', 'inr', 'Indian Rupee', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1865', 'iot', 'IOTA', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1866', 'jpy', 'Japanese Yen', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1867', 'krw', 'South Korean Won', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1868', 'lbc', 'LBRY Credits', '2017-12-21 08:34:29+00', '4.558e-05');
INSERT INTO "assets" VALUES ('1869', 'lsk', 'Lisk', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1870', 'ltc', 'Litecoin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1871', 'maid', 'MaidSafeCoin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1872', 'mln', 'Melon', '2017-12-21 08:34:29+00', '0.008051');
INSERT INTO "assets" VALUES ('1873', 'mxn', 'Mexican Peso', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1874', 'naut', 'NautilusCoin', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1875', 'nav', 'NAV Coin', '2017-12-21 08:34:29+00', '0.00016636');
INSERT INTO "assets" VALUES ('1876', 'neo', 'NEO', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1877', 'neos', 'NeosCoin', '2017-12-21 08:34:31+00', '0.00041064');
INSERT INTO "assets" VALUES ('1878', 'nmc', 'Namecoin', '2017-12-21 08:34:30+00', '0.00025736');
INSERT INTO "assets" VALUES ('1879', 'note', 'DNotes', '2017-12-21 08:34:33+00', '1.81e-06');
INSERT INTO "assets" VALUES ('1880', 'nxc', 'NXC', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1881', 'nxt', 'Nxt', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1882', 'omg', 'Omise-go', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1883', 'omni', 'Omni', '2017-12-21 08:34:30+00', '0.00460114');
INSERT INTO "assets" VALUES ('1884', 'pasc', 'Pascal Coin', '2017-12-21 08:34:31+00', '8.49e-05');
INSERT INTO "assets" VALUES ('1885', 'php', 'Philippine Peso', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1886', 'pink', 'PinkCoin', '2017-12-21 08:34:31+00', '3.41e-06');
INSERT INTO "assets" VALUES ('1887', 'pot', 'PotCoin', '2017-12-21 08:34:29+00', '2.087e-05');
INSERT INTO "assets" VALUES ('1888', 'ppc', 'Peercoin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('1889', 'qtum', 'QTUM', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1890', 'rads', 'Radium', '2017-12-21 08:34:30+00', '0.00064669');
INSERT INTO "assets" VALUES ('1891', 'rep', 'Augur', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1892', 'ric', 'Riecoin', '2017-12-21 08:34:32+00', '1.538e-05');
INSERT INTO "assets" VALUES ('1893', 'rur', 'Russian Ruble', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1894', 'san', 'Santiment', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1895', 'sbd', 'Steem Dollars', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1896', 'sc', 'SiaCoin', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1897', 'sdc', 'ShadowCash', '2017-12-21 08:34:37+00', '1.418e-05');
INSERT INTO "assets" VALUES ('1898', 'sgd', 'Singapore Dollar', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1899', 'sjcx', 'Storjcoin X', '2017-12-21 08:34:43+00', '1.975e-05');
INSERT INTO "assets" VALUES ('1900', 'steem', 'Steem', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1901', 'storj', 'Storj', '2017-12-21 08:34:29+00', '0.0001018');
INSERT INTO "assets" VALUES ('1902', 'str', 'Stellar', '2017-12-08 14:34:13+00', '0');
INSERT INTO "assets" VALUES ('1903', 'strat', 'Stratis', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1904', 'sys', 'Syscoin', '2017-12-21 08:34:29+00', '3.922e-05');
INSERT INTO "assets" VALUES ('1905', 'usd', 'Tether', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1906', 'usdt', 'Tether', '2017-12-21 08:34:28+00', '5.919e-05');
INSERT INTO "assets" VALUES ('1907', 'via', 'Viacoin', '2017-12-21 08:34:29+00', '0.00023045');
INSERT INTO "assets" VALUES ('1908', 'vrc', 'VeriCoin', '2017-12-21 08:34:31+00', '5.834e-05');
INSERT INTO "assets" VALUES ('1909', 'vrm', 'VeriumReserve', '2017-12-21 08:34:33+00', '0.00028554');
INSERT INTO "assets" VALUES ('1910', 'vtc', 'Vertcoin', '2017-12-21 08:34:28+00', '0.00056253');
INSERT INTO "assets" VALUES ('1911', 'xbc', 'Bitcoin Plus', '2017-12-21 08:34:32+00', '0.00768349');
INSERT INTO "assets" VALUES ('1912', 'xcp', 'Counterparty', '2017-12-21 08:34:29+00', '0.0021739');
INSERT INTO "assets" VALUES ('1913', 'xem', 'NEM', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1914', 'xmr', 'Monero', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1915', 'xpm', 'Primecoin', '2017-12-21 08:34:32+00', '3.092e-05');
INSERT INTO "assets" VALUES ('1916', 'xrp', 'Ripple', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1917', 'xtz', 'Tezos', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1918', 'xvc', 'Vcash', '2017-12-21 08:34:31+00', '7.796e-05');
INSERT INTO "assets" VALUES ('1919', 'zar', 'South African rand', '2017-12-08 14:34:14+00', '0');
INSERT INTO "assets" VALUES ('1920', 'zec', 'Zcash', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('1921', 'zen', 'ZenCash', '2017-12-21 08:34:29+00', '0.0025657');
INSERT INTO "assets" VALUES ('1922', 'zrx', '0x Protocol', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('2628', 'cfi', 'Cofound.it', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('2630', 'crb', 'Creditbit', '2017-12-21 08:34:32+00', '2.762e-05');
INSERT INTO "assets" VALUES ('2650', 'dnt', 'District0x Network', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('2652', 'eng', 'Enigma', '2017-12-21 08:34:29+00', '7.825e-05');
INSERT INTO "assets" VALUES ('2656', 'fun', 'FunFair', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('2660', 'gup', 'GUP', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('2662', 'hmq', 'Humaniq', '2017-12-21 08:34:30+00', '2.198e-05');
INSERT INTO "assets" VALUES ('2664', 'lgd', 'Legends Room', '2017-12-21 08:34:34+00', '7.56e-05');
INSERT INTO "assets" VALUES ('2667', 'lun', 'Lunyr', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('2669', 'mana', 'Decentraland', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('2671', 'mco', 'Monaco', '2017-12-21 08:34:29+00', '0.00111678');
INSERT INTO "assets" VALUES ('2673', 'mtl', 'Metal', '2017-12-21 08:34:29+00', '0.0006049');
INSERT INTO "assets" VALUES ('2675', 'myst', 'Mysterium', '2017-12-21 08:34:31+00', '9.363e-05');
INSERT INTO "assets" VALUES ('2678', 'nmr', 'Numeraire', '2017-12-21 08:34:30+00', '0.00170865');
INSERT INTO "assets" VALUES ('2681', 'pay', 'TenX', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('2683', 'powr', 'Power Ledger', '2017-12-21 08:34:28+00', '7.336e-05');
INSERT INTO "assets" VALUES ('2685', 'ptoy', 'Patientory', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('2687', 'qrl', 'Quantum Resistant Ledger', '2017-12-21 08:34:29+00', '9.134e-05');
INSERT INTO "assets" VALUES ('2690', 'rcn', 'Rcoin', '2017-12-21 08:34:42+00', '1e-08');
INSERT INTO "assets" VALUES ('2693', 'rlc', 'RLC', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('2695', 'salt', 'SALT', '2017-12-21 08:34:28+00', '0.00055603');
INSERT INTO "assets" VALUES ('2698', 'sngls', 'SingularDTV', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('2700', 'snt', 'Status', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('2704', 'tix', 'Blocktix', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('2706', 'trst', 'WeTrust', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('2708', 'vib', 'Viberate Token', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('2710', 'waves', 'Waves', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('2712', 'wings', 'WINGS', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('2715', 'xlm', 'Stellar', '2017-12-21 08:34:28+00', '1.539e-05');
INSERT INTO "assets" VALUES ('3967', 'brk', 'Breakout', '2017-12-21 08:34:32+00', '3.4e-05');
INSERT INTO "assets" VALUES ('3968', 'aur', 'Auroracoin', '2017-12-21 08:34:32+00', '0.00010002');
INSERT INTO "assets" VALUES ('3969', 'aby', 'ArtByte', '2017-12-21 08:34:31+00', '1.41e-06');
INSERT INTO "assets" VALUES ('3970', 'ark', 'Ark', '2017-12-21 08:34:28+00', '0.00052495');
INSERT INTO "assets" VALUES ('3971', 'cure', 'Curecoin', '2017-12-21 08:34:32+00', '3.579e-05');
INSERT INTO "assets" VALUES ('3972', 'meme', 'Memetic / PepeCoin', '2017-12-21 08:34:32+00', '5.002e-05');
INSERT INTO "assets" VALUES ('3973', 'brx', 'Breakout Stake', '2017-12-21 08:34:32+00', '7.485e-05');
INSERT INTO "assets" VALUES ('3974', 'mer', 'Mercury', '2017-12-21 08:34:29+00', '5.08e-05');
INSERT INTO "assets" VALUES ('3975', '2give', '2GIVE', '2017-12-21 08:34:32+00', '1.13e-06');
INSERT INTO "assets" VALUES ('3976', 'bsd', 'BitSend', '2017-12-21 08:34:31+00', '8.239e-05');
INSERT INTO "assets" VALUES ('3977', 'cloak', 'CloakCoin', '2017-12-21 08:34:29+00', '0.001154');
INSERT INTO "assets" VALUES ('3978', 'dct', 'Decent', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('3979', 'mona', 'MonaCoin', '2017-12-21 08:34:28+00', '0.00088597');
INSERT INTO "assets" VALUES ('3980', 'mue', 'MonetaryUnit', '2017-12-21 08:34:30+00', '1.856e-05');
INSERT INTO "assets" VALUES ('3981', 'grs', 'Groestlcoin', '2017-12-21 08:34:29+00', '0.00013647');
INSERT INTO "assets" VALUES ('3982', 'music', 'Musicoin', '2017-12-21 08:34:31+00', '2.69e-06');
INSERT INTO "assets" VALUES ('3983', 'nbt', 'NuBits', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('3984', 'dmd', 'Diamond', '2017-12-21 08:34:30+00', '0.00114349');
INSERT INTO "assets" VALUES ('3985', 'ebst', 'eBoost', '2017-12-21 08:34:34+00', '1.396e-05');
INSERT INTO "assets" VALUES ('3986', 'incnt', 'Incent', '2017-12-21 08:34:31+00', '2.618e-05');
INSERT INTO "assets" VALUES ('3987', 'bay', 'BitBay', '2017-12-21 08:34:29+00', '1.57e-05');
INSERT INTO "assets" VALUES ('3988', 'infx', 'Influxcoin', '2017-12-21 08:34:34+00', '6.791e-05');
INSERT INTO "assets" VALUES ('3989', 'dope', 'DopeCoin', '2017-12-21 08:34:32+00', '6.22e-06');
INSERT INTO "assets" VALUES ('3990', 'golos', 'Golos', '2017-12-21 08:34:31+00', '1.407e-05');
INSERT INTO "assets" VALUES ('3991', 'efl', 'e-Gulden', '2017-12-21 08:34:33+00', '1.716e-05');
INSERT INTO "assets" VALUES ('3992', 'ion', 'ION', '2017-12-21 08:34:30+00', '0.00015999');
INSERT INTO "assets" VALUES ('3993', 'ioc', 'I/O Coin', '2017-12-21 08:34:30+00', '0.00020516');
INSERT INTO "assets" VALUES ('3994', 'dtb', 'Databits', '2017-12-21 08:34:31+00', '6.814e-05');
INSERT INTO "assets" VALUES ('3995', 'iop', 'Internet of People', '2017-12-21 08:34:32+00', '0.00047405');
INSERT INTO "assets" VALUES ('3996', 'egc', 'EverGreenCoin', '2017-12-21 08:34:32+00', '3.179e-05');
INSERT INTO "assets" VALUES ('3997', 'dyn', 'Dynamic', '2017-12-21 08:34:32+00', '0.00025271');
INSERT INTO "assets" VALUES ('3998', 'kmd', 'Komodo', '2017-12-21 08:34:28+00', '0.00075946');
INSERT INTO "assets" VALUES ('3999', 'aeon', 'Aeon', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4000', 'kore', 'Kore', '2017-12-21 08:34:32+00', '0.00043277');
INSERT INTO "assets" VALUES ('4001', 'enrg', 'Energycoin', '2017-12-21 08:34:31+00', '8.83e-06');
INSERT INTO "assets" VALUES ('4002', 'nxs', 'Nexus', '2017-12-21 08:34:29+00', '0.00023409');
INSERT INTO "assets" VALUES ('4003', 'emc', 'Emercoin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4004', 'ok', 'OKCash', '2017-12-21 08:34:30+00', '3.636e-05');
INSERT INTO "assets" VALUES ('4005', 'erc', 'EuropeCoin', '2017-12-21 08:34:32+00', '4.8e-05');
INSERT INTO "assets" VALUES ('4006', 'excl', 'ExclusiveCoin', '2017-12-21 08:34:32+00', '0.00013862');
INSERT INTO "assets" VALUES ('4007', 'part', 'Particl', '2017-12-21 08:34:29+00', '0.00068114');
INSERT INTO "assets" VALUES ('4008', 'ftc', 'Feathercoin', '2017-12-21 08:34:29+00', '2.648e-05');
INSERT INTO "assets" VALUES ('4009', 'zcl', 'ZClassic', '2017-12-21 08:34:32+00', '0.0002829');
INSERT INTO "assets" VALUES ('4010', 'xzc', 'ZCoin', '2017-12-21 08:34:29+00', '0.00462311');
INSERT INTO "assets" VALUES ('4011', 'fair', 'FairCoin', '2017-12-21 08:34:30+00', '6.195e-05');
INSERT INTO "assets" VALUES ('4012', 'blitz', 'Blitzcash', '2017-12-21 08:34:32+00', '0.00014278');
INSERT INTO "assets" VALUES ('4013', 'agrs', 'Agoras Tokens', '2017-12-21 08:34:29+00', '0.00011969');
INSERT INTO "assets" VALUES ('4014', 'pivx', 'PIVX', '2017-12-21 08:34:28+00', '0.00064698');
INSERT INTO "assets" VALUES ('4015', 'swt', 'Swarm City', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4016', 'vtr', 'vTorrent', '2017-12-21 08:34:33+00', '2.792e-05');
INSERT INTO "assets" VALUES ('4017', 'synx', 'Syndicate', '2017-12-21 08:34:32+00', '3.439e-05');
INSERT INTO "assets" VALUES ('4018', 'gam', 'Gambit', '2017-12-21 08:34:31+00', '0.00147029');
INSERT INTO "assets" VALUES ('4019', 'pkb', 'ParkByte', '2017-12-21 08:34:33+00', '8.002e-05');
INSERT INTO "assets" VALUES ('4020', 'tks', 'Tokes', '2017-12-21 08:34:33+00', '0.00024313');
INSERT INTO "assets" VALUES ('4021', 'pdc', 'Project Decorum', '2017-12-21 08:34:32+00', '9.9e-06');
INSERT INTO "assets" VALUES ('4022', 'ptc', 'Pesetacoin', '2017-12-21 08:34:32+00', '5.86e-06');
INSERT INTO "assets" VALUES ('4023', 'xaur', 'XAUR', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4024', 'xel', 'Elastic', '2017-12-21 08:34:30+00', '3.653e-05');
INSERT INTO "assets" VALUES ('4025', 'xdn', 'DigitalNote', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4026', 'bitb', 'BitBean', '2017-12-21 08:34:30+00', '9.6e-07');
INSERT INTO "assets" VALUES ('4027', 'trig', 'Triggers', '2017-12-21 08:34:30+00', '0.0001053');
INSERT INTO "assets" VALUES ('4028', 'thc', 'HempCoin', '2017-12-21 08:34:29+00', '1.985e-05');
INSERT INTO "assets" VALUES ('4029', 'tx', 'TransferCoin', '2017-12-21 08:34:31+00', '0.00019988');
INSERT INTO "assets" VALUES ('4030', 'ubq', 'Ubiq', '2017-12-21 08:34:29+00', '0.00023696');
INSERT INTO "assets" VALUES ('4031', 'qwark', 'Qwark', '2017-12-21 08:34:32+00', '1.571e-05');
INSERT INTO "assets" VALUES ('4032', 'unb', 'UnbreakableCoin', '2017-12-21 08:34:33+00', '0.00010273');
INSERT INTO "assets" VALUES ('4033', 'rdd', 'ReddCoin', '2017-12-21 08:34:29+00', '6.8e-07');
INSERT INTO "assets" VALUES ('4034', 'rby', 'Rubycoin', '2017-12-21 08:34:30+00', '7.587e-05');
INSERT INTO "assets" VALUES ('4035', 'xmy', 'Myriad', '2017-12-21 08:34:31+00', '9.6e-07');
INSERT INTO "assets" VALUES ('4036', 'trust', 'TrustPlus', '2017-12-21 08:34:32+00', '1.762e-05');
INSERT INTO "assets" VALUES ('4037', 'vox', 'Voxels', '2017-12-21 08:34:29+00', '2.239e-05');
INSERT INTO "assets" VALUES ('4038', 'xvg', 'Verge', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4039', 'rise', 'Rise', '2017-12-21 08:34:29+00', '4.231e-05');
INSERT INTO "assets" VALUES ('4040', 'seq', 'Sequence', '2017-12-21 08:34:31+00', '2.082e-05');
INSERT INTO "assets" VALUES ('4041', 'xwc', 'WhiteCoin', '2017-12-21 08:34:30+00', '1.55e-05');
INSERT INTO "assets" VALUES ('4042', 'sib', 'SIBCoin', '2017-12-21 08:34:30+00', '0.00022416');
INSERT INTO "assets" VALUES ('4043', 'start', 'Startcoin', '2017-12-21 08:34:33+00', '8.6e-06');
INSERT INTO "assets" VALUES ('4044', 'spr', 'SpreadCoin', '2017-12-21 08:34:33+00', '2.704e-05');
INSERT INTO "assets" VALUES ('4045', 'snrg', 'Synergy', '2017-12-21 08:34:32+00', '0.00015232');
INSERT INTO "assets" VALUES ('4046', 'xmg', 'Magi', '2017-12-21 08:34:33+00', '3.151e-05');
INSERT INTO "assets" VALUES ('4047', 'shift', 'Shift', '2017-12-21 08:34:30+00', '0.00024547');
INSERT INTO "assets" VALUES ('4048', 'sphr', 'Sphere', '2017-12-21 08:34:31+00', '0.00030902');
INSERT INTO "assets" VALUES ('4049', 'cann', 'CannabisCoin', '2017-12-21 08:34:32+00', '5.87e-06');
INSERT INTO "assets" VALUES ('4050', 'sls', 'SaluS', '2017-12-21 08:34:30+00', '0.00205103');
INSERT INTO "assets" VALUES ('4051', 'slr', 'SolarCoin', '2017-12-21 08:34:31+00', '3.404e-05');
INSERT INTO "assets" VALUES ('4052', 'xst', 'Stealthcoin', '2017-12-21 08:34:31+00', '6.732e-05');
INSERT INTO "assets" VALUES ('4053', 'swift', 'Bitswift', '2017-12-21 08:34:32+00', '0.00012856');
INSERT INTO "assets" VALUES ('4054', 'apx', 'APX', '2017-12-21 08:34:32+00', '0.00087999');
INSERT INTO "assets" VALUES ('4055', 'byc', 'Bytecent', '2017-12-21 08:34:34+00', '6.553e-05');
INSERT INTO "assets" VALUES ('4056', 'block', 'Blocknet', '2017-12-21 08:34:29+00', '0.00230231');
INSERT INTO "assets" VALUES ('4057', 'club', 'ClubCoin', '2017-12-21 08:34:40+00', '0.00017049');
INSERT INTO "assets" VALUES ('4058', 'nlg', 'Gulden', '2017-12-21 08:34:30+00', '1.064e-05');
INSERT INTO "assets" VALUES ('4059', 'coval', 'Circuits of Value', '2017-12-21 08:34:31+00', '1.17e-06');
INSERT INTO "assets" VALUES ('4060', 'gbyte', 'Byteball Bytes', '2017-12-21 08:34:28+00', '0.0429571');
INSERT INTO "assets" VALUES ('4061', 'gbg', 'Golos Gold', '2017-12-21 08:34:40+00', '1.148e-05');
INSERT INTO "assets" VALUES ('4062', 'lmc', 'LoMoCoin', '2017-12-21 08:34:31+00', '5.83e-06');
INSERT INTO "assets" VALUES ('4068', 'cpc', 'Capricoin', '2017-12-21 08:34:34+00', '3.803e-05');
INSERT INTO "assets" VALUES ('4069', 'gcr', 'Global Currency Reserve', '2017-12-21 08:34:31+00', '1.569e-05');
INSERT INTO "assets" VALUES ('4070', 'geo', 'GeoCoin', '2017-12-21 08:34:33+00', '0.00011726');
INSERT INTO "assets" VALUES ('4071', 'crw', 'Crown', '2017-12-21 08:34:30+00', '0.00020152');
INSERT INTO "assets" VALUES ('4072', 'gld', 'GoldCoin', '2017-12-21 08:34:32+00', '1.856e-05');
INSERT INTO "assets" VALUES ('4313', 'miota', 'IOTA', '2017-12-21 08:34:28+00', '0.00030799');
INSERT INTO "assets" VALUES ('4324', 'trx', 'TRON', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4328', 'ppt', 'Populous', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4332', 'hsr', 'Hshare', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4347', 'bnb', 'Binance Coin', '2017-12-21 08:34:28+00', '0.00032414');
INSERT INTO "assets" VALUES ('4348', 'veri', 'Veritaseum', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4351', 'xrb', 'RaiBlocks', '2017-12-21 08:34:28+00', '0.00029523');
INSERT INTO "assets" VALUES ('4355', 'ven', 'VeChain', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4356', 'wtc', 'Walton', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4357', 'etn', 'Electroneum', '2017-12-21 08:34:28+00', '4.68e-06');
INSERT INTO "assets" VALUES ('4360', 'knc', 'KingN Coin', '2017-12-21 08:34:40+00', '0.00059169');
INSERT INTO "assets" VALUES ('4364', 'ae', 'Aeternity', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4366', 'qash', 'QASH', '2017-12-21 08:34:28+00', '6.33e-05');
INSERT INTO "assets" VALUES ('4373', 'gxs', 'GXShares', '2017-12-21 08:34:29+00', '0.00039964');
INSERT INTO "assets" VALUES ('4381', 'cnx', 'Cryptonex', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4385', 'drgn', 'Dragonchain', '2017-12-21 08:34:29+00', '5.747e-05');
INSERT INTO "assets" VALUES ('4387', 'rdn', 'Raiden Network Token', '2017-12-21 08:34:29+00', '0.00025125');
INSERT INTO "assets" VALUES ('4394', 'req', 'Request Network', '2017-12-21 08:34:29+00', '1.891e-05');
INSERT INTO "assets" VALUES ('4396', 'aion', 'Aion', '2017-12-21 08:34:29+00', '0.00017273');
INSERT INTO "assets" VALUES ('4397', 'ink', 'Ink', '2017-12-21 08:34:29+00', '4.893e-05');
INSERT INTO "assets" VALUES ('4401', 'rhoc', 'RChain', '2017-12-21 08:34:29+00', '5.277e-05');
INSERT INTO "assets" VALUES ('4402', 'ppp', 'PayPie', '2017-12-21 08:34:29+00', '0.00012207');
INSERT INTO "assets" VALUES ('4405', 'ethos', 'Ethos', '2017-12-21 08:34:29+00', '0.00017372');
INSERT INTO "assets" VALUES ('4406', 'snm', 'SONM', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4407', 'link', 'ChainLink', '2017-12-21 08:34:29+00', '2.265e-05');
INSERT INTO "assets" VALUES ('4409', 'sub', 'Substratum', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4411', 'xas', 'Asch', '2017-12-21 08:34:29+00', '9.742e-05');
INSERT INTO "assets" VALUES ('4412', 'act', 'Achain', '2017-12-21 08:34:29+00', '2.469e-05');
INSERT INTO "assets" VALUES ('4413', 'sky', 'Skycoin', '2017-12-21 08:34:29+00', '0.0012077');
INSERT INTO "assets" VALUES ('4415', 'r', 'Revain', '2017-12-21 08:34:29+00', '3.572e-05');
INSERT INTO "assets" VALUES ('4416', 'tnb', 'Time New Bank', '2017-12-21 08:34:29+00', '5.4e-06');
INSERT INTO "assets" VALUES ('4417', 'pura', 'Pura', '2017-12-21 08:34:29+00', '3.358e-05');
INSERT INTO "assets" VALUES ('4419', 'qsp', 'Quantstamp', '2017-12-21 08:34:29+00', '1.146e-05');
INSERT INTO "assets" VALUES ('4420', 'kin', 'Kin', '2017-12-21 08:34:29+00', '8e-09');
INSERT INTO "assets" VALUES ('4424', 'dent', 'Dent', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4425', 'lrc', 'Loopring', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4426', 'cnd', 'Cindicator', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4427', 'jinn', 'Jinn', '2017-12-21 08:34:29+00', '0.113181');
INSERT INTO "assets" VALUES ('4432', 'enj', 'Enjin Coin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4433', 'yoyow', 'Yoyow', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4437', 'atm', 'ATMChain', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4442', 'pepecash', 'Pepe Cash', '2017-12-21 08:34:29+00', '7.11e-06');
INSERT INTO "assets" VALUES ('4444', 'kcs', 'KuCoin Shares', '2017-12-21 08:34:29+00', '5.93e-05');
INSERT INTO "assets" VALUES ('4445', 'ctr', 'Centra token', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4446', 'mnx', 'MinexCoin', '2017-12-21 08:34:29+00', '0.00153004');
INSERT INTO "assets" VALUES ('4447', 'rpx', 'Red Pulse', '2017-12-21 08:34:29+00', '1.101e-05');
INSERT INTO "assets" VALUES ('4448', 'dpy', 'Delphy', '2017-12-21 08:34:29+00', '0.00016271');
INSERT INTO "assets" VALUES ('4449', 'wabi', 'WaBi', '2017-12-21 08:34:29+00', '0.0001077');
INSERT INTO "assets" VALUES ('4453', 'lkk', 'Lykke', '2017-12-21 08:34:30+00', '1.451e-05');
INSERT INTO "assets" VALUES ('4455', 'mgo', 'MobileGo', '2017-12-21 08:34:29+00', '4.677e-05');
INSERT INTO "assets" VALUES ('4458', 'plr', 'Pillar', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4460', 'wgr', 'Wagerr', '2017-12-21 08:34:30+00', '1.94e-05');
INSERT INTO "assets" VALUES ('4461', 'ukg', 'Unikoin Gold', '2017-12-21 08:34:30+00', '2.465e-05');
INSERT INTO "assets" VALUES ('4462', 'cob', 'Cobinhood', '2017-12-21 08:34:30+00', '1.396e-05');
INSERT INTO "assets" VALUES ('4464', 'payx', 'Paypex', '2017-12-21 08:34:30+00', '5.366e-05');
INSERT INTO "assets" VALUES ('4466', 'tnt', 'Tierion', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4467', 'poe', 'Po.et', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4468', 'smart', 'SmartCash', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4469', 'hvn', 'Hive Project', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4470', 'unity', 'SuperNET', '2017-12-21 08:34:30+00', '0.00408789');
INSERT INTO "assets" VALUES ('4471', 'lend', 'EthLend', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4475', 'cdt', 'Coindash', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4477', 'xby', 'XTRABYTES', '2017-12-21 08:34:30+00', '9.25e-06');
INSERT INTO "assets" VALUES ('4479', 'nebl', 'Neblio', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4481', 'ast', 'AirSwap', '2017-12-21 08:34:30+00', '2.147e-05');
INSERT INTO "assets" VALUES ('4485', 'bot', 'Bodhi', '2017-12-21 08:34:30+00', '7.155e-05');
INSERT INTO "assets" VALUES ('4488', 'taas', 'TAAS', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4489', 'dcn', 'Dentacoin', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4495', 'vee', 'BLOCKv', '2017-12-21 08:34:30+00', '2.05e-06');
INSERT INTO "assets" VALUES ('4496', 'amb', 'Ambrosus', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4499', 'spank', 'SpankChain', '2017-12-21 08:34:30+00', '9.47e-06');
INSERT INTO "assets" VALUES ('4506', 'mod', 'Modum', '2017-12-21 08:34:30+00', '0.00015395');
INSERT INTO "assets" VALUES ('4507', 'bitcny', 'bitCNY', '2017-12-21 08:34:30+00', '8.38e-06');
INSERT INTO "assets" VALUES ('4508', 'fuel', 'EtherParty', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4509', 'mda', 'Moeda Loyalty Points', '2017-12-21 08:34:30+00', '0.00014565');
INSERT INTO "assets" VALUES ('4510', 'zsc', 'Zeus Shield Coin', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4511', 'otn', 'Open Trading Network', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4513', 'tips', 'FedoraCoin', '2017-12-21 08:34:31+00', '3e-09');
INSERT INTO "assets" VALUES ('4515', 'xp', 'XP', '2017-12-21 08:34:30+00', '2e-08');
INSERT INTO "assets" VALUES ('4517', 'mth', 'Monetha', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4519', 'grid', 'Grid+', '2017-12-21 08:34:30+00', '4.883e-05');
INSERT INTO "assets" VALUES ('4520', 'bco', 'BridgeCoin', '2017-12-21 08:34:30+00', '7.863e-05');
INSERT INTO "assets" VALUES ('4526', 'xpa', 'XPlay', '2017-12-21 08:34:30+00', '2.13e-06');
INSERT INTO "assets" VALUES ('4527', 'rmc', 'Remicoin', '2017-12-21 08:34:35+00', '3.17e-05');
INSERT INTO "assets" VALUES ('4528', 'csno', 'BitDice', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4529', 'nlc2', 'NoLimitCoin', '2017-12-21 08:34:30+00', '9.88e-06');
INSERT INTO "assets" VALUES ('4530', 'btx', 'Bitcore', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4532', 'pst', 'Primas', '2017-12-21 08:34:31+00', '3.518e-05');
INSERT INTO "assets" VALUES ('4534', 'wct', 'Waves Community Token', '2017-12-21 08:34:31+00', '0.00018485');
INSERT INTO "assets" VALUES ('4535', 'frst', 'FirstCoin', '2017-12-21 08:34:31+00', '0.00090491');
INSERT INTO "assets" VALUES ('4536', 'bcap', 'BCAP', '2017-12-21 08:34:31+00', '0.00017823');
INSERT INTO "assets" VALUES ('4538', 'pre', 'Premine', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4541', 'gvt', 'Genesis Vision Token', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4542', 'xuc', 'Exchange Union', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4543', 'xspec', 'Spectrecoin', '2017-12-21 08:34:30+00', '9.831e-05');
INSERT INTO "assets" VALUES ('4546', 'stx', 'Stox', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4548', 'credo', 'Credo', '2017-12-21 08:34:37+00', '2.45e-06');
INSERT INTO "assets" VALUES ('4550', 'obits', 'OBITS', '2017-12-21 08:34:31+00', '8.725e-05');
INSERT INTO "assets" VALUES ('4551', 'oct', 'OracleChain', '2017-12-21 08:34:31+00', '6.095e-05');
INSERT INTO "assets" VALUES ('4552', 'qau', 'Quantum', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4553', 'dlt', 'Agrello', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4554', 'evx', 'Everex', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4555', 'drt', 'DomRaider Token', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4557', 'prg', 'Paragon', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4558', 'ixt', 'iXledger', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4559', 'snc', 'SunContract', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4560', 'phr', 'Phore', '2017-12-21 08:34:31+00', '0.00018308');
INSERT INTO "assets" VALUES ('4562', 'nuls', 'Nuls', '2017-12-21 08:34:31+00', '6.637e-05');
INSERT INTO "assets" VALUES ('4563', 'icos', 'ICOBox', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4565', 'alis', 'ALIS', '2017-12-21 08:34:31+00', '3.629e-05');
INSERT INTO "assets" VALUES ('4567', 'bbr', 'Boolberry', '2017-12-21 08:34:31+00', '9e-05');
INSERT INTO "assets" VALUES ('4569', 'bq', 'bitqy', '2017-12-21 08:34:31+00', '5e-07');
INSERT INTO "assets" VALUES ('4570', 'tkn', 'TKN', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4573', 'net', 'Nimiq', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4574', 'msp', 'Mothership', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4575', 'xrl', 'Rialto', '2017-12-21 08:34:31+00', '1.636e-05');
INSERT INTO "assets" VALUES ('4576', 'leo', 'LEOcoin', '2017-12-21 08:34:31+00', '1.349e-05');
INSERT INTO "assets" VALUES ('4580', 'moon', 'Mooncoin', '2017-12-21 08:34:31+00', '6e-09');
INSERT INTO "assets" VALUES ('4583', 'dice', 'Etheroll', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4584', 'ppy', 'Peerplays', '2017-12-21 08:34:31+00', '0.00047829');
INSERT INTO "assets" VALUES ('4586', 'uno', 'Unobtanium', '2017-12-21 08:34:31+00', '0.00654813');
INSERT INTO "assets" VALUES ('4587', 'kick', 'KickCoin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4588', 'tcc', 'The ChampCoin', '2017-12-21 08:34:31+00', '6.77e-06');
INSERT INTO "assets" VALUES ('4591', 'atb', 'ATB Coin', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4593', 'nsr', 'NuShares', '2017-12-21 08:34:31+00', '3.9e-07');
INSERT INTO "assets" VALUES ('4594', 'bitusd', 'bitUSD', '2017-12-21 08:34:31+00', '5.705e-05');
INSERT INTO "assets" VALUES ('4596', 'nvst', 'NVO', '2017-12-21 08:34:31+00', '8.507e-05');
INSERT INTO "assets" VALUES ('4597', 'bcpt', 'BlockMason Credit Protocol', '2017-12-21 08:34:31+00', '2.622e-05');
INSERT INTO "assets" VALUES ('4598', 'heat', 'HEAT', '2017-12-21 08:34:32+00', '2.988e-05');
INSERT INTO "assets" VALUES ('4600', 'plbt', 'Polybius', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4601', 'oxy', 'Oxycoin', '2017-12-21 08:34:31+00', '1.1e-05');
INSERT INTO "assets" VALUES ('4602', 'posw', 'PoSW Coin', '2017-12-21 08:34:31+00', '2.33e-05');
INSERT INTO "assets" VALUES ('4603', 'odn', 'Obsidian', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4604', 'art', 'Maecenas', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4605', 'air', 'AirToken', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4606', 'hst', 'Decision Token', '2017-12-21 08:34:31+00', '5.185e-05');
INSERT INTO "assets" VALUES ('4608', 'soar', 'Soarcoin', '2017-12-21 08:34:31+00', '1.57e-06');
INSERT INTO "assets" VALUES ('4609', 'onion', 'DeepOnion', '2017-12-21 08:34:31+00', '0.0002165');
INSERT INTO "assets" VALUES ('4610', 'coss', 'COSS', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4611', 'ett', 'EncryptoTel [ETH]', '2017-12-21 08:34:41+00', '4.52e-06');
INSERT INTO "assets" VALUES ('4612', 'poll', 'ClearPoll Token', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4614', 'bmc', 'Black Moon', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4615', 'nvc', 'Novacoin', '2017-12-21 08:34:31+00', '0.00048597');
INSERT INTO "assets" VALUES ('4620', 'blue', 'BLUE', '2017-12-21 08:34:31+00', '3.736e-05');
INSERT INTO "assets" VALUES ('4621', 'bet', 'DAO Casino', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4623', 'time', 'Chronobank', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4625', 'rvt', 'Rivetz', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4626', 'zny', 'Bitzeny', '2017-12-21 08:34:31+00', '1.637e-05');
INSERT INTO "assets" VALUES ('4629', 'la', 'LAToken', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4631', 'xsh', 'SHIELD', '2017-12-21 08:34:31+00', '3.69e-06');
INSERT INTO "assets" VALUES ('4632', 'oax', 'OpenANX', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4633', 'mtnc', 'Masternodecoin', '2017-12-21 08:34:32+00', '1.5e-05');
INSERT INTO "assets" VALUES ('4634', 'cag', 'Change', '2017-12-21 08:34:32+00', '2.449e-05');
INSERT INTO "assets" VALUES ('4637', 'dna', 'EncrypGen', '2017-12-21 08:34:32+00', '1.924e-05');
INSERT INTO "assets" VALUES ('4638', 'astro', 'Astro', '2017-12-21 08:34:32+00', '0.00024169');
INSERT INTO "assets" VALUES ('4639', 'mxt', 'MarteXcoin', '2017-12-21 08:34:32+00', '0.00026457');
INSERT INTO "assets" VALUES ('4640', 'tgt', 'Target Coin', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4641', 'ecc', 'ECC', '2017-12-21 08:34:32+00', '2e-08');
INSERT INTO "assets" VALUES ('4644', 'eac', 'EarthCoin', '2017-12-21 08:34:31+00', '8e-08');
INSERT INTO "assets" VALUES ('4645', 'cat', 'BitClave', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4646', 'xto', 'Tao', '2017-12-21 08:34:32+00', '2.074e-05');
INSERT INTO "assets" VALUES ('4647', 'vibe', 'Vibe Coin', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4649', 'dbet', 'DecentBet', '2017-12-21 08:34:32+00', '8.95e-06');
INSERT INTO "assets" VALUES ('4650', 'xnn', 'Xenon', '2017-12-21 08:34:32+00', '2.17e-06');
INSERT INTO "assets" VALUES ('4652', 'toa', 'ToaCoin', '2017-12-21 08:34:32+00', '4.7e-07');
INSERT INTO "assets" VALUES ('4653', 'b2b', 'B2B', '2017-12-21 08:34:32+00', '4.945e-05');
INSERT INTO "assets" VALUES ('4654', 'ift', 'InvestFeed', '2017-12-21 08:34:32+00', '3.85e-06');
INSERT INTO "assets" VALUES ('4655', 'cvcoin', 'CVCoin', '2017-12-21 08:34:32+00', '6.057e-05');
INSERT INTO "assets" VALUES ('4656', 'edr', 'E-Dinar Coin', '2017-12-21 08:34:32+00', '7.5e-07');
INSERT INTO "assets" VALUES ('4657', 'crea', 'Creativecoin', '2017-12-21 08:34:33+00', '2.697e-05');
INSERT INTO "assets" VALUES ('4658', 'pix', 'Lampix', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4659', 'sxc', 'Sexcoin', '2017-12-21 08:34:32+00', '5.26e-06');
INSERT INTO "assets" VALUES ('4662', 'pzm', 'PRIZM', '2017-12-21 08:34:32+00', '5.357e-05');
INSERT INTO "assets" VALUES ('4665', 'pbt', 'Primalbase Token', '2017-12-21 08:34:32+00', '0.470525');
INSERT INTO "assets" VALUES ('4668', 'ebtc', 'eBTC', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4669', 'mcap', 'MCAP', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4670', 'bon', 'Bonpay', '2017-12-21 08:34:32+00', '4.214e-05');
INSERT INTO "assets" VALUES ('4672', 'bdl', 'Bitdeal', '2017-12-21 08:34:32+00', '2.43e-06');
INSERT INTO "assets" VALUES ('4675', 'chips', 'CHIPS', '2017-12-21 08:34:33+00', '2e-05');
INSERT INTO "assets" VALUES ('4676', 'zeph', 'Zephyr', '2017-12-21 08:34:32+00', '5.35e-06');
INSERT INTO "assets" VALUES ('4677', 'frd', 'Farad', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4678', 'hgt', 'HelloGold', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4680', 'dbix', 'DubaiCoin', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4681', 'inxt', 'Internxt', '2017-12-21 08:34:32+00', '0.0007496');
INSERT INTO "assets" VALUES ('4682', 'yoc', 'Yocoin', '2017-12-21 08:34:32+00', '4.47e-06');
INSERT INTO "assets" VALUES ('4684', 'pro', 'Propy', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4689', 'dovu', 'Dovu', '2017-12-21 08:34:32+00', '7.79e-06');
INSERT INTO "assets" VALUES ('4690', 'myb', 'Mybit', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4691', 'voise', 'Voise', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4692', 'arn', 'Aeron', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4693', 'mint', 'Mintcoin', '2017-12-21 08:34:32+00', '2e-08');
INSERT INTO "assets" VALUES ('4696', 'plu', 'PLU', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4697', 'bis', 'Bismuth', '2017-12-21 08:34:37+00', '7.077e-05');
INSERT INTO "assets" VALUES ('4698', 'divx', 'Divi', '2017-12-21 08:34:32+00', '8.191e-05');
INSERT INTO "assets" VALUES ('4699', 'ecob', 'Ecobit', '2017-12-21 08:34:32+00', '1.14e-06');
INSERT INTO "assets" VALUES ('4702', 'btdx', 'Bitcloud', '2017-12-21 08:34:32+00', '2.813e-05');
INSERT INTO "assets" VALUES ('4704', 'blu', 'BlueCoin', '2017-12-21 08:34:32+00', '9e-07');
INSERT INTO "assets" VALUES ('4705', 'cct', 'Crystal Clear Token', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4706', 'abj', 'Abjcoin', '2017-12-21 08:34:34+00', '1.89e-05');
INSERT INTO "assets" VALUES ('4707', 'elix', 'Elixir', '2017-12-21 08:34:32+00', '1.715e-05');
INSERT INTO "assets" VALUES ('4709', 'html5', 'HTMLCOIN', '2017-12-21 08:34:32+00', '1e-08');
INSERT INTO "assets" VALUES ('4710', 'bpl', 'Blockpool', '2017-12-21 08:34:33+00', '1.726e-05');
INSERT INTO "assets" VALUES ('4711', 'drp', 'DCORP', '2017-12-21 08:34:32+00', '6.99e-05');
INSERT INTO "assets" VALUES ('4712', 'put', 'PutinCoin', '2017-12-21 08:34:33+00', '1.25e-06');
INSERT INTO "assets" VALUES ('4713', 'nyc', 'NewYorkCoin', '2017-12-21 08:34:33+00', '2e-09');
INSERT INTO "assets" VALUES ('4715', 'atms', 'Atmos', '2017-12-21 08:34:32+00', '4.7e-06');
INSERT INTO "assets" VALUES ('4716', 'tfl', 'Trueflip', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4717', 'ntrn', 'Neutron', '2017-12-21 08:34:33+00', '1.114e-05');
INSERT INTO "assets" VALUES ('4718', 'dime', 'Dimecoin', '2017-12-21 08:34:31+00', '3e-09');
INSERT INTO "assets" VALUES ('4719', 'efyt', 'Ergo', '2017-12-21 08:34:33+00', '0.00091551');
INSERT INTO "assets" VALUES ('4722', 'zrc', 'Zrcoin', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4723', 'vsl', 'vSlice', '2017-12-21 08:34:32+00', '1.387e-05');
INSERT INTO "assets" VALUES ('4724', 'tzc', 'TrezarCoin', '2017-12-21 08:34:33+00', '4.16e-06');
INSERT INTO "assets" VALUES ('4725', 'gcc', 'GuccioneCoin', '2017-12-21 08:34:39+00', '3.6e-07');
INSERT INTO "assets" VALUES ('4727', 'flixx', 'Flixxo', '2017-12-21 08:34:33+00', '5.28e-06');
INSERT INTO "assets" VALUES ('4728', 'life', 'Life', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4729', 'pirl', 'Pirl', '2017-12-21 08:34:33+00', '5.793e-05');
INSERT INTO "assets" VALUES ('4730', 'gbx', 'GoByte', '2017-12-21 08:34:33+00', '0.00121596');
INSERT INTO "assets" VALUES ('4731', 'krb', 'Karbowanec', '2017-12-21 08:34:33+00', '6.408e-05');
INSERT INTO "assets" VALUES ('4732', 'ac', 'AsiaCoin', '2017-12-21 08:34:33+00', '2.9e-07');
INSERT INTO "assets" VALUES ('4733', 'nio', 'Autonio', '2017-12-21 08:34:33+00', '4.17e-06');
INSERT INTO "assets" VALUES ('4735', 'sss', 'Sharechain', '2017-12-21 08:34:33+00', '2.3e-07');
INSERT INTO "assets" VALUES ('4736', 'pac', 'Paccoin', '2017-12-21 08:34:33+00', '1e-10');
INSERT INTO "assets" VALUES ('4737', 'dar', 'Darcrus', '2017-12-21 08:34:33+00', '2.497e-05');
INSERT INTO "assets" VALUES ('4738', 'ind', 'Indorse', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4740', 'inn', 'Innova', '2017-12-21 08:34:33+00', '0.0002635');
INSERT INTO "assets" VALUES ('4742', 'xcn', 'Cryptonite', '2017-12-21 08:34:32+00', '1.08e-06');
INSERT INTO "assets" VALUES ('4743', 'adst', 'AdShares', '2017-12-21 08:34:33+00', '2.686e-05');
INSERT INTO "assets" VALUES ('4744', 'alqo', 'ALQO', '2017-12-21 08:34:33+00', '2.504e-05');
INSERT INTO "assets" VALUES ('4745', 'pbl', 'Publica', '2017-12-21 08:34:33+00', '1.703e-05');
INSERT INTO "assets" VALUES ('4747', 'eca', 'Electra', '2017-12-21 08:34:34+00', '7e-09');
INSERT INTO "assets" VALUES ('4748', 'trc', 'Terracoin', '2017-12-21 08:34:33+00', '1.48e-05');
INSERT INTO "assets" VALUES ('4749', 'gmt', 'Mercury Protocol', '2017-12-21 08:34:33+00', '1.95e-06');
INSERT INTO "assets" VALUES ('4750', 'ping', 'PING', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4751', 'ocl', 'Oceanlab', '2017-12-21 08:34:33+00', '7.55e-06');
INSERT INTO "assets" VALUES ('4752', 'wdc', 'WorldCoin', '2017-12-21 08:34:33+00', '2.73e-06');
INSERT INTO "assets" VALUES ('4753', 'chc', 'ChainCoin', '2017-12-21 08:34:33+00', '2.117e-05');
INSERT INTO "assets" VALUES ('4754', 'real', 'REAL', '2017-12-21 08:34:33+00', '2.643e-05');
INSERT INTO "assets" VALUES ('4755', 'hdg', 'Hedge', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4756', 'kln', 'Kolion', '2017-12-21 08:34:33+00', '0.00044725');
INSERT INTO "assets" VALUES ('4758', 'unit', 'Universal Currency', '2017-12-21 08:34:32+00', '3.632e-05');
INSERT INTO "assets" VALUES ('4759', 'rup', 'Rupee', '2017-12-21 08:34:33+00', '1.178e-05');
INSERT INTO "assets" VALUES ('4760', 'scl', 'SOCIAL', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4761', 'dot', 'Dotcoin', '2017-12-21 08:34:33+00', '9.4e-07');
INSERT INTO "assets" VALUES ('4762', 'sta', 'Starta', '2017-12-21 08:34:33+00', '5.881e-05');
INSERT INTO "assets" VALUES ('4763', 'ctx', 'Car Taxi', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4766', 'wish', 'MyWish', '2017-12-21 08:34:33+00', '1.465e-05');
INSERT INTO "assets" VALUES ('4768', 'vivo', 'VIVO', '2017-12-21 08:34:33+00', '0.00027411');
INSERT INTO "assets" VALUES ('4770', 'spf', 'Sportify', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4771', 'qrk', 'Quark', '2017-12-21 08:34:33+00', '1.16e-06');
INSERT INTO "assets" VALUES ('4772', 'ndc', 'Neverdie', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4773', 'anc', 'Anoncoin', '2017-12-21 08:34:33+00', '9.263e-05');
INSERT INTO "assets" VALUES ('4774', 'cnt', 'Centurion', '2017-12-21 08:34:33+00', '3.14e-06');
INSERT INTO "assets" VALUES ('4776', 'mec', 'Megacoin', '2017-12-21 08:34:33+00', '7.7e-06');
INSERT INTO "assets" VALUES ('4777', 'bash', 'LuckChain', '2017-12-21 08:34:33+00', '3e-07');
INSERT INTO "assets" VALUES ('4778', 'xlr', 'Solaris', '2017-12-21 08:34:33+00', '0.00034332');
INSERT INTO "assets" VALUES ('4779', 'atl', 'ATLANT Token', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4780', 'lux', 'LUXCoin', '2017-12-21 08:34:33+00', '0.00033794');
INSERT INTO "assets" VALUES ('4781', 'onx', 'Onix', '2017-12-21 08:34:33+00', '8.73e-06');
INSERT INTO "assets" VALUES ('4782', 'ong', 'onG.social', '2017-12-21 08:34:33+00', '1.855e-05');
INSERT INTO "assets" VALUES ('4783', 'sumo', 'Sumokoin', '2017-12-21 08:34:33+00', '0.00010642');
INSERT INTO "assets" VALUES ('4784', 'eqt', 'EquiTrader', '2017-12-21 08:34:33+00', '2.017e-05');
INSERT INTO "assets" VALUES ('4785', 'sift', 'Smart Investment Fund Token', '2017-12-21 08:34:33+00', '0.00029298');
INSERT INTO "assets" VALUES ('4786', 'qvt', 'Qvolta', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4787', 'esp', 'Espers', '2017-12-21 08:34:32+00', '2e-08');
INSERT INTO "assets" VALUES ('4788', 'hush', 'Hush', '2017-12-21 08:34:33+00', '9.048e-05');
INSERT INTO "assets" VALUES ('4789', 'pnd', 'Pandacoin', '2017-12-21 08:34:33+00', '6e-09');
INSERT INTO "assets" VALUES ('4790', 'crave', 'Crave', '2017-12-21 08:34:33+00', '0.00015032');
INSERT INTO "assets" VALUES ('4791', 'fcn', 'Fantomcoin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4792', 'linx', 'Linx', '2017-12-21 08:34:34+00', '1.13e-05');
INSERT INTO "assets" VALUES ('4793', 'fyn', 'FundYourselfNow', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4794', 'hyp', 'HyperStake', '2017-12-21 08:34:33+00', '1.8e-07');
INSERT INTO "assets" VALUES ('4795', 'ufo', 'UFO Coin', '2017-12-21 08:34:33+00', '6e-08');
INSERT INTO "assets" VALUES ('4796', 'adc', 'AudioCoin', '2017-12-21 08:34:33+00', '2.1e-07');
INSERT INTO "assets" VALUES ('4797', 'gb', 'GoldBlocks', '2017-12-21 08:34:34+00', '1.155e-05');
INSERT INTO "assets" VALUES ('4798', 'rex', 'REX', '2017-12-21 08:34:33+00', '2.561e-05');
INSERT INTO "assets" VALUES ('4799', 'adl', 'Adelphoi', '2017-12-21 08:34:33+00', '1.021e-05');
INSERT INTO "assets" VALUES ('4800', 'zeni', 'Zennies', '2017-12-21 08:34:34+00', '1.7e-07');
INSERT INTO "assets" VALUES ('4801', 'crypt', 'CryptCoin', '2017-12-21 08:34:33+00', '3.1e-05');
INSERT INTO "assets" VALUES ('4803', 'btcz', 'BitcoinZ', '2017-12-21 08:34:34+00', '2.4e-07');
INSERT INTO "assets" VALUES ('4804', 'zeit', 'Zeitcoin', '2017-12-21 08:34:33+00', '1e-08');
INSERT INTO "assets" VALUES ('4805', 'fyp', 'FlypMe', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4806', 'wgo', 'WavesGo', '2017-12-21 08:34:33+00', '1.988e-05');
INSERT INTO "assets" VALUES ('4807', 'gcn', 'GCoin', '2017-12-21 08:34:34+00', '1e-09');
INSERT INTO "assets" VALUES ('4808', 'ixc', 'Ixcoin', '2017-12-21 08:34:34+00', '8.19e-06');
INSERT INTO "assets" VALUES ('4810', 'trct', 'Tracto', '2017-12-21 08:34:34+00', '2.755e-05');
INSERT INTO "assets" VALUES ('4811', 'xft', 'Footy Cash', '2017-12-21 08:34:34+00', '3.507e-05');
INSERT INTO "assets" VALUES ('4812', 'erc20', 'ERC20', '2017-12-21 08:34:34+00', '1.1e-07');
INSERT INTO "assets" VALUES ('4813', 'flik', 'FLiK', '2017-12-21 08:34:34+00', '2.29e-06');
INSERT INTO "assets" VALUES ('4814', 'btcred', 'Bitcoin Red', '2017-12-21 08:34:34+00', '7.67e-06');
INSERT INTO "assets" VALUES ('4815', 'opt', 'Opus', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4816', 'mbrs', 'Embers', '2017-12-21 08:34:33+00', '3.69e-06');
INSERT INTO "assets" VALUES ('4817', 'visio', 'Visio', '2017-12-21 08:34:34+00', '3.08e-06');
INSERT INTO "assets" VALUES ('4818', 'ella', 'Ellaism', '2017-12-21 08:34:34+00', '4.844e-05');
INSERT INTO "assets" VALUES ('4819', 'zoi', 'Zoin', '2017-12-21 08:34:34+00', '8.11e-06');
INSERT INTO "assets" VALUES ('4820', 'mag', 'Magnet', '2017-12-21 08:34:34+00', '2.33e-05');
INSERT INTO "assets" VALUES ('4821', 'dgpt', 'DigiPulse', '2017-12-21 08:34:34+00', '7.829e-05');
INSERT INTO "assets" VALUES ('4822', 'ele', 'Elementrem', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4823', 'alt', 'Altcoin', '2017-12-21 08:34:34+00', '0.00139885');
INSERT INTO "assets" VALUES ('4824', '1337', '1337', '2017-12-21 08:34:34+00', '7e-09');
INSERT INTO "assets" VALUES ('4826', '42', '42-coin', '2017-12-21 08:34:34+00', '3.4152');
INSERT INTO "assets" VALUES ('4827', 'uis', 'Unitus', '2017-12-21 08:34:34+00', '2.71e-06');
INSERT INTO "assets" VALUES ('4828', 'unify', 'Unify', '2017-12-21 08:34:34+00', '7.79e-06');
INSERT INTO "assets" VALUES ('4829', 'hbt', 'Hubii Network', '2017-12-21 08:34:34+00', '1.055e-05');
INSERT INTO "assets" VALUES ('4830', 'cbx', 'Crypto Bullion', '2017-12-21 08:34:34+00', '0.00014929');
INSERT INTO "assets" VALUES ('4831', 'brit', 'BritCoin', '2017-12-21 08:34:34+00', '7.22e-06');
INSERT INTO "assets" VALUES ('4832', 'super', 'SuperCoin', '2017-12-21 08:34:33+00', '4.03e-06');
INSERT INTO "assets" VALUES ('4833', 'bta', 'Bata', '2017-12-21 08:34:34+00', '2.281e-05');
INSERT INTO "assets" VALUES ('4834', 'bbp', 'BiblePay', '2017-12-21 08:34:34+00', '4.2e-07');
INSERT INTO "assets" VALUES ('4835', 'bwk', 'Bulwark', '2017-12-21 08:34:33+00', '0.00023309');
INSERT INTO "assets" VALUES ('4836', 'carbon', 'Carboncoin', '2017-12-21 08:34:34+00', '5e-09');
INSERT INTO "assets" VALUES ('4837', 'wtt', 'Giga Watt', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4838', 'xmcc', 'MonacoCoin', '2017-12-21 08:34:34+00', '4.032e-05');
INSERT INTO "assets" VALUES ('4839', 'proc', 'ProCurrency', '2017-12-21 08:34:34+00', '1.41e-06');
INSERT INTO "assets" VALUES ('4840', 'log', 'Woodcoin', '2017-12-21 08:34:34+00', '1.401e-05');
INSERT INTO "assets" VALUES ('4841', 'mrt', 'Miners'' Reward Token', '2017-12-21 08:34:34+00', '1.109e-05');
INSERT INTO "assets" VALUES ('4842', 'fst', 'Fastcoin', '2017-12-21 08:34:34+00', '1.07e-06');
INSERT INTO "assets" VALUES ('4843', 'gim', 'Gimli', '2017-12-21 08:34:37+00', '1.46e-06');
INSERT INTO "assets" VALUES ('4844', 'zet', 'Zetacoin', '2017-12-21 08:34:34+00', '7.1e-07');
INSERT INTO "assets" VALUES ('4845', 'prix', 'Privatix', '2017-12-21 08:34:34+00', '9.363e-05');
INSERT INTO "assets" VALUES ('4846', 'pipl', 'PiplCoin', '2017-12-21 08:34:34+00', '1.27e-06');
INSERT INTO "assets" VALUES ('4847', 'cdn', 'Canada eCoin', '2017-12-21 08:34:34+00', '1.1e-06');
INSERT INTO "assets" VALUES ('4848', 'sprts', 'Sprouts', '2017-12-21 08:34:34+00', '1e-10');
INSERT INTO "assets" VALUES ('4849', 'linda', 'Linda', '2017-12-21 08:34:34+00', '1e-08');
INSERT INTO "assets" VALUES ('4850', 'cft', 'CryptoForecast', '2017-12-21 08:34:34+00', '1.92e-06');
INSERT INTO "assets" VALUES ('4851', 'prl', 'Oyster Pearl', '2017-12-21 08:34:33+00', '1.158e-05');
INSERT INTO "assets" VALUES ('4853', 'kobo', 'Kobocoin', '2017-12-21 08:34:34+00', '4.11e-06');
INSERT INTO "assets" VALUES ('4854', 'jns', 'Janus', '2017-12-21 08:34:34+00', '4.39e-06');
INSERT INTO "assets" VALUES ('4855', 'pure', 'Pure', '2017-12-21 08:34:34+00', '4.449e-05');
INSERT INTO "assets" VALUES ('4856', 'itns', 'IntenseCoin', '2017-12-21 08:34:34+00', '4.1e-07');
INSERT INTO "assets" VALUES ('4857', 'rkc', 'Royal Kingdom Coin', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4859', 'dem', 'Deutsche eMark', '2017-12-21 08:34:34+00', '2.77e-06');
INSERT INTO "assets" VALUES ('4860', 'arc', 'Arcade Token', '2017-12-21 08:34:37+00', '7.389e-05');
INSERT INTO "assets" VALUES ('4861', 'dft', 'DraftCoin', '2017-12-21 08:34:34+00', '4.078e-05');
INSERT INTO "assets" VALUES ('4862', 'inpay', 'InPay', '2017-12-21 08:34:37+00', '1.074e-05');
INSERT INTO "assets" VALUES ('4863', 'cno', 'Coin(O)', '2017-12-21 08:34:34+00', '1.13e-06');
INSERT INTO "assets" VALUES ('4864', 'kek', 'KekCoin', '2017-12-21 08:34:34+00', '9.12e-06');
INSERT INTO "assets" VALUES ('4865', 'nka', 'IncaKoin', '2017-12-21 08:34:35+00', '6e-09');
INSERT INTO "assets" VALUES ('4866', 'smly', 'SmileyCoin', '2017-12-21 08:34:34+00', '4e-09');
INSERT INTO "assets" VALUES ('4867', 'dnr', 'Denarius', '2017-12-21 08:34:34+00', '5.247e-05');
INSERT INTO "assets" VALUES ('4868', 'buzz', 'BuzzCoin', '2017-12-21 08:34:34+00', '1e-08');
INSERT INTO "assets" VALUES ('4869', 'grwi', 'Growers International', '2017-12-21 08:34:34+00', '0.00011078');
INSERT INTO "assets" VALUES ('4870', 'adz', 'Adzcoin', '2017-12-21 08:34:34+00', '2.14e-06');
INSERT INTO "assets" VALUES ('4871', 'btcs', 'Bitcoin Silver', '2017-12-21 08:34:41+00', '6.2e-07');
INSERT INTO "assets" VALUES ('4872', 'rain', 'Condensate', '2017-12-21 08:34:34+00', '1.01e-06');
INSERT INTO "assets" VALUES ('4873', 'nuko', 'Nekonium', '2017-12-21 08:34:34+00', '1.475e-05');
INSERT INTO "assets" VALUES ('4874', 'ldoge', 'LiteDoge', '2017-12-21 08:34:35+00', '5e-09');
INSERT INTO "assets" VALUES ('4875', 'nobl', 'NobleCoin', '2017-12-21 08:34:34+00', '4e-08');
INSERT INTO "assets" VALUES ('4876', 'btb', 'BitBar', '2017-12-21 08:34:34+00', '0.00233026');
INSERT INTO "assets" VALUES ('4877', 'vsx', 'Vsync', '2017-12-21 08:34:33+00', '1.92e-06');
INSERT INTO "assets" VALUES ('4878', 'icob', 'ICOBID', '2017-12-21 08:34:35+00', '4.8e-07');
INSERT INTO "assets" VALUES ('4879', 'gre', 'Greencoin', '2017-12-21 08:34:34+00', '4e-08');
INSERT INTO "assets" VALUES ('4880', 'xios', 'Xios', '2017-12-21 08:34:35+00', '3.415e-05');
INSERT INTO "assets" VALUES ('4881', 'colx', 'ColossusCoinXT', '2017-12-21 08:34:35+00', '1e-08');
INSERT INTO "assets" VALUES ('4882', 'uny', 'Unity Ingot', '2017-12-21 08:34:34+00', '3.9e-07');
INSERT INTO "assets" VALUES ('4883', 'strc', 'StarCredits', '2017-12-21 08:34:35+00', '1.5e-05');
INSERT INTO "assets" VALUES ('4884', 'aht', 'Bowhead', '2017-12-21 08:34:34+00', '1.595e-05');
INSERT INTO "assets" VALUES ('4885', 'mbi', 'Monster Byte', '2017-12-21 08:34:37+00', '4.4e-06');
INSERT INTO "assets" VALUES ('4886', 'xhi', 'HiCoin', '2017-12-21 08:34:35+00', '3.8e-07');
INSERT INTO "assets" VALUES ('4887', 'netko', 'Netko', '2017-12-21 08:34:35+00', '1.454e-05');
INSERT INTO "assets" VALUES ('4888', 'skin', 'SkinCoin', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4889', 'dcy', 'Dinastycoin', '2017-12-21 08:34:35+00', '4e-08');
INSERT INTO "assets" VALUES ('4891', 'ccrb', 'CryptoCarbon', '2017-12-21 08:34:35+00', '1.906e-05');
INSERT INTO "assets" VALUES ('4892', 'xjo', 'Joulecoin', '2017-12-21 08:34:35+00', '1.97e-06');
INSERT INTO "assets" VALUES ('4893', 'troll', 'Trollcoin', '2017-12-21 08:34:37+00', '1.2e-07');
INSERT INTO "assets" VALUES ('4894', 'dsh', 'DashCoin', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4895', 'rns', 'Renos', '2017-12-21 08:34:34+00', '2.26e-06');
INSERT INTO "assets" VALUES ('4896', 'sigt', 'Signatum', '2017-12-21 08:34:35+00', '5.5e-07');
INSERT INTO "assets" VALUES ('4898', 'fjc', 'FujiCoin', '2017-12-21 08:34:34+00', '6e-08');
INSERT INTO "assets" VALUES ('4899', 'eltcoin', 'ELTCOIN', '2017-12-21 08:34:35+00', '7.1e-07');
INSERT INTO "assets" VALUES ('4900', 'zer', 'Zero', '2017-12-21 08:34:35+00', '3.206e-05');
INSERT INTO "assets" VALUES ('4901', 'ats', 'Authorship Token', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4902', 'epy', 'Emphy', '2017-12-21 08:34:34+00', '1.099e-05');
INSERT INTO "assets" VALUES ('4903', 'hold', 'Interstellar Holdings', '2017-12-21 08:34:35+00', '6.9e-07');
INSERT INTO "assets" VALUES ('4904', 'tag', 'TagCoin', '2017-12-21 08:34:35+00', '7.62e-06');
INSERT INTO "assets" VALUES ('4905', 'ufr', 'Upfiring', '2017-12-21 08:34:35+00', '4.15e-06');
INSERT INTO "assets" VALUES ('4907', 'crc', 'CrowdCoin', '2017-12-21 08:34:34+00', '0.00036494');
INSERT INTO "assets" VALUES ('4908', 'pfr', 'Payfair', '2017-12-21 08:34:35+00', '6.8e-07');
INSERT INTO "assets" VALUES ('4909', 'rlt', 'RouletteToken', '2017-12-21 08:34:34+00', '7.71e-06');
INSERT INTO "assets" VALUES ('4910', 'moin', 'Moin', '2017-12-21 08:34:35+00', '7.06e-06');
INSERT INTO "assets" VALUES ('4911', 'utc', 'UltraCoin', '2017-12-21 08:34:37+00', '1.3e-06');
INSERT INTO "assets" VALUES ('4912', 'usnbt', 'NuBits', '2017-12-21 08:34:40+00', '5.866e-05');
INSERT INTO "assets" VALUES ('4913', 'mzc', 'MazaCoin', '2017-12-21 08:34:34+00', '6e-08');
INSERT INTO "assets" VALUES ('4914', 'tkr', 'TKR', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4915', 'bitbtc', 'bitBTC', '2017-12-21 08:34:35+00', '1.13135');
INSERT INTO "assets" VALUES ('4916', 'lcp', 'Litecoin Plus', '2017-12-21 08:34:35+00', '6.29e-05');
INSERT INTO "assets" VALUES ('4917', 'ebch', 'eBitcoinCash', '2017-12-21 08:34:35+00', '3.93e-06');
INSERT INTO "assets" VALUES ('4918', 'blockpay', 'BlockPay', '2017-12-21 08:34:34+00', '1.846e-05');
INSERT INTO "assets" VALUES ('4919', 'hbn', 'HoboNickels', '2017-12-21 08:34:37+00', '9.7e-07');
INSERT INTO "assets" VALUES ('4920', 'insn', 'InsaneCoin', '2017-12-21 08:34:35+00', '3.49e-06');
INSERT INTO "assets" VALUES ('4921', 'bro', 'Bitradio', '2017-12-21 08:34:35+00', '9.7e-06');
INSERT INTO "assets" VALUES ('4922', 'pxc', 'Phoenixcoin', '2017-12-21 08:34:35+00', '8.9e-07');
INSERT INTO "assets" VALUES ('4923', 'hero', 'Sovereign Hero', '2017-12-21 08:34:35+00', '0.0105494');
INSERT INTO "assets" VALUES ('4924', 'smc', 'SmartCoin', '2017-12-21 08:34:35+00', '2.73e-06');
INSERT INTO "assets" VALUES ('4925', 'xcpo', 'Copico', '2017-12-21 08:34:35+00', '3.53e-06');
INSERT INTO "assets" VALUES ('4926', 'j', 'Joincoin', '2017-12-21 08:34:35+00', '1.628e-05');
INSERT INTO "assets" VALUES ('4927', 'crm', 'Cream', '2017-12-21 08:34:35+00', '1.55e-06');
INSERT INTO "assets" VALUES ('4928', 'xgox', 'XGOX', '2017-12-21 08:34:35+00', '7e-08');
INSERT INTO "assets" VALUES ('4929', 'ebet', 'Ethbet', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4930', 'max', 'MaxCoin', '2017-12-21 08:34:35+00', '6.7e-07');
INSERT INTO "assets" VALUES ('4931', 'tes', 'TeslaCoin', '2017-12-21 08:34:35+00', '6e-07');
INSERT INTO "assets" VALUES ('4932', 'pos', 'PoSToken', '2017-12-21 08:34:35+00', '4.406e-05');
INSERT INTO "assets" VALUES ('4933', 'dp', 'DigitalPrice', '2017-12-21 08:34:35+00', '3.01e-06');
INSERT INTO "assets" VALUES ('4934', 'hpc', 'Happycoin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4935', 'bbt', 'BitBoost', '2017-12-21 08:34:35+00', '9.28e-06');
INSERT INTO "assets" VALUES ('4936', 'nto', 'Fujinto', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4937', 'zzc', 'ZoZoCoin', '2017-12-21 08:34:35+00', '8.311e-05');
INSERT INTO "assets" VALUES ('4938', 'bigup', 'BigUp', '2017-12-21 08:34:35+00', '2e-08');
INSERT INTO "assets" VALUES ('4939', 'altcom', 'AltCommunity Coin', '2017-12-21 08:34:35+00', '0.00031527');
INSERT INTO "assets" VALUES ('4940', 'ltb', 'LiteBar', '2017-12-21 08:34:35+00', '5.698e-05');
INSERT INTO "assets" VALUES ('4941', 'emb', 'EmberCoin', '2017-12-21 08:34:35+00', '4e-10');
INSERT INTO "assets" VALUES ('4942', 'tit', 'Titcoin', '2017-12-21 08:34:35+00', '9.1e-07');
INSERT INTO "assets" VALUES ('4943', 'otx', 'Octanox', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4944', 'fc2', 'FuelCoin', '2017-12-21 08:34:35+00', '5.5e-07');
INSERT INTO "assets" VALUES ('4945', 'lot', 'LottoCoin', '2017-12-21 08:34:36+00', '2e-09');
INSERT INTO "assets" VALUES ('4946', 'funk', 'The Cypherfunks', '2017-12-21 08:34:38+00', '9e-10');
INSERT INTO "assets" VALUES ('4947', 'atom', 'Atomic Coin', '2017-12-21 08:34:35+00', '3.29e-06');
INSERT INTO "assets" VALUES ('4948', 'fnc', 'FinCoin', '2017-12-21 08:34:36+00', '2.27e-06');
INSERT INTO "assets" VALUES ('4949', 'xpd', 'PetroDollar', '2017-12-21 08:34:35+00', '5e-07');
INSERT INTO "assets" VALUES ('4950', 'units', 'GameUnits', '2017-12-21 08:34:35+00', '1.946e-05');
INSERT INTO "assets" VALUES ('4951', 'vlt', 'Veltor', '2017-12-21 08:34:38+00', '5.735e-05');
INSERT INTO "assets" VALUES ('4952', 'trump', 'TrumpCoin', '2017-12-21 08:34:35+00', '4.95e-06');
INSERT INTO "assets" VALUES ('4953', 'acc', 'AdCoin', '2017-12-21 08:34:41+00', '5.07e-06');
INSERT INTO "assets" VALUES ('4955', 'dgc', 'Digitalcoin', '2017-12-21 08:34:35+00', '1.45e-06');
INSERT INTO "assets" VALUES ('4956', 'mne', 'Minereum', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('4957', 'pop', 'PopularCoin', '2017-12-21 08:34:36+00', '6e-09');
INSERT INTO "assets" VALUES ('4958', 'ccn', 'CannaCoin', '2017-12-21 08:34:35+00', '8.31e-06');
INSERT INTO "assets" VALUES ('4959', 'hat', 'Hawala.Today', '2017-12-21 08:34:35+00', '9.79e-05');
INSERT INTO "assets" VALUES ('4960', 'bria', 'BriaCoin', '2017-12-21 08:34:38+00', '4.543e-05');
INSERT INTO "assets" VALUES ('4961', 'newb', 'Newbium', '2017-12-21 08:34:35+00', '7.1e-07');
INSERT INTO "assets" VALUES ('4962', 'btcr', 'Bitcurrency', '2017-12-21 08:34:35+00', '1.9e-07');
INSERT INTO "assets" VALUES ('4963', 'crx', 'Chronos', '2017-12-21 08:34:36+00', '3.2e-07');
INSERT INTO "assets" VALUES ('4964', 'bcf', 'Bitcoin Fast', '2017-12-21 08:34:35+00', '7.66e-06');
INSERT INTO "assets" VALUES ('4965', 'zur', 'Zurcoin', '2017-12-21 08:34:35+00', '3.5e-07');
INSERT INTO "assets" VALUES ('4966', 'pak', 'Pakcoin', '2017-12-21 08:34:35+00', '7.1e-07');
INSERT INTO "assets" VALUES ('4967', 'pho', 'Photon', '2017-12-21 08:34:36+00', '1e-09');
INSERT INTO "assets" VALUES ('4968', 'fuck', 'FuckToken', '2017-12-21 08:34:38+00', '6.3e-07');
INSERT INTO "assets" VALUES ('4969', 'btwty', 'Bit20', '2017-12-21 08:34:35+00', '43.3372');
INSERT INTO "assets" VALUES ('4970', 'bucks', 'SwagBucks', '2017-12-21 08:34:35+00', '9.976e-05');
INSERT INTO "assets" VALUES ('4971', 'iflt', 'InflationCoin', '2017-12-21 08:34:36+00', '7e-10');
INSERT INTO "assets" VALUES ('4972', 'cfd', 'Confido', '2017-12-21 08:34:36+00', '2.19e-06');
INSERT INTO "assets" VALUES ('4973', 'ieth', 'iEthereum', '2017-12-21 08:34:36+00', '9.7e-07');
INSERT INTO "assets" VALUES ('4974', 'tri', 'Triangles', '2017-12-21 08:34:36+00', '0.0003879');
INSERT INTO "assets" VALUES ('4975', 'cco', 'Ccore', '2017-12-21 08:34:36+00', '2.341e-05');
INSERT INTO "assets" VALUES ('4976', 'bern', 'BERNcash', '2017-12-21 08:34:38+00', '3.9e-07');
INSERT INTO "assets" VALUES ('4977', 'el', 'Elcoin', '2017-12-21 08:34:35+00', '4.33e-06');
INSERT INTO "assets" VALUES ('4978', 'piggy', 'Piggycoin', '2017-12-21 08:34:36+00', '6e-08');
INSERT INTO "assets" VALUES ('4979', 'xlc', 'LeviarCoin', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('4980', 'xptx', 'PlatinumBAR', '2017-12-21 08:34:36+00', '6.178e-05');
INSERT INTO "assets" VALUES ('4981', 'etg', 'Ethereum Gold', '2017-12-21 08:34:36+00', '2.34e-06');
INSERT INTO "assets" VALUES ('4982', 'pasl', 'Pascal Lite', '2017-12-21 08:34:36+00', '6.25e-06');
INSERT INTO "assets" VALUES ('4983', 'bun', 'BunnyCoin', '2017-12-21 08:34:35+00', '4e-10');
INSERT INTO "assets" VALUES ('4984', 'bxt', 'BitTokens', '2017-12-21 08:34:38+00', '4.407e-05');
INSERT INTO "assets" VALUES ('4985', 'gpl', 'Gold Pressed Latinum', '2017-12-21 08:34:36+00', '7.396e-05');
INSERT INTO "assets" VALUES ('4986', 'jet', 'Jetcoin', '2017-12-21 08:34:36+00', '3.97e-06');
INSERT INTO "assets" VALUES ('4987', 'kush', 'KushCoin', '2017-12-21 08:34:38+00', '5.51e-06');
INSERT INTO "assets" VALUES ('4988', 'red', 'RedCoin', '2017-12-21 08:34:35+00', '6.9e-07');
INSERT INTO "assets" VALUES ('4989', 'ddf', ' Digital Developers Fund', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('4990', 'slg', 'Sterlingcoin', '2017-12-21 08:34:38+00', '6.69e-06');
INSERT INTO "assets" VALUES ('4991', 'tycho', 'Tychocoin', '2017-12-21 08:34:36+00', '5.44e-06');
INSERT INTO "assets" VALUES ('4992', 'iti', 'iTicoin', '2017-12-21 08:34:36+00', '0.00082448');
INSERT INTO "assets" VALUES ('4993', 'whl', 'WhaleCoin', '2017-12-21 08:34:36+00', '5.49e-06');
INSERT INTO "assets" VALUES ('4994', 'grim', 'Grimcoin', '2017-12-21 08:34:36+00', '1.05e-06');
INSERT INTO "assets" VALUES ('4995', 'hodl', 'HOdlcoin', '2017-12-21 08:34:36+00', '1.7e-07');
INSERT INTO "assets" VALUES ('4996', 'e4row', 'E4ROW', '2017-12-21 08:34:36+00', '4.39e-06');
INSERT INTO "assets" VALUES ('4997', 'ent', 'Eternity', '2017-12-21 08:34:36+00', '4.46e-06');
INSERT INTO "assets" VALUES ('4998', 'lana', 'LanaCoin', '2017-12-21 08:34:36+00', '3e-08');
INSERT INTO "assets" VALUES ('4999', 'boli', 'Bolivarcoin', '2017-12-21 08:34:36+00', '3e-06');
INSERT INTO "assets" VALUES ('5000', 'bsty', 'GlobalBoost-Y', '2017-12-21 08:34:38+00', '2.07e-06');
INSERT INTO "assets" VALUES ('5001', 'eco', 'EcoCoin', '2017-12-21 08:34:36+00', '1.912e-05');
INSERT INTO "assets" VALUES ('5002', 'ecash', 'Ethereum Cash', '2017-12-21 08:34:36+00', '1.83e-06');
INSERT INTO "assets" VALUES ('5003', 'sac', 'SACoin', '2017-12-21 08:34:38+00', '2.04e-06');
INSERT INTO "assets" VALUES ('5004', 'eagle', 'EagleCoin', '2017-12-21 08:34:36+00', '7.98e-06');
INSERT INTO "assets" VALUES ('5005', 'xbl', 'Billionaire Token', '2017-12-21 08:34:36+00', '5.39e-06');
INSERT INTO "assets" VALUES ('5006', '4chn', 'ChanCoin', '2017-12-21 08:34:36+00', '3.56e-06');
INSERT INTO "assets" VALUES ('5007', 'blas', 'BlakeStar', '2017-12-21 08:34:36+00', '1.1e-07');
INSERT INTO "assets" VALUES ('5008', 'saga', 'SagaCoin', '2017-12-21 08:34:36+00', '7.705e-05');
INSERT INTO "assets" VALUES ('5009', 'pr', 'Prototanium', '2017-12-21 08:34:38+00', '9.758e-05');
INSERT INTO "assets" VALUES ('5010', 'bln', 'Bolenum', '2017-12-21 08:34:36+00', '2.59e-06');
INSERT INTO "assets" VALUES ('5011', 'hnc', 'Huncoin', '2017-12-21 08:34:42+00', '1.1e-07');
INSERT INTO "assets" VALUES ('5012', 'post', 'PostCoin', '2017-12-21 08:34:36+00', '1.39e-06');
INSERT INTO "assets" VALUES ('5013', 'xpy', 'PayCoin', '2017-12-21 08:34:36+00', '1.85e-06');
INSERT INTO "assets" VALUES ('5014', 'dalc', 'Dalecoin', '2017-12-21 08:34:36+00', '3.675e-05');
INSERT INTO "assets" VALUES ('5016', 'qcn', 'QuazarCoin', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('5017', 'meow', 'Kittehcoin', '2017-12-21 08:34:36+00', '8e-10');
INSERT INTO "assets" VALUES ('5018', 'ethd', 'Ethereum Dark', '2017-12-21 08:34:36+00', '1.24e-05');
INSERT INTO "assets" VALUES ('5019', 'sdrn', 'Senderon', '2017-12-21 08:34:36+00', '4.8e-07');
INSERT INTO "assets" VALUES ('5020', 'emd', 'Emerald Crypto', '2017-12-21 08:34:38+00', '1.18e-06');
INSERT INTO "assets" VALUES ('5021', 'bumba', 'BumbaCoin', '2017-12-21 08:34:38+00', '6.7e-07');
INSERT INTO "assets" VALUES ('5022', 'xra', 'Ratecoin', '2017-12-21 08:34:36+00', '1.5e-07');
INSERT INTO "assets" VALUES ('5023', 'ttc', 'TittieCoin', '2017-12-21 08:34:36+00', '2e-08');
INSERT INTO "assets" VALUES ('5024', 'gp', 'GoldPieces', '2017-12-21 08:34:38+00', '1.191e-05');
INSERT INTO "assets" VALUES ('5025', 'mnc', 'MantraCoin', '2017-12-21 08:34:40+00', '1e-08');
INSERT INTO "assets" VALUES ('5026', 'space', 'SpaceCoin', '2017-12-21 08:34:35+00', '2.27e-06');
INSERT INTO "assets" VALUES ('5027', 'zcg', 'ZCash Gold', '2017-12-21 08:34:37+00', '4.73e-06');
INSERT INTO "assets" VALUES ('5028', 'evo', 'Evotion', '2017-12-21 08:34:36+00', '5.7e-06');
INSERT INTO "assets" VALUES ('5029', 'cmpco', 'CampusCoin', '2017-12-21 08:34:36+00', '6e-08');
INSERT INTO "assets" VALUES ('5030', 'xvp', 'Virtacoinplus', '2017-12-21 08:34:36+00', '1.35e-06');
INSERT INTO "assets" VALUES ('5031', 'ari', 'Aricoin', '2017-12-21 08:34:38+00', '1.1e-07');
INSERT INTO "assets" VALUES ('5032', '808', '808Coin', '2017-12-21 08:34:36+00', '5e-09');
INSERT INTO "assets" VALUES ('5033', '888', 'OctoCoin', '2017-12-21 08:34:38+00', '2.9e-07');
INSERT INTO "assets" VALUES ('5034', 'grt', 'Grantcoin', '2017-12-21 08:34:38+00', '3.4e-07');
INSERT INTO "assets" VALUES ('5035', 'cj', 'Cryptojacks', '2017-12-21 08:34:36+00', '3e-08');
INSERT INTO "assets" VALUES ('5036', 'roc', 'Rasputin Online Coin', '2017-12-21 08:34:36+00', '2.246e-05');
INSERT INTO "assets" VALUES ('5037', 'xct', 'C-Bit', '2017-12-21 08:34:36+00', '7e-08');
INSERT INTO "assets" VALUES ('5038', 'qtl', 'Quatloo', '2017-12-21 08:34:36+00', '1.79e-06');
INSERT INTO "assets" VALUES ('5039', 'eot', 'EOT Token', '2017-12-21 08:34:36+00', '9.2e-07');
INSERT INTO "assets" VALUES ('5040', 'sgr', 'Sugar Exchange', '2017-12-21 08:34:36+00', '3.31e-06');
INSERT INTO "assets" VALUES ('5041', 'usde', 'USDe', '2017-12-21 08:34:36+00', '2e-08');
INSERT INTO "assets" VALUES ('5042', 'drxne', 'DROXNE', '2017-12-21 08:34:36+00', '1.7e-07');
INSERT INTO "assets" VALUES ('5043', 'src', 'SecureCoin', '2017-12-21 08:34:36+00', '1.61e-06');
INSERT INTO "assets" VALUES ('5044', 'btpl', 'Bitcoin Planet', '2017-12-21 08:34:37+00', '1.5e-06');
INSERT INTO "assets" VALUES ('5045', 'bost', 'BoostCoin', '2017-12-21 08:34:36+00', '8.8e-07');
INSERT INTO "assets" VALUES ('5046', 'coal', 'BitCoal', '2017-12-21 08:34:36+00', '3.27e-06');
INSERT INTO "assets" VALUES ('5047', 'mut', 'Mutual Coin', '2017-12-21 08:34:36+00', '1e-08');
INSERT INTO "assets" VALUES ('5048', 'drs', 'Digital Rupees', '2017-12-21 08:34:39+00', '1e-08');
INSERT INTO "assets" VALUES ('5049', 'xcxt', 'CoinonatX', '2017-12-21 08:34:37+00', '6e-07');
INSERT INTO "assets" VALUES ('5050', 'cach', 'CacheCoin', '2017-12-21 08:34:37+00', '2.33e-06');
INSERT INTO "assets" VALUES ('5051', 'tek', 'TEKcoin', '2017-12-21 08:34:37+00', '7e-09');
INSERT INTO "assets" VALUES ('5052', 'imx', 'Impact', '2017-12-21 08:34:37+00', '6e-08');
INSERT INTO "assets" VALUES ('5053', 'hxx', 'Hexx', '2017-12-21 08:34:38+00', '1.665e-05');
INSERT INTO "assets" VALUES ('5054', 'score', 'Scorecoin', '2017-12-21 08:34:36+00', '3.7e-07');
INSERT INTO "assets" VALUES ('5055', 'rbx', 'Ripto Bux', '2017-12-21 08:34:36+00', '4e-08');
INSERT INTO "assets" VALUES ('5056', 'gpu', 'GPU Coin', '2017-12-21 08:34:36+00', '3.3e-07');
INSERT INTO "assets" VALUES ('5057', 'cmt', 'CyberMiles', '2017-12-21 08:34:40+00', '1.295e-05');
INSERT INTO "assets" VALUES ('5058', 'aerm', 'Aerium', '2017-12-21 08:34:37+00', '6.39e-06');
INSERT INTO "assets" VALUES ('5059', 'bas', 'BitAsean', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('5060', 'vuc', 'Virta Unique Coin', '2017-12-21 08:34:37+00', '1.3e-07');
INSERT INTO "assets" VALUES ('5061', 'prc', 'PRCoin', '2017-12-21 08:34:37+00', '4.9e-07');
INSERT INTO "assets" VALUES ('5062', 'bitgold', 'bitGold', '2017-12-21 08:34:37+00', '0.101508');
INSERT INTO "assets" VALUES ('5063', 'ltcr', 'Litecred', '2017-12-21 08:34:37+00', '1.8e-07');
INSERT INTO "assets" VALUES ('5064', 'biteur', 'bitEUR', '2017-12-21 08:34:37+00', '7.273e-05');
INSERT INTO "assets" VALUES ('5065', 'corg', 'CorgiCoin', '2017-12-21 08:34:37+00', '7e-09');
INSERT INTO "assets" VALUES ('5066', '611', 'SixEleven', '2017-12-21 08:34:37+00', '2.034e-05');
INSERT INTO "assets" VALUES ('5067', 'func', 'FUNCoin', '2017-12-21 08:34:37+00', '1.45e-06');
INSERT INTO "assets" VALUES ('5068', 'arg', 'Argentum', '2017-12-21 08:34:39+00', '1.03e-06');
INSERT INTO "assets" VALUES ('5069', 'kayi', 'Kayicoin', '2017-12-21 08:34:34+00', '3.4e-07');
INSERT INTO "assets" VALUES ('5070', 'glt', 'GlobalToken', '2017-12-21 08:34:36+00', '4.7e-07');
INSERT INTO "assets" VALUES ('5071', 'monk', 'Monkey Project', '2017-12-21 08:34:37+00', '8.15e-05');
INSERT INTO "assets" VALUES ('5072', 'vot', 'VoteCoin', '2017-12-21 08:34:38+00', '7e-07');
INSERT INTO "assets" VALUES ('5073', 'gtc', 'Global Tour Coin', '2017-12-21 08:34:39+00', '1.7e-07');
INSERT INTO "assets" VALUES ('5074', 'luna', 'Luna Coin', '2017-12-21 08:34:37+00', '4.1e-06');
INSERT INTO "assets" VALUES ('5075', 'rupx', 'Rupaya [OLD]', '2017-12-21 08:34:43+00', '2.2e-07');
INSERT INTO "assets" VALUES ('5076', '300', '300 Token', '2017-12-21 08:34:37+00', '0.0220219');
INSERT INTO "assets" VALUES ('5077', 'acp', 'AnarchistsPrime', '2017-12-21 08:34:37+00', '1.34e-06');
INSERT INTO "assets" VALUES ('5078', '$$$', 'Money', '2017-12-21 08:34:37+00', '1.7e-07');
INSERT INTO "assets" VALUES ('5079', 'cpn', 'CompuCoin', '2017-12-21 08:34:37+00', '3.8e-07');
INSERT INTO "assets" VALUES ('5080', 'ltcu', 'LiteCoin Ultra', '2017-12-21 08:34:37+00', '4.97e-06');
INSERT INTO "assets" VALUES ('5081', 'kurt', 'Kurrent', '2017-12-21 08:34:37+00', '6.2e-07');
INSERT INTO "assets" VALUES ('5082', 'cxt', 'Coinonat', '2017-12-21 08:34:39+00', '6.6e-07');
INSERT INTO "assets" VALUES ('5083', 'asafe2', 'AllSafe', '2017-12-21 08:34:37+00', '9.7e-07');
INSERT INTO "assets" VALUES ('5084', 'bip', 'BipCoin', '2017-12-21 08:34:37+00', '3.27e-06');
INSERT INTO "assets" VALUES ('5085', 'ree', 'ReeCoin', '2017-12-21 08:34:37+00', '3e-09');
INSERT INTO "assets" VALUES ('5086', 'xco', 'X-Coin', '2017-12-21 08:34:37+00', '2.9e-07');
INSERT INTO "assets" VALUES ('5087', 'spt', 'Spots', '2017-12-21 08:34:39+00', '1.9e-07');
INSERT INTO "assets" VALUES ('5088', 'itz', 'Interzone', '2017-12-21 08:34:37+00', '2.6e-06');
INSERT INTO "assets" VALUES ('5089', 'brat', 'BROTHER', '2017-12-21 08:34:37+00', '3e-08');
INSERT INTO "assets" VALUES ('5090', 'crdnc', 'Credence Coin', '2017-12-21 08:34:37+00', '1.01e-06');
INSERT INTO "assets" VALUES ('5091', 'icon', 'Iconic', '2017-12-21 08:34:37+00', '1.148e-05');
INSERT INTO "assets" VALUES ('5092', 'women', 'WomenCoin', '2017-12-21 08:34:37+00', '8e-08');
INSERT INTO "assets" VALUES ('5093', 'ery', 'Eryllium', '2017-12-21 08:34:37+00', '8e-07');
INSERT INTO "assets" VALUES ('5094', 'js', 'JavaScript Token', '2017-12-21 08:34:39+00', '4.9e-07');
INSERT INTO "assets" VALUES ('5095', 'lbtc', 'LiteBitcoin', '2017-12-21 08:34:37+00', '1.04e-06');
INSERT INTO "assets" VALUES ('5096', 'nanox', 'Project-X', '2017-12-21 08:34:37+00', '31.0001');
INSERT INTO "assets" VALUES ('5097', 'krone', 'Kronecoin', '2017-12-21 08:34:37+00', '2.08e-06');
INSERT INTO "assets" VALUES ('5098', 'rbt', 'Rimbit', '2017-12-21 08:34:37+00', '3e-08');
INSERT INTO "assets" VALUES ('5099', 'ponzi', 'PonziCoin', '2017-12-21 08:34:39+00', '4.04e-06');
INSERT INTO "assets" VALUES ('5100', 'mscn', 'Master Swiscoin', '2017-12-21 08:34:37+00', '6e-08');
INSERT INTO "assets" VALUES ('5101', 'wbb', 'Wild Beast Block', '2017-12-21 08:34:39+00', '1.206e-05');
INSERT INTO "assets" VALUES ('5102', 'bnx', 'BnrtxCoin', '2017-12-21 08:34:37+00', '8e-08');
INSERT INTO "assets" VALUES ('5103', 'vrs', 'Veros', '2017-12-21 08:34:37+00', '6e-09');
INSERT INTO "assets" VALUES ('5104', 'zyd', 'Zayedcoin', '2017-12-21 08:34:39+00', '6.6e-07');
INSERT INTO "assets" VALUES ('5105', 'xcs', 'CybCSec', '2017-12-21 08:34:37+00', '2.3e-07');
INSERT INTO "assets" VALUES ('5106', 'sfc', 'Solarflarecoin', '2017-12-21 08:34:39+00', '2e-07');
INSERT INTO "assets" VALUES ('5107', 'jobs', 'JobsCoin', '2017-12-21 08:34:39+00', '3e-08');
INSERT INTO "assets" VALUES ('5108', 'creva', 'CrevaCoin', '2017-12-21 08:34:37+00', '5e-08');
INSERT INTO "assets" VALUES ('5109', 'argus', 'Argus', '2017-12-21 08:34:37+00', '1.18e-06');
INSERT INTO "assets" VALUES ('5110', 'lvps', 'LevoPlus', '2017-12-21 08:34:37+00', '6.1e-07');
INSERT INTO "assets" VALUES ('5111', 'fraz', 'Frazcoin', '2017-12-21 08:34:37+00', '2.8e-07');
INSERT INTO "assets" VALUES ('5112', 'gsr', 'GeyserCoin', '2017-12-21 08:34:40+00', '1.9e-05');
INSERT INTO "assets" VALUES ('5113', 'hmc', 'HarmonyCoin', '2017-12-21 08:34:37+00', '6.9e-07');
INSERT INTO "assets" VALUES ('5114', 'ecn', 'E-coin', '2017-12-21 08:34:31+00', '0.00030636');
INSERT INTO "assets" VALUES ('5115', 'stcn', 'Stakecoin', '2017-12-21 08:34:37+00', '0.00018963');
INSERT INTO "assets" VALUES ('5116', 'xc', 'XCurrency', '2017-12-21 08:34:37+00', '5.212e-05');
INSERT INTO "assets" VALUES ('5117', 'pgl', 'Prospectors Gold', '2017-12-21 08:34:37+00', '1.62e-06');
INSERT INTO "assets" VALUES ('5118', 'fimk', 'FIMKrypto', '2017-12-21 08:34:37+00', '4.1e-07');
INSERT INTO "assets" VALUES ('5119', 'b@', 'Bankcoin', '2017-12-21 08:34:34+00', '1.66e-05');
INSERT INTO "assets" VALUES ('5120', 'rustbits', 'Rustbits', '2017-12-21 08:34:37+00', '5.89e-06');
INSERT INTO "assets" VALUES ('5121', 'icoo', 'ICO OpenLedger', '2017-12-21 08:34:34+00', '0.00034886');
INSERT INTO "assets" VALUES ('5122', 'yash', 'YashCoin', '2017-12-21 08:34:37+00', '2.7e-05');
INSERT INTO "assets" VALUES ('5123', 'rc', 'RussiaCoin', '2017-12-21 08:34:34+00', '1.386e-05');
INSERT INTO "assets" VALUES ('5125', 'orb', 'Orbitcoin', '2017-12-21 08:34:34+00', '3.127e-05');
INSERT INTO "assets" VALUES ('5126', 'htc', 'HitCoin', '2017-12-21 08:34:37+00', '1e-08');
INSERT INTO "assets" VALUES ('5127', 'shorty', 'Shorty', '2017-12-21 08:34:37+00', '1.03e-06');
INSERT INTO "assets" VALUES ('5128', 'etbs', 'EthBits', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('5129', 'metal', 'MetalCoin', '2017-12-21 08:34:37+00', '9.4e-07');
INSERT INTO "assets" VALUES ('5130', 'lnk', 'Link Platform', '2017-12-21 08:34:34+00', '0.00165893');
INSERT INTO "assets" VALUES ('5131', 'emv', 'Ethereum Movie Venture', '2017-12-21 08:34:37+00', '1.465e-05');
INSERT INTO "assets" VALUES ('5132', 'itt', 'Intelligent Trading Tech', '2017-12-21 08:34:37+00', '1.318e-05');
INSERT INTO "assets" VALUES ('5134', 'cv2', 'Colossuscoin V2', '2017-12-21 08:34:33+00', '1e-08');
INSERT INTO "assets" VALUES ('5135', 'casino', 'Casino', '2017-12-21 08:34:37+00', '7.42e-05');
INSERT INTO "assets" VALUES ('5136', 'btsr', 'BTSR', '2017-12-21 08:34:35+00', '1.666e-05');
INSERT INTO "assets" VALUES ('5137', 'unic', 'UniCoin', '2017-12-21 08:34:35+00', '1.884e-05');
INSERT INTO "assets" VALUES ('5138', 'v', 'Version', '2017-12-21 08:34:35+00', '1.2e-07');
INSERT INTO "assets" VALUES ('5139', 'val', 'Valorbit', '2017-12-21 08:34:38+00', '1e-08');
INSERT INTO "assets" VALUES ('5140', 'mac', 'Machinecoin', '2017-12-21 08:34:35+00', '3.13e-06');
INSERT INTO "assets" VALUES ('5141', 'opal', 'Opal', '2017-12-21 08:34:35+00', '3.95e-06');
INSERT INTO "assets" VALUES ('5142', 'i0c', 'I0Coin', '2017-12-21 08:34:37+00', '5.23e-06');
INSERT INTO "assets" VALUES ('5143', 'mao', 'Mao Zedong', '2017-12-21 08:34:38+00', '7.97e-06');
INSERT INTO "assets" VALUES ('5144', 'sts', 'Stress', '2017-12-21 08:34:38+00', '9e-08');
INSERT INTO "assets" VALUES ('5145', 'gaia', 'GAIA', '2017-12-21 08:34:38+00', '2.16e-06');
INSERT INTO "assets" VALUES ('5146', 'flt', 'FlutterCoin', '2017-12-21 08:34:35+00', '1.2e-07');
INSERT INTO "assets" VALUES ('5147', '8bit', '8Bit', '2017-12-21 08:34:38+00', '2.477e-05');
INSERT INTO "assets" VALUES ('5148', 'riya', 'Etheriya', '2017-12-21 08:34:38+00', '2.828e-05');
INSERT INTO "assets" VALUES ('5149', 'talk', 'BTCtalkcoin', '2017-12-21 08:34:38+00', '5.1e-07');
INSERT INTO "assets" VALUES ('5150', 'klc', 'KiloCoin', '2017-12-21 08:34:38+00', '1.9e-07');
INSERT INTO "assets" VALUES ('5151', 'way', 'WayGuide', '2017-12-21 08:34:38+00', '3.4e-07');
INSERT INTO "assets" VALUES ('5152', 'daxx', 'DaxxCoin', '2017-12-21 08:34:35+00', '6e-08');
INSERT INTO "assets" VALUES ('5153', 'bpc', 'Bitpark Coin', '2017-12-21 08:34:38+00', '5.8e-07');
INSERT INTO "assets" VALUES ('5154', 'nyan', 'Nyancoin', '2017-12-21 08:34:35+00', '1.2e-07');
INSERT INTO "assets" VALUES ('5155', 'ohm', 'OHM', '2017-12-21 08:34:38+00', '7.7e-07');
INSERT INTO "assets" VALUES ('5156', 'uni', 'Universe', '2017-12-21 08:34:38+00', '2.72e-06');
INSERT INTO "assets" VALUES ('5157', 'au', 'AurumCoin', '2017-12-21 08:34:35+00', '0.00016524');
INSERT INTO "assets" VALUES ('5158', 'xgr', 'GoldReserve', '2017-12-21 08:34:38+00', '1.21e-06');
INSERT INTO "assets" VALUES ('5159', 'spex', 'SproutsExtreme', '2017-12-21 08:34:38+00', '1e-08');
INSERT INTO "assets" VALUES ('5160', 'urc', 'Unrealcoin', '2017-12-21 08:34:36+00', '2.09e-06');
INSERT INTO "assets" VALUES ('5161', 'bits', 'Bitstar', '2017-12-21 08:34:38+00', '1.25e-06');
INSERT INTO "assets" VALUES ('5162', 'gun', 'Guncoin', '2017-12-21 08:34:35+00', '1.6e-07');
INSERT INTO "assets" VALUES ('5163', 'frc', 'Freicoin', '2017-12-21 08:34:38+00', '8.9e-07');
INSERT INTO "assets" VALUES ('5164', 'fly', 'Flycoin', '2017-12-21 08:34:38+00', '0.0001132');
INSERT INTO "assets" VALUES ('5165', 'chess', 'ChessCoin', '2017-12-21 08:34:36+00', '5.1e-07');
INSERT INTO "assets" VALUES ('5166', 'sh', 'Shilling', '2017-12-21 08:34:38+00', '5.9e-07');
INSERT INTO "assets" VALUES ('5167', 'good', 'Goodomy', '2017-12-21 08:34:35+00', '1.5e-07');
INSERT INTO "assets" VALUES ('5168', 'q2c', 'QubitCoin', '2017-12-21 08:34:36+00', '1.2e-07');
INSERT INTO "assets" VALUES ('5169', 'c2', 'Coin2.1', '2017-12-21 08:34:38+00', '2.4e-07');
INSERT INTO "assets" VALUES ('5170', 'cube', 'DigiCube', '2017-12-21 08:34:38+00', '1e-08');
INSERT INTO "assets" VALUES ('5171', 'stv', 'Sativacoin', '2017-12-21 08:34:36+00', '3.89e-06');
INSERT INTO "assets" VALUES ('5172', 'trk', 'Truckcoin', '2017-12-21 08:34:36+00', '1.3e-07');
INSERT INTO "assets" VALUES ('5173', 'glc', 'GlobalCoin', '2017-12-21 08:34:36+00', '2.8e-07');
INSERT INTO "assets" VALUES ('5174', 'swing', 'Swing', '2017-12-21 08:34:36+00', '7.98e-06');
INSERT INTO "assets" VALUES ('5175', 'mrja', 'GanjaCoin', '2017-12-21 08:34:38+00', '4.9e-06');
INSERT INTO "assets" VALUES ('5176', 'tgc', 'Tigercoin', '2017-12-21 08:34:38+00', '5.3e-07');
INSERT INTO "assets" VALUES ('5177', 'shdw', 'Shadow Token', '2017-12-21 08:34:38+00', '3.25e-06');
INSERT INTO "assets" VALUES ('5179', 'usc', 'Ultimate Secure Cash', '2017-12-21 08:34:37+00', '5.56e-06');
INSERT INTO "assets" VALUES ('5180', 'hal', 'Halcyon', '2017-12-21 08:34:38+00', '3.91e-06');
INSERT INTO "assets" VALUES ('5181', 'amber', 'AmberCoin', '2017-12-21 08:34:38+00', '4.2e-07');
INSERT INTO "assets" VALUES ('5182', 'bitsilver', 'bitSilver', '2017-12-21 08:34:36+00', '0.00127456');
INSERT INTO "assets" VALUES ('5183', 'cnnc', 'Cannation', '2017-12-21 08:34:36+00', '1.036e-05');
INSERT INTO "assets" VALUES ('5184', 'mad', 'SatoshiMadness', '2017-12-21 08:34:38+00', '1e-08');
INSERT INTO "assets" VALUES ('5185', 'wyv', 'Wyvern', '2017-12-21 08:34:38+00', '1.11e-05');
INSERT INTO "assets" VALUES ('5186', 'xbtc21', 'Bitcoin 21', '2017-12-21 08:34:38+00', '1.777e-05');
INSERT INTO "assets" VALUES ('5187', 'vidz', 'PureVidz', '2017-12-21 08:34:38+00', '1.6e-07');
INSERT INTO "assets" VALUES ('5188', 'wmc', 'WMCoin', '2017-12-21 08:34:38+00', '1.52e-06');
INSERT INTO "assets" VALUES ('5189', 'cyp', 'Cypher', '2017-12-21 08:34:38+00', '3e-06');
INSERT INTO "assets" VALUES ('5190', 'phs', 'Philosopher Stones', '2017-12-21 08:34:38+00', '2.95e-06');
INSERT INTO "assets" VALUES ('5191', 'ked', 'Darsek', '2017-12-21 08:34:38+00', '3.07e-06');
INSERT INTO "assets" VALUES ('5192', 'gap', 'Gapcoin', '2017-12-21 08:34:38+00', '2.08e-06');
INSERT INTO "assets" VALUES ('5193', 'mojo', 'MojoCoin', '2017-12-21 08:34:36+00', '1e-06');
INSERT INTO "assets" VALUES ('5194', 'evil', 'Evil Coin', '2017-12-21 08:34:36+00', '8.1e-07');
INSERT INTO "assets" VALUES ('5195', 'rbies', 'Rubies', '2017-12-21 08:34:38+00', '1.57e-06');
INSERT INTO "assets" VALUES ('5196', 'px', 'PX', '2017-12-21 08:34:38+00', '1.3e-07');
INSERT INTO "assets" VALUES ('5197', 'acoin', 'Acoin', '2017-12-21 08:34:38+00', '1.347e-05');
INSERT INTO "assets" VALUES ('5198', 'xcre', 'Creatio', '2017-12-21 08:34:37+00', '3e-07');
INSERT INTO "assets" VALUES ('5199', 'frk', 'Franko', '2017-12-21 08:34:38+00', '1.301e-05');
INSERT INTO "assets" VALUES ('5200', 'blc', 'Blakecoin', '2017-12-21 08:34:38+00', '1.04e-06');
INSERT INTO "assets" VALUES ('5201', 'mcrn', 'MACRON', '2017-12-21 08:34:39+00', '1e-08');
INSERT INTO "assets" VALUES ('5202', 'mnm', 'Mineum', '2017-12-21 08:34:36+00', '2.4e-06');
INSERT INTO "assets" VALUES ('5203', 'arco', 'AquariusCoin', '2017-12-21 08:34:38+00', '6.88e-06');
INSERT INTO "assets" VALUES ('5204', 'yac', 'Yacoin', '2017-12-21 08:34:38+00', '1.2e-07');
INSERT INTO "assets" VALUES ('5205', 'hmp', 'HempCoin', '2017-12-21 08:34:38+00', '1e-08');
INSERT INTO "assets" VALUES ('5206', 'lea', 'LeaCoin', '2017-12-21 08:34:36+00', '4e-08');
INSERT INTO "assets" VALUES ('5207', 'isl', 'IslaCoin', '2017-12-21 08:34:38+00', '7.72e-06');
INSERT INTO "assets" VALUES ('5208', 'all', 'Allion', '2017-12-21 08:34:37+00', '1.23e-06');
INSERT INTO "assets" VALUES ('5209', 'fire', 'Firecoin', '2017-12-21 08:34:36+00', '0.00011965');
INSERT INTO "assets" VALUES ('5210', 'dlc', 'Dollarcoin', '2017-12-21 08:34:38+00', '1.32e-06');
INSERT INTO "assets" VALUES ('5211', 'duo', 'ParallelCoin', '2017-12-21 08:34:38+00', '4.747e-05');
INSERT INTO "assets" VALUES ('5212', 'ims', 'Independent Money System', '2017-12-21 08:34:38+00', '2.75e-06');
INSERT INTO "assets" VALUES ('5213', 'taj', 'TajCoin', '2017-12-21 08:34:38+00', '1.31e-06');
INSERT INTO "assets" VALUES ('5214', 'vec2', 'VectorAI', '2017-12-21 08:34:38+00', '7.4e-07');
INSERT INTO "assets" VALUES ('5215', 'con', 'PayCon', '2017-12-21 08:34:38+00', '4.4e-07');
INSERT INTO "assets" VALUES ('5216', 'bitz', 'Bitz', '2017-12-21 08:34:38+00', '5.56e-06');
INSERT INTO "assets" VALUES ('5217', 'ice', 'iDice', '2017-12-21 08:34:36+00', '8.56e-06');
INSERT INTO "assets" VALUES ('5218', 'euc', 'Eurocoin', '2017-12-21 08:34:36+00', '1.69e-06');
INSERT INTO "assets" VALUES ('5219', 'rpc', 'RonPaulCoin', '2017-12-21 08:34:38+00', '1.184e-05');
INSERT INTO "assets" VALUES ('5220', 'mars', 'Marscoin', '2017-12-21 08:34:38+00', '6.7e-07');
INSERT INTO "assets" VALUES ('5221', 'tse', 'Tattoocoin (Standard Edition)', '2017-12-21 08:34:38+00', '1.5e-07');
INSERT INTO "assets" VALUES ('5222', 'cf', 'Californium', '2017-12-21 08:34:36+00', '4.37e-06');
INSERT INTO "assets" VALUES ('5223', 'sling', 'Sling', '2017-12-21 08:34:38+00', '9.55e-06');
INSERT INTO "assets" VALUES ('5224', 'pxi', 'Prime-XI', '2017-12-21 08:34:36+00', '8.9e-07');
INSERT INTO "assets" VALUES ('5225', 'uro', 'Uro', '2017-12-21 08:34:38+00', '8.37e-06');
INSERT INTO "assets" VALUES ('5226', 'anti', 'AntiBitcoin', '2017-12-21 08:34:38+00', '6.3e-07');
INSERT INTO "assets" VALUES ('5227', 'dbtc', 'Debitcoin', '2017-12-21 08:34:38+00', '5.8e-07');
INSERT INTO "assets" VALUES ('5228', 'xre', 'RevolverCoin', '2017-12-21 08:34:37+00', '4.6e-07');
INSERT INTO "assets" VALUES ('5229', 'mtlmc3', 'Metal Music Coin', '2017-12-21 08:34:38+00', '1.3e-07');
INSERT INTO "assets" VALUES ('5230', 'soon', 'SoonCoin', '2017-12-21 08:34:38+00', '8.8e-07');
INSERT INTO "assets" VALUES ('5231', 'neva', 'NevaCoin', '2017-12-21 08:34:38+00', '5.83e-06');
INSERT INTO "assets" VALUES ('5232', 'jin', 'Jin Coin', '2017-12-21 08:34:39+00', '9e-07');
INSERT INTO "assets" VALUES ('5233', 'blz', 'BlazeCoin', '2017-12-21 08:34:39+00', '1e-08');
INSERT INTO "assets" VALUES ('5234', 'scrt', 'SecretCoin', '2017-12-21 08:34:39+00', '2.21e-06');
INSERT INTO "assets" VALUES ('5236', 'mnd', 'MindCoin', '2017-12-21 08:34:37+00', '4.5e-07');
INSERT INTO "assets" VALUES ('5237', 'mst', 'MustangCoin', '2017-12-21 08:34:39+00', '1.058e-05');
INSERT INTO "assets" VALUES ('5238', 'honey', 'Honey', '2017-12-21 08:34:36+00', '3.154e-05');
INSERT INTO "assets" VALUES ('5239', 'mar', 'Marijuanacoin', '2017-12-21 08:34:39+00', '4.76e-06');
INSERT INTO "assets" VALUES ('5240', 'egas', 'ETHGAS', '2017-12-21 08:34:37+00', '7.3e-07');
INSERT INTO "assets" VALUES ('5241', 'bstar', 'Blackstar', '2017-12-21 08:34:39+00', '1e-08');
INSERT INTO "assets" VALUES ('5242', 'slm', 'Slimcoin', '2017-12-21 08:34:39+00', '3.9e-07');
INSERT INTO "assets" VALUES ('5243', 'jwl', 'Jewels', '2017-12-21 08:34:39+00', '3.1e-07');
INSERT INTO "assets" VALUES ('5244', 'bvc', 'BeaverCoin', '2017-12-21 08:34:39+00', '1.92e-06');
INSERT INTO "assets" VALUES ('5245', 'cto', 'Crypto', '2017-12-21 08:34:39+00', '4.9e-07');
INSERT INTO "assets" VALUES ('5246', 'zmc', 'ZetaMicron', '2017-12-21 08:34:39+00', '1e-08');
INSERT INTO "assets" VALUES ('5247', 'vc', 'VirtualCoin', '2017-12-21 08:34:38+00', '1.09e-06');
INSERT INTO "assets" VALUES ('5248', 'emp', 'EMoneyPower', '2017-12-21 08:34:39+00', '4.7e-07');
INSERT INTO "assets" VALUES ('5249', 'blry', 'BillaryCoin', '2017-12-21 08:34:39+00', '6.2e-07');
INSERT INTO "assets" VALUES ('5250', 'drm', 'Dreamcoin', '2017-12-21 08:34:39+00', '2.23e-06');
INSERT INTO "assets" VALUES ('5251', 'soil', 'SOILcoin', '2017-12-21 08:34:39+00', '1.04e-06');
INSERT INTO "assets" VALUES ('5252', 'ammo', 'Ammo Rewards', '2017-12-21 08:34:37+00', '7e-08');
INSERT INTO "assets" VALUES ('5253', 'may', 'Theresa May Coin', '2017-12-21 08:34:39+00', '2.8e-07');
INSERT INTO "assets" VALUES ('5254', 'warp', 'WARP', '2017-12-21 08:34:39+00', '5.24e-06');
INSERT INTO "assets" VALUES ('5255', 'song', 'SongCoin', '2017-12-21 08:34:39+00', '1.8e-07');
INSERT INTO "assets" VALUES ('5256', 'kic', 'KibiCoin', '2017-12-21 08:34:39+00', '1.2e-07');
INSERT INTO "assets" VALUES ('5257', 'vip', 'VIP Tokens', '2017-12-21 08:34:37+00', '3e-08');
INSERT INTO "assets" VALUES ('5258', 'exn', 'Exchangen', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('5259', 'prx', 'Printerium', '2017-12-21 08:34:38+00', '1.05e-06');
INSERT INTO "assets" VALUES ('5260', 'xbts', 'Beatcoin', '2017-12-21 08:34:37+00', '4.58e-06');
INSERT INTO "assets" VALUES ('5261', 'nro', 'Neuro', '2017-12-21 08:34:39+00', '1.6e-07');
INSERT INTO "assets" VALUES ('5262', 'tor', 'Torcoin', '2017-12-21 08:34:39+00', '8.28e-06');
INSERT INTO "assets" VALUES ('5263', 'off', 'Cthulhu Offerings', '2017-12-21 08:34:39+00', '1.93e-06');
INSERT INTO "assets" VALUES ('5264', 'atx', 'Artex Coin', '2017-12-21 08:34:39+00', '2.6e-07');
INSERT INTO "assets" VALUES ('5265', 'pulse', 'Pulse', '2017-12-21 08:34:39+00', '2.3e-07');
INSERT INTO "assets" VALUES ('5266', 'cwxt', 'CryptoWorldX Token', '2017-12-21 08:34:39+00', '5e-08');
INSERT INTO "assets" VALUES ('5267', 'orly', 'Orlycoin', '2017-12-21 08:34:39+00', '1.1e-07');
INSERT INTO "assets" VALUES ('5268', 'bsc', 'BowsCoin', '2017-12-21 08:34:39+00', '7e-07');
INSERT INTO "assets" VALUES ('5269', 'btq', 'BitQuark', '2017-12-21 08:34:39+00', '4.3e-07');
INSERT INTO "assets" VALUES ('5270', 'crt', 'CRTCoin', '2017-12-21 08:34:39+00', '4.8e-05');
INSERT INTO "assets" VALUES ('5271', 'adcn', 'Asiadigicoin', '2017-12-21 08:34:39+00', '1.5e-07');
INSERT INTO "assets" VALUES ('5272', 'benji', 'BenjiRolls', '2017-12-21 08:34:37+00', '3e-07');
INSERT INTO "assets" VALUES ('5273', 'fuzz', 'FuzzBalls', '2017-12-21 08:34:39+00', '6.8e-07');
INSERT INTO "assets" VALUES ('5274', 'plnc', 'PLNcoin', '2017-12-21 08:34:39+00', '1.9e-07');
INSERT INTO "assets" VALUES ('5275', 'flvr', 'FlavorCoin', '2017-12-21 08:34:39+00', '2e-07');
INSERT INTO "assets" VALUES ('5276', 'dibc', 'DIBCOIN', '2017-12-21 08:34:39+00', '8.2e-07');
INSERT INTO "assets" VALUES ('5277', 'cage', 'CageCoin', '2017-12-21 08:34:39+00', '6e-11');
INSERT INTO "assets" VALUES ('5278', 'ereal', 'eREAL', '2017-12-21 08:34:39+00', '8e-08');
INSERT INTO "assets" VALUES ('5279', 'steps', 'Steps', '2017-12-21 08:34:39+00', '1.8e-07');
INSERT INTO "assets" VALUES ('5280', 'fxe', 'FuturXe', '2017-12-21 08:34:39+00', '1.284e-05');
INSERT INTO "assets" VALUES ('5281', 'ego', 'EGO', '2017-12-21 08:34:39+00', '6e-08');
INSERT INTO "assets" VALUES ('5282', 'des', 'Destiny', '2017-12-21 08:34:39+00', '1.94e-06');
INSERT INTO "assets" VALUES ('5283', 'flax', 'Flaxscript', '2017-12-21 08:34:39+00', '8.1e-07');
INSERT INTO "assets" VALUES ('5284', 'imps', 'ImpulseCoin', '2017-12-21 08:34:39+00', '1.5e-07');
INSERT INTO "assets" VALUES ('5285', 'slevin', 'Slevin', '2017-12-21 08:34:39+00', '4e-08');
INSERT INTO "assets" VALUES ('5286', 'milo', 'MiloCoin', '2017-12-21 08:34:39+00', '2.2e-07');
INSERT INTO "assets" VALUES ('5287', 'os76', 'OsmiumCoin', '2017-12-21 08:34:39+00', '3.01e-06');
INSERT INTO "assets" VALUES ('5288', 'cash', 'Cash Poker Pro', '2017-12-21 08:34:42+00', '2.69e-06');
INSERT INTO "assets" VALUES ('5289', 'arb', 'ARbit', '2017-12-21 08:34:39+00', '6.1e-07');
INSERT INTO "assets" VALUES ('5290', 'pex', 'PosEx', '2017-12-21 08:34:39+00', '1.01e-06');
INSERT INTO "assets" VALUES ('5291', 'pie', 'PIECoin', '2017-12-21 08:34:39+00', '2.4e-07');
INSERT INTO "assets" VALUES ('5292', 'cnc', 'CHNCoin', '2017-12-21 08:34:39+00', '5e-08');
INSERT INTO "assets" VALUES ('5293', 'dix', 'Dix Asset', '2017-12-21 08:34:37+00', '4e-11');
INSERT INTO "assets" VALUES ('5294', 'boat', 'BOAT', '2017-12-21 08:34:37+00', '1.4e-07');
INSERT INTO "assets" VALUES ('5295', 'vprc', 'VapersCoin', '2017-12-21 08:34:37+00', '5e-09');
INSERT INTO "assets" VALUES ('5296', 'tagr', 'TAGRcoin', '2017-12-21 08:34:39+00', '6e-08');
INSERT INTO "assets" VALUES ('5297', 'dpay', 'DPAY', '2017-12-21 08:34:39+00', '3e-08');
INSERT INTO "assets" VALUES ('5298', 'vltc', 'Vault Coin', '2017-12-21 08:34:37+00', '9e-08');
INSERT INTO "assets" VALUES ('5299', 'dollar', 'Dollar Online', '2017-12-21 08:34:39+00', '3.1e-06');
INSERT INTO "assets" VALUES ('5300', 'worm', 'HealthyWormCoin', '2017-12-21 08:34:39+00', '2e-08');
INSERT INTO "assets" VALUES ('5301', 'uet', 'Useless Ethereum Token', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('5302', 'qbk', 'Qibuck Asset', '2017-12-21 08:34:39+00', '2.18e-06');
INSERT INTO "assets" VALUES ('5303', 'lir', 'LetItRide', '2017-12-21 08:34:39+00', '6e-08');
INSERT INTO "assets" VALUES ('5304', 'ntwk', 'Network Token', '2017-12-21 08:34:39+00', '3.2e-07');
INSERT INTO "assets" VALUES ('5305', 'gbt', 'GameBet Coin', '2017-12-21 08:34:39+00', '1e-07');
INSERT INTO "assets" VALUES ('5306', 'placo', 'PlayerCoin', '2017-12-21 08:34:39+00', '6e-08');
INSERT INTO "assets" VALUES ('5307', 'bios', 'BiosCrypto', '2017-12-21 08:34:39+00', '1.2e-07');
INSERT INTO "assets" VALUES ('5308', 'ride', 'Ride My Car', '2017-12-21 08:34:40+00', '1e-08');
INSERT INTO "assets" VALUES ('5309', 'dlisk', 'DAPPSTER', '2017-12-21 08:34:39+00', '3e-08');
INSERT INTO "assets" VALUES ('5310', 'g3n', 'G3N', '2017-12-21 08:34:39+00', '4.2e-07');
INSERT INTO "assets" VALUES ('5311', 'token', 'SwapToken', '2017-12-21 08:34:37+00', '2e-10');
INSERT INTO "assets" VALUES ('5312', 'zne', 'Zonecoin', '2017-12-21 08:34:39+00', '6.7e-07');
INSERT INTO "assets" VALUES ('5313', 'sdp', 'SydPak', '2017-12-21 08:34:37+00', '1.05e-05');
INSERT INTO "assets" VALUES ('5315', 'mtm', 'MTMGaming', '2017-12-21 08:34:39+00', '5.7e-07');
INSERT INTO "assets" VALUES ('5316', 'biob', 'BioBar', '2017-12-21 08:34:39+00', '1.8e-06');
INSERT INTO "assets" VALUES ('5317', 'hvco', 'High Voltage', '2017-12-21 08:34:39+00', '1.59e-06');
INSERT INTO "assets" VALUES ('5318', 'aglc', 'AgrolifeCoin', '2017-12-21 08:34:39+00', '2.1e-07');
INSERT INTO "assets" VALUES ('5319', 'brain', 'Braincoin', '2017-12-21 08:34:39+00', '1.8e-07');
INSERT INTO "assets" VALUES ('5320', 'altc', 'Antilitecoin', '2017-12-21 08:34:39+00', '6e-08');
INSERT INTO "assets" VALUES ('5321', 'cesc', 'CryptoEscudo', '2017-12-21 08:34:39+00', '1e-08');
INSERT INTO "assets" VALUES ('5322', 'scs', 'Speedcash', '2017-12-21 08:34:39+00', '5.01e-06');
INSERT INTO "assets" VALUES ('5323', 'roofs', 'Roofs', '2017-12-21 08:34:39+00', '1e-08');
INSERT INTO "assets" VALUES ('5324', 'crtm', 'Corethum', '2017-12-21 08:34:39+00', '5.4e-07');
INSERT INTO "assets" VALUES ('5325', 'env', 'Environ', '2017-12-21 08:34:40+00', '2e-10');
INSERT INTO "assets" VALUES ('5326', 'rsgp', 'RSGPcoin', '2017-12-21 08:34:40+00', '0.00066927');
INSERT INTO "assets" VALUES ('5327', 'ibank', 'iBank', '2017-12-21 08:34:40+00', '2.8e-07');
INSERT INTO "assets" VALUES ('5328', 'slfi', 'Selfiecoin', '2017-12-21 08:34:40+00', '1e-08');
INSERT INTO "assets" VALUES ('5329', 'socc', 'SocialCoin', '2017-12-21 08:34:40+00', '5.2e-07');
INSERT INTO "assets" VALUES ('5330', 'geert', 'GeertCoin', '2017-12-21 08:34:37+00', '2.1e-07');
INSERT INTO "assets" VALUES ('5331', 'xrc', 'Rawcoin', '2017-12-21 08:34:40+00', '1.32e-06');
INSERT INTO "assets" VALUES ('5332', 'xoc', 'Xonecoin', '2017-12-21 08:34:40+00', '2.61e-06');
INSERT INTO "assets" VALUES ('5333', 'vta', 'Virtacoin', '2017-12-21 08:34:37+00', '4e-08');
INSERT INTO "assets" VALUES ('5334', 'els', 'Elysium', '2017-12-21 08:34:40+00', '2.4e-07');
INSERT INTO "assets" VALUES ('5335', 'mgm', 'Magnum', '2017-12-21 08:34:40+00', '1.3e-07');
INSERT INTO "assets" VALUES ('5336', 'volt', 'Bitvolt', '2017-12-21 08:34:40+00', '7e-08');
INSERT INTO "assets" VALUES ('5337', 'ccm100', 'CCMiner', '2017-12-21 08:34:39+00', '4.7e-07');
INSERT INTO "assets" VALUES ('5338', 'gbc', 'GBCGoldCoin', '2017-12-21 08:34:39+00', '1.2e-07');
INSERT INTO "assets" VALUES ('5339', 'p7c', 'P7Coin', '2017-12-21 08:34:40+00', '3e-08');
INSERT INTO "assets" VALUES ('5340', 'das', 'DAS', '2017-12-21 08:34:40+00', '3.7e-07');
INSERT INTO "assets" VALUES ('5341', 'cab', 'Cabbage', '2017-12-21 08:34:40+00', '1.2e-07');
INSERT INTO "assets" VALUES ('5342', 'coxst', 'CoExistCoin', '2017-12-21 08:34:38+00', '4.4e-07');
INSERT INTO "assets" VALUES ('5343', 'ocean', 'BurstOcean', '2017-12-21 08:34:40+00', '4.79e-06');
INSERT INTO "assets" VALUES ('5344', 'mrng', 'MorningStar', '2017-12-21 08:34:40+00', '3e-08');
INSERT INTO "assets" VALUES ('5345', 'sandg', 'Save and Gain', '2017-12-21 08:34:40+00', '1.5e-07');
INSERT INTO "assets" VALUES ('5346', 'lex', 'Lex4All', '2017-12-21 08:34:40+00', '2.6e-07');
INSERT INTO "assets" VALUES ('5347', 'ctic2', 'Coimatic 2.0', '2017-12-21 08:34:40+00', '4e-08');
INSERT INTO "assets" VALUES ('5348', 'nodc', 'NodeCoin', '2017-12-21 08:34:40+00', '3.2e-07');
INSERT INTO "assets" VALUES ('5349', 'ebt', 'Ebittree Coin', '2017-12-21 08:34:40+00', '1e-07');
INSERT INTO "assets" VALUES ('5350', 'soj', 'Sojourn', '2017-12-21 08:34:40+00', '6.6e-07');
INSERT INTO "assets" VALUES ('5351', 'conx', 'Concoin', '2017-12-21 08:34:40+00', '4.3e-07');
INSERT INTO "assets" VALUES ('5352', 'xng', 'Enigma', '2017-12-21 08:34:40+00', '1.548e-05');
INSERT INTO "assets" VALUES ('5353', 'ula', 'Ulatech', '2017-12-21 08:34:40+00', '1.64e-06');
INSERT INTO "assets" VALUES ('5354', 'trade', 'Tradecoin', '2017-12-21 08:34:40+00', '3e-08');
INSERT INTO "assets" VALUES ('5355', 'pizza', 'PizzaCoin', '2017-12-21 08:34:40+00', '1.6e-07');
INSERT INTO "assets" VALUES ('5356', 'wbc', 'WalletBuildersCoin', '2017-12-21 08:34:40+00', '1e-05');
INSERT INTO "assets" VALUES ('5357', 'tstr', 'Tristar Coin', '2017-12-21 08:34:40+00', '5e-08');
INSERT INTO "assets" VALUES ('5358', 'dgcs', 'Digital Credits', '2017-12-21 08:34:40+00', '2e-08');
INSERT INTO "assets" VALUES ('5359', 'abn', 'Abncoin', '2017-12-21 08:34:40+00', '9e-07');
INSERT INTO "assets" VALUES ('5361', 'dmb', 'Digital Money Bits', '2017-12-21 08:34:40+00', '8e-08');
INSERT INTO "assets" VALUES ('5362', 'calc', 'CaliphCoin', '2017-12-21 08:34:40+00', '1.2e-07');
INSERT INTO "assets" VALUES ('5363', 'fal', 'Falcoin', '2017-12-21 08:34:40+00', '1e-08');
INSERT INTO "assets" VALUES ('5364', 'fdc', 'Future Digital Currency', '2017-12-21 08:34:40+00', '4e-10');
INSERT INTO "assets" VALUES ('5365', 'apw', 'AppleCoin', '2017-12-21 08:34:40+00', '1e-08');
INSERT INTO "assets" VALUES ('5366', 'atmc', 'ATMCoin', '2017-12-21 08:34:40+00', '0.00028323');
INSERT INTO "assets" VALUES ('5367', 'icx', 'ICON', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('5368', 'smt', 'SmartMesh', '2017-12-21 08:34:40+00', '2.94e-06');
INSERT INTO "assets" VALUES ('5369', 'ost', 'Simple Token', '2017-12-21 08:34:30+00', '2.024e-05');
INSERT INTO "assets" VALUES ('5370', 'bcd', 'Bitcoin Diamond [Futures]', '2017-12-21 08:34:40+00', '0.00383675');
INSERT INTO "assets" VALUES ('5371', 'gto', 'Gifto', '2017-12-21 08:34:40+00', '1.963e-05');
INSERT INTO "assets" VALUES ('5373', 'bcx', 'BitcoinX [Futures]', '2017-12-21 08:34:40+00', '3.78e-06');
INSERT INTO "assets" VALUES ('5375', 'b2x', 'B2X', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('5376', 'ai', 'POLY AI', '2017-12-21 08:34:40+00', '0.00101138');
INSERT INTO "assets" VALUES ('5377', 'cms', 'COMSA [XEM]', '2017-12-21 08:34:40+00', '0.00023157');
INSERT INTO "assets" VALUES ('5378', 'gnx', 'Genaro Network', '2017-12-21 08:34:40+00', '2.46e-05');
INSERT INTO "assets" VALUES ('5379', 'sbtc', 'Super BTC', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('5382', 'itc', 'IoT Chain', '2017-12-21 08:34:40+00', '7.144e-05');
INSERT INTO "assets" VALUES ('5383', 'frgc', 'Fargocoin', '2017-12-21 08:34:40+00', '0.00063623');
INSERT INTO "assets" VALUES ('5385', 'inf', 'InfChain', '2017-12-21 08:34:40+00', '1.74e-06');
INSERT INTO "assets" VALUES ('5387', 'tsl', 'Energo', '2017-12-21 08:34:40+00', '1.341e-05');
INSERT INTO "assets" VALUES ('5388', 'mds', 'MediShares', '2017-12-21 08:34:40+00', '3.71e-06');
INSERT INTO "assets" VALUES ('5389', 'orme', 'Ormeus Coin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('5390', 'rec', 'Regalcoin', '2017-12-21 08:34:40+00', '0.00061484');
INSERT INTO "assets" VALUES ('5391', 'hwc', 'HollyWoodCoin', '2017-12-21 08:34:40+00', '0.00109716');
INSERT INTO "assets" VALUES ('5393', 'llt', 'LLToken', '2017-12-21 08:34:40+00', '2.247e-05');
INSERT INTO "assets" VALUES ('5394', 'wc', 'WINCOIN', '2017-12-21 08:34:40+00', '7.937e-05');
INSERT INTO "assets" VALUES ('5395', 'amm', 'Micro Money', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('5396', 'mkr', 'Maker', '2017-12-21 08:34:40+00', '0.0776474');
INSERT INTO "assets" VALUES ('5397', 'fil', 'Filecoin [Futures]', '2017-12-21 08:34:40+00', '0.00131759');
INSERT INTO "assets" VALUES ('5398', 'bte', 'BitSerial', '2017-12-21 08:34:40+00', '0.00026913');
INSERT INTO "assets" VALUES ('5399', 'grx', 'GOLD Reward Token', '2017-12-21 08:34:40+00', '0.00012053');
INSERT INTO "assets" VALUES ('5400', 'qbt', 'Cubits', '2017-12-21 08:34:41+00', '2.6e-07');
INSERT INTO "assets" VALUES ('5401', 'ugt', 'UG Token', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('5402', 'btu', 'Bitcoin Unlimited (Futures)', '2017-12-21 08:34:41+00', '0.0140871');
INSERT INTO "assets" VALUES ('5403', 'stc', 'Santa Coin', '2017-12-21 08:34:40+00', '4.135e-05');
INSERT INTO "assets" VALUES ('5404', 'viu', 'Viuly', '2017-12-21 08:34:40+00', '9.7e-07');
INSERT INTO "assets" VALUES ('5405', 'btca', 'BitAir', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('5406', 'xin', 'Infinity Economics', '2017-12-21 08:34:40+00', '1.51e-06');
INSERT INTO "assets" VALUES ('5407', 'ubtc', 'United Bitcoin', '2017-12-21 08:34:40+00', '0.0252255');
INSERT INTO "assets" VALUES ('5408', 'xid', 'International Diamond', '2017-12-21 08:34:43+00', '4e-07');
INSERT INTO "assets" VALUES ('5409', 'mavro', 'Mavro', '2017-12-21 08:34:41+00', '1.728e-05');
INSERT INTO "assets" VALUES ('5410', 'wrc', 'Worldcore', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('5411', 'sbc', 'StrikeBitClub', '2017-12-21 08:34:41+00', '3.126e-05');
INSERT INTO "assets" VALUES ('5412', 'cred', 'Verify', '2017-12-21 08:34:41+00', '2.544e-05');
INSERT INTO "assets" VALUES ('5414', 'tok', 'Tokugawa', '2017-12-21 08:34:41+00', '0.00011501');
INSERT INTO "assets" VALUES ('5415', 'ths', 'TechShares', '2017-12-21 08:34:41+00', '3.71e-05');
INSERT INTO "assets" VALUES ('5416', 'capp', 'Cappasity', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('5417', 'bsr', 'BitSoar', '2017-12-21 08:34:41+00', '1.136e-05');
INSERT INTO "assets" VALUES ('5418', 'zengold', 'ZenGold', '2017-12-21 08:34:41+00', '5.25e-06');
INSERT INTO "assets" VALUES ('5420', 'loc', 'LockChain', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('5421', 'dav', 'DavorCoin', '2017-12-21 08:34:41+00', '0.00115967');
INSERT INTO "assets" VALUES ('5422', 'vash', 'VPNCoin', '2017-12-21 08:34:41+00', '6.2e-07');
INSERT INTO "assets" VALUES ('5423', 'shnd', 'StrongHands', '2017-12-21 08:34:41+00', '2e-11');
INSERT INTO "assets" VALUES ('5424', 'dsr', 'Desire', '2017-12-21 08:34:36+00', '2.123e-05');
INSERT INTO "assets" VALUES ('5425', 'bcdn', 'BlockCDN', '2017-12-21 08:34:41+00', '9.13e-06');
INSERT INTO "assets" VALUES ('5426', 'send', 'Social Send', '2017-12-21 08:34:41+00', '6.01e-06');
INSERT INTO "assets" VALUES ('5427', 'b3', 'B3Coin', '2017-12-21 08:34:41+00', '7e-09');
INSERT INTO "assets" VALUES ('5428', 'eag', 'EA Coin', '2017-12-21 08:34:41+00', '0.00017759');
INSERT INTO "assets" VALUES ('5429', 'uqc', 'Uquid Coin', '2017-12-21 08:34:41+00', '7.582e-05');
INSERT INTO "assets" VALUES ('5430', 'snov', 'Snovio', '2017-12-21 08:34:41+00', '3.7e-07');
INSERT INTO "assets" VALUES ('5431', 'ero', 'Eroscoin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('5432', 'bos', 'BOScoin', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('5433', 'kbr', 'Kubera token', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('5434', 'btcm', 'BTCMoon', '2017-12-21 08:34:41+00', '1.27e-06');
INSERT INTO "assets" VALUES ('5435', 'deus', 'DeusCoin', '2017-12-21 08:34:41+00', '2.72e-05');
INSERT INTO "assets" VALUES ('5436', 'ryz', 'ANRYZE', '2017-12-21 08:34:41+00', '1.1e-06');
INSERT INTO "assets" VALUES ('5437', 'ltg', 'LiteCoin Gold', '2017-12-21 08:34:41+00', '4.9e-07');
INSERT INTO "assets" VALUES ('5438', 'pcoin', 'Pioneer Coin', '2017-12-21 08:34:35+00', '3.02e-05');
INSERT INTO "assets" VALUES ('5439', 'msd', 'MSD', '2017-12-21 08:34:41+00', '3.2e-07');
INSERT INTO "assets" VALUES ('5440', 'evr', 'Everus', '2017-12-21 08:34:41+00', '5.344e-05');
INSERT INTO "assets" VALUES ('5441', 'elite', 'Ethereum Lite', '2017-12-21 08:34:41+00', '2.503e-05');
INSERT INTO "assets" VALUES ('5442', 'pkt', 'Playkey', '2017-12-21 08:34:41+00', '4.437e-05');
INSERT INTO "assets" VALUES ('5443', 'neog', 'NEO GOLD', '2017-12-21 08:34:41+00', '2e-07');
INSERT INTO "assets" VALUES ('5444', 'dfs', 'DFSCoin', '2017-12-21 08:34:41+00', '7.5e-07');
INSERT INTO "assets" VALUES ('5445', 'ytn', 'YENTEN', '2017-12-21 08:34:41+00', '7.917e-05');
INSERT INTO "assets" VALUES ('5446', 'ifc', 'Infinitecoin', '2017-12-21 08:34:41+00', '1e-08');
INSERT INTO "assets" VALUES ('5447', 'aky', 'Akuya Coin', '2017-12-21 08:34:41+00', '5.08e-06');
INSERT INTO "assets" VALUES ('5448', 'frwc', 'FrankyWillCoin', '2017-12-21 08:34:42+00', '2.1e-07');
INSERT INTO "assets" VALUES ('5449', 'cmp', 'Compcoin', '2017-12-21 08:34:41+00', '0.0007354');
INSERT INTO "assets" VALUES ('5450', 'mgc', 'GulfCoin', '2017-12-21 08:34:42+00', '2.8e-07');
INSERT INTO "assets" VALUES ('5451', 'sigma', 'SIGMAcoin', '2017-12-21 08:34:41+00', '3.91e-06');
INSERT INTO "assets" VALUES ('5452', 'tcoin', 'T-coin', '2017-12-21 08:34:41+00', '1e-08');
INSERT INTO "assets" VALUES ('5453', 'nbit', 'netBit', '2017-12-21 08:34:41+00', '8.86e-06');
INSERT INTO "assets" VALUES ('5454', 'trdt', 'Trident Group', '2017-12-21 08:34:41+00', '2e-05');
INSERT INTO "assets" VALUES ('5455', 'for', 'FORCE', '2017-12-21 08:34:41+00', '6.7e-07');
INSERT INTO "assets" VALUES ('5456', 'sisa', 'SISA Token', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('5457', 'wild', 'Wild Crypto', '2017-12-21 08:34:41+00', '1.904e-05');
INSERT INTO "assets" VALUES ('5458', 'gls', 'GlassCoin', '2017-12-21 08:34:41+00', '2.947e-05');
INSERT INTO "assets" VALUES ('5459', 'dutch', 'Dutch Coin', '2017-12-21 08:34:41+00', '4e-08');
INSERT INTO "assets" VALUES ('5460', 'snd', 'Sand Coin', '2017-12-21 08:34:41+00', '2.347e-05');
INSERT INTO "assets" VALUES ('5461', 'stu', 'Student Coin', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('5462', 'pnx', 'Phantomx', '2017-12-21 08:34:41+00', '1.6e-06');
INSERT INTO "assets" VALUES ('5463', 'btc2x', 'Bitcoin2x', '2017-12-21 08:34:42+00', '3.2e-07');
INSERT INTO "assets" VALUES ('5464', 'zbc', 'Zilbercoin', '2017-12-21 08:34:41+00', '2.03e-06');
INSERT INTO "assets" VALUES ('5465', 'plx', 'PlexCoin', '2017-12-21 08:34:41+00', '1.99e-06');
INSERT INTO "assets" VALUES ('5466', 'tria', 'Triaconta', '2017-12-21 08:34:42+00', '0.00092769');
INSERT INTO "assets" VALUES ('5467', 'cor', 'CORION', '2017-12-21 08:34:41+00', '4.01e-05');
INSERT INTO "assets" VALUES ('5468', 'aib', 'Advanced Internet Blocks', '2017-12-21 08:34:41+00', '1.44e-06');
INSERT INTO "assets" VALUES ('5469', 'topaz', 'Topaz Coin', '2017-12-21 08:34:41+00', '4.187e-05');
INSERT INTO "assets" VALUES ('5470', 'mci', 'Musiconomi', '2017-12-21 08:34:41+00', '4.09e-06');
INSERT INTO "assets" VALUES ('5471', 'mcr', 'Macro', '2017-12-21 08:34:41+00', '0.00010877');
INSERT INTO "assets" VALUES ('5472', 'ignis', 'Ignis', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('5473', 'evc', 'EventChain', '2017-12-21 08:34:41+00', '9.77e-06');
INSERT INTO "assets" VALUES ('5474', 'sur', 'Suretly', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('5475', 'plc', 'PlusCoin', '2017-12-21 08:34:41+00', '6e-08');
INSERT INTO "assets" VALUES ('5476', 'ocow', 'OCOW', '2017-12-21 08:34:41+00', '9e-09');
INSERT INTO "assets" VALUES ('5477', 'edrc', 'EDRCoin', '2017-12-21 08:34:42+00', '5.77e-06');
INSERT INTO "assets" VALUES ('5478', 'coupe', 'Coupecoin', '2017-12-21 08:34:42+00', '4e-09');
INSERT INTO "assets" VALUES ('5479', 'pec', 'Peacecoin', '2017-12-21 08:34:41+00', '2.5e-06');
INSERT INTO "assets" VALUES ('5480', 'high', 'High Gain', '2017-12-21 08:34:42+00', '5e-08');
INSERT INTO "assets" VALUES ('5481', 'hdlb', 'HODL Bucks', '2017-12-21 08:34:42+00', '9.03e-06');
INSERT INTO "assets" VALUES ('5482', 'best', 'BestChain', '2017-12-21 08:34:41+00', '3.4e-07');
INSERT INTO "assets" VALUES ('5483', 'dbg', 'Digital Bullion Gold', '2017-12-21 08:34:42+00', '8e-08');
INSERT INTO "assets" VALUES ('5484', 'stex', 'STEX', '2017-12-21 08:34:41+00', '0.0001179');
INSERT INTO "assets" VALUES ('5486', 'india', 'India Coin', '2017-12-21 08:34:42+00', '3e-08');
INSERT INTO "assets" VALUES ('5487', 'wic', 'Wi Coin', '2017-12-21 08:34:42+00', '1.8e-07');
INSERT INTO "assets" VALUES ('5489', 'moto', 'Motocoin', '2017-12-21 08:34:41+00', '1.51e-06');
INSERT INTO "assets" VALUES ('5491', 'cheap', 'Cheapcoin', '2017-12-21 08:34:43+00', '2e-08');
INSERT INTO "assets" VALUES ('5492', 'tie', 'TIES Network', '2017-12-21 08:34:41+00', '7.76e-06');
INSERT INTO "assets" VALUES ('5493', 'hytv', 'Hyper TV', '2017-12-21 08:34:41+00', '1.6e-07');
INSERT INTO "assets" VALUES ('5494', 'flash', 'Flash', '2017-12-21 08:34:41+00', '4.9e-07');
INSERT INTO "assets" VALUES ('5495', 'ibtc', 'iBTC', '2017-12-21 08:34:42+00', '6.6e-07');
INSERT INTO "assets" VALUES ('5496', 'abc', 'Alphabit', '2017-12-21 08:34:42+00', '0.0040916');
INSERT INTO "assets" VALUES ('5497', 'day', 'Chronologic', '2017-12-21 08:34:42+00', '0.00019905');
INSERT INTO "assets" VALUES ('5499', 'ter', 'TerraNova', '2017-12-21 08:34:41+00', '0.00066633');
INSERT INTO "assets" VALUES ('5500', 'namo', 'NamoCoin', '2017-12-21 08:34:41+00', '6e-09');
INSERT INTO "assets" VALUES ('5501', 'iqt', 'iQuant', '2017-12-21 08:34:41+00', '1.16e-05');
INSERT INTO "assets" VALUES ('5502', 'prm', 'PrismChain', '2017-12-21 08:34:42+00', '1.3e-07');
INSERT INTO "assets" VALUES ('5503', 'fudd', 'DimonCoin', '2017-12-21 08:34:42+00', '2e-09');
INSERT INTO "assets" VALUES ('5504', 'exrn', 'EXRNchain', '2017-12-21 08:34:42+00', '2e-10');
INSERT INTO "assets" VALUES ('5506', 'btbc', 'Bitbase', '2017-12-21 08:34:42+00', '2.7e-07');
INSERT INTO "assets" VALUES ('5507', 'grn', 'Granite', '2017-12-21 08:34:42+00', '1.25e-06');
INSERT INTO "assets" VALUES ('5508', 'uahpay', 'UAHPay', '2017-12-21 08:34:42+00', '5e-09');
INSERT INTO "assets" VALUES ('5509', 'sha', 'SHACoin', '2017-12-21 08:34:42+00', '9e-08');
INSERT INTO "assets" VALUES ('5510', 'blx', 'Blockchain Index', '2017-12-21 08:34:41+00', '0.00034178');
INSERT INTO "assets" VALUES ('5511', 'pcs', 'Pabyosi Coin (Special)', '2017-12-21 08:34:42+00', '3.32e-06');
INSERT INTO "assets" VALUES ('5512', 'dmc', 'DynamicCoin', '2017-12-21 08:34:42+00', '1.1e-07');
INSERT INTO "assets" VALUES ('5513', 'skr', 'Sakuracoin', '2017-12-21 08:34:41+00', '4.1e-07');
INSERT INTO "assets" VALUES ('5514', 'tesla', 'TeslaCoilCoin', '2017-12-21 08:34:42+00', '6.001e-05');
INSERT INTO "assets" VALUES ('5515', 'flap', 'FlappyCoin', '2017-12-21 08:34:42+00', '3e-09');
INSERT INTO "assets" VALUES ('5516', 'gay', 'GAY Money', '2017-12-21 08:34:42+00', '1.8e-06');
INSERT INTO "assets" VALUES ('5517', 'xot', 'Internet of Things', '2017-12-21 08:34:42+00', '0.126509');
INSERT INTO "assets" VALUES ('5518', 'vulc', 'Vulcano', '2017-12-21 08:34:42+00', '1.9e-07');
INSERT INTO "assets" VALUES ('5519', 'irl', 'IrishCoin', '2017-12-21 08:34:42+00', '2e-07');
INSERT INTO "assets" VALUES ('5520', 'swp', 'Swapcoin', '2017-12-21 08:34:42+00', '8.74e-06');
INSERT INTO "assets" VALUES ('5522', 'acn', 'Avoncoin', '2017-12-21 08:34:42+00', '3e-08');
INSERT INTO "assets" VALUES ('5525', 'marx', 'MarxCoin', '2017-12-21 08:34:42+00', '1e-07');
INSERT INTO "assets" VALUES ('5526', 'ntc', 'Natcoin', '2017-12-21 08:34:42+00', '3.68e-06');
INSERT INTO "assets" VALUES ('5527', 'xry', 'Royalties', '2017-12-21 08:34:41+00', '3e-09');
INSERT INTO "assets" VALUES ('5528', 'zse', 'ZSEcoin', '2017-12-21 08:34:42+00', '1.61e-06');
INSERT INTO "assets" VALUES ('5529', 'ams', 'AmsterdamCoin', '2017-12-21 08:34:42+00', '2.5e-07');
INSERT INTO "assets" VALUES ('5530', 'ox', 'OX Fina', '2017-12-21 08:34:41+00', '6e-09');
INSERT INTO "assets" VALUES ('5531', 'ctic3', 'Coimatic 3.0', '2017-12-21 08:34:42+00', '4.1e-07');
INSERT INTO "assets" VALUES ('5532', 'wow', 'Wowcoin', '2017-12-21 08:34:41+00', '1e-08');
INSERT INTO "assets" VALUES ('5533', 'tell', 'Tellurion', '2017-12-21 08:34:42+00', '4e-08');
INSERT INTO "assets" VALUES ('5534', 'wa', 'WA Space', '2017-12-21 08:34:42+00', '1.17e-06');
INSERT INTO "assets" VALUES ('5535', 'gbrc', 'Global Business Revolution', '2017-12-21 08:34:42+00', '2e-08');
INSERT INTO "assets" VALUES ('5536', 'don', 'Donationcoin', '2017-12-21 08:34:42+00', '6e-08');
INSERT INTO "assets" VALUES ('5537', 'apc', 'AlpaCoin', '2017-12-21 08:34:42+00', '1.41e-06');
INSERT INTO "assets" VALUES ('5538', 'egg', 'EggCoin', '2017-12-21 08:34:43+00', '1.71e-06');
INSERT INTO "assets" VALUES ('5539', 'cme', 'Cashme', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5540', 'xqn', 'Quotient', '2017-12-21 08:34:41+00', '4.4e-07');
INSERT INTO "assets" VALUES ('5541', 'skull', 'Pirate Blocks', '2017-12-21 08:34:42+00', '1e-07');
INSERT INTO "assets" VALUES ('5543', '9coin', '9COIN', '2017-12-21 08:34:42+00', '2e-07');
INSERT INTO "assets" VALUES ('5544', 'bub', 'Bubble', '2017-12-21 08:34:42+00', '1.17e-06');
INSERT INTO "assets" VALUES ('5545', 'fc', 'Facecoin', '2017-12-21 08:34:43+00', '2.2e-07');
INSERT INTO "assets" VALUES ('5546', 'rbbt', 'RabbitCoin', '2017-12-21 08:34:41+00', '3e-10');
INSERT INTO "assets" VALUES ('5547', 'top', 'TopCoin', '2017-12-21 08:34:42+00', '5e-08');
INSERT INTO "assets" VALUES ('5548', 'cbd', 'CBD Crystals', '2017-12-21 08:34:42+00', '5e-08');
INSERT INTO "assets" VALUES ('5549', 'primu', 'Primulon', '2017-12-21 08:34:42+00', '2e-08');
INSERT INTO "assets" VALUES ('5550', 'hallo', 'Halloween Coin', '2017-12-21 08:34:42+00', '2e-08');
INSERT INTO "assets" VALUES ('5551', 'rubit', 'RubleBit', '2017-12-21 08:34:43+00', '3.6e-07');
INSERT INTO "assets" VALUES ('5552', 'ipy', 'Infinity Pay', '2017-12-21 08:34:42+00', '2e-07');
INSERT INTO "assets" VALUES ('5553', 'lepen', 'LePen', '2017-12-21 08:34:42+00', '4e-09');
INSERT INTO "assets" VALUES ('5554', 'lkc', 'LinkedCoin', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5555', 'sak', 'Sharkcoin', '2017-12-21 08:34:43+00', '3.1e-07');
INSERT INTO "assets" VALUES ('5556', 'omc', 'Omicron', '2017-12-21 08:34:43+00', '1.543e-05');
INSERT INTO "assets" VALUES ('5557', 'blazr', 'BlazerCoin', '2017-12-21 08:34:42+00', '8e-08');
INSERT INTO "assets" VALUES ('5558', 'fonz', 'Fonziecoin', '2017-12-21 08:34:42+00', '7e-08');
INSERT INTO "assets" VALUES ('5559', 'stars', 'StarCash Network', '2017-12-21 08:34:42+00', '7.23e-06');
INSERT INTO "assets" VALUES ('5560', 'unrc', 'UniversalRoyalCoin', '2017-12-21 08:34:42+00', '5e-08');
INSERT INTO "assets" VALUES ('5561', 'frn', 'Francs', '2017-12-21 08:34:42+00', '1.77e-06');
INSERT INTO "assets" VALUES ('5562', 'gmx', 'GoldMaxCoin', '2017-12-21 08:34:42+00', '6.4e-07');
INSERT INTO "assets" VALUES ('5563', 'aces', 'Aces', '2017-12-21 08:34:43+00', '2e-08');
INSERT INTO "assets" VALUES ('5564', 'eusd', 'eUSD', '2017-12-21 08:34:44+00', '2e-08');
INSERT INTO "assets" VALUES ('5565', 'laz', 'Lazaruscoin', '2017-12-21 08:34:43+00', '1e-07');
INSERT INTO "assets" VALUES ('5566', 'bsn', 'Bastonet', '2017-12-21 08:34:42+00', '4e-08');
INSERT INTO "assets" VALUES ('5567', 'karma', 'Karmacoin', '2017-12-21 08:34:42+00', '1e-08');
INSERT INTO "assets" VALUES ('5568', 'runners', 'Runners', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5569', 'ebit', 'eBIT', '2017-12-21 08:34:42+00', '3.5e-07');
INSERT INTO "assets" VALUES ('5570', 'snake', 'SnakeEyes', '2017-12-21 08:34:42+00', '7.15e-06');
INSERT INTO "assets" VALUES ('5572', 'qora', 'Qora', '2017-12-21 08:34:42+00', '1.735e-05');
INSERT INTO "assets" VALUES ('5573', 'xtd', 'XTD Coin', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5574', 'ur', 'UR', '2017-12-21 08:34:42+00', '7e-08');
INSERT INTO "assets" VALUES ('5575', 'minex', 'Minex', '2017-12-21 08:34:41+00', '1.39e-06');
INSERT INTO "assets" VALUES ('5576', 'bgr', 'Bongger', '2017-12-21 08:34:43+00', '2e-08');
INSERT INTO "assets" VALUES ('5577', 'ldcn', 'LandCoin', '2017-12-21 08:34:42+00', '3e-07');
INSERT INTO "assets" VALUES ('5578', 'magn', 'Magnetcoin', '2017-12-21 08:34:43+00', '3.971e-05');
INSERT INTO "assets" VALUES ('5579', 'today', 'TodayCoin', '2017-12-21 08:34:43+00', '8e-08');
INSERT INTO "assets" VALUES ('5580', 'bit', 'First Bitcoin', '2017-12-21 08:34:42+00', '6e-07');
INSERT INTO "assets" VALUES ('5581', 'cyc', 'Cycling Coin', '2017-12-21 08:34:42+00', '9e-08');
INSERT INTO "assets" VALUES ('5582', 'unc', 'UNCoin', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5583', 'hyper', 'Hyper', '2017-12-21 08:34:42+00', '2.49e-06');
INSERT INTO "assets" VALUES ('5584', 'prn', 'Protean', '2017-12-21 08:34:42+00', '1e-08');
INSERT INTO "assets" VALUES ('5585', 'tcr', 'TheCreed', '2017-12-21 08:34:43+00', '2e-08');
INSERT INTO "assets" VALUES ('5588', 'wsx', 'WeAreSatoshi', '2017-12-21 08:34:43+00', '2.1e-07');
INSERT INTO "assets" VALUES ('5589', 'cyder', 'Cyder', '2017-12-21 08:34:43+00', '2e-08');
INSERT INTO "assets" VALUES ('5590', 'skc', 'Skeincoin', '2017-12-21 08:34:42+00', '1.74e-06');
INSERT INTO "assets" VALUES ('5591', 'rhfc', 'RHFCoin', '2017-12-21 08:34:43+00', '7e-08');
INSERT INTO "assets" VALUES ('5592', 'fazz', 'Fazzcoin', '2017-12-21 08:34:43+00', '4.7e-07');
INSERT INTO "assets" VALUES ('5593', 'axiom', 'Axiom', '2017-12-21 08:34:42+00', '1.49e-06');
INSERT INTO "assets" VALUES ('5594', 'sfe', 'SafeCoin', '2017-12-21 08:34:42+00', '1e-08');
INSERT INTO "assets" VALUES ('5595', 'trick', 'TrickyCoin', '2017-12-21 08:34:42+00', '8.4e-07');
INSERT INTO "assets" VALUES ('5596', 'rega', 'Regacoin', '2017-12-21 08:34:43+00', '9e-08');
INSERT INTO "assets" VALUES ('5597', 'futc', 'FutCoin', '2017-12-21 08:34:43+00', '1.3e-07');
INSERT INTO "assets" VALUES ('5598', 'pres', 'President Trump', '2017-12-21 08:34:43+00', '2.4e-07');
INSERT INTO "assets" VALUES ('5599', 'sport', 'SportsCoin', '2017-12-21 08:34:43+00', '1e-07');
INSERT INTO "assets" VALUES ('5600', 'ani', 'Animecoin', '2017-12-21 08:34:42+00', '2e-08');
INSERT INTO "assets" VALUES ('5601', 'fap', 'FAPcoin', '2017-12-21 08:34:43+00', '9e-08');
INSERT INTO "assets" VALUES ('5602', 'xve', 'The Vegan Initiative', '2017-12-21 08:34:43+00', '3e-08');
INSERT INTO "assets" VALUES ('5603', 'hcc', 'Happy Creator Coin', '2017-12-21 08:34:43+00', '3e-08');
INSERT INTO "assets" VALUES ('5604', 'bitcf', 'First Bitcoin Capital', '2017-12-21 08:34:43+00', '6.49e-06');
INSERT INTO "assets" VALUES ('5605', 'egold', 'eGold', '2017-12-21 08:34:43+00', '6.2e-07');
INSERT INTO "assets" VALUES ('5606', 'voya', 'Voyacoin', '2017-12-21 08:34:42+00', '7.084e-05');
INSERT INTO "assets" VALUES ('5607', 'qbc', 'Quebecoin', '2017-12-21 08:34:42+00', '1.8e-07');
INSERT INTO "assets" VALUES ('5608', 'fbl', 'Faceblock', '2017-12-21 08:34:43+00', '5e-08');
INSERT INTO "assets" VALUES ('5609', 'cc', 'CyberCoin', '2017-12-21 08:34:42+00', '1e-08');
INSERT INTO "assets" VALUES ('5610', 'wink', 'Wink', '2017-12-21 08:34:43+00', '3e-08');
INSERT INTO "assets" VALUES ('5611', 'guc', 'GoldUnionCoin', '2017-12-21 08:34:43+00', '2.25e-06');
INSERT INTO "assets" VALUES ('5612', 'pcn', 'PeepCoin', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5613', 'turbo', 'TurboCoin', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5614', 'av', 'AvatarCoin', '2017-12-21 08:34:41+00', '3.38e-06');
INSERT INTO "assets" VALUES ('5615', 'antx', 'Antimatter', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5616', 'elc', 'Elacoin', '2017-12-21 08:34:43+00', '6.81e-06');
INSERT INTO "assets" VALUES ('5617', 'dashs', 'Dashs', '2017-12-21 08:34:43+00', '3.23e-06');
INSERT INTO "assets" VALUES ('5618', 'moneta', 'Moneta', '2017-12-21 08:34:42+00', '3e-08');
INSERT INTO "assets" VALUES ('5619', 'gml', 'GameLeagueCoin', '2017-12-21 08:34:43+00', '9.1e-07');
INSERT INTO "assets" VALUES ('5620', 'bitok', 'Bitok', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5621', 'poke', 'PokeCoin', '2017-12-21 08:34:42+00', '2e-08');
INSERT INTO "assets" VALUES ('5622', 'mmxvi', 'MMXVI', '2017-12-21 08:34:42+00', '2.6e-07');
INSERT INTO "assets" VALUES ('5623', 'eltc2', 'eLTC', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5624', 'birds', 'Birds', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5625', 'asn', 'Aseancoin', '2017-12-21 08:34:43+00', '2.4e-07');
INSERT INTO "assets" VALUES ('5626', 'disk', 'DarkLisk', '2017-12-21 08:34:43+00', '8e-08');
INSERT INTO "assets" VALUES ('5627', 'yes', 'Yescoin', '2017-12-21 08:34:43+00', '6e-09');
INSERT INTO "assets" VALUES ('5628', 'bxc', 'Bitcedi', '2017-12-21 08:34:42+00', '3e-07');
INSERT INTO "assets" VALUES ('5629', 'payp', 'PayPeer', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5630', 'dcre', 'DeltaCredits', '2017-12-21 08:34:43+00', '1.511e-05');
INSERT INTO "assets" VALUES ('5631', 'mbl', 'MobileCash', '2017-12-21 08:34:43+00', '3e-08');
INSERT INTO "assets" VALUES ('5632', 'uta', 'UtaCoin', '2017-12-21 08:34:43+00', '1.3e-07');
INSERT INTO "assets" VALUES ('5633', 'x2', 'X2', '2017-12-21 08:34:42+00', '1e-08');
INSERT INTO "assets" VALUES ('5634', 'royal', 'RoyalCoin', '2017-12-21 08:34:42+00', '2.9e-07');
INSERT INTO "assets" VALUES ('5635', '10mt', '10M Token', '2017-12-21 08:34:43+00', '1.3e-07');
INSERT INTO "assets" VALUES ('5636', 'nbe', 'BitCentavo', '2017-12-21 08:34:43+00', '1e-11');
INSERT INTO "assets" VALUES ('5637', 'lth', 'LAthaan', '2017-12-21 08:34:43+00', '2e-08');
INSERT INTO "assets" VALUES ('5638', 'ffc', 'FireFlyCoin', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5639', 'richx', 'RichCoin', '2017-12-21 08:34:43+00', '5.5e-07');
INSERT INTO "assets" VALUES ('5640', 'tera', 'TeraCoin', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5641', 'vgc', 'VegasCoin', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5642', 'sync', 'Sync', '2017-12-21 08:34:43+00', '0.048');
INSERT INTO "assets" VALUES ('5644', 'xau', 'Xaucoin', '2017-12-21 08:34:43+00', '2.65e-06');
INSERT INTO "assets" VALUES ('5645', 'shell', 'ShellCoin', '2017-12-21 08:34:43+00', '1.94e-06');
INSERT INTO "assets" VALUES ('5646', 'dub', 'Dubstep', '2017-12-21 08:34:43+00', '2.1e-07');
INSERT INTO "assets" VALUES ('5647', 'ivz', 'InvisibleCoin', '2017-12-21 08:34:43+00', '3.049e-05');
INSERT INTO "assets" VALUES ('5648', 'opes', 'Opescoin', '2017-12-21 08:34:43+00', '1.2e-07');
INSERT INTO "assets" VALUES ('5649', 'bac', 'BitAlphaCoin', '2017-12-21 08:34:42+00', '2.1e-07');
INSERT INTO "assets" VALUES ('5650', 'safex', 'Safe Exchange Coin', '2017-12-21 08:34:43+00', '0');
INSERT INTO "assets" VALUES ('5651', 'psy', 'Psilocybin', '2017-12-21 08:34:43+00', '1.7e-06');
INSERT INTO "assets" VALUES ('5652', 'op', 'Operand', '2017-12-21 08:34:43+00', '7e-08');
INSERT INTO "assets" VALUES ('5653', 'clint', 'Clinton', '2017-12-21 08:34:43+00', '6.9e-07');
INSERT INTO "assets" VALUES ('5654', 'gain', 'UGAIN', '2017-12-21 08:34:43+00', '5e-08');
INSERT INTO "assets" VALUES ('5655', 'gary', 'President Johnson', '2017-12-21 08:34:43+00', '9.97e-06');
INSERT INTO "assets" VALUES ('5656', 'golf', 'Golfcoin', '2017-12-21 08:34:42+00', '1e-08');
INSERT INTO "assets" VALUES ('5657', 'team', 'TeamUp', '2017-12-21 08:34:43+00', '2e-08');
INSERT INTO "assets" VALUES ('5658', 'money', 'MoneyCoin', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5659', 'xstc', 'Safe Trade Coin', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5660', 'pdg', 'PinkDog', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5661', 'kashh', 'KashhCoin', '2017-12-21 08:34:42+00', '1e-08');
INSERT INTO "assets" VALUES ('5662', 'xde2', 'XDE II', '2017-12-21 08:34:43+00', '0.00018003');
INSERT INTO "assets" VALUES ('5663', 'bixc', 'BIXC', '2017-12-21 08:34:43+00', '0.00040078');
INSERT INTO "assets" VALUES ('5664', 'tle', 'Tattoocoin (Limited Edition)', '2017-12-21 08:34:43+00', '2.05e-06');
INSERT INTO "assets" VALUES ('5665', 'tyc', 'Tyrocoin', '2017-12-21 08:34:43+00', '9e-07');
INSERT INTO "assets" VALUES ('5666', 'pi', 'PiCoin', '2017-12-21 08:34:43+00', '4e-07');
INSERT INTO "assets" VALUES ('5667', 'adk', 'Aidos Kuneen', '2017-12-21 08:34:43+00', '0.00190002');
INSERT INTO "assets" VALUES ('5668', 'men', 'PeopleCoin', '2017-12-21 08:34:43+00', '1e-08');
INSERT INTO "assets" VALUES ('5669', 'fid', 'BITFID', '2017-12-21 08:34:42+00', '1e-05');
INSERT INTO "assets" VALUES ('5670', 'bccs', 'BitcoinCashScrypt', '2017-12-21 08:34:42+00', '3e-06');
INSERT INTO "assets" VALUES ('5671', 'yel', 'Yellow Token', '2017-12-21 08:34:43+00', '1.1e-07');
INSERT INTO "assets" VALUES ('5672', 'mage', 'MagicCoin', '2017-12-21 08:34:43+00', '0.0009005');
INSERT INTO "assets" VALUES ('5673', 'xylo', 'XYLO', '2017-12-21 08:34:43+00', '5.31e-05');
INSERT INTO "assets" VALUES ('5674', 'csc', 'CasinoCoin', '2017-12-21 08:34:43+00', '2.727e-05');
INSERT INTO "assets" VALUES ('5675', 'wec', 'Wowecoin', '2017-12-20 11:07:51+00', '0');
INSERT INTO "assets" VALUES ('5676', 'sic', 'Swisscoin', '2017-12-20 11:07:51+00', '0');
INSERT INTO "assets" VALUES ('5677', 'edoge', 'EtherDoge', '2017-12-21 08:34:44+00', '4e-11');
INSERT INTO "assets" VALUES ('5973', 'vet', 'VeChain', '2017-12-21 08:34:28+00', '8.972e-05');
INSERT INTO "assets" VALUES ('7018', 'storm', 'Storm', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('7031', 'dtr', 'Dynamic Trading Rights', '2017-12-21 08:34:41+00', '1.14e-06');
INSERT INTO "assets" VALUES ('7108', 'star', 'Starbase', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('8907', 'bus', 'BTU support', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8908', 'xdnco', 'XDNCO', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('8909', 'bqx', 'Ethos', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8910', 'crs', 'Starta', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8911', 'mrv', 'Macroverse', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8912', 'hrb', 'Harbor', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8913', 'pbkx', 'PBKXToken', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8914', 'pqt', 'PAquarium', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8915', '8bt', 'The 8 Circuit Studios Token', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8916', 'iml', 'IMMLA', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8917', 'roots', 'RootProject', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('8918', 'grph', 's3ntigrapH', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8919', 'ecat', 'Enigma', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8920', 'emgo', 'MobileGo', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8921', 'ico', 'ICOBI', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8922', 'wmgo', 'MobileGo on WAVES', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('8923', 'mips', 'MIPSToken', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8924', 'lat', 'Latium', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8925', 'ebtcold', 'eBTC Old', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8926', 'bkb', 'BetKing Bankroll Token', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8927', 'bmt', 'BMChain', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8928', 'cl', 'Coinlancer', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8929', 'cld', 'Cloud', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8930', 'elm', 'Element', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8931', 'cdx', 'Network', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8932', 'drpu', 'DRP Utility', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8933', 'hac', 'HAC Token', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8934', 'indi', 'Indicoin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8935', 'its', 'ITS Chain', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('8936', 'prs', 'Presearch', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('8937', 'tbt', 'TBOT', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('8938', 'sms', 'Speed Mining Service', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('8939', 'zap', 'ZAP Token', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('8940', 'dov', 'DOVU', '2017-12-22 09:11:25+00', '0');
INSERT INTO "assets" VALUES ('8941', 'swftc', 'SwftCoin', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('9073', 'mpk', 'ImpakCoin', '2017-12-22 09:11:26+00', '0');
INSERT INTO "assets" VALUES ('9162', 'wealth', 'ConnectWealth', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('9171', 'xdnicco', 'DigitalNote ICCO', '2017-12-22 09:11:27+00', '0');
INSERT INTO "assets" VALUES ('9272', 'hams', 'hams', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9313', 'etrust', 'etrust', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9438', 'aum', 'aum', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9452', 'eurc', 'eurc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9457', 'zoom', 'zoom', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9468', 'arpa', 'arpa', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9473', 'xav', 'xav', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9486', 'take', 'take', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9492', 'twist', 'twist', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9501', 'arta', 'arta', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9506', 'bre', 'bre', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9516', 'pty', 'pty', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9521', 'ingt', 'ingt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9541', 'sev', 'sev', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9550', '007', '007', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9554', 'eags', 'eags', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9561', 'who', 'who', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9568', 'ring', 'ring', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9573', 'lts', 'lts', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9579', 'cb', 'cb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9594', 'zlq', 'zlq', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9613', 'lhc', 'lhc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9619', 'xsp', 'xsp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9622', 'karmc', 'karmc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9627', 'dust', 'dust', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9638', 'olit', 'olit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9642', 'skb', 'skb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9649', 'mapc', 'mapc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9654', 'eko', 'eko', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9659', 'blus', 'blus', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9675', 'acpr', 'acpr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9682', 'kiss', 'kiss', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9689', 'circ', 'circ', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9695', 'epc', 'epc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9707', 'tb', 'tb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9724', 'jnt', 'jnt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9730', 'putin', 'putin', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9746', 'nebu', 'nebu', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9751', 'btz', 'btz', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9756', 'ronin', 'ronin', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9761', 'xnx', 'xnx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9767', 'grexit', 'grexit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9784', 'czeco', 'czeco', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9793', 'dgms', 'dgms', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9798', 'coral', 'coral', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9802', 'tp1', 'tp1', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9813', 'chat', 'chat', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9824', 'sstc', 'sstc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9856', 'pxl', 'pxl', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9860', 'geld', 'geld', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9865', 'xt', 'xt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9870', 'chill', 'chill', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9875', 'vcoin', 'vcoin', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9881', 'gakh', 'gakh', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9894', 'jocker', 'jocker', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9902', 'poppy', 'poppy', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9909', 'xnm', 'xnm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9937', 'shrek', 'shrek', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9944', 'u', 'u', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9969', 'etco', 'etco', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('9991', 'hon', 'hon', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10016', 'ruc', 'ruc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10019', 'ebonus', 'ebonus', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10028', 'nodes', 'nodes', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10035', 'tennet', 'tennet', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10040', 'dota', 'dota', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10047', 'btd', 'btd', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10051', 'ccb', 'ccb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10081', 'tot', 'tot', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10088', 'nuke', 'nuke', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10095', 'stp', 'stp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10100', 'spc', 'spc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10116', 'uae', 'uae', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10130', 'dcyp', 'dcyp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10164', 'ctic', 'ctic', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10171', 'lgbtq', 'lgbtq', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10176', 'qtm', 'qtm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10189', 'ozc', 'ozc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10195', '2015', '2015', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10208', 'csmic', 'csmic', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10243', 'exb', 'exb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10254', 'xvs', 'xvs', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10262', 'deth', 'deth', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10273', 'jok', 'jok', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10279', 'fidgt', 'fidgt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10284', 'miro', 'miro', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10294', 'fsn', 'fsn', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10313', 'cs', 'cs', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10318', 'xpc', 'xpc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10322', 'fpc', 'fpc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10329', 'ktk', 'ktk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10340', 'shrp', 'shrp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10346', 'sen', 'sen', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10388', 'edr2', 'edr2', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10397', 'twerk', 'twerk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10405', 'asafe', 'asafe', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10424', 'sed', 'sed', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10431', 'mrb', 'mrb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10437', 'maze', 'maze', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10454', 'bhc', 'bhc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10461', 'gt', 'gt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10469', 'nkt', 'nkt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10482', 'ghs', 'ghs', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10487', 'boson', 'boson', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10495', 'sigu', 'sigu', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10503', 'vec', 'vec', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10510', 'udown', 'udown', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10512', 'haze', 'haze', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10517', 'ea', 'ea', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10519', 'vty', 'vty', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10531', 'dtt', 'dtt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10562', 'dcc', 'dcc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10567', 'kc', 'kc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10601', 'ibits', 'ibits', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10606', 'vapor', 'vapor', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10611', 'shrm', 'shrm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10628', 'zecd', 'zecd', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10636', 'alien', 'alien', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10642', 'beep', 'beep', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10648', 'goat', 'goat', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10653', 'ext', 'ext', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10671', 'rh', 'rh', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10676', 'smf', 'smf', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10682', 'trap', 'trap', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10708', 'fcash', 'fcash', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10713', 'xbs', 'xbs', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10718', 'stonk', 'stonk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10735', 'nic', 'nic', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10762', 'slco', 'slco', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10787', 'vene', 'vene', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10796', 'zet2', 'zet2', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10802', 'mystic', 'mystic', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10809', 'bomb', 'bomb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10830', 'dgore', 'dgore', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10835', 'capt', 'capt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10850', 'moond', 'moond', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10860', 'cjc', 'cjc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10873', 'stk', 'stk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10884', 'genius', 'genius', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10892', 'bstk', 'bstk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10897', 'jw', 'jw', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10910', 'alc', 'alc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10914', 'sthr', 'sthr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10920', 'mcar', 'mcar', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10927', 'cfc', 'cfc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10932', 'pom', 'pom', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10940', 'tam', 'tam', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10963', 'wash', 'wash', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10979', 'jack', 'jack', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('10995', 'scan', 'scan', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11004', 'bst', 'bst', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11012', 'sw', 'sw', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11016', 'agri', 'agri', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11021', 'radi', 'radi', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11028', 'btcu', 'btcu', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11040', 'krak', 'krak', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11076', 'lite', 'lite', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11106', 'tmrw', 'tmrw', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11130', 'smsr', 'smsr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11136', 'dirt', 'dirt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11203', 'multi', 'multi', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11227', 'clud', 'clud', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11252', 'tdfb', 'tdfb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11259', 'ldm', 'ldm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11264', 'icash', 'icash', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11271', 'stalin', 'stalin', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11284', 'minh', 'minh', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11289', 'onek', 'onek', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11300', 'tap', 'tap', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11306', 'srnd', 'srnd', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11313', 'pipr', 'pipr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11324', 'sql', 'sql', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11327', 'inc', 'inc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11354', 'boss', 'boss', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11376', 'lvg', 'lvg', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11380', 'jpc', 'jpc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11408', '365', '365', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11414', 'greenf', 'greenf', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11423', 'jane', 'jane', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11442', 'gsx', 'gsx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11451', 'ecli', 'ecli', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11455', 'ntm', 'ntm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11461', 'c0c0', 'c0c0', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11472', 'noo', 'noo', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11477', 'umc', 'umc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11487', 'sweet', 'sweet', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11497', 'bcs', 'bcs', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11502', 'wam', 'wam', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11526', 'rid', 'rid', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11535', 'enter', 'enter', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11546', 'mat', 'mat', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11552', 'mbit', 'mbit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11558', 'hawk', 'hawk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11565', 'pen', 'pen', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11592', 'biton', 'biton', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11606', 'tra', 'tra', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11612', 'olymp', 'olymp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11699', 'acid', 'acid', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11701', 'bod', 'bod', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11708', 'xmine', 'xmine', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11710', 'dvd', 'dvd', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11713', 'xde', 'xde', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11717', 'bio', 'bio', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11722', 'adam', 'adam', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11724', 'fade', 'fade', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11728', 'edit', 'edit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11734', 'mpro', 'mpro', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11742', 'thom', 'thom', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11746', 'coin', 'coin', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11748', 'kgc', 'kgc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11750', 'fx', 'fx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11755', 'dox', 'dox', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11758', 'incp', 'incp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11763', 'ros', 'ros', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11765', 'cov', 'cov', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11767', 'para', 'para', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11769', 'tlosh', 'tlosh', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11777', 'dblk', 'dblk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11779', 'gsm', 'gsm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11783', 'drz', 'drz', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11785', 'gotx', 'gotx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11789', 'jif', 'jif', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11793', 'dur', 'dur', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11795', 'btcun', 'btcun', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11799', 'dxc', 'dxc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11804', 'vk', 'vk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11806', 'pta', 'pta', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11810', 'dra', 'dra', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11812', 'tlex', 'tlex', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11814', 'rcx', 'rcx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11821', 'play', 'play', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11823', 'btcry', 'btcry', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11826', 'seeds', 'seeds', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11828', 'dea', 'dea', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11832', '256', '256', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11841', 'crab', 'crab', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11843', 'tide', 'tide', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11848', 'lumi', 'lumi', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11852', 'tech', 'tech', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11854', 'mvc', 'mvc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11859', 'peo', 'peo', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11864', 'bit16', 'bit16', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11869', 'nixon', 'nixon', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11876', 'al', 'al', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11878', 'spktr', 'spktr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11881', 'arm', 'arm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11886', 'ybc', 'ybc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11890', 'tpg', 'tpg', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11894', 'cin', 'cin', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11896', 'iec', 'iec', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11899', 'lizi', 'lizi', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11904', 'lc', 'lc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11909', 'hedg', 'hedg', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11916', 'ctk', 'ctk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11922', 'hifun', 'hifun', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11927', 'fidel', 'fidel', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11932', 'vpn', 'vpn', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11934', 'beez', 'beez', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11940', 'dkc', 'dkc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11942', 'europe', 'europe', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11944', 'leaf', 'leaf', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11947', 'comp', 'comp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11951', 'lunyr', 'lunyr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11954', 'kr', 'kr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11956', 'hsp', 'hsp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11958', 'vtn', 'vtn', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11961', 'fury', 'fury', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11967', 'rad', 'rad', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11972', 'bam', 'bam', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11975', 'crime', 'crime', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11977', 'tak', 'tak', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11979', 'grow', 'grow', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11985', 'xps', 'xps', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11987', 'heel', 'heel', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11989', 'inv', 'inv', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11991', 'bronz', 'bronz', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11993', 'bth', 'bth', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11995', 'psb', 'psb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11997', 'ltd', 'ltd', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('11999', 'ubiq', 'ubiq', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12001', 'xltcg', 'xltcg', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12004', 'bs', 'bs', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12006', 'tokc', 'tokc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12009', 'acrn', 'acrn', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12016', 'pio', 'pio', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12019', 'nef', 'nef', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12021', 'artc', 'artc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12027', 'kubo', 'kubo', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12037', 'hyperx', 'hyperx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12039', 'gram', 'gram', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12042', 'dck', 'dck', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12044', 'frdc', 'frdc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12048', 'bttf', 'bttf', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12051', '32bit', '32bit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12056', 'egame', 'egame', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12058', 'in', 'in', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12062', 'brdd', 'brdd', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12068', 'kgb', 'kgb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12074', 'got', 'got', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12076', 'gtfo', 'gtfo', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12080', 'forex', 'forex', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12082', 'apt', 'apt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12084', 'gfl', 'gfl', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12086', 'uxc', 'uxc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12092', 'sleep', 'sleep', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12094', 'mental', 'mental', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12101', 'fre', 'fre', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12103', 'option', 'option', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12105', 'soul', 'soul', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12107', 'liza', 'liza', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12118', 'rocket', 'rocket', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12123', 'xssx', 'xssx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12125', 'sjw', 'sjw', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12132', 'lbtcx', 'lbtcx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12134', '700', '700', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12141', 'dux', 'dux', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12145', 'hzt', 'hzt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12151', 'mis', 'mis', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12154', 'giz', 'giz', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12156', 'mlnc', 'mlnc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12158', 'xbu', 'xbu', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12160', 'npc', 'npc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12171', 'vtx', 'vtx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12174', 'obs', 'obs', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12182', 'bsh', 'bsh', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12184', 'ponz2', 'ponz2', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12190', 'nrc', 'nrc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12193', 'exit', 'exit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12195', 'tng', 'tng', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12201', 'spec', 'spec', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12205', 'batl', 'batl', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12207', 'wcash', 'wcash', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12211', 'tur', 'tur', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12213', 'chemx', 'chemx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12215', 'bcm', 'bcm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12219', 'week', 'week', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12221', 'gluck', 'gluck', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12225', 'gen', 'gen', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12232', 'xgtc', 'xgtc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12237', 'rms', 'rms', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12240', '404', '404', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12249', 'alex', 'alex', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12256', 'nxe', 'nxe', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12259', 'glo', 'glo', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12267', 'xdb', 'xdb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12269', 'num', 'num', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12271', 'pupa', 'pupa', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12273', 'chip', 'chip', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12275', 'bab', 'bab', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12278', 'sbit', 'sbit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12280', 'tool', 'tool', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12283', 'eva', 'eva', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12286', 'muu', 'muu', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12290', 'eths', 'eths', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12295', 'lsd', 'lsd', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12297', 'scash', 'scash', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12299', 'btco', 'btco', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12303', 'atmcha', 'atmcha', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12306', 'ccc', 'ccc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12319', 'ba', 'ba', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12321', 'caid', 'caid', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12323', 'bill', 'bill', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12328', 'btp', 'btp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12332', 'strb', 'strb', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12334', 'err', 'err', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12336', 'scitw', 'scitw', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12338', 'are', 'are', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12340', 'cyt', 'cyt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12342', 'wrt', 'wrt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12345', 'nkc', 'nkc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12347', 'grf', 'grf', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12349', 'cyg', 'cyg', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12353', 'limx', 'limx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12355', 'yob2x', 'yob2x', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12358', 'kat', 'kat', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12362', 'marv', 'marv', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12374', 'smbr', 'smbr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12377', 'sp', 'sp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12384', 'xms', 'xms', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12393', 'ctl', 'ctl', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12396', 'nzc', 'nzc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12413', 'pinkx', 'pinkx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12418', 'witch', 'witch', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12420', 'arcx', 'arcx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12423', 'pal', 'pal', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12426', 'pwr', 'pwr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12433', 'two', 'two', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12436', 'wine', 'wine', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12441', 'kids', 'kids', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12443', 'empc', 'empc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12445', 'solar', 'solar', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12447', 'look', 'look', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12450', 'rnc', 'rnc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12452', 'vslice', 'vslice', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12455', 'cox', 'cox', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12457', 'mm', 'mm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12459', 'bgf', 'bgf', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12461', 'mdt', 'mdt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12466', 'gift', 'gift', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12468', 'tbcx', 'tbcx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12471', 'n7', 'n7', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12474', 'dxo', 'dxo', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12478', 'find', 'find', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12480', 'hope', 'hope', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12482', 'croc', 'croc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12484', 'nubis', 'nubis', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12486', 'aclr', 'aclr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12493', 'chrg', 'chrg', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12496', 'mvr', 'mvr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12498', 'nat', 'nat', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12508', 'profit', 'profit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12511', 'fit', 'fit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12513', 'dbic', 'dbic', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12516', 'zonto', 'zonto', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12518', 'choof', 'choof', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12527', 'dogeth', 'dogeth', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12534', 'bdc', 'bdc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12539', 'rice', 'rice', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12542', 'drkt', 'drkt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12551', 'xup', 'xup', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12554', 'ratio', 'ratio', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12559', 'unf', 'unf', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12567', 'nodx', 'nodx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12569', 'vrp', 'vrp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12572', 'xtr', 'xtr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12576', 'gig', 'gig', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12653', 'n2o', 'n2o', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12670', 'nice', 'nice', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12687', 'eqm', 'eqm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12699', 'crps', 'crps', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12708', 'grav', 'grav', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12806', 'arh', 'arh', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12834', 'ssc', 'ssc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12891', 'mntp', 'mntp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12911', 'qtz', 'qtz', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('12953', 'sel', 'sel', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13012', 'odnt', 'odnt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13091', 'ban', 'ban', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13114', 'boom', 'boom', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13118', 'hkn', 'hkn', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13121', 'cry', 'cry', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13163', 'flx', 'flx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13291', 'pcm', 'pcm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13303', 'lenin', 'lenin', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13311', 'yay', 'yay', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13318', 'mlite', 'mlite', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13325', 'spx', 'spx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13340', 'lucky', 'lucky', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13351', 'strp', 'strp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13362', 'tab', 'tab', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13371', 'wisc', 'wisc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13374', 'rust', 'rust', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13378', 'party', 'party', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13389', '420g', '420g', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13425', 'gene', 'gene', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13434', 'xsy', 'xsy', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13456', 'cd', 'cd', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13460', 'etl', 'etl', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13466', 'netc', 'netc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13469', 'ger', 'ger', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13477', 'psi', 'psi', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13479', 'vers', 'vers', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13482', 'iw', 'iw', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13485', 'nanas', 'nanas', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13496', 'vntx', 'vntx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13505', 'six', 'six', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13508', 'dc', 'dc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13519', 'tcn', 'tcn', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13525', 'mergec', 'mergec', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13541', 'tron', 'tron', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13563', 'bbh', 'bbh', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13608', 'insane', 'insane', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13619', 'cdo', 'cdo', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13624', 'gbit', 'gbit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13629', 'fgz', 'fgz', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13631', 'liv', 'liv', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13642', 'loot', 'loot', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13645', 'rbit', 'rbit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13657', 'rio', 'rio', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13672', 'esc', 'esc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13675', '2bacco', '2bacco', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13677', 'elco', 'elco', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13689', 'goon', 'goon', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13696', 'gum', 'gum', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13712', 'f16', 'f16', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13715', 'zirk', 'zirk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13719', 'ge', 'ge', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13722', 'sbt', 'sbt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13737', 'wok', 'wok', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13754', 'pnc', 'pnc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13770', 'curves', 'curves', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13776', 'planet', 'planet', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13783', 'oma', 'oma', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13788', 'vtl', 'vtl', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13791', 'power', 'power', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13799', 'agt', 'agt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13803', 'edc', 'edc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13836', 'sct', 'sct', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13845', 'craft', 'craft', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13849', 'ionx', 'ionx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13851', 'anal', 'anal', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13855', 'ene', 'ene', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13876', 'coc', 'coc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13883', 'ccx', 'ccx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13891', 'sdao', 'sdao', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13905', 'rai', 'rai', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13914', 'b2', 'b2', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13917', 'cg', 'cg', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13929', 'veg', 'veg', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13950', 'click', 'click', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13962', 'tao', 'tao', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13965', 'draco', 'draco', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13980', 'sto', 'sto', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('13988', 'ndoge', 'ndoge', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14007', 'bpok', 'bpok', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14011', 'ymc', 'ymc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14037', 'l7s', 'l7s', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14039', 'cks', 'cks', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14047', 'm1', 'm1', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14053', 'cst', 'cst', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14060', 'mrp', 'mrp', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14081', 'cmc', 'cmc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14084', 'gsy', 'gsy', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14101', 'xmt', 'xmt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14111', 'greed', 'greed', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14137', 'scrpt', 'scrpt', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14142', 'decr', 'decr', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14145', 'xpro', 'xpro', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14159', 'db', 'db', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14164', 'eoc', 'eoc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14767', 'ilm', 'ilm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14785', 'transf', 'transf', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14791', 'xfcx', 'xfcx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14803', 'am', 'am', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14826', 'drop', 'drop', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14938', 'aecc', 'aecc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('14980', 'bbcc', 'bbcc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15044', 'credit', 'credit', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15175', 'spm', 'spm', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15225', 'xpo', 'xpo', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15237', 'pnk', 'pnk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15253', 'crnk', 'crnk', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15301', 'noc', 'noc', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15351', 'fist', 'fist', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15466', 'equal', 'equal', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15479', 'tec', 'tec', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15488', 'tia', 'tia', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15537', 'hire', 'hire', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15541', 'utle', 'utle', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15578', 'vol', 'vol', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('15846', 'xce', 'xce', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('16023', 'solo', 'solo', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('16311', 'gmcx', 'gmcx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('19054', 'soma', 'soma', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('19875', 'go', 'go', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('19881', 'cam', 'cam', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('21918', 'ecchi', 'ecchi', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('22207', 'tcx', 'tcx', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('23191', 'mcoin', 'mcoin', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('27989', 'dec', 'dec', '1970-01-01 00:00:00+00', '0');
INSERT INTO "assets" VALUES ('32514', 'poly', 'poly', '1970-01-01 00:00:00+00', '0');
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
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS "events";
CREATE TABLE "events" (
"id" int8 DEFAULT nextval('signal_ids'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default" DEFAULT ''::character varying NOT NULL,
"user_id" int8 NOT NULL,
"exchange1" int8 DEFAULT 0 NOT NULL,
"exchange2" int8 DEFAULT 0 NOT NULL,
"asset1" int8 DEFAULT 0 NOT NULL,
"asset2" int8 DEFAULT 0 NOT NULL,
"asset3" int8 DEFAULT 0 NOT NULL,
"type" int4 DEFAULT 0 NOT NULL,
"data1" int8 DEFAULT 0 NOT NULL,
"data2" float8 DEFAULT 0 NOT NULL,
"time" timestamptz(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of events
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
INSERT INTO "exchanges" VALUES ('298', 'yobit', 'YoBit', 't', '2017-12-08 14:34:14+00');
INSERT INTO "exchanges" VALUES ('299', 'hitbtc', 'HitBTC', 't', '2017-12-08 14:34:14+00');
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
"base_key" varchar(255) COLLATE "default" NOT NULL,
"base_name" varchar(255) COLLATE "default" NOT NULL,
"quote_key" varchar(255) COLLATE "default" NOT NULL,
"quote_name" varchar(255) COLLATE "default" NOT NULL,
"time" timestamptz(6) NOT NULL,
"pair_name" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of pairs
-- ----------------------------
BEGIN;
INSERT INTO "pairs" VALUES ('4738', 'btc', 'Bitcoin', 'adt', 'adToken', '1970-01-01 00:00:00+00', 'btcadt');
INSERT INTO "pairs" VALUES ('4739', 'btc', 'Bitcoin', 'aeon', 'Aeon', '1970-01-01 00:00:00+00', 'btcaeon');
INSERT INTO "pairs" VALUES ('4740', 'btc', 'Bitcoin', '2give', '2GIVE', '1970-01-01 00:00:00+00', 'btc2give');
INSERT INTO "pairs" VALUES ('4741', 'btc', 'Bitcoin', 'amp', 'Synereo', '1970-01-01 00:00:00+00', 'btcamp');
INSERT INTO "pairs" VALUES ('4742', 'btc', 'Bitcoin', '1st', 'FirstBlood', '1970-01-01 00:00:00+00', 'btc1st');
INSERT INTO "pairs" VALUES ('4743', 'btc', 'Bitcoin', 'adx', 'AdEx', '1970-01-01 00:00:00+00', 'btcadx');
INSERT INTO "pairs" VALUES ('4744', 'btc', 'Bitcoin', 'btg', 'Bitgem', '1970-01-01 00:00:00+00', 'btcbtg');
INSERT INTO "pairs" VALUES ('4745', 'btc', 'Bitcoin', 'efl', 'e-Gulden', '1970-01-01 00:00:00+00', 'btcefl');
INSERT INTO "pairs" VALUES ('4746', 'btc', 'Bitcoin', 'dope', 'DopeCoin', '1970-01-01 00:00:00+00', 'btcdope');
INSERT INTO "pairs" VALUES ('4747', 'btc', 'Bitcoin', 'burst', 'Burst', '1970-01-01 00:00:00+00', 'btcburst');
INSERT INTO "pairs" VALUES ('4748', 'btc', 'Bitcoin', 'dtb', 'Databits', '1970-01-01 00:00:00+00', 'btcdtb');
INSERT INTO "pairs" VALUES ('4749', 'btc', 'Bitcoin', 'egc', 'EverGreenCoin', '1970-01-01 00:00:00+00', 'btcegc');
INSERT INTO "pairs" VALUES ('4750', 'btc', 'Bitcoin', 'ada', 'Cardano', '1970-01-01 00:00:00+00', 'btcada');
INSERT INTO "pairs" VALUES ('4751', 'btc', 'Bitcoin', 'myst', 'Mysterium', '1970-01-01 00:00:00+00', 'btcmyst');
INSERT INTO "pairs" VALUES ('4752', 'btc', 'Bitcoin', 'sys', 'Syscoin', '1970-01-01 00:00:00+00', 'btcsys');
INSERT INTO "pairs" VALUES ('4753', 'btc', 'Bitcoin', 'thc', 'HempCoin', '1970-01-01 00:00:00+00', 'btcthc');
INSERT INTO "pairs" VALUES ('4754', 'btc', 'Bitcoin', 'tix', 'Blocktix', '1970-01-01 00:00:00+00', 'btctix');
INSERT INTO "pairs" VALUES ('4755', 'btc', 'Bitcoin', 'emc', 'Emercoin', '1970-01-01 00:00:00+00', 'btcemc');
INSERT INTO "pairs" VALUES ('4756', 'btc', 'Bitcoin', 'nav', 'NAV Coin', '1970-01-01 00:00:00+00', 'btcnav');
INSERT INTO "pairs" VALUES ('4757', 'btc', 'Bitcoin', 'eng', 'Enigma', '1970-01-01 00:00:00+00', 'btceng');
INSERT INTO "pairs" VALUES ('4758', 'btc', 'Bitcoin', 'emc2', 'Einsteinium', '1970-01-01 00:00:00+00', 'btcemc2');
INSERT INTO "pairs" VALUES ('4759', 'btc', 'Bitcoin', 'nbt', 'NuBits', '1970-01-01 00:00:00+00', 'btcnbt');
INSERT INTO "pairs" VALUES ('4760', 'btc', 'Bitcoin', 'cann', 'CannabisCoin', '1970-01-01 00:00:00+00', 'btccann');
INSERT INTO "pairs" VALUES ('4761', 'btc', 'Bitcoin', 'neo', 'NEO', '1970-01-01 00:00:00+00', 'btcneo');
INSERT INTO "pairs" VALUES ('4762', 'btc', 'Bitcoin', 'byc', 'Bytecent', '1970-01-01 00:00:00+00', 'btcbyc');
INSERT INTO "pairs" VALUES ('4763', 'btc', 'Bitcoin', 'enrg', 'Energycoin', '1970-01-01 00:00:00+00', 'btcenrg');
INSERT INTO "pairs" VALUES ('4764', 'btc', 'Bitcoin', 'nlg', 'Gulden', '1970-01-01 00:00:00+00', 'btcnlg');
INSERT INTO "pairs" VALUES ('4765', 'btc', 'Bitcoin', 'etc', 'Ethereum Classic', '1970-01-01 00:00:00+00', 'btcetc');
INSERT INTO "pairs" VALUES ('4766', 'btc', 'Bitcoin', 'nmr', 'Numeraire', '1970-01-01 00:00:00+00', 'btcnmr');
INSERT INTO "pairs" VALUES ('4767', 'btc', 'Bitcoin', 'erc', 'EuropeCoin', '1970-01-01 00:00:00+00', 'btcerc');
INSERT INTO "pairs" VALUES ('4768', 'btc', 'Bitcoin', 'neos', 'NeosCoin', '1970-01-01 00:00:00+00', 'btcneos');
INSERT INTO "pairs" VALUES ('4769', 'btc', 'Bitcoin', 'ant', 'Aragon', '1970-01-01 00:00:00+00', 'btcant');
INSERT INTO "pairs" VALUES ('4770', 'btc', 'Bitcoin', 'aby', 'ArtByte', '1970-01-01 00:00:00+00', 'btcaby');
INSERT INTO "pairs" VALUES ('4771', 'btc', 'Bitcoin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'btceth');
INSERT INTO "pairs" VALUES ('4772', 'btc', 'Bitcoin', 'clam', 'Clams', '1970-01-01 00:00:00+00', 'btcclam');
INSERT INTO "pairs" VALUES ('4773', 'btc', 'Bitcoin', 'excl', 'ExclusiveCoin', '1970-01-01 00:00:00+00', 'btcexcl');
INSERT INTO "pairs" VALUES ('4774', 'btc', 'Bitcoin', 'cfi', 'Cofound.it', '1970-01-01 00:00:00+00', 'btccfi');
INSERT INTO "pairs" VALUES ('4775', 'btc', 'Bitcoin', 'nxc', 'Nexium', '1970-01-01 00:00:00+00', 'btcnxc');
INSERT INTO "pairs" VALUES ('4776', 'btc', 'Bitcoin', 'dyn', 'Dynamic', '1970-01-01 00:00:00+00', 'btcdyn');
INSERT INTO "pairs" VALUES ('4777', 'btc', 'Bitcoin', 'agrs', 'Agoras Tokens', '1970-01-01 00:00:00+00', 'btcagrs');
INSERT INTO "pairs" VALUES ('4778', 'btc', 'Bitcoin', 'fct', 'Factom', '1970-01-01 00:00:00+00', 'btcfct');
INSERT INTO "pairs" VALUES ('4779', 'btc', 'Bitcoin', 'exp', 'Expanse', '1970-01-01 00:00:00+00', 'btcexp');
INSERT INTO "pairs" VALUES ('4780', 'btc', 'Bitcoin', 'nxt', 'Nxt', '1970-01-01 00:00:00+00', 'btcnxt');
INSERT INTO "pairs" VALUES ('4781', 'btc', 'Bitcoin', 'flo', 'FlorinCoin', '1970-01-01 00:00:00+00', 'btcflo');
INSERT INTO "pairs" VALUES ('4782', 'btc', 'Bitcoin', 'nxs', 'Nexus', '1970-01-01 00:00:00+00', 'btcnxs');
INSERT INTO "pairs" VALUES ('4783', 'btc', 'Bitcoin', 'omg', 'OmiseGO', '1970-01-01 00:00:00+00', 'btcomg');
INSERT INTO "pairs" VALUES ('4784', 'btc', 'Bitcoin', 'omni', 'Omni', '1970-01-01 00:00:00+00', 'btcomni');
INSERT INTO "pairs" VALUES ('4785', 'btc', 'Bitcoin', 'part', 'Particl', '1970-01-01 00:00:00+00', 'btcpart');
INSERT INTO "pairs" VALUES ('4786', 'btc', 'Bitcoin', 'ftc', 'Feathercoin', '1970-01-01 00:00:00+00', 'btcftc');
INSERT INTO "pairs" VALUES ('4787', 'btc', 'Bitcoin', 'ok', 'OKCash', '1970-01-01 00:00:00+00', 'btcok');
INSERT INTO "pairs" VALUES ('4788', 'btc', 'Bitcoin', 'fun', 'FunFair', '1970-01-01 00:00:00+00', 'btcfun');
INSERT INTO "pairs" VALUES ('4789', 'btc', 'Bitcoin', 'fldc', 'FoldingCoin', '1970-01-01 00:00:00+00', 'btcfldc');
INSERT INTO "pairs" VALUES ('4790', 'btc', 'Bitcoin', 'fair', 'FairCoin', '1970-01-01 00:00:00+00', 'btcfair');
INSERT INTO "pairs" VALUES ('4791', 'btc', 'Bitcoin', 'gam', 'Gambit', '1970-01-01 00:00:00+00', 'btcgam');
INSERT INTO "pairs" VALUES ('4792', 'btc', 'Bitcoin', 'pdc', 'Project Decorum', '1970-01-01 00:00:00+00', 'btcpdc');
INSERT INTO "pairs" VALUES ('4793', 'btc', 'Bitcoin', 'game', 'GameCredits', '1970-01-01 00:00:00+00', 'btcgame');
INSERT INTO "pairs" VALUES ('4794', 'btc', 'Bitcoin', 'pay', 'TenX', '1970-01-01 00:00:00+00', 'btcpay');
INSERT INTO "pairs" VALUES ('4795', 'btc', 'Bitcoin', 'gbg', 'Golos Gold', '1970-01-01 00:00:00+00', 'btcgbg');
INSERT INTO "pairs" VALUES ('4796', 'btc', 'Bitcoin', 'pkb', 'ParkByte', '1970-01-01 00:00:00+00', 'btcpkb');
INSERT INTO "pairs" VALUES ('4797', 'btc', 'Bitcoin', 'ardr', 'Ardor', '1970-01-01 00:00:00+00', 'btcardr');
INSERT INTO "pairs" VALUES ('4798', 'btc', 'Bitcoin', 'powr', 'Power Ledger', '1970-01-01 00:00:00+00', 'btcpowr');
INSERT INTO "pairs" VALUES ('4799', 'btc', 'Bitcoin', 'gcr', 'Global Currency Reserve', '1970-01-01 00:00:00+00', 'btcgcr');
INSERT INTO "pairs" VALUES ('4800', 'btc', 'Bitcoin', 'geo', 'GeoCoin', '1970-01-01 00:00:00+00', 'btcgeo');
INSERT INTO "pairs" VALUES ('4801', 'btc', 'Bitcoin', 'pot', 'PotCoin', '1970-01-01 00:00:00+00', 'btcpot');
INSERT INTO "pairs" VALUES ('4802', 'btc', 'Bitcoin', 'gld', 'GoldCoin', '1970-01-01 00:00:00+00', 'btcgld');
INSERT INTO "pairs" VALUES ('4803', 'btc', 'Bitcoin', 'ptc', 'Pesetacoin', '1970-01-01 00:00:00+00', 'btcptc');
INSERT INTO "pairs" VALUES ('4804', 'btc', 'Bitcoin', 'gno', 'Gnosis', '1970-01-01 00:00:00+00', 'btcgno');
INSERT INTO "pairs" VALUES ('4805', 'btc', 'Bitcoin', 'gnt', 'Golem', '1970-01-01 00:00:00+00', 'btcgnt');
INSERT INTO "pairs" VALUES ('4806', 'btc', 'Bitcoin', 'gbyte', 'Byteball Bytes', '1970-01-01 00:00:00+00', 'btcgbyte');
INSERT INTO "pairs" VALUES ('4807', 'btc', 'Bitcoin', 'pink', 'PinkCoin', '1970-01-01 00:00:00+00', 'btcpink');
INSERT INTO "pairs" VALUES ('4808', 'btc', 'Bitcoin', 'ptoy', 'Patientory', '1970-01-01 00:00:00+00', 'btcptoy');
INSERT INTO "pairs" VALUES ('4809', 'btc', 'Bitcoin', 'trig', 'Triggers', '1970-01-01 00:00:00+00', 'btctrig');
INSERT INTO "pairs" VALUES ('4810', 'btc', 'Bitcoin', 'grc', 'GridCoin', '1970-01-01 00:00:00+00', 'btcgrc');
INSERT INTO "pairs" VALUES ('4811', 'btc', 'Bitcoin', 'tks', 'Tokes', '1970-01-01 00:00:00+00', 'btctks');
INSERT INTO "pairs" VALUES ('4812', 'btc', 'Bitcoin', 'trst', 'WeTrust', '1970-01-01 00:00:00+00', 'btctrst');
INSERT INTO "pairs" VALUES ('4813', 'btc', 'Bitcoin', 'grs', 'Groestlcoin', '1970-01-01 00:00:00+00', 'btcgrs');
INSERT INTO "pairs" VALUES ('4814', 'btc', 'Bitcoin', 'pivx', 'PIVX', '1970-01-01 00:00:00+00', 'btcpivx');
INSERT INTO "pairs" VALUES ('4815', 'btc', 'Bitcoin', 'qrl', 'Quantum Resistant Ledger', '1970-01-01 00:00:00+00', 'btcqrl');
INSERT INTO "pairs" VALUES ('4816', 'btc', 'Bitcoin', 'ppc', 'Peercoin', '1970-01-01 00:00:00+00', 'btcppc');
INSERT INTO "pairs" VALUES ('4817', 'btc', 'Bitcoin', 'trust', 'TrustPlus', '1970-01-01 00:00:00+00', 'btctrust');
INSERT INTO "pairs" VALUES ('4818', 'btc', 'Bitcoin', 'qwark', 'Qwark', '1970-01-01 00:00:00+00', 'btcqwark');
INSERT INTO "pairs" VALUES ('4819', 'btc', 'Bitcoin', 'cloak', 'CloakCoin', '1970-01-01 00:00:00+00', 'btccloak');
INSERT INTO "pairs" VALUES ('4820', 'btc', 'Bitcoin', 'tx', 'TransferCoin', '1970-01-01 00:00:00+00', 'btctx');
INSERT INTO "pairs" VALUES ('4821', 'btc', 'Bitcoin', 'gup', 'Matchpool', '1970-01-01 00:00:00+00', 'btcgup');
INSERT INTO "pairs" VALUES ('4822', 'btc', 'Bitcoin', 'golos', 'Golos', '1970-01-01 00:00:00+00', 'btcgolos');
INSERT INTO "pairs" VALUES ('4823', 'btc', 'Bitcoin', 'ubq', 'Ubiq', '1970-01-01 00:00:00+00', 'btcubq');
INSERT INTO "pairs" VALUES ('4824', 'btc', 'Bitcoin', 'hmq', 'Humaniq', '1970-01-01 00:00:00+00', 'btchmq');
INSERT INTO "pairs" VALUES ('4825', 'btc', 'Bitcoin', 'incnt', 'Incent', '1970-01-01 00:00:00+00', 'btcincnt');
INSERT INTO "pairs" VALUES ('4826', 'btc', 'Bitcoin', 'infx', 'Influxcoin', '1970-01-01 00:00:00+00', 'btcinfx');
INSERT INTO "pairs" VALUES ('4827', 'btc', 'Bitcoin', 'unb', 'UnbreakableCoin', '1970-01-01 00:00:00+00', 'btcunb');
INSERT INTO "pairs" VALUES ('4828', 'btc', 'Bitcoin', 'rby', 'Rubycoin', '1970-01-01 00:00:00+00', 'btcrby');
INSERT INTO "pairs" VALUES ('4829', 'btc', 'Bitcoin', 'via', 'Viacoin', '1970-01-01 00:00:00+00', 'btcvia');
INSERT INTO "pairs" VALUES ('4830', 'btc', 'Bitcoin', 'rcn', 'Rcoin', '1970-01-01 00:00:00+00', 'btcrcn');
INSERT INTO "pairs" VALUES ('4831', 'btc', 'Bitcoin', 'qtum', 'Qtum', '1970-01-01 00:00:00+00', 'btcqtum');
INSERT INTO "pairs" VALUES ('4832', 'btc', 'Bitcoin', 'ioc', 'I/O Coin', '1970-01-01 00:00:00+00', 'btcioc');
INSERT INTO "pairs" VALUES ('4833', 'btc', 'Bitcoin', 'rads', 'Radium', '1970-01-01 00:00:00+00', 'btcrads');
INSERT INTO "pairs" VALUES ('4834', 'btc', 'Bitcoin', 'vox', 'Voxels', '1970-01-01 00:00:00+00', 'btcvox');
INSERT INTO "pairs" VALUES ('4835', 'btc', 'Bitcoin', 'vrc', 'VeriCoin', '1970-01-01 00:00:00+00', 'btcvrc');
INSERT INTO "pairs" VALUES ('4836', 'btc', 'Bitcoin', 'kmd', 'Komodo', '1970-01-01 00:00:00+00', 'btckmd');
INSERT INTO "pairs" VALUES ('4837', 'btc', 'Bitcoin', 'rep', 'Augur', '1970-01-01 00:00:00+00', 'btcrep');
INSERT INTO "pairs" VALUES ('4838', 'btc', 'Bitcoin', 'vib', 'Viberate', '1970-01-01 00:00:00+00', 'btcvib');
INSERT INTO "pairs" VALUES ('4839', 'btc', 'Bitcoin', 'iop', 'Internet of People', '1970-01-01 00:00:00+00', 'btciop');
INSERT INTO "pairs" VALUES ('4840', 'btc', 'Bitcoin', 'rdd', 'ReddCoin', '1970-01-01 00:00:00+00', 'btcrdd');
INSERT INTO "pairs" VALUES ('4841', 'btc', 'Bitcoin', 'lbc', 'LBRY Credits', '1970-01-01 00:00:00+00', 'btclbc');
INSERT INTO "pairs" VALUES ('4842', 'btc', 'Bitcoin', 'vtc', 'Vertcoin', '1970-01-01 00:00:00+00', 'btcvtc');
INSERT INTO "pairs" VALUES ('4843', 'btc', 'Bitcoin', 'kore', 'Kore', '1970-01-01 00:00:00+00', 'btckore');
INSERT INTO "pairs" VALUES ('4844', 'btc', 'Bitcoin', 'rlc', 'iExec RLC', '1970-01-01 00:00:00+00', 'btcrlc');
INSERT INTO "pairs" VALUES ('4845', 'btc', 'Bitcoin', 'vrm', 'VeriumReserve', '1970-01-01 00:00:00+00', 'btcvrm');
INSERT INTO "pairs" VALUES ('4846', 'btc', 'Bitcoin', 'ion', 'ION', '1970-01-01 00:00:00+00', 'btcion');
INSERT INTO "pairs" VALUES ('4847', 'btc', 'Bitcoin', 'vtr', 'vTorrent', '1970-01-01 00:00:00+00', 'btcvtr');
INSERT INTO "pairs" VALUES ('4848', 'btc', 'Bitcoin', 'sbd', 'Steem Dollars', '1970-01-01 00:00:00+00', 'btcsbd');
INSERT INTO "pairs" VALUES ('4849', 'btc', 'Bitcoin', 'lgd', 'Legends Room', '1970-01-01 00:00:00+00', 'btclgd');
INSERT INTO "pairs" VALUES ('4850', 'btc', 'Bitcoin', 'rise', 'Rise', '1970-01-01 00:00:00+00', 'btcrise');
INSERT INTO "pairs" VALUES ('4851', 'btc', 'Bitcoin', 'waves', 'Waves', '1970-01-01 00:00:00+00', 'btcwaves');
INSERT INTO "pairs" VALUES ('4852', 'btc', 'Bitcoin', 'ark', 'Ark', '1970-01-01 00:00:00+00', 'btcark');
INSERT INTO "pairs" VALUES ('4853', 'btc', 'Bitcoin', 'lmc', 'LoMoCoin', '1970-01-01 00:00:00+00', 'btclmc');
INSERT INTO "pairs" VALUES ('4854', 'btc', 'Bitcoin', 'salt', 'SALT', '1970-01-01 00:00:00+00', 'btcsalt');
INSERT INTO "pairs" VALUES ('4855', 'btc', 'Bitcoin', 'sc', 'Siacoin', '1970-01-01 00:00:00+00', 'btcsc');
INSERT INTO "pairs" VALUES ('4856', 'btc', 'Bitcoin', 'club', 'ClubCoin', '1970-01-01 00:00:00+00', 'btcclub');
INSERT INTO "pairs" VALUES ('4857', 'btc', 'Bitcoin', 'xcp', 'Counterparty', '1970-01-01 00:00:00+00', 'btcxcp');
INSERT INTO "pairs" VALUES ('4858', 'btc', 'Bitcoin', 'seq', 'Sequence', '1970-01-01 00:00:00+00', 'btcseq');
INSERT INTO "pairs" VALUES ('4859', 'btc', 'Bitcoin', 'shift', 'Shift', '1970-01-01 00:00:00+00', 'btcshift');
INSERT INTO "pairs" VALUES ('4860', 'btc', 'Bitcoin', 'xaur', 'Xaurum', '1970-01-01 00:00:00+00', 'btcxaur');
INSERT INTO "pairs" VALUES ('4861', 'btc', 'Bitcoin', 'sib', 'SIBCoin', '1970-01-01 00:00:00+00', 'btcsib');
INSERT INTO "pairs" VALUES ('4862', 'btc', 'Bitcoin', 'maid', 'MaidSafeCoin', '1970-01-01 00:00:00+00', 'btcmaid');
INSERT INTO "pairs" VALUES ('4863', 'btc', 'Bitcoin', 'slr', 'SolarCoin', '1970-01-01 00:00:00+00', 'btcslr');
INSERT INTO "pairs" VALUES ('4864', 'btc', 'Bitcoin', 'aur', 'Auroracoin', '1970-01-01 00:00:00+00', 'btcaur');
INSERT INTO "pairs" VALUES ('4865', 'btc', 'Bitcoin', 'ltc', 'Litecoin', '1970-01-01 00:00:00+00', 'btcltc');
INSERT INTO "pairs" VALUES ('4866', 'btc', 'Bitcoin', 'lsk', 'Lisk', '1970-01-01 00:00:00+00', 'btclsk');
INSERT INTO "pairs" VALUES ('4867', 'btc', 'Bitcoin', 'xdn', 'DigitalNote', '1970-01-01 00:00:00+00', 'btcxdn');
INSERT INTO "pairs" VALUES ('4868', 'btc', 'Bitcoin', 'lun', 'Lunyr', '1970-01-01 00:00:00+00', 'btclun');
INSERT INTO "pairs" VALUES ('4869', 'btc', 'Bitcoin', 'mco', 'Monaco', '1970-01-01 00:00:00+00', 'btcmco');
INSERT INTO "pairs" VALUES ('4870', 'btc', 'Bitcoin', 'mana', 'Decentraland', '1970-01-01 00:00:00+00', 'btcmana');
INSERT INTO "pairs" VALUES ('4871', 'btc', 'Bitcoin', 'sls', 'SaluS', '1970-01-01 00:00:00+00', 'btcsls');
INSERT INTO "pairs" VALUES ('4872', 'btc', 'Bitcoin', 'sngls', 'SingularDTV', '1970-01-01 00:00:00+00', 'btcsngls');
INSERT INTO "pairs" VALUES ('4873', 'btc', 'Bitcoin', 'mer', 'Mercury', '1970-01-01 00:00:00+00', 'btcmer');
INSERT INTO "pairs" VALUES ('4874', 'btc', 'Bitcoin', 'snrg', 'Synergy', '1970-01-01 00:00:00+00', 'btcsnrg');
INSERT INTO "pairs" VALUES ('4875', 'btc', 'Bitcoin', 'wings', 'Wings', '1970-01-01 00:00:00+00', 'btcwings');
INSERT INTO "pairs" VALUES ('4876', 'btc', 'Bitcoin', 'meme', 'Memetic / PepeCoin', '1970-01-01 00:00:00+00', 'btcmeme');
INSERT INTO "pairs" VALUES ('4877', 'btc', 'Bitcoin', 'xel', 'Elastic', '1970-01-01 00:00:00+00', 'btcxel');
INSERT INTO "pairs" VALUES ('4878', 'btc', 'Bitcoin', 'mtl', 'Metal', '1970-01-01 00:00:00+00', 'btcmtl');
INSERT INTO "pairs" VALUES ('4879', 'btc', 'Bitcoin', 'start', 'Startcoin', '1970-01-01 00:00:00+00', 'btcstart');
INSERT INTO "pairs" VALUES ('4880', 'btc', 'Bitcoin', 'sphr', 'Sphere', '1970-01-01 00:00:00+00', 'btcsphr');
INSERT INTO "pairs" VALUES ('4881', 'btc', 'Bitcoin', 'xem', 'NEM', '1970-01-01 00:00:00+00', 'btcxem');
INSERT INTO "pairs" VALUES ('4882', 'btc', 'Bitcoin', 'spr', 'SpreadCoin', '1970-01-01 00:00:00+00', 'btcspr');
INSERT INTO "pairs" VALUES ('4883', 'btc', 'Bitcoin', 'mue', 'MonetaryUnit', '1970-01-01 00:00:00+00', 'btcmue');
INSERT INTO "pairs" VALUES ('4884', 'btc', 'Bitcoin', 'snt', 'Status', '1970-01-01 00:00:00+00', 'btcsnt');
INSERT INTO "pairs" VALUES ('4885', 'btc', 'Bitcoin', 'apx', 'APX', '1970-01-01 00:00:00+00', 'btcapx');
INSERT INTO "pairs" VALUES ('4886', 'btc', 'Bitcoin', 'mona', 'MonaCoin', '1970-01-01 00:00:00+00', 'btcmona');
INSERT INTO "pairs" VALUES ('4887', 'btc', 'Bitcoin', 'music', 'Musicoin', '1970-01-01 00:00:00+00', 'btcmusic');
INSERT INTO "pairs" VALUES ('4888', 'btc', 'Bitcoin', 'xlm', 'Stellar', '1970-01-01 00:00:00+00', 'btcxlm');
INSERT INTO "pairs" VALUES ('4889', 'btc', 'Bitcoin', 'xmg', 'Magi', '1970-01-01 00:00:00+00', 'btcxmg');
INSERT INTO "pairs" VALUES ('4890', 'btc', 'Bitcoin', 'steem', 'Steem', '1970-01-01 00:00:00+00', 'btcsteem');
INSERT INTO "pairs" VALUES ('4891', 'btc', 'Bitcoin', 'mln', 'Melon', '1970-01-01 00:00:00+00', 'btcmln');
INSERT INTO "pairs" VALUES ('4892', 'btc', 'Bitcoin', 'coval', 'Circuits of Value', '1970-01-01 00:00:00+00', 'btccoval');
INSERT INTO "pairs" VALUES ('4893', 'btc', 'Bitcoin', 'swift', 'Bitswift', '1970-01-01 00:00:00+00', 'btcswift');
INSERT INTO "pairs" VALUES ('4894', 'eth', 'Ethereum', 'neo', 'NEO', '1970-01-01 00:00:00+00', 'ethneo');
INSERT INTO "pairs" VALUES ('4895', 'btc', 'Bitcoin', 'xrp', 'Ripple', '1970-01-01 00:00:00+00', 'btcxrp');
INSERT INTO "pairs" VALUES ('4896', 'eth', 'Ethereum', 'nmr', 'Numeraire', '1970-01-01 00:00:00+00', 'ethnmr');
INSERT INTO "pairs" VALUES ('4897', 'btc', 'Bitcoin', 'storj', 'Storj', '1970-01-01 00:00:00+00', 'btcstorj');
INSERT INTO "pairs" VALUES ('4898', 'btc', 'Bitcoin', 'xvg', 'Verge', '1970-01-01 00:00:00+00', 'btcxvg');
INSERT INTO "pairs" VALUES ('4899', 'eth', 'Ethereum', 'omg', 'OmiseGO', '1970-01-01 00:00:00+00', 'ethomg');
INSERT INTO "pairs" VALUES ('4900', 'eth', 'Ethereum', 'myst', 'Mysterium', '1970-01-01 00:00:00+00', 'ethmyst');
INSERT INTO "pairs" VALUES ('4901', 'btc', 'Bitcoin', 'strat', 'Stratis', '1970-01-01 00:00:00+00', 'btcstrat');
INSERT INTO "pairs" VALUES ('4902', 'btc', 'Bitcoin', 'xst', 'Stealthcoin', '1970-01-01 00:00:00+00', 'btcxst');
INSERT INTO "pairs" VALUES ('4903', 'btc', 'Bitcoin', 'xvc', 'Vcash', '1970-01-01 00:00:00+00', 'btcxvc');
INSERT INTO "pairs" VALUES ('4904', 'btc', 'Bitcoin', 'swt', 'Swarm City', '1970-01-01 00:00:00+00', 'btcswt');
INSERT INTO "pairs" VALUES ('4905', 'btc', 'Bitcoin', 'xmr', 'Monero', '1970-01-01 00:00:00+00', 'btcxmr');
INSERT INTO "pairs" VALUES ('4906', 'eth', 'Ethereum', 'pay', 'TenX', '1970-01-01 00:00:00+00', 'ethpay');
INSERT INTO "pairs" VALUES ('4907', 'btc', 'Bitcoin', 'xwc', 'WhiteCoin', '1970-01-01 00:00:00+00', 'btcxwc');
INSERT INTO "pairs" VALUES ('4908', 'btc', 'Bitcoin', 'synx', 'Syndicate', '1970-01-01 00:00:00+00', 'btcsynx');
INSERT INTO "pairs" VALUES ('4909', 'eth', 'Ethereum', 'vib', 'Viberate', '1970-01-01 00:00:00+00', 'ethvib');
INSERT INTO "pairs" VALUES ('4910', 'eth', 'Ethereum', 'powr', 'Power Ledger', '1970-01-01 00:00:00+00', 'ethpowr');
INSERT INTO "pairs" VALUES ('4911', 'eth', 'Ethereum', 'ptoy', 'Patientory', '1970-01-01 00:00:00+00', 'ethptoy');
INSERT INTO "pairs" VALUES ('4912', 'btc', 'Bitcoin', 'xzc', 'ZCoin', '1970-01-01 00:00:00+00', 'btcxzc');
INSERT INTO "pairs" VALUES ('4913', 'btc', 'Bitcoin', 'zec', 'Zcash', '1970-01-01 00:00:00+00', 'btczec');
INSERT INTO "pairs" VALUES ('4914', 'btc', 'Bitcoin', 'zen', 'ZenCash', '1970-01-01 00:00:00+00', 'btczen');
INSERT INTO "pairs" VALUES ('4915', 'eth', 'Ethereum', 'rep', 'Augur', '1970-01-01 00:00:00+00', 'ethrep');
INSERT INTO "pairs" VALUES ('4916', 'eth', 'Ethereum', 'qtum', 'Qtum', '1970-01-01 00:00:00+00', 'ethqtum');
INSERT INTO "pairs" VALUES ('4917', 'eth', 'Ethereum', 'rcn', 'Rcoin', '1970-01-01 00:00:00+00', 'ethrcn');
INSERT INTO "pairs" VALUES ('4918', 'eth', 'Ethereum', '1st', 'FirstBlood', '1970-01-01 00:00:00+00', 'eth1st');
INSERT INTO "pairs" VALUES ('4919', 'eth', 'Ethereum', 'qrl', 'Quantum Resistant Ledger', '1970-01-01 00:00:00+00', 'ethqrl');
INSERT INTO "pairs" VALUES ('4920', 'eth', 'Ethereum', 'rlc', 'iExec RLC', '1970-01-01 00:00:00+00', 'ethrlc');
INSERT INTO "pairs" VALUES ('4921', 'eth', 'Ethereum', 'salt', 'SALT', '1970-01-01 00:00:00+00', 'ethsalt');
INSERT INTO "pairs" VALUES ('4922', 'eth', 'Ethereum', 'ada', 'Cardano', '1970-01-01 00:00:00+00', 'ethada');
INSERT INTO "pairs" VALUES ('4923', 'eth', 'Ethereum', 'adt', 'adToken', '1970-01-01 00:00:00+00', 'ethadt');
INSERT INTO "pairs" VALUES ('4924', 'btc', 'Bitcoin', 'cpc', 'Capricoin', '1970-01-01 00:00:00+00', 'btccpc');
INSERT INTO "pairs" VALUES ('4925', 'eth', 'Ethereum', 'adx', 'AdEx', '1970-01-01 00:00:00+00', 'ethadx');
INSERT INTO "pairs" VALUES ('4926', 'eth', 'Ethereum', 'sc', 'Siacoin', '1970-01-01 00:00:00+00', 'ethsc');
INSERT INTO "pairs" VALUES ('4927', 'eth', 'Ethereum', 'sngls', 'SingularDTV', '1970-01-01 00:00:00+00', 'ethsngls');
INSERT INTO "pairs" VALUES ('4928', 'btc', 'Bitcoin', 'bay', 'BitBay', '1970-01-01 00:00:00+00', 'btcbay');
INSERT INTO "pairs" VALUES ('4929', 'eth', 'Ethereum', 'ant', 'Aragon', '1970-01-01 00:00:00+00', 'ethant');
INSERT INTO "pairs" VALUES ('4930', 'btc', 'Bitcoin', 'zcl', 'ZClassic', '1970-01-01 00:00:00+00', 'btczcl');
INSERT INTO "pairs" VALUES ('4931', 'btc', 'Bitcoin', 'bat', 'BatCoin', '1970-01-01 00:00:00+00', 'btcbat');
INSERT INTO "pairs" VALUES ('4932', 'eth', 'Ethereum', 'trst', 'WeTrust', '1970-01-01 00:00:00+00', 'ethtrst');
INSERT INTO "pairs" VALUES ('4933', 'eth', 'Ethereum', 'btg', 'Bitgem', '1970-01-01 00:00:00+00', 'ethbtg');
INSERT INTO "pairs" VALUES ('4934', 'usdt', 'Tether', 'btg', 'Bitgem', '1970-01-01 00:00:00+00', 'usdtbtg');
INSERT INTO "pairs" VALUES ('4935', 'eth', 'Ethereum', 'waves', 'Waves', '1970-01-01 00:00:00+00', 'ethwaves');
INSERT INTO "pairs" VALUES ('4936', 'eth', 'Ethereum', 'cvc', 'Civic', '1970-01-01 00:00:00+00', 'ethcvc');
INSERT INTO "pairs" VALUES ('4937', 'eth', 'Ethereum', 'tix', 'Blocktix', '1970-01-01 00:00:00+00', 'ethtix');
INSERT INTO "pairs" VALUES ('4938', 'eth', 'Ethereum', 'bnt', 'Bancor', '1970-01-01 00:00:00+00', 'ethbnt');
INSERT INTO "pairs" VALUES ('4939', 'eth', 'Ethereum', 'storj', 'Storj', '1970-01-01 00:00:00+00', 'ethstorj');
INSERT INTO "pairs" VALUES ('4940', 'eth', 'Ethereum', 'dash', 'Dash', '1970-01-01 00:00:00+00', 'ethdash');
INSERT INTO "pairs" VALUES ('4941', 'eth', 'Ethereum', 'strat', 'Stratis', '1970-01-01 00:00:00+00', 'ethstrat');
INSERT INTO "pairs" VALUES ('4942', 'eth', 'Ethereum', 'dgb', 'DigiByte', '1970-01-01 00:00:00+00', 'ethdgb');
INSERT INTO "pairs" VALUES ('4943', 'eth', 'Ethereum', 'wings', 'Wings', '1970-01-01 00:00:00+00', 'ethwings');
INSERT INTO "pairs" VALUES ('4944', 'eth', 'Ethereum', 'crb', 'Creditbit', '1970-01-01 00:00:00+00', 'ethcrb');
INSERT INTO "pairs" VALUES ('4945', 'eth', 'Ethereum', 'snt', 'Status', '1970-01-01 00:00:00+00', 'ethsnt');
INSERT INTO "pairs" VALUES ('4946', 'eth', 'Ethereum', 'cfi', 'Cofound.it', '1970-01-01 00:00:00+00', 'ethcfi');
INSERT INTO "pairs" VALUES ('4947', 'eth', 'Ethereum', 'bcc', 'BitConnect', '1970-01-01 00:00:00+00', 'ethbcc');
INSERT INTO "pairs" VALUES ('4948', 'eth', 'Ethereum', 'bat', 'BatCoin', '1970-01-01 00:00:00+00', 'ethbat');
INSERT INTO "pairs" VALUES ('4949', 'eth', 'Ethereum', 'xem', 'NEM', '1970-01-01 00:00:00+00', 'ethxem');
INSERT INTO "pairs" VALUES ('4950', 'eth', 'Ethereum', 'dgd', 'DigixDAO', '1970-01-01 00:00:00+00', 'ethdgd');
INSERT INTO "pairs" VALUES ('4951', 'eth', 'Ethereum', 'dnt', 'district0x', '1970-01-01 00:00:00+00', 'ethdnt');
INSERT INTO "pairs" VALUES ('4952', 'eth', 'Ethereum', 'xmr', 'Monero', '1970-01-01 00:00:00+00', 'ethxmr');
INSERT INTO "pairs" VALUES ('4953', 'eth', 'Ethereum', 'eng', 'Enigma', '1970-01-01 00:00:00+00', 'etheng');
INSERT INTO "pairs" VALUES ('4954', 'eth', 'Ethereum', 'xrp', 'Ripple', '1970-01-01 00:00:00+00', 'ethxrp');
INSERT INTO "pairs" VALUES ('4955', 'eth', 'Ethereum', 'xlm', 'Stellar', '1970-01-01 00:00:00+00', 'ethxlm');
INSERT INTO "pairs" VALUES ('4956', 'eth', 'Ethereum', 'etc', 'Ethereum Classic', '1970-01-01 00:00:00+00', 'ethetc');
INSERT INTO "pairs" VALUES ('4957', 'eth', 'Ethereum', 'fct', 'Factom', '1970-01-01 00:00:00+00', 'ethfct');
INSERT INTO "pairs" VALUES ('4958', 'eth', 'Ethereum', 'fun', 'FunFair', '1970-01-01 00:00:00+00', 'ethfun');
INSERT INTO "pairs" VALUES ('4959', 'eth', 'Ethereum', 'zec', 'Zcash', '1970-01-01 00:00:00+00', 'ethzec');
INSERT INTO "pairs" VALUES ('4960', 'eth', 'Ethereum', 'gno', 'Gnosis', '1970-01-01 00:00:00+00', 'ethgno');
INSERT INTO "pairs" VALUES ('4961', 'eth', 'Ethereum', 'mana', 'Decentraland', '1970-01-01 00:00:00+00', 'ethmana');
INSERT INTO "pairs" VALUES ('4962', 'eth', 'Ethereum', 'lun', 'Lunyr', '1970-01-01 00:00:00+00', 'ethlun');
INSERT INTO "pairs" VALUES ('4963', 'eth', 'Ethereum', 'ltc', 'Litecoin', '1970-01-01 00:00:00+00', 'ethltc');
INSERT INTO "pairs" VALUES ('4964', 'eth', 'Ethereum', 'mtl', 'Metal', '1970-01-01 00:00:00+00', 'ethmtl');
INSERT INTO "pairs" VALUES ('4965', 'usdt', 'Tether', 'xrp', 'Ripple', '1970-01-01 00:00:00+00', 'usdtxrp');
INSERT INTO "pairs" VALUES ('4966', 'usdt', 'Tether', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'usdteth');
INSERT INTO "pairs" VALUES ('4967', 'usdt', 'Tether', 'dash', 'Dash', '1970-01-01 00:00:00+00', 'usdtdash');
INSERT INTO "pairs" VALUES ('4968', 'usdt', 'Tether', 'etc', 'Ethereum Classic', '1970-01-01 00:00:00+00', 'usdtetc');
INSERT INTO "pairs" VALUES ('4969', 'eth', 'Ethereum', 'gup', 'Matchpool', '1970-01-01 00:00:00+00', 'ethgup');
INSERT INTO "pairs" VALUES ('4970', 'usdt', 'Tether', 'neo', 'NEO', '1970-01-01 00:00:00+00', 'usdtneo');
INSERT INTO "pairs" VALUES ('4971', 'usdt', 'Tether', 'ltc', 'Litecoin', '1970-01-01 00:00:00+00', 'usdtltc');
INSERT INTO "pairs" VALUES ('4972', 'usdt', 'Tether', 'omg', 'OmiseGO', '1970-01-01 00:00:00+00', 'usdtomg');
INSERT INTO "pairs" VALUES ('4973', 'usdt', 'Tether', 'xmr', 'Monero', '1970-01-01 00:00:00+00', 'usdtxmr');
INSERT INTO "pairs" VALUES ('4974', 'btc', 'Bitcoin', 'ric', 'Riecoin', '1970-01-01 00:00:00+00', 'btcric');
INSERT INTO "pairs" VALUES ('4975', 'usdt', 'Tether', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'usdtbtc');
INSERT INTO "pairs" VALUES ('4976', 'eth', 'Ethereum', 'mco', 'Monaco', '1970-01-01 00:00:00+00', 'ethmco');
INSERT INTO "pairs" VALUES ('4977', 'usdt', 'Tether', 'zec', 'Zcash', '1970-01-01 00:00:00+00', 'usdtzec');
INSERT INTO "pairs" VALUES ('4978', 'xmr', 'Monero', 'btcd', 'BitcoinDark', '1970-01-01 00:00:00+00', 'xmrbtcd');
INSERT INTO "pairs" VALUES ('4979', 'eth', 'Ethereum', 'lgd', 'Legends Room', '1970-01-01 00:00:00+00', 'ethlgd');
INSERT INTO "pairs" VALUES ('4980', 'eth', 'Ethereum', 'hmq', 'Humaniq', '1970-01-01 00:00:00+00', 'ethhmq');
INSERT INTO "pairs" VALUES ('4981', 'eth', 'Ethereum', 'gnt', 'Golem', '1970-01-01 00:00:00+00', 'ethgnt');
INSERT INTO "pairs" VALUES ('4982', 'btc', 'Bitcoin', 'cvc', 'Civic', '1970-01-01 00:00:00+00', 'btccvc');
INSERT INTO "pairs" VALUES ('4983', 'btc', 'Bitcoin', 'dash', 'Dash', '1970-01-01 00:00:00+00', 'btcdash');
INSERT INTO "pairs" VALUES ('4984', 'btc', 'Bitcoin', 'xmy', 'Myriad', '1970-01-01 00:00:00+00', 'btcxmy');
INSERT INTO "pairs" VALUES ('4985', 'btc', 'Bitcoin', 'cure', 'Curecoin', '1970-01-01 00:00:00+00', 'btccure');
INSERT INTO "pairs" VALUES ('4986', 'btc', 'Bitcoin', 'bcc', 'BitConnect', '1970-01-01 00:00:00+00', 'btcbcc');
INSERT INTO "pairs" VALUES ('4987', 'xmr', 'Monero', 'blk', 'BlackCoin', '1970-01-01 00:00:00+00', 'xmrblk');
INSERT INTO "pairs" VALUES ('4988', 'btc', 'Bitcoin', 'xbc', 'Bitcoin Plus', '1970-01-01 00:00:00+00', 'btcxbc');
INSERT INTO "pairs" VALUES ('4989', 'xmr', 'Monero', 'zec', 'Zcash', '1970-01-01 00:00:00+00', 'xmrzec');
INSERT INTO "pairs" VALUES ('4990', 'xmr', 'Monero', 'nxt', 'Nxt', '1970-01-01 00:00:00+00', 'xmrnxt');
INSERT INTO "pairs" VALUES ('4991', 'btc', 'Bitcoin', 'bcn', 'Bytecoin', '1970-01-01 00:00:00+00', 'btcbcn');
INSERT INTO "pairs" VALUES ('4992', 'usdt', 'Tether', 'bcc', 'BitConnect', '1970-01-01 00:00:00+00', 'usdtbcc');
INSERT INTO "pairs" VALUES ('4993', 'eth', 'Ethereum', 'lsk', 'Lisk', '1970-01-01 00:00:00+00', 'ethlsk');
INSERT INTO "pairs" VALUES ('4994', 'btc', 'Bitcoin', 'crw', 'Crown', '1970-01-01 00:00:00+00', 'btccrw');
INSERT INTO "pairs" VALUES ('4995', 'btc', 'Bitcoin', 'crb', 'Creditbit', '1970-01-01 00:00:00+00', 'btccrb');
INSERT INTO "pairs" VALUES ('4996', 'btc', 'Bitcoin', 'bcy', 'Bitcrystals', '1970-01-01 00:00:00+00', 'btcbcy');
INSERT INTO "pairs" VALUES ('4997', 'xmr', 'Monero', 'dash', 'Dash', '1970-01-01 00:00:00+00', 'xmrdash');
INSERT INTO "pairs" VALUES ('4998', 'btc', 'Bitcoin', 'huc', 'HunterCoin', '1970-01-01 00:00:00+00', 'btchuc');
INSERT INTO "pairs" VALUES ('4999', 'btc', 'Bitcoin', 'str', 'Stellar', '1970-01-01 00:00:00+00', 'btcstr');
INSERT INTO "pairs" VALUES ('5000', 'btc', 'Bitcoin', 'bch', 'Bitcoin Cash', '1970-01-01 00:00:00+00', 'btcbch');
INSERT INTO "pairs" VALUES ('5001', 'btc', 'Bitcoin', 'bela', 'Bela', '1970-01-01 00:00:00+00', 'btcbela');
INSERT INTO "pairs" VALUES ('5002', 'usdt', 'Tether', 'bch', 'Bitcoin Cash', '1970-01-01 00:00:00+00', 'usdtbch');
INSERT INTO "pairs" VALUES ('5003', 'btc', 'Bitcoin', 'dgb', 'DigiByte', '1970-01-01 00:00:00+00', 'btcdgb');
INSERT INTO "pairs" VALUES ('5004', 'btc', 'Bitcoin', 'zrx', '0x', '1970-01-01 00:00:00+00', 'btczrx');
INSERT INTO "pairs" VALUES ('5005', 'usdt', 'Tether', 'nxt', 'Nxt', '1970-01-01 00:00:00+00', 'usdtnxt');
INSERT INTO "pairs" VALUES ('5006', 'usdt', 'Tether', 'str', 'Stellar', '1970-01-01 00:00:00+00', 'usdtstr');
INSERT INTO "pairs" VALUES ('5007', 'eth', 'Ethereum', 'steem', 'Steem', '1970-01-01 00:00:00+00', 'ethsteem');
INSERT INTO "pairs" VALUES ('5008', 'xmr', 'Monero', 'maid', 'MaidSafeCoin', '1970-01-01 00:00:00+00', 'xmrmaid');
INSERT INTO "pairs" VALUES ('5009', 'btc', 'Bitcoin', 'gas', 'Gas', '1970-01-01 00:00:00+00', 'btcgas');
INSERT INTO "pairs" VALUES ('5010', 'eth', 'Ethereum', 'gas', 'Gas', '1970-01-01 00:00:00+00', 'ethgas');
INSERT INTO "pairs" VALUES ('5011', 'btc', 'Bitcoin', 'pasc', 'Pascal Coin', '1970-01-01 00:00:00+00', 'btcpasc');
INSERT INTO "pairs" VALUES ('5012', 'btc', 'Bitcoin', 'nmc', 'Namecoin', '1970-01-01 00:00:00+00', 'btcnmc');
INSERT INTO "pairs" VALUES ('5013', 'xmr', 'Monero', 'bcn', 'Bytecoin', '1970-01-01 00:00:00+00', 'xmrbcn');
INSERT INTO "pairs" VALUES ('5014', 'btc', 'Bitcoin', 'btm', 'Bitmark', '1970-01-01 00:00:00+00', 'btcbtm');
INSERT INTO "pairs" VALUES ('5015', 'btc', 'Bitcoin', 'bts', 'BitShares', '1970-01-01 00:00:00+00', 'btcbts');
INSERT INTO "pairs" VALUES ('5016', 'btc', 'Bitcoin', 'blk', 'BlackCoin', '1970-01-01 00:00:00+00', 'btcblk');
INSERT INTO "pairs" VALUES ('5017', 'usdt', 'Tether', 'rep', 'Augur', '1970-01-01 00:00:00+00', 'usdtrep');
INSERT INTO "pairs" VALUES ('5018', 'btc', 'Bitcoin', 'dcr', 'Decred', '1970-01-01 00:00:00+00', 'btcdcr');
INSERT INTO "pairs" VALUES ('5019', 'btc', 'Bitcoin', 'bitb', 'BitBean', '1970-01-01 00:00:00+00', 'btcbitb');
INSERT INTO "pairs" VALUES ('5020', 'eth', 'Ethereum', 'zrx', '0x', '1970-01-01 00:00:00+00', 'ethzrx');
INSERT INTO "pairs" VALUES ('5021', 'btc', 'Bitcoin', 'bcy', 'Bitcrystals', '1970-01-01 00:00:00+00', 'btcbcy');
INSERT INTO "pairs" VALUES ('5022', 'btc', 'Bitcoin', 'xpm', 'Primecoin', '1970-01-01 00:00:00+00', 'btcxpm');
INSERT INTO "pairs" VALUES ('5023', 'btc', 'Bitcoin', 'btcd', 'BitcoinDark', '1970-01-01 00:00:00+00', 'btcbtcd');
INSERT INTO "pairs" VALUES ('5024', 'xmr', 'Monero', 'ltc', 'Litecoin', '1970-01-01 00:00:00+00', 'xmrltc');
INSERT INTO "pairs" VALUES ('5025', 'btc', 'Bitcoin', 'doge', 'Dogecoin', '1970-01-01 00:00:00+00', 'btcdoge');
INSERT INTO "pairs" VALUES ('5026', 'eth', 'Ethereum', 'bch', 'Bitcoin Cash', '1970-01-01 00:00:00+00', 'ethbch');
INSERT INTO "pairs" VALUES ('5027', 'btc', 'Bitcoin', 'cvc', 'Civic', '1970-01-01 00:00:00+00', 'btccvc');
INSERT INTO "pairs" VALUES ('5028', 'btc', 'Bitcoin', 'btcd', 'BitcoinDark', '1970-01-01 00:00:00+00', 'btcbtcd');
INSERT INTO "pairs" VALUES ('5029', 'btc', 'Bitcoin', 'blitz', 'Blitzcash', '1970-01-01 00:00:00+00', 'btcblitz');
INSERT INTO "pairs" VALUES ('5030', 'btc', 'Bitcoin', 'bnt', 'Bancor', '1970-01-01 00:00:00+00', 'btcbnt');
INSERT INTO "pairs" VALUES ('5031', 'btc', 'Bitcoin', 'dct', 'DECENT', '1970-01-01 00:00:00+00', 'btcdct');
INSERT INTO "pairs" VALUES ('5032', 'btc', 'Bitcoin', 'brk', 'Breakout', '1970-01-01 00:00:00+00', 'btcbrk');
INSERT INTO "pairs" VALUES ('5033', 'btc', 'Bitcoin', 'block', 'Blocknet', '1970-01-01 00:00:00+00', 'btcblock');
INSERT INTO "pairs" VALUES ('5034', 'btc', 'Bitcoin', 'dgd', 'DigixDAO', '1970-01-01 00:00:00+00', 'btcdgd');
INSERT INTO "pairs" VALUES ('5035', 'btc', 'Bitcoin', 'brx', 'Breakout Stake', '1970-01-01 00:00:00+00', 'btcbrx');
INSERT INTO "pairs" VALUES ('5036', 'btc', 'Bitcoin', 'dmd', 'Diamond', '1970-01-01 00:00:00+00', 'btcdmd');
INSERT INTO "pairs" VALUES ('5037', 'btc', 'Bitcoin', 'dnt', 'district0x', '1970-01-01 00:00:00+00', 'btcdnt');
INSERT INTO "pairs" VALUES ('5038', 'btc', 'Bitcoin', 'bsd', 'BitSend', '1970-01-01 00:00:00+00', 'btcbsd');
INSERT INTO "pairs" VALUES ('5039', 'btc', 'Bitcoin', 'ebst', 'eBoost', '1970-01-01 00:00:00+00', 'btcebst');
INSERT INTO "pairs" VALUES ('5040', 'btc', 'Bitcoin', 'edg', 'Edgeless', '1970-01-01 00:00:00+00', 'btcedg');
INSERT INTO "pairs" VALUES ('5456', 'bcn', 'Bytecoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'bcnbtc');
INSERT INTO "pairs" VALUES ('5457', 'btc', 'Bitcoin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'btcusd');
INSERT INTO "pairs" VALUES ('5458', 'dash', 'Dash', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'dashbtc');
INSERT INTO "pairs" VALUES ('5459', 'doge', 'Dogecoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'dogebtc');
INSERT INTO "pairs" VALUES ('5460', 'doge', 'Dogecoin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'dogeusd');
INSERT INTO "pairs" VALUES ('5461', 'dsh', 'DashCoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'dshbtc');
INSERT INTO "pairs" VALUES ('5462', 'emc', 'Emercoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'emcbtc');
INSERT INTO "pairs" VALUES ('5463', 'eth', 'Ethereum', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ethbtc');
INSERT INTO "pairs" VALUES ('5464', 'fcn', 'Fantomcoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'fcnbtc');
INSERT INTO "pairs" VALUES ('5465', 'lsk', 'Lisk', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'lskbtc');
INSERT INTO "pairs" VALUES ('5466', 'ltc', 'Litecoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ltcbtc');
INSERT INTO "pairs" VALUES ('5467', 'ltc', 'Litecoin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'ltcusd');
INSERT INTO "pairs" VALUES ('5468', 'nxt', 'Nxt', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'nxtbtc');
INSERT INTO "pairs" VALUES ('5469', 'qcn', 'QuazarCoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'qcnbtc');
INSERT INTO "pairs" VALUES ('5470', 'sbd', 'Steem Dollars', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'sbdbtc');
INSERT INTO "pairs" VALUES ('5471', 'sc', 'SiaCoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'scbtc');
INSERT INTO "pairs" VALUES ('5472', 'steem', 'Steem', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'steembtc');
INSERT INTO "pairs" VALUES ('5473', 'xdn', 'DigitalNote', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'xdnbtc');
INSERT INTO "pairs" VALUES ('5474', 'xem', 'NEM', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'xembtc');
INSERT INTO "pairs" VALUES ('5475', 'xmr', 'Monero', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'xmrbtc');
INSERT INTO "pairs" VALUES ('5476', 'ardr', 'Ardor', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ardrbtc');
INSERT INTO "pairs" VALUES ('5477', 'zec', 'Zcash', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'zecbtc');
INSERT INTO "pairs" VALUES ('5478', 'waves', 'Waves', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'wavesbtc');
INSERT INTO "pairs" VALUES ('5479', 'maid', 'MaidSafeCoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'maidbtc');
INSERT INTO "pairs" VALUES ('5480', 'amp', 'Synereo AMP', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ampbtc');
INSERT INTO "pairs" VALUES ('5481', 'bus', 'BTU support', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'busbtc');
INSERT INTO "pairs" VALUES ('5482', 'dgd', 'DigixDAO', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'dgdbtc');
INSERT INTO "pairs" VALUES ('5483', 'icn', 'Iconomi', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'icnbtc');
INSERT INTO "pairs" VALUES ('5484', 'sngls', 'SingularDTV', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'snglsbtc');
INSERT INTO "pairs" VALUES ('5485', '1st', 'First Blood', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', '1stbtc');
INSERT INTO "pairs" VALUES ('5486', 'xlc', 'LeviarCoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'xlcbtc');
INSERT INTO "pairs" VALUES ('5487', 'trst', 'WeTrust', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'trstbtc');
INSERT INTO "pairs" VALUES ('5488', 'time', 'Chronobank', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'timebtc');
INSERT INTO "pairs" VALUES ('5489', 'gno', 'Gnosis', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'gnobtc');
INSERT INTO "pairs" VALUES ('5490', 'rep', 'Augur', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'repbtc');
INSERT INTO "pairs" VALUES ('5491', 'xmr', 'Monero', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'xmrusd');
INSERT INTO "pairs" VALUES ('5492', 'dash', 'Dash', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'dashusd');
INSERT INTO "pairs" VALUES ('5493', 'eth', 'Ethereum', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'ethusd');
INSERT INTO "pairs" VALUES ('5494', 'nxt', 'Nxt', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'nxtusd');
INSERT INTO "pairs" VALUES ('5495', 'zrc', 'Zrcoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'zrcbtc');
INSERT INTO "pairs" VALUES ('5496', 'bos', 'BOScoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'bosbtc');
INSERT INTO "pairs" VALUES ('5497', 'dct', 'Decent', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'dctbtc');
INSERT INTO "pairs" VALUES ('5498', 'ant', 'Aragon', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'antbtc');
INSERT INTO "pairs" VALUES ('5499', 'aeon', 'Aeon', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'aeonbtc');
INSERT INTO "pairs" VALUES ('5500', 'gup', 'GUP', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'gupbtc');
INSERT INTO "pairs" VALUES ('5501', 'plu', 'PLU', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'plubtc');
INSERT INTO "pairs" VALUES ('5502', 'lun', 'Lunyr', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'lunbtc');
INSERT INTO "pairs" VALUES ('5503', 'taas', 'TAAS', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'taasbtc');
INSERT INTO "pairs" VALUES ('5504', 'nxc', 'NXC', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'nxcbtc');
INSERT INTO "pairs" VALUES ('5505', 'edg', 'EDG', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'edgbtc');
INSERT INTO "pairs" VALUES ('5506', 'rlc', 'RLC', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'rlcbtc');
INSERT INTO "pairs" VALUES ('5507', 'swt', 'Swarm City', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'swtbtc');
INSERT INTO "pairs" VALUES ('5508', 'tkn', 'TKN', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'tknbtc');
INSERT INTO "pairs" VALUES ('5509', 'wings', 'WINGS', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'wingsbtc');
INSERT INTO "pairs" VALUES ('5510', 'xaur', 'XAUR', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'xaurbtc');
INSERT INTO "pairs" VALUES ('5511', 'ae', 'Aeternity', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'aebtc');
INSERT INTO "pairs" VALUES ('5512', 'ptoy', 'Patientory', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ptoybtc');
INSERT INTO "pairs" VALUES ('5513', 'wtt', 'Giga Watt', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'wttbtc');
INSERT INTO "pairs" VALUES ('5514', 'zec', 'Zcash', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'zecusd');
INSERT INTO "pairs" VALUES ('5515', 'xem', 'NEM', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'xemusd');
INSERT INTO "pairs" VALUES ('5516', 'bcn', 'Bytecoin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'bcnusd');
INSERT INTO "pairs" VALUES ('5517', 'xdn', 'DigitalNote', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'xdnusd');
INSERT INTO "pairs" VALUES ('5518', 'maid', 'MaidSafeCoin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'maidusd');
INSERT INTO "pairs" VALUES ('5519', 'etc', 'Ethereum Classic', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'etcbtc');
INSERT INTO "pairs" VALUES ('5520', 'etc', 'Ethereum Classic', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'etcusd');
INSERT INTO "pairs" VALUES ('5521', 'cfi', 'Cofound.it', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'cfibtc');
INSERT INTO "pairs" VALUES ('5522', 'plbt', 'Polybius', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'plbtbtc');
INSERT INTO "pairs" VALUES ('5523', 'bnt', 'Bancor Network', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'bntbtc');
INSERT INTO "pairs" VALUES ('5524', 'xdnco', 'XDNCO', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'xdncobtc');
INSERT INTO "pairs" VALUES ('5525', 'fyn', 'FundYourselfNow', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'fyneth');
INSERT INTO "pairs" VALUES ('5526', 'snm', 'SONM', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'snmeth');
INSERT INTO "pairs" VALUES ('5527', 'snt', 'Status', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'snteth');
INSERT INTO "pairs" VALUES ('5528', 'cvc', 'CVC Civic', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'cvcusd');
INSERT INTO "pairs" VALUES ('5529', 'pay', 'TenX', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'payeth');
INSERT INTO "pairs" VALUES ('5530', 'oax', 'OpenANX', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'oaxeth');
INSERT INTO "pairs" VALUES ('5531', 'omg', 'Omise-go', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'omgeth');
INSERT INTO "pairs" VALUES ('5532', 'bqx', 'Ethos', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'bqxeth');
INSERT INTO "pairs" VALUES ('5533', 'xtz', 'Tezos', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'xtzbtc');
INSERT INTO "pairs" VALUES ('5534', 'crs', 'Starta', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'crsusd');
INSERT INTO "pairs" VALUES ('5535', 'dice', 'Etheroll', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'dicebtc');
INSERT INTO "pairs" VALUES ('5536', 'cfi', 'Cofound.it', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'cfieth');
INSERT INTO "pairs" VALUES ('5537', 'ptoy', 'Patientory', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ptoyeth');
INSERT INTO "pairs" VALUES ('5538', '1st', 'First Blood', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', '1steth');
INSERT INTO "pairs" VALUES ('5539', 'xaur', 'XAUR', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'xaureth');
INSERT INTO "pairs" VALUES ('5540', 'taas', 'TAAS', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'taaseth');
INSERT INTO "pairs" VALUES ('5541', 'time', 'Chronobank', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'timeeth');
INSERT INTO "pairs" VALUES ('5542', 'dice', 'Etheroll', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'diceeth');
INSERT INTO "pairs" VALUES ('5543', 'swt', 'Swarm City', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'swteth');
INSERT INTO "pairs" VALUES ('5544', 'xmr', 'Monero', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'xmreth');
INSERT INTO "pairs" VALUES ('5545', 'etc', 'Ethereum Classic', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'etceth');
INSERT INTO "pairs" VALUES ('5546', 'dash', 'Dash', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'dasheth');
INSERT INTO "pairs" VALUES ('5547', 'zec', 'Zcash', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'zeceth');
INSERT INTO "pairs" VALUES ('5548', 'plu', 'PLU', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'plueth');
INSERT INTO "pairs" VALUES ('5549', 'gno', 'Gnosis', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'gnoeth');
INSERT INTO "pairs" VALUES ('5550', 'xrp', 'Ripple', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'xrpbtc');
INSERT INTO "pairs" VALUES ('5551', 'net', 'Nimiq', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'neteth');
INSERT INTO "pairs" VALUES ('5552', 'strat', 'Stratis', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'stratusd');
INSERT INTO "pairs" VALUES ('5553', 'strat', 'Stratis', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'stratbtc');
INSERT INTO "pairs" VALUES ('5554', 'snc', 'SunContract', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'snceth');
INSERT INTO "pairs" VALUES ('5555', 'adx', 'AdEx', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'adxeth');
INSERT INTO "pairs" VALUES ('5556', 'bet', 'DAO Casino', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'beteth');
INSERT INTO "pairs" VALUES ('5557', 'eos', 'EOS', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'eoseth');
INSERT INTO "pairs" VALUES ('5558', 'dent', 'Dent', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'denteth');
INSERT INTO "pairs" VALUES ('5559', 'san', 'Santiment', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'saneth');
INSERT INTO "pairs" VALUES ('5560', 'eos', 'EOS', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'eosbtc');
INSERT INTO "pairs" VALUES ('5561', 'eos', 'EOS', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'eosusd');
INSERT INTO "pairs" VALUES ('5562', 'mne', 'Minereum', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'mnebtc');
INSERT INTO "pairs" VALUES ('5563', 'mrv', 'Macroverse', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'mrveth');
INSERT INTO "pairs" VALUES ('5564', 'msp', 'Mothership', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'mspeth');
INSERT INTO "pairs" VALUES ('5565', 'ddf', ' Digital Developers Fund', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ddfeth');
INSERT INTO "pairs" VALUES ('5566', 'xtz', 'Tezos', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'xtzeth');
INSERT INTO "pairs" VALUES ('5567', 'xtz', 'Tezos', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'xtzusd');
INSERT INTO "pairs" VALUES ('5568', 'uet', 'Useless Ethereum Token', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ueteth');
INSERT INTO "pairs" VALUES ('5569', 'myb', 'Mybit', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'mybeth');
INSERT INTO "pairs" VALUES ('5570', 'sur', 'Suretly', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'sureth');
INSERT INTO "pairs" VALUES ('5571', 'ixt', 'iXledger', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ixteth');
INSERT INTO "pairs" VALUES ('5572', 'hrb', 'Harbor', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'hrbeth');
INSERT INTO "pairs" VALUES ('5573', 'plr', 'Pillar', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'plreth');
INSERT INTO "pairs" VALUES ('5574', 'tix', 'Blocktix', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'tixeth');
INSERT INTO "pairs" VALUES ('5575', 'ndc', 'Neverdie', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ndceth');
INSERT INTO "pairs" VALUES ('5576', 'pro', 'Propy', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'proeth');
INSERT INTO "pairs" VALUES ('5577', 'avt', 'Aventus', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'avteth');
INSERT INTO "pairs" VALUES ('5578', 'coss', 'COSS', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'cosseth');
INSERT INTO "pairs" VALUES ('5579', 'pbkx', 'PBKXToken', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'pbkxeth');
INSERT INTO "pairs" VALUES ('5580', 'pqt', 'PAquarium', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'pqtusd');
INSERT INTO "pairs" VALUES ('5581', '8bt', 'The 8 Circuit Studios Token', 'usd', 'Tether', '1970-01-01 00:00:00+00', '8btusd');
INSERT INTO "pairs" VALUES ('5582', 'evx', 'Everex', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'evxusd');
INSERT INTO "pairs" VALUES ('5583', 'iml', 'IMMLA', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'imleth');
INSERT INTO "pairs" VALUES ('5584', 'roots', 'RootProject', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'rootseth');
INSERT INTO "pairs" VALUES ('5585', 'dlt', 'Agrello', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'dltbtc');
INSERT INTO "pairs" VALUES ('5586', 'bnt', 'Bancor Network', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'bnteth');
INSERT INTO "pairs" VALUES ('5587', 'bnt', 'Bancor Network', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'bntusd');
INSERT INTO "pairs" VALUES ('5588', 'qau', 'Quantum', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'qaubtc');
INSERT INTO "pairs" VALUES ('5589', 'qau', 'Quantum', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'qaueth');
INSERT INTO "pairs" VALUES ('5590', 'mana', 'Decentraland', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'manausd');
INSERT INTO "pairs" VALUES ('5591', 'dnt', 'District0x Network', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'dntbtc');
INSERT INTO "pairs" VALUES ('5592', 'fyp', 'FlypMe', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'fypbtc');
INSERT INTO "pairs" VALUES ('5593', 'opt', 'Opus', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'optbtc');
INSERT INTO "pairs" VALUES ('5594', 'grph', 's3ntigrapH', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'grphbtc');
INSERT INTO "pairs" VALUES ('5595', 'tnt', 'Tierion', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'tnteth');
INSERT INTO "pairs" VALUES ('5596', 'stx', 'Stox', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'stxbtc');
INSERT INTO "pairs" VALUES ('5597', 'stx', 'Stox', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'stxeth');
INSERT INTO "pairs" VALUES ('5598', 'stx', 'Stox', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'stxusd');
INSERT INTO "pairs" VALUES ('5599', 'tnt', 'Tierion', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'tntusd');
INSERT INTO "pairs" VALUES ('5600', 'tnt', 'Tierion', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'tntbtc');
INSERT INTO "pairs" VALUES ('5601', 'cat', 'BitClave', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'catbtc');
INSERT INTO "pairs" VALUES ('5602', 'cat', 'BitClave', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'cateth');
INSERT INTO "pairs" VALUES ('5603', 'cat', 'BitClave', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'catusd');
INSERT INTO "pairs" VALUES ('5604', 'bch', 'Bitcoin Cash', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'bchbtc');
INSERT INTO "pairs" VALUES ('5605', 'bch', 'Bitcoin Cash', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'bcheth');
INSERT INTO "pairs" VALUES ('5606', 'bch', 'Bitcoin Cash', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'bchusd');
INSERT INTO "pairs" VALUES ('5607', 'ecat', 'Enigma', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ecateth');
INSERT INTO "pairs" VALUES ('5608', 'xuc', 'Exchange Union', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'xucusd');
INSERT INTO "pairs" VALUES ('5609', 'snc', 'SunContract', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'sncbtc');
INSERT INTO "pairs" VALUES ('5610', 'snc', 'SunContract', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'sncusd');
INSERT INTO "pairs" VALUES ('5611', 'oax', 'OpenANX', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'oaxusd');
INSERT INTO "pairs" VALUES ('5612', 'oax', 'OpenANX', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'oaxbtc');
INSERT INTO "pairs" VALUES ('5613', 'bas', 'BitAsean', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'baseth');
INSERT INTO "pairs" VALUES ('5614', 'zrx', '0x Protocol', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'zrxbtc');
INSERT INTO "pairs" VALUES ('5615', 'zrx', '0x Protocol', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'zrxeth');
INSERT INTO "pairs" VALUES ('5616', 'zrx', '0x Protocol', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'zrxusd');
INSERT INTO "pairs" VALUES ('5617', 'rvt', 'Rivetz', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'rvtbtc');
INSERT INTO "pairs" VALUES ('5618', 'icos', 'ICOBox', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'icosbtc');
INSERT INTO "pairs" VALUES ('5619', 'icos', 'ICOBox', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'icoseth');
INSERT INTO "pairs" VALUES ('5620', 'icos', 'ICOBox', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'icosusd');
INSERT INTO "pairs" VALUES ('5621', 'ppc', 'Peercoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ppcbtc');
INSERT INTO "pairs" VALUES ('5622', 'ppc', 'Peercoin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'ppcusd');
INSERT INTO "pairs" VALUES ('5623', 'qtum', 'QTUM', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'qtumeth');
INSERT INTO "pairs" VALUES ('5624', 'veri', 'Veritaseum', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'veribtc');
INSERT INTO "pairs" VALUES ('5625', 'veri', 'Veritaseum', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'verieth');
INSERT INTO "pairs" VALUES ('5626', 'veri', 'Veritaseum', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'veriusd');
INSERT INTO "pairs" VALUES ('5627', 'ignis', 'Ignis', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'igniseth');
INSERT INTO "pairs" VALUES ('5628', 'prg', 'Paragon', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'prgbtc');
INSERT INTO "pairs" VALUES ('5629', 'prg', 'Paragon', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'prgeth');
INSERT INTO "pairs" VALUES ('5630', 'prg', 'Paragon', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'prgusd');
INSERT INTO "pairs" VALUES ('5631', 'bmc', 'Black Moon', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'bmcbtc');
INSERT INTO "pairs" VALUES ('5632', 'bmc', 'Black Moon', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'bmceth');
INSERT INTO "pairs" VALUES ('5633', 'bmc', 'Black Moon', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'bmcusd');
INSERT INTO "pairs" VALUES ('5634', 'cnd', 'Cindicator', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'cndbtc');
INSERT INTO "pairs" VALUES ('5635', 'cnd', 'Cindicator', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'cndeth');
INSERT INTO "pairs" VALUES ('5636', 'cnd', 'Cindicator', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'cndusd');
INSERT INTO "pairs" VALUES ('5637', 'skin', 'SkinCoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'skinbtc');
INSERT INTO "pairs" VALUES ('5638', 'emgo', 'MobileGo', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'emgobtc');
INSERT INTO "pairs" VALUES ('5639', 'emgo', 'MobileGo', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'emgousd');
INSERT INTO "pairs" VALUES ('5640', 'cdt', 'Coindash', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'cdteth');
INSERT INTO "pairs" VALUES ('5641', 'cdt', 'Coindash', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'cdtusd');
INSERT INTO "pairs" VALUES ('5642', 'fun', 'FunFair', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'funbtc');
INSERT INTO "pairs" VALUES ('5643', 'fun', 'FunFair', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'funeth');
INSERT INTO "pairs" VALUES ('5644', 'fun', 'FunFair', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'funusd');
INSERT INTO "pairs" VALUES ('5645', 'hvn', 'Hive Project', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'hvnbtc');
INSERT INTO "pairs" VALUES ('5646', 'hvn', 'Hive Project', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'hvneth');
INSERT INTO "pairs" VALUES ('5647', 'fuel', 'EtherParty', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'fuelbtc');
INSERT INTO "pairs" VALUES ('5648', 'fuel', 'EtherParty', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'fueleth');
INSERT INTO "pairs" VALUES ('5649', 'fuel', 'EtherParty', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'fuelusd');
INSERT INTO "pairs" VALUES ('5650', 'poe', 'Po.et', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'poebtc');
INSERT INTO "pairs" VALUES ('5651', 'poe', 'Po.et', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'poeeth');
INSERT INTO "pairs" VALUES ('5652', 'mcap', 'MCAP', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'mcapbtc');
INSERT INTO "pairs" VALUES ('5653', 'air', 'AirToken', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'airbtc');
INSERT INTO "pairs" VALUES ('5654', 'air', 'AirToken', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'aireth');
INSERT INTO "pairs" VALUES ('5655', 'air', 'AirToken', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'airusd');
INSERT INTO "pairs" VALUES ('5656', 'amb', 'Ambrosus', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'ambusd');
INSERT INTO "pairs" VALUES ('5657', 'amb', 'Ambrosus', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ambeth');
INSERT INTO "pairs" VALUES ('5658', 'amb', 'Ambrosus', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ambbtc');
INSERT INTO "pairs" VALUES ('5659', 'nto', 'Fujinto', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ntobtc');
INSERT INTO "pairs" VALUES ('5660', 'ico', 'ICOBI', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'icobtc');
INSERT INTO "pairs" VALUES ('5661', 'ping', 'PING', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'pingbtc');
INSERT INTO "pairs" VALUES ('5662', 'rkc', 'Royal Kingdom Coin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'rkceth');
INSERT INTO "pairs" VALUES ('5663', 'game', 'GameCredits', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'gamebtc');
INSERT INTO "pairs" VALUES ('5664', 'tkr', 'TKR', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'tkreth');
INSERT INTO "pairs" VALUES ('5665', 'hpc', 'Happycoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'hpcbtc');
INSERT INTO "pairs" VALUES ('5666', 'ppt', 'Populous', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ppteth');
INSERT INTO "pairs" VALUES ('5667', 'mth', 'Monetha', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'mthbtc');
INSERT INTO "pairs" VALUES ('5668', 'mth', 'Monetha', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'mtheth');
INSERT INTO "pairs" VALUES ('5669', 'wmgo', 'MobileGo on WAVES', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'wmgobtc');
INSERT INTO "pairs" VALUES ('5670', 'wmgo', 'MobileGo on WAVES', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'wmgousd');
INSERT INTO "pairs" VALUES ('5671', 'lrc', 'Loopring', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'lrcbtc');
INSERT INTO "pairs" VALUES ('5672', 'lrc', 'Loopring', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'lrceth');
INSERT INTO "pairs" VALUES ('5673', 'icx', 'ICON', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'icxbtc');
INSERT INTO "pairs" VALUES ('5674', 'icx', 'ICON', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'icxeth');
INSERT INTO "pairs" VALUES ('5675', 'neo', 'NEO', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'neobtc');
INSERT INTO "pairs" VALUES ('5676', 'neo', 'NEO', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'neoeth');
INSERT INTO "pairs" VALUES ('5677', 'neo', 'NEO', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'neousd');
INSERT INTO "pairs" VALUES ('5678', 'csno', 'BitDice', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'csnobtc');
INSERT INTO "pairs" VALUES ('5679', 'orme', 'Ormeus Coin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ormebtc');
INSERT INTO "pairs" VALUES ('5680', 'icx', 'ICON', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'icxusd');
INSERT INTO "pairs" VALUES ('5681', 'pix', 'Lampix', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'pixbtc');
INSERT INTO "pairs" VALUES ('5682', 'pix', 'Lampix', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'pixeth');
INSERT INTO "pairs" VALUES ('5683', 'ind', 'Indorse', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'indeth');
INSERT INTO "pairs" VALUES ('5684', 'kick', 'KickCoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'kickbtc');
INSERT INTO "pairs" VALUES ('5685', 'yoyow', 'Yoyow', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'yoyowbtc');
INSERT INTO "pairs" VALUES ('5686', 'mips', 'MIPSToken', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'mipsbtc');
INSERT INTO "pairs" VALUES ('5687', 'cdt', 'Coindash', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'cdtbtc');
INSERT INTO "pairs" VALUES ('5688', 'xvg', 'Verge', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'xvgbtc');
INSERT INTO "pairs" VALUES ('5689', 'xvg', 'Verge', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'xvgeth');
INSERT INTO "pairs" VALUES ('5690', 'xvg', 'Verge', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'xvgusd');
INSERT INTO "pairs" VALUES ('5691', 'dgb', 'DigiByte', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'dgbbtc');
INSERT INTO "pairs" VALUES ('5692', 'dgb', 'DigiByte', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'dgbeth');
INSERT INTO "pairs" VALUES ('5693', 'dgb', 'DigiByte', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'dgbusd');
INSERT INTO "pairs" VALUES ('5694', 'dcn', 'Dentacoin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'dcneth');
INSERT INTO "pairs" VALUES ('5695', 'dcn', 'Dentacoin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'dcnusd');
INSERT INTO "pairs" VALUES ('5696', 'lat', 'Latium', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'latbtc');
INSERT INTO "pairs" VALUES ('5697', 'cct', 'Crystal Clear Token', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ccteth');
INSERT INTO "pairs" VALUES ('5698', 'ebet', 'Ethbet', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ebeteth');
INSERT INTO "pairs" VALUES ('5699', 'vibe', 'Vibe Coin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'vibebtc');
INSERT INTO "pairs" VALUES ('5700', 'voise', 'Voise', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'voisebtc');
INSERT INTO "pairs" VALUES ('5701', 'enj', 'Enjin Coin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'enjbtc');
INSERT INTO "pairs" VALUES ('5702', 'enj', 'Enjin Coin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'enjeth');
INSERT INTO "pairs" VALUES ('5703', 'enj', 'Enjin Coin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'enjusd');
INSERT INTO "pairs" VALUES ('5704', 'zsc', 'Zeus Shield Coin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'zscbtc');
INSERT INTO "pairs" VALUES ('5705', 'zsc', 'Zeus Shield Coin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'zsceth');
INSERT INTO "pairs" VALUES ('5706', 'zsc', 'Zeus Shield Coin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'zscusd');
INSERT INTO "pairs" VALUES ('5707', 'etbs', 'EthBits', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'etbsbtc');
INSERT INTO "pairs" VALUES ('5708', 'trx', 'TRON', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'trxbtc');
INSERT INTO "pairs" VALUES ('5709', 'trx', 'TRON', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'trxeth');
INSERT INTO "pairs" VALUES ('5710', 'trx', 'TRON', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'trxusd');
INSERT INTO "pairs" VALUES ('5711', 'ven', 'VeChain', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'venbtc');
INSERT INTO "pairs" VALUES ('5712', 'ven', 'VeChain', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'veneth');
INSERT INTO "pairs" VALUES ('5713', 'ven', 'VeChain', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'venusd');
INSERT INTO "pairs" VALUES ('5714', 'art', 'Maecenas', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'artbtc');
INSERT INTO "pairs" VALUES ('5715', 'evx', 'Everex', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'evxbtc');
INSERT INTO "pairs" VALUES ('5716', 'evx', 'Everex', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'evxeth');
INSERT INTO "pairs" VALUES ('5717', 'qvt', 'Qvolta', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'qvteth');
INSERT INTO "pairs" VALUES ('5718', 'ebtcold', 'eBTC Old', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ebtcoldbtc');
INSERT INTO "pairs" VALUES ('5719', 'ebtcold', 'eBTC Old', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ebtcoldeth');
INSERT INTO "pairs" VALUES ('5720', 'ebtcold', 'eBTC Old', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'ebtcoldusd');
INSERT INTO "pairs" VALUES ('5721', 'bkb', 'BetKing Bankroll Token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'bkbbtc');
INSERT INTO "pairs" VALUES ('5722', 'exn', 'Exchangen', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'exnbtc');
INSERT INTO "pairs" VALUES ('5723', 'tgt', 'Target Coin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'tgtbtc');
INSERT INTO "pairs" VALUES ('5724', 'ats', 'Authorship Token', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'atseth');
INSERT INTO "pairs" VALUES ('5725', 'ugt', 'UG Token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ugtbtc');
INSERT INTO "pairs" VALUES ('5726', 'ugt', 'UG Token', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ugteth');
INSERT INTO "pairs" VALUES ('5727', 'ugt', 'UG Token', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'ugtusd');
INSERT INTO "pairs" VALUES ('5728', 'ctr', 'Centra token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ctrbtc');
INSERT INTO "pairs" VALUES ('5729', 'ctr', 'Centra token', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ctreth');
INSERT INTO "pairs" VALUES ('5730', 'ctr', 'Centra token', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'ctrusd');
INSERT INTO "pairs" VALUES ('5731', 'bmt', 'BMChain', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'bmtbtc');
INSERT INTO "pairs" VALUES ('5732', 'bmt', 'BMChain', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'bmteth');
INSERT INTO "pairs" VALUES ('5733', 'sub', 'Substratum', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'subbtc');
INSERT INTO "pairs" VALUES ('5734', 'sub', 'Substratum', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'subeth');
INSERT INTO "pairs" VALUES ('5735', 'sub', 'Substratum', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'subusd');
INSERT INTO "pairs" VALUES ('5736', 'wtc', 'Walton', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'wtcbtc');
INSERT INTO "pairs" VALUES ('5737', 'cnx', 'Cryptonex', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'cnxbtc');
INSERT INTO "pairs" VALUES ('5738', 'atb', 'ATB Coin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'atbbtc');
INSERT INTO "pairs" VALUES ('5739', 'atb', 'ATB Coin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'atbeth');
INSERT INTO "pairs" VALUES ('5740', 'atb', 'ATB Coin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'atbusd');
INSERT INTO "pairs" VALUES ('5741', 'odn', 'Obsidian', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'odnbtc');
INSERT INTO "pairs" VALUES ('5742', 'btm', 'Bytom', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'btmbtc');
INSERT INTO "pairs" VALUES ('5743', 'btm', 'Bytom', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'btmeth');
INSERT INTO "pairs" VALUES ('5744', 'btm', 'Bytom', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'btmusd');
INSERT INTO "pairs" VALUES ('5745', 'b2x', 'B2X', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'b2xbtc');
INSERT INTO "pairs" VALUES ('5746', 'b2x', 'B2X', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'b2xeth');
INSERT INTO "pairs" VALUES ('5747', 'b2x', 'B2X', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'b2xusd');
INSERT INTO "pairs" VALUES ('5748', 'atm', 'ATMChain', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'atmbtc');
INSERT INTO "pairs" VALUES ('5749', 'atm', 'ATMChain', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'atmeth');
INSERT INTO "pairs" VALUES ('5750', 'atm', 'ATMChain', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'atmusd');
INSERT INTO "pairs" VALUES ('5751', 'life', 'Life', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'lifebtc');
INSERT INTO "pairs" VALUES ('5752', 'vib', 'Viberate Token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'vibbtc');
INSERT INTO "pairs" VALUES ('5753', 'vib', 'Viberate Token', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'vibeth');
INSERT INTO "pairs" VALUES ('5754', 'vib', 'Viberate Token', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'vibusd');
INSERT INTO "pairs" VALUES ('5755', 'drt', 'DomRaider Token', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'drteth');
INSERT INTO "pairs" VALUES ('5756', 'stu', 'Student Coin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'stuusd');
INSERT INTO "pairs" VALUES ('5757', 'hdg', 'Hedge', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'hdgeth');
INSERT INTO "pairs" VALUES ('5758', 'omg', 'Omise-go', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'omgbtc');
INSERT INTO "pairs" VALUES ('5759', 'pay', 'TenX', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'paybtc');
INSERT INTO "pairs" VALUES ('5760', 'coss', 'COSS', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'cossbtc');
INSERT INTO "pairs" VALUES ('5761', 'ppt', 'Populous', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'pptbtc');
INSERT INTO "pairs" VALUES ('5762', 'snt', 'Status', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'sntbtc');
INSERT INTO "pairs" VALUES ('5763', 'btg', 'Bitcoin Gold', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'btgbtc');
INSERT INTO "pairs" VALUES ('5764', 'btg', 'Bitcoin Gold', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'btgeth');
INSERT INTO "pairs" VALUES ('5765', 'btg', 'Bitcoin Gold', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'btgusd');
INSERT INTO "pairs" VALUES ('5766', 'smart', 'SmartCash', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'smartbtc');
INSERT INTO "pairs" VALUES ('5767', 'smart', 'SmartCash', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'smarteth');
INSERT INTO "pairs" VALUES ('5768', 'smart', 'SmartCash', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'smartusd');
INSERT INTO "pairs" VALUES ('5769', 'xuc', 'Exchange Union', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'xuceth');
INSERT INTO "pairs" VALUES ('5770', 'xuc', 'Exchange Union', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'xucbtc');
INSERT INTO "pairs" VALUES ('5771', 'cl', 'Coinlancer', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'clbtc');
INSERT INTO "pairs" VALUES ('5772', 'cl', 'Coinlancer', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'cleth');
INSERT INTO "pairs" VALUES ('5773', 'cl', 'Coinlancer', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'clusd');
INSERT INTO "pairs" VALUES ('5774', 'la', 'LAToken', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'laeth');
INSERT INTO "pairs" VALUES ('5775', 'cld', 'Cloud', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'cldbtc');
INSERT INTO "pairs" VALUES ('5776', 'cld', 'Cloud', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'cldeth');
INSERT INTO "pairs" VALUES ('5777', 'cld', 'Cloud', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'cldusd');
INSERT INTO "pairs" VALUES ('5778', 'elm', 'Element', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'elmbtc');
INSERT INTO "pairs" VALUES ('5779', 'edo', 'Eidoo Token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'edobtc');
INSERT INTO "pairs" VALUES ('5780', 'edo', 'Eidoo Token', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'edoeth');
INSERT INTO "pairs" VALUES ('5781', 'edo', 'Eidoo Token', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'edousd');
INSERT INTO "pairs" VALUES ('5782', 'hgt', 'HelloGold', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'hgteth');
INSERT INTO "pairs" VALUES ('5783', 'poll', 'ClearPoll Token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'pollbtc');
INSERT INTO "pairs" VALUES ('5784', 'ixt', 'iXledger', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ixtbtc');
INSERT INTO "pairs" VALUES ('5785', 'pre', 'Premine', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'prebtc');
INSERT INTO "pairs" VALUES ('5786', 'ats', 'Authorship Token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'atsbtc');
INSERT INTO "pairs" VALUES ('5787', 'scl', 'SOCIAL', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'sclbtc');
INSERT INTO "pairs" VALUES ('5788', 'bcc', 'BitConnect', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'bccbtc');
INSERT INTO "pairs" VALUES ('5789', 'bcc', 'BitConnect', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'bcceth');
INSERT INTO "pairs" VALUES ('5790', 'bcc', 'BitConnect', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'bccusd');
INSERT INTO "pairs" VALUES ('5791', 'atl', 'ATLANT Token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'atlbtc');
INSERT INTO "pairs" VALUES ('5792', 'ebtc', 'eBTC', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ebtcbtc');
INSERT INTO "pairs" VALUES ('5793', 'ebtc', 'eBTC', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ebtceth');
INSERT INTO "pairs" VALUES ('5794', 'ebtc', 'eBTC', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'ebtcusd');
INSERT INTO "pairs" VALUES ('5795', 'etp', 'Metaverse ETP', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'etpbtc');
INSERT INTO "pairs" VALUES ('5796', 'etp', 'Metaverse ETP', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'etpeth');
INSERT INTO "pairs" VALUES ('5797', 'etp', 'Metaverse ETP', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'etpusd');
INSERT INTO "pairs" VALUES ('5798', 'otx', 'Octanox', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'otxbtc');
INSERT INTO "pairs" VALUES ('5799', 'cdx', 'Network', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'cdxeth');
INSERT INTO "pairs" VALUES ('5800', 'drpu', 'DRP Utility', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'drpubtc');
INSERT INTO "pairs" VALUES ('5801', 'nebl', 'Neblio', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'neblbtc');
INSERT INTO "pairs" VALUES ('5802', 'nebl', 'Neblio', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'nebleth');
INSERT INTO "pairs" VALUES ('5803', 'hac', 'HAC Token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'hacbtc');
INSERT INTO "pairs" VALUES ('5804', 'ctx', 'Car Taxi', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ctxbtc');
INSERT INTO "pairs" VALUES ('5805', 'ctx', 'Car Taxi', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ctxeth');
INSERT INTO "pairs" VALUES ('5806', 'ele', 'Elementrem', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'elebtc');
INSERT INTO "pairs" VALUES ('5807', 'arn', 'Aeron', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'arnbtc');
INSERT INTO "pairs" VALUES ('5808', 'arn', 'Aeron', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'arneth');
INSERT INTO "pairs" VALUES ('5809', 'sisa', 'SISA Token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'sisabtc');
INSERT INTO "pairs" VALUES ('5810', 'sisa', 'SISA Token', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'sisaeth');
INSERT INTO "pairs" VALUES ('5811', 'stu', 'Student Coin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'stubtc');
INSERT INTO "pairs" VALUES ('5812', 'stu', 'Student Coin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'stueth');
INSERT INTO "pairs" VALUES ('5813', 'gvt', 'Genesis Vision Token', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'gvteth');
INSERT INTO "pairs" VALUES ('5814', 'indi', 'Indicoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'indibtc');
INSERT INTO "pairs" VALUES ('5815', 'btx', 'Bitcore', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'btxbtc');
INSERT INTO "pairs" VALUES ('5816', 'btx', 'Bitcore', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'btxusd');
INSERT INTO "pairs" VALUES ('5817', 'ltc', 'Litecoin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ltceth');
INSERT INTO "pairs" VALUES ('5818', 'bcn', 'Bytecoin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'bcneth');
INSERT INTO "pairs" VALUES ('5819', 'maid', 'MaidSafeCoin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'maideth');
INSERT INTO "pairs" VALUES ('5820', 'nxt', 'Nxt', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'nxteth');
INSERT INTO "pairs" VALUES ('5821', 'strat', 'Stratis', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'strateth');
INSERT INTO "pairs" VALUES ('5822', 'xdn', 'DigitalNote', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'xdneth');
INSERT INTO "pairs" VALUES ('5823', 'xem', 'NEM', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'xemeth');
INSERT INTO "pairs" VALUES ('5824', 'plr', 'Pillar', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'plrbtc');
INSERT INTO "pairs" VALUES ('5825', 'sur', 'Suretly', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'surbtc');
INSERT INTO "pairs" VALUES ('5826', 'bqx', 'Ethos', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'bqxbtc');
INSERT INTO "pairs" VALUES ('5827', 'doge', 'Dogecoin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'dogeeth');
INSERT INTO "pairs" VALUES ('5828', 'its', 'ITS Chain', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'itsbtc');
INSERT INTO "pairs" VALUES ('5829', 'amm', 'Micro Money', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'ammbtc');
INSERT INTO "pairs" VALUES ('5830', 'amm', 'Micro Money', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'ammeth');
INSERT INTO "pairs" VALUES ('5831', 'amm', 'Micro Money', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'ammusd');
INSERT INTO "pairs" VALUES ('5832', 'dbix', 'DubaiCoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'dbixbtc');
INSERT INTO "pairs" VALUES ('5833', 'prs', 'Presearch', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'prsbtc');
INSERT INTO "pairs" VALUES ('5834', 'kbr', 'Kubera token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'kbrbtc');
INSERT INTO "pairs" VALUES ('5835', 'tbt', 'TBOT', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'tbtbtc');
INSERT INTO "pairs" VALUES ('5836', 'ero', 'Eroscoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'erobtc');
INSERT INTO "pairs" VALUES ('5837', 'sms', 'Speed Mining Service', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'smsbtc');
INSERT INTO "pairs" VALUES ('5838', 'sms', 'Speed Mining Service', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'smseth');
INSERT INTO "pairs" VALUES ('5839', 'sms', 'Speed Mining Service', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'smsusd');
INSERT INTO "pairs" VALUES ('5840', 'zap', 'ZAP Token', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'zapbtc');
INSERT INTO "pairs" VALUES ('5841', 'dov', 'DOVU', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'dovbtc');
INSERT INTO "pairs" VALUES ('5842', 'dov', 'DOVU', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'doveth');
INSERT INTO "pairs" VALUES ('5843', 'frd', 'Farad', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'frdbtc');
INSERT INTO "pairs" VALUES ('5844', 'otn', 'Open Trading Network', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'otnbtc');
INSERT INTO "pairs" VALUES ('5845', 'capp', 'Cappasity', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'cappbtc');
INSERT INTO "pairs" VALUES ('5846', 'capp', 'Cappasity', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'cappeth');
INSERT INTO "pairs" VALUES ('5847', 'xrp', 'Ripple', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'xrpeth');
INSERT INTO "pairs" VALUES ('5848', 'xrp', 'Ripple', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'xrpusd');
INSERT INTO "pairs" VALUES ('5849', 'capp', 'Cappasity', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'cappusd');
INSERT INTO "pairs" VALUES ('5850', 'hsr', 'Hshare', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'hsrbtc');
INSERT INTO "pairs" VALUES ('5851', 'lend', 'EthLend', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'lendbtc');
INSERT INTO "pairs" VALUES ('5852', 'lend', 'EthLend', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'lendeth');
INSERT INTO "pairs" VALUES ('5853', 'spf', 'Sportify', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'spfeth');
INSERT INTO "pairs" VALUES ('5854', 'loc', 'LockChain', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'locbtc');
INSERT INTO "pairs" VALUES ('5855', 'loc', 'LockChain', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'loceth');
INSERT INTO "pairs" VALUES ('5856', 'loc', 'LockChain', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'locusd');
INSERT INTO "pairs" VALUES ('5857', 'btca', 'BitAir', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'btcabtc');
INSERT INTO "pairs" VALUES ('5858', 'btca', 'BitAir', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'btcaeth');
INSERT INTO "pairs" VALUES ('5859', 'btca', 'BitAir', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'btcausd');
INSERT INTO "pairs" VALUES ('5860', 'wrc', 'Worldcore', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'wrcbtc');
INSERT INTO "pairs" VALUES ('5861', 'wrc', 'Worldcore', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'wrceth');
INSERT INTO "pairs" VALUES ('5862', 'wrc', 'Worldcore', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'wrcusd');
INSERT INTO "pairs" VALUES ('5863', 'swftc', 'SwftCoin', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'swftcbtc');
INSERT INTO "pairs" VALUES ('5864', 'swftc', 'SwftCoin', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'swftceth');
INSERT INTO "pairs" VALUES ('5865', 'swftc', 'SwftCoin', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'swftcusd');
INSERT INTO "pairs" VALUES ('5866', 'sbtc', 'Super BTC', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'sbtcbtc');
INSERT INTO "pairs" VALUES ('5867', 'sbtc', 'Super BTC', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'sbtceth');
INSERT INTO "pairs" VALUES ('5868', 'storm', 'Storm', 'btc', 'Bitcoin', '1970-01-01 00:00:00+00', 'stormbtc');
INSERT INTO "pairs" VALUES ('5869', 'star', 'Starbase', 'eth', 'Ethereum', '1970-01-01 00:00:00+00', 'stareth');
INSERT INTO "pairs" VALUES ('5870', 'sbtc', 'Super BTC', 'usd', 'Tether', '1970-01-01 00:00:00+00', 'sbtcusd');
COMMIT;

-- ----------------------------
-- Table structure for signals
-- ----------------------------
DROP TABLE IF EXISTS "signals";
CREATE TABLE "signals" (
"id" int8 DEFAULT nextval('signal_ids'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default" DEFAULT ''::character varying NOT NULL,
"user_id" int8 NOT NULL,
"exchange1" varchar(64) COLLATE "default" DEFAULT ''::character varying NOT NULL,
"exchange2" varchar(64) COLLATE "default" DEFAULT ''::character varying NOT NULL,
"asset1" varchar(64) COLLATE "default" DEFAULT ''::character varying NOT NULL,
"asset2" varchar(64) COLLATE "default" DEFAULT ''::character varying NOT NULL,
"asset3" varchar(64) COLLATE "default" DEFAULT ''::character varying NOT NULL,
"type" int4 DEFAULT 0 NOT NULL,
"data1" int8 DEFAULT 0 NOT NULL,
"data2" float8 DEFAULT 0 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of signals
-- ----------------------------
BEGIN;
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
"volume" float8,
"asset1" varchar(255) COLLATE "default",
"asset2" varchar(255) COLLATE "default"
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
INSERT INTO "users" VALUES ('5920', 'test', '$2a$10$lSqVLjZu/trb5P6Vlbxr1..pCetoeT5C3.hNbN65wvIBQNUL27ISe', 'test@test.ru', 'f', '', '0', '2017-12-21 08:21:20.823416+00', '');
COMMIT;

-- ----------------------------
-- Function structure for get_asset_id
-- ----------------------------
CREATE OR REPLACE FUNCTION "get_asset_id"("key" varchar)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
  _id assets.id%TYPE;
BEGIN

LOCK TABLE assets IN EXCLUSIVE MODE;

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
CREATE OR REPLACE FUNCTION "get_pair_id"("key1" varchar, "key2" varchar)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
  _id pairs.id%TYPE;
  _name1 assets.name%TYPE;
  _name2 assets.name%TYPE;
  _pair_name pairs.pair_name%TYPE;
BEGIN

--LOCK TABLE statistics_cities IN EXCLUSIVE MODE;
	_pair_name = concat(key1, key2);
	select "id" into _id from pairs where "pair_name" = _pair_name OR ("base_key" = COALESCE(key1, 'Undefined') AND "quote_key" = COALESCE(key2, 'Undefined'));
	IF NOT FOUND THEN
		select "name" INTO _name1 from assets WHERE symbol = key1;
		IF NOT FOUND THEN
			_name1 = '';
			insert into assets("symbol","name","time") values (COALESCE(key1, 'Undefined'), '', to_timestamp(0));
		END IF;

		select "name" INTO _name2 from assets WHERE symbol = key2;
		IF NOT FOUND THEN
			_name2 = '';
			insert into assets("symbol","name","time") values (COALESCE(key2, 'Undefined'), '', to_timestamp(0));
		END IF;

		insert into pairs("base_name","base_key","quote_name","quote_key","time", "pair_name") 
								values (_name1, COALESCE(key1, 'Undefined'),_name2, COALESCE(key2, 'Undefined'), to_timestamp(0), _pair_name) RETURNING "id" into _id;
	END IF;

return _id;

END;
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Function structure for get_pair_id
-- ----------------------------
CREATE OR REPLACE FUNCTION "get_pair_id"("p_key" varchar)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
  _id pairs.id%TYPE;
  _name1 assets.name%TYPE;
  _name2 assets.name%TYPE;
  _pair_name pairs.pair_name%TYPE;
BEGIN

	select "id" into _id from pairs where "pair_name" = p_key;
	IF NOT FOUND THEN
		insert into pairs("base_name","base_key","quote_name","quote_key","time", "pair_name") 
								values ('','','','', to_timestamp(0), p_key) RETURNING "id" into _id;
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
-- Function structure for save_event_ex
-- ----------------------------
CREATE OR REPLACE FUNCTION "save_event_ex"("p_asset1" varchar, "p_asset2" varchar, "p_exchange1" varchar, "p_exchange2" varchar, "p_time" timestamptz, "p_name" varchar, "p_percent" float8)
  RETURNS "pg_catalog"."void" AS $BODY$DECLARE
  _asset1 assets.id%TYPE;
  _asset2 assets.id%TYPE;
  _exchange1 exchanges.id%TYPE;
	_exchange2 exchanges.id%TYPE;

BEGIN
	--Routine body goes here...


	SELECT get_asset_id(p_asset1) INTO _asset1;
	SELECT get_asset_id(p_asset2) INTO _asset2;
	SELECT get_exchange_id(p_exchange1) INTO _exchange1;
	SELECT get_exchange_id(p_exchange2) INTO _exchange2;

	INSERT INTO events("name", "exchange1", "exchange2", "asset1", "asset2", "type", "data2", "time")
										VALUES(p_name, _exchange1, _exchange2, _asset1, _asset2, 2, p_percent, p_time);

	RETURN;
END
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Function structure for save_event_in
-- ----------------------------
CREATE OR REPLACE FUNCTION "save_event_in"("p_asset1" varchar, "p_asset2" varchar, "p_asset3" varchar, "p_exchange" varchar, "p_time" timestamptz, "p_name" varchar, "p_percent" float8, "p_user_id" int8)
  RETURNS "pg_catalog"."void" AS $BODY$DECLARE
  _asset1 assets.id%TYPE;
  _asset2 assets.id%TYPE;
  _asset3 assets.id%TYPE;
  _exchange exchanges.id%TYPE;

BEGIN
	--Routine body goes here...


	SELECT get_asset_id(p_asset1) INTO _asset1;
	SELECT get_asset_id(p_asset2) INTO _asset2;
	SELECT get_asset_id(p_asset3) INTO _asset3;
	SELECT get_exchange_id(p_exchange) INTO _exchange;

	INSERT INTO events("name", "exchange1", "asset1", "asset2","asset3", "type", "data2", "time", "user_id")
										VALUES(p_name, _exchange, _asset1, _asset2, _asset3, 1, p_percent, p_time, p_user_id);

	RETURN;
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

  LOCK TABLE internal IN EXCLUSIVE MODE;

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
CREATE OR REPLACE FUNCTION "save_tikers"("p_exchange" varchar, "p_asset1" varchar, "p_asset2" varchar, "p_value" float8, "p_ask" float8, "p_bid" float8, "p_time" timestamp, "p_volume" float8)
  RETURNS "pg_catalog"."void" AS $BODY$DECLARE
  _exchange_id exchanges.id%TYPE;
  _pair_id pairs.id%TYPE;

BEGIN
	--Routine body goes here...

	INSERT INTO tikers_source(time,exchange,asset1,asset2,value,ask,bid, volume) values(p_time,p_exchange,p_asset1,p_asset2,p_value,p_ask,p_bid, p_volume);

	SELECT get_exchange_id(p_exchange) INTO _exchange_id;
	SELECT get_pair_id(p_asset1,p_asset2) INTO _pair_id;

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
CREATE OR REPLACE FUNCTION "set_asset"("p_symbol" varchar, "p_name" varchar, "p_time" timestamptz, "p_course" float8)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	--Routine body goes here...

		INSERT INTO assets ("symbol", "name", "time", "course") VALUES(p_symbol, p_name, p_time, p_course)
		ON CONFLICT ("symbol") DO UPDATE SET "symbol"=p_symbol, "name"=p_name, "time"=p_time, "course"=p_course;

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

		--NSERT INTO pairs ("pair_name", "base_key", "base_name", "quote_key", "quote_name", "time") VALUES(p_pair_name, p_base_key, p_base_name, p_quote_key, p_quote_name, p_time)
		--ON CONFLICT ("pair_name") DO UPDATE SET "base_key"=p_base_key, "base_name"=p_base_name, "quote_key"=p_quote_key, "quote_name"=p_quote_name, "time"=p_time;

	RETURN;
END
$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table actives
-- ----------------------------
ALTER TABLE "actives" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table assets
-- ----------------------------
CREATE UNIQUE INDEX "assets_symbol_idx" ON "assets" USING btree ("symbol");

-- ----------------------------
-- Primary Key structure for table assets
-- ----------------------------
ALTER TABLE "assets" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table events
-- ----------------------------
ALTER TABLE "events" ADD PRIMARY KEY ("id");

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
-- Primary Key structure for table pairs
-- ----------------------------
ALTER TABLE "pairs" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table signals
-- ----------------------------
ALTER TABLE "signals" ADD PRIMARY KEY ("id");

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
