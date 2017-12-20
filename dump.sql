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

Date: 2017-12-20 14:14:00
*/


-- ----------------------------
-- Sequence structure for assets_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "assets_ids";
CREATE SEQUENCE "assets_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 5797
 CACHE 1;
SELECT setval('"public"."assets_ids"', 5797, true);

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
 START 4737
 CACHE 1;
SELECT setval('"public"."pair_ids"', 4737, true);

-- ----------------------------
-- Sequence structure for tikers_ids
-- ----------------------------
DROP SEQUENCE IF EXISTS "tikers_ids";
CREATE SEQUENCE "tikers_ids"
 INCREMENT 1
 MINVALUE 0
 MAXVALUE 9223372036854775807
 START 140327
 CACHE 1;
SELECT setval('"public"."tikers_ids"', 140327, true);

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
INSERT INTO "assets" VALUES ('1802', 'bnt', 'Bancor', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1803', 'ant', 'Aragon', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1804', 'adx', 'AdEx', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1805', 'adt', 'adToken', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1806', 'ada', 'Cardano', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1807', '1st', 'FirstBlood', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1808', 'qqq', 'QQQ', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('1809', 'dgd', 'DigixDAO', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1810', 'amp', 'Synereo', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1811', 'ardr', 'Ardor', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1812', 'aud', 'Australian Dollar', '2017-12-08 14:34:12+00');
INSERT INTO "assets" VALUES ('1813', 'avt', 'Aventus', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1814', 'bat', 'BatCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('1815', 'bcc', 'BitConnect', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1816', 'bch', 'Bitcoin Cash', '2017-12-20 11:07:35+00');
INSERT INTO "assets" VALUES ('1817', 'bcn', 'Bytecoin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1818', 'bcu', 'Bitcoin Unlimited Token', '2017-12-08 14:34:12+00');
INSERT INTO "assets" VALUES ('1819', 'bcy', 'Bitcrystals', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('1820', 'bela', 'Bela', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('1821', 'bfx', 'BFX', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1822', 'blk', 'BlackCoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1823', 'bt1', 'BT1 [CST]', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('1824', 'bt2', 'BT2 [CST]', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('1825', 'btc', 'Bitcoin', '2017-12-20 11:07:35+00');
INSERT INTO "assets" VALUES ('1826', 'btcd', 'BitcoinDark', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1827', 'btg', 'Bitgem', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('1828', 'btm', 'Bitmark', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('1829', 'bts', 'BitShares', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1830', 'burst', 'Burst', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1831', 'cad', 'Canadian dollar', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1832', 'clam', 'Clams', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1833', 'cny', 'Chinese yuan', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1834', 'cvc', 'Civic', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1835', 'dao', 'Decentralized Autonomous Organization', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1836', 'dash', 'Dash', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1837', 'dat', 'Datum', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('1838', 'data', 'Streamr DATAcoin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1839', 'dcr', 'Decred', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1840', 'dgb', 'DigiByte', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1841', 'doge', 'Dogecoin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1842', 'edg', 'Edgeless', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1843', 'edo', 'Eidoo', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1844', 'emc2', 'Einsteinium', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1845', 'eos', 'EOS', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1846', 'etc', 'Ethereum Classic', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1847', 'eth', 'Ethereum', '2017-12-20 11:07:35+00');
INSERT INTO "assets" VALUES ('1848', 'etp', 'Metaverse ETP', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1849', 'eur', 'euro', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1850', 'exp', 'Expanse', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1851', 'fct', 'Factom', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1852', 'fldc', 'FoldingCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('1853', 'flo', 'FlorinCoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1854', 'game', 'GameCredits', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1855', 'gas', 'Gas', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1856', 'gbp', 'British Pound', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1857', 'gno', 'Gnosis', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1858', 'gnt', 'Golem', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1859', 'grc', 'GridCoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1860', 'hkd', 'Hong Kong Dollar', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1861', 'huc', 'HunterCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('1862', 'icn', 'iCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('1863', 'idr', 'Indonesian Rupiah', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1864', 'inr', 'Indian Rupee', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1865', 'iot', 'IOTA', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1866', 'jpy', 'Japanese Yen', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1867', 'krw', 'South Korean Won', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1868', 'lbc', 'LBRY Credits', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1869', 'lsk', 'Lisk', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1870', 'ltc', 'Litecoin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1871', 'maid', 'MaidSafeCoin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1872', 'mln', 'Melon', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1873', 'mxn', 'Mexican Peso', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1874', 'naut', 'NautilusCoin', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1875', 'nav', 'NAV Coin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1876', 'neo', 'NEO', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1877', 'neos', 'NeosCoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1878', 'nmc', 'Namecoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1879', 'note', 'DNotes', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('1880', 'nxc', 'Nexium', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('1881', 'nxt', 'Nxt', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1882', 'omg', 'OmiseGO', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1883', 'omni', 'Omni', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1884', 'pasc', 'Pascal Coin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1885', 'php', 'Philippine Peso', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1886', 'pink', 'PinkCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('1887', 'pot', 'PotCoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1888', 'ppc', 'Peercoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1889', 'qtum', 'Qtum', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1890', 'rads', 'Radium', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1891', 'rep', 'Augur', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1892', 'ric', 'Riecoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('1893', 'rur', 'Russian Ruble', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1894', 'san', 'Santiment Network Token', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1895', 'sbd', 'Steem Dollars', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1896', 'sc', 'Siacoin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1897', 'sdc', 'ShadowCash', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('1898', 'sgd', 'Singapore Dollar', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1899', 'sjcx', 'Storjcoin X', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('1900', 'steem', 'Steem', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1901', 'storj', 'Storj', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1902', 'str', 'Stellar', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1903', 'strat', 'Stratis', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1904', 'sys', 'Syscoin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1905', 'usd', 'United States dollar', '2017-12-08 14:34:13+00');
INSERT INTO "assets" VALUES ('1906', 'usdt', 'Tether', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1907', 'via', 'Viacoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1908', 'vrc', 'VeriCoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('1909', 'vrm', 'VeriumReserve', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('1910', 'vtc', 'Vertcoin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1911', 'xbc', 'Bitcoin Plus', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('1912', 'xcp', 'Counterparty', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1913', 'xem', 'NEM', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1914', 'xmr', 'Monero', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1915', 'xpm', 'Primecoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('1916', 'xrp', 'Ripple', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1917', 'xtz', 'Tezos (Pre-Launch)', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('1918', 'xvc', 'Vcash', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('1919', 'zar', 'South African rand', '2017-12-08 14:34:14+00');
INSERT INTO "assets" VALUES ('1920', 'zec', 'Zcash', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('1921', 'zen', 'ZenCash', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('1922', 'zrx', '0x', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('2628', 'cfi', 'Cofound.it', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('2630', 'crb', 'Creditbit', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('2650', 'dnt', 'district0x', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('2652', 'eng', 'Enigma', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('2656', 'fun', 'FunFair', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('2660', 'gup', 'Matchpool', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('2662', 'hmq', 'Humaniq', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('2664', 'lgd', 'Legends Room', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('2667', 'lun', 'Lunyr', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('2669', 'mana', 'Decentraland', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('2671', 'mco', 'Monaco', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('2673', 'mtl', 'Metal', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('2675', 'myst', 'Mysterium', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('2678', 'nmr', 'Numeraire', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('2681', 'pay', 'TenX', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('2683', 'powr', 'Power Ledger', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('2685', 'ptoy', 'Patientory', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('2687', 'qrl', 'Quantum Resistant Ledger', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('2690', 'rcn', 'Rcoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('2693', 'rlc', 'iExec RLC', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('2695', 'salt', 'SALT', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('2698', 'sngls', 'SingularDTV', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('2700', 'snt', 'Status', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('2704', 'tix', 'Blocktix', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('2706', 'trst', 'WeTrust', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('2708', 'vib', 'Viberate', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('2710', 'waves', 'Waves', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('2712', 'wings', 'Wings', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('2715', 'xlm', 'Stellar', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('3967', 'brk', 'Breakout', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('3968', 'aur', 'Auroracoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('3969', 'aby', 'ArtByte', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('3970', 'ark', 'Ark', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('3971', 'cure', 'Curecoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('3972', 'meme', 'Memetic / PepeCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('3973', 'brx', 'Breakout Stake', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('3974', 'mer', 'Mercury', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('3975', '2give', '2GIVE', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('3976', 'bsd', 'BitSend', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('3977', 'cloak', 'CloakCoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('3978', 'dct', 'DECENT', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('3979', 'mona', 'MonaCoin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('3980', 'mue', 'MonetaryUnit', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('3981', 'grs', 'Groestlcoin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('3982', 'music', 'Musicoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('3983', 'nbt', 'NuBits', '1970-01-01 00:00:00+00');
INSERT INTO "assets" VALUES ('3984', 'dmd', 'Diamond', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('3985', 'ebst', 'eBoost', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('3986', 'incnt', 'Incent', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('3987', 'bay', 'BitBay', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('3988', 'infx', 'Influxcoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('3989', 'dope', 'DopeCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('3990', 'golos', 'Golos', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('3991', 'efl', 'e-Gulden', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('3992', 'ion', 'ION', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('3993', 'ioc', 'I/O Coin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('3994', 'dtb', 'Databits', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('3995', 'iop', 'Internet of People', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('3996', 'egc', 'EverGreenCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('3997', 'dyn', 'Dynamic', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('3998', 'kmd', 'Komodo', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('3999', 'aeon', 'Aeon', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4000', 'kore', 'Kore', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4001', 'enrg', 'Energycoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4002', 'nxs', 'Nexus', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4003', 'emc', 'Emercoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4004', 'ok', 'OKCash', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4005', 'erc', 'EuropeCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4006', 'excl', 'ExclusiveCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4007', 'part', 'Particl', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4008', 'ftc', 'Feathercoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4009', 'zcl', 'ZClassic', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4010', 'xzc', 'ZCoin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4011', 'fair', 'FairCoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4012', 'blitz', 'Blitzcash', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4013', 'agrs', 'Agoras Tokens', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4014', 'pivx', 'PIVX', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4015', 'swt', 'Swarm City', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4016', 'vtr', 'vTorrent', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4017', 'synx', 'Syndicate', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4018', 'gam', 'Gambit', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4019', 'pkb', 'ParkByte', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4020', 'tks', 'Tokes', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4021', 'pdc', 'Project Decorum', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4022', 'ptc', 'Pesetacoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4023', 'xaur', 'Xaurum', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4024', 'xel', 'Elastic', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4025', 'xdn', 'DigitalNote', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4026', 'bitb', 'BitBean', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4027', 'trig', 'Triggers', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4028', 'thc', 'HempCoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4029', 'tx', 'TransferCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4030', 'ubq', 'Ubiq', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4031', 'qwark', 'Qwark', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4032', 'unb', 'UnbreakableCoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4033', 'rdd', 'ReddCoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4034', 'rby', 'Rubycoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4035', 'xmy', 'Myriad', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4036', 'trust', 'TrustPlus', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4037', 'vox', 'Voxels', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4038', 'xvg', 'Verge', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4039', 'rise', 'Rise', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4040', 'seq', 'Sequence', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4041', 'xwc', 'WhiteCoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4042', 'sib', 'SIBCoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4043', 'start', 'Startcoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4044', 'spr', 'SpreadCoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4045', 'snrg', 'Synergy', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4046', 'xmg', 'Magi', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4047', 'shift', 'Shift', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4048', 'sphr', 'Sphere', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4049', 'cann', 'CannabisCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4050', 'sls', 'SaluS', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4051', 'slr', 'SolarCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4052', 'xst', 'Stealthcoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4053', 'swift', 'Bitswift', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4054', 'apx', 'APX', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4055', 'byc', 'Bytecent', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4056', 'block', 'Blocknet', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4057', 'club', 'ClubCoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('4058', 'nlg', 'Gulden', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4059', 'coval', 'Circuits of Value', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4060', 'gbyte', 'Byteball Bytes', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4061', 'gbg', 'Golos Gold', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('4062', 'lmc', 'LoMoCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4068', 'cpc', 'Capricoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4069', 'gcr', 'Global Currency Reserve', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4070', 'geo', 'GeoCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4071', 'crw', 'Crown', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4072', 'gld', 'GoldCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4313', 'miota', 'IOTA', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4324', 'trx', 'TRON', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4328', 'ppt', 'Populous', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4332', 'hsr', 'Hshare', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4347', 'bnb', 'Binance Coin', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4348', 'veri', 'Veritaseum', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4351', 'xrb', 'RaiBlocks', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4355', 'ven', 'VeChain', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4356', 'wtc', 'Walton', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4357', 'etn', 'Electroneum', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4360', 'knc', 'KingN Coin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('4364', 'ae', 'Aeternity', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4366', 'qash', 'QASH', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4373', 'gxs', 'GXShares', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4381', 'cnx', 'Cryptonex', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4385', 'drgn', 'Dragonchain', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4387', 'rdn', 'Raiden Network Token', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4394', 'req', 'Request Network', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4396', 'aion', 'Aion', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4397', 'ink', 'Ink', '2017-12-20 11:07:36+00');
INSERT INTO "assets" VALUES ('4401', 'rhoc', 'RChain', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4402', 'ppp', 'PayPie', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4405', 'ethos', 'Ethos', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4406', 'snm', 'SONM', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4407', 'link', 'ChainLink', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4409', 'sub', 'Substratum', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4411', 'xas', 'Asch', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4412', 'act', 'Achain', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4413', 'sky', 'Skycoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4415', 'r', 'Revain', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4416', 'tnb', 'Time New Bank', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4417', 'pura', 'Pura', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4419', 'qsp', 'Quantstamp', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4420', 'kin', 'Kin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4424', 'dent', 'Dent', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4425', 'lrc', 'Loopring', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4426', 'cnd', 'Cindicator', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4427', 'jinn', 'Jinn', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4432', 'enj', 'Enjin Coin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4433', 'yoyow', 'YOYOW', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4437', 'atm', 'ATMChain', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4442', 'pepecash', 'Pepe Cash', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4444', 'kcs', 'KuCoin Shares', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4445', 'ctr', 'Centra', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4446', 'mnx', 'MinexCoin', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4447', 'rpx', 'Red Pulse', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4448', 'dpy', 'Delphy', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4449', 'wabi', 'WaBi', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4453', 'lkk', 'Lykke', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4455', 'mgo', 'MobileGo', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4458', 'plr', 'Pillar', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4460', 'wgr', 'Wagerr', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4461', 'ukg', 'Unikoin Gold', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4462', 'cob', 'Cobinhood', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4464', 'payx', 'Paypex', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4466', 'tnt', 'Tierion', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4467', 'poe', 'Po.et', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4468', 'smart', 'SmartBillions', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4469', 'hvn', 'Hive', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4470', 'unity', 'SuperNET', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4471', 'lend', 'ETHLend', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4475', 'cdt', 'CoinDash', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4477', 'xby', 'XTRABYTES', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4479', 'nebl', 'Neblio', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4481', 'ast', 'AirSwap', '2017-12-20 11:07:37+00');
INSERT INTO "assets" VALUES ('4485', 'bot', 'Bodhi', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4488', 'taas', 'TaaS', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4489', 'dcn', 'Dentacoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4495', 'vee', 'BLOCKv', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4496', 'amb', 'Ambrosus', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4499', 'spank', 'SpankChain', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4506', 'mod', 'Modum', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4507', 'bitcny', 'bitCNY', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4508', 'fuel', 'Etherparty', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4509', 'mda', 'Moeda Loyalty Points', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4510', 'zsc', 'Zeusshield', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4511', 'otn', 'Open Trading Network', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4513', 'tips', 'FedoraCoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4515', 'xp', 'XP', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4517', 'mth', 'Monetha', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4519', 'grid', 'Grid+', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4520', 'bco', 'BridgeCoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4526', 'xpa', 'XPlay', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4527', 'rmc', 'Remicoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4528', 'csno', 'BitDice', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4529', 'nlc2', 'NoLimitCoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4530', 'btx', 'Bitcore', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4532', 'pst', 'Primas', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4534', 'wct', 'Waves Community Token', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4535', 'frst', 'FirstCoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4536', 'bcap', 'BCAP', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4538', 'pre', 'Presearch', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4541', 'gvt', 'Genesis Vision', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4542', 'xuc', 'Exchange Union', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4543', 'xspec', 'Spectrecoin', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4546', 'stx', 'Stox', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4548', 'credo', 'Credo', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4550', 'obits', 'OBITS', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4551', 'oct', 'OracleChain', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4552', 'qau', 'Quantum', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4553', 'dlt', 'Agrello', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4554', 'evx', 'Everex', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4555', 'drt', 'DomRaider', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4557', 'prg', 'Paragon', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4558', 'ixt', 'iXledger', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4559', 'snc', 'SunContract', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4560', 'phr', 'Phore', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4562', 'nuls', 'Nuls', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4563', 'icos', 'ICOS', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4565', 'alis', 'ALIS', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4567', 'bbr', 'Boolberry', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4569', 'bq', 'bitqy', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4570', 'tkn', 'TokenCard', '2017-12-20 11:07:38+00');
INSERT INTO "assets" VALUES ('4573', 'net', 'NetCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4574', 'msp', 'Mothership', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4575', 'xrl', 'Rialto', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4576', 'leo', 'LEOcoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4580', 'moon', 'Mooncoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4583', 'dice', 'Etheroll', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4584', 'ppy', 'Peerplays', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4586', 'uno', 'Unobtanium', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4587', 'kick', 'KickCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4588', 'tcc', 'The ChampCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4591', 'atb', 'ATBCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4593', 'nsr', 'NuShares', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4594', 'bitusd', 'bitUSD', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4596', 'nvst', 'NVO', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4597', 'bcpt', 'BlockMason Credit Protocol', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4598', 'heat', 'HEAT', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4600', 'plbt', 'Polybius', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4601', 'oxy', 'Oxycoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4602', 'posw', 'PoSW Coin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4603', 'odn', 'Obsidian', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4604', 'art', 'Maecenas', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4605', 'air', 'AirToken', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4606', 'hst', 'Decision Token', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4608', 'soar', 'Soarcoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4609', 'onion', 'DeepOnion', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4610', 'coss', 'COSS', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4611', 'ett', 'EncryptoTel [ETH]', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('4612', 'poll', 'ClearPoll', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4614', 'bmc', 'Blackmoon Crypto', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4615', 'nvc', 'Novacoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4620', 'blue', 'BLUE', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4621', 'bet', 'BetaCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('4623', 'time', 'Chronobank', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4625', 'rvt', 'Rivetz', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4626', 'zny', 'Bitzeny', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4629', 'la', 'LAToken', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4631', 'xsh', 'SHIELD', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4632', 'oax', 'OAX', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4633', 'mtnc', 'Masternodecoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4634', 'cag', 'Change', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4637', 'dna', 'EncrypGen', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4638', 'astro', 'Astro', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4639', 'mxt', 'MarteXcoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4640', 'tgt', 'Target Coin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4641', 'ecc', 'ECC', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4644', 'eac', 'EarthCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4645', 'cat', 'Catcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4646', 'xto', 'Tao', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4647', 'vibe', 'VIBE', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4649', 'dbet', 'DecentBet', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4650', 'xnn', 'Xenon', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4652', 'toa', 'ToaCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4653', 'b2b', 'B2B', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4654', 'ift', 'InvestFeed', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4655', 'cvcoin', 'CVCoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4656', 'edr', 'E-Dinar Coin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4657', 'crea', 'Creativecoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4658', 'pix', 'Lampix', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4659', 'sxc', 'Sexcoin', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4662', 'pzm', 'PRIZM', '2017-12-20 11:07:39+00');
INSERT INTO "assets" VALUES ('4665', 'pbt', 'Primalbase Token', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4668', 'ebtc', 'eBitcoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4669', 'mcap', 'MCAP', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4670', 'bon', 'Bonpay', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4672', 'bdl', 'Bitdeal', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4675', 'chips', 'CHIPS', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4676', 'zeph', 'Zephyr', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4677', 'frd', 'Farad', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4678', 'hgt', 'HelloGold', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4680', 'dbix', 'DubaiCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4681', 'inxt', 'Internxt', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4682', 'yoc', 'Yocoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4684', 'pro', 'ProChain', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('4689', 'dovu', 'Dovu', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4690', 'myb', 'MyBit Token', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4691', 'voise', 'Voise', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4692', 'arn', 'Aeron', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4693', 'mint', 'Mintcoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4696', 'plu', 'Pluton', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4697', 'bis', 'Bismuth', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4698', 'divx', 'Divi', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4699', 'ecob', 'Ecobit', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4702', 'btdx', 'Bitcloud', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4704', 'blu', 'BlueCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4705', 'cct', 'Crystal Clear ', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4706', 'abj', 'Abjcoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4707', 'elix', 'Elixir', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4709', 'html5', 'HTMLCOIN', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4710', 'bpl', 'Blockpool', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4711', 'drp', 'DCORP', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4712', 'put', 'PutinCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4713', 'nyc', 'NewYorkCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4715', 'atms', 'Atmos', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4716', 'tfl', 'TrueFlip', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4717', 'ntrn', 'Neutron', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4718', 'dime', 'Dimecoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4719', 'efyt', 'Ergo', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4722', 'zrc', 'ZrCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4723', 'vsl', 'vSlice', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4724', 'tzc', 'TrezarCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4725', 'gcc', 'GuccioneCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('4727', 'flixx', 'Flixxo', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4728', 'life', 'LIFE', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4729', 'pirl', 'Pirl', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4730', 'gbx', 'GoByte', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4731', 'krb', 'Karbowanec', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4732', 'ac', 'AsiaCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4733', 'nio', 'Autonio', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4735', 'sss', 'Sharechain', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4736', 'pac', 'Paccoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4737', 'dar', 'Darcrus', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4738', 'ind', 'Indorse Token', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4740', 'inn', 'Innova', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4742', 'xcn', 'Cryptonite', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4743', 'adst', 'AdShares', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4744', 'alqo', 'ALQO', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4745', 'pbl', 'Publica', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4747', 'eca', 'Electra', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4748', 'trc', 'Terracoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4749', 'gmt', 'Mercury Protocol', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4750', 'ping', 'CryptoPing', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4751', 'ocl', 'Oceanlab', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4752', 'wdc', 'WorldCoin', '2017-12-20 11:07:40+00');
INSERT INTO "assets" VALUES ('4753', 'chc', 'ChainCoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4754', 'real', 'REAL', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4755', 'hdg', 'Hedge', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4756', 'kln', 'Kolion', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4758', 'unit', 'Universal Currency', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4759', 'rup', 'Rupee', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4760', 'scl', 'Social', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4761', 'dot', 'Dotcoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4762', 'sta', 'Starta', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4763', 'ctx', 'CarTaxi Token', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4766', 'wish', 'MyWish', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4768', 'vivo', 'VIVO', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4770', 'spf', 'SportyFi', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4771', 'qrk', 'Quark', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4772', 'ndc', 'NEVERDIE', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4773', 'anc', 'Anoncoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4774', 'cnt', 'Centurion', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4776', 'mec', 'Megacoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4777', 'bash', 'LuckChain', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4778', 'xlr', 'Solaris', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4779', 'atl', 'ATLANT', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4780', 'lux', 'LUXCoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4781', 'onx', 'Onix', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4782', 'ong', 'onG.social', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4783', 'sumo', 'Sumokoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4784', 'eqt', 'EquiTrader', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4785', 'sift', 'Smart Investment Fund Token', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4786', 'qvt', 'Qvolta', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4787', 'esp', 'Espers', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4788', 'hush', 'Hush', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4789', 'pnd', 'Pandacoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4790', 'crave', 'Crave', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4791', 'fcn', 'Fantomcoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4792', 'linx', 'Linx', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4793', 'fyn', 'FundYourselfNow', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4794', 'hyp', 'HyperStake', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4795', 'ufo', 'UFO Coin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4796', 'adc', 'AudioCoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4797', 'gb', 'GoldBlocks', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4798', 'rex', 'REX', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4799', 'adl', 'Adelphoi', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4800', 'zeni', 'Zennies', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4801', 'crypt', 'CryptCoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4803', 'btcz', 'BitcoinZ', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4804', 'zeit', 'Zeitcoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4805', 'fyp', 'FlypMe', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4806', 'wgo', 'WavesGo', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4807', 'gcn', 'GCoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4808', 'ixc', 'Ixcoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4810', 'trct', 'Tracto', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4811', 'xft', 'Footy Cash', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4812', 'erc20', 'ERC20', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4813', 'flik', 'FLiK', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4814', 'btcred', 'Bitcoin Red', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4815', 'opt', 'Opus', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4816', 'mbrs', 'Embers', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4817', 'visio', 'Visio', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4818', 'ella', 'Ellaism', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4819', 'zoi', 'Zoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4820', 'mag', 'Magnet', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4821', 'dgpt', 'DigiPulse', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4822', 'ele', 'Elementrem', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4823', 'alt', 'Altcoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4824', '1337', '1337', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4826', '42', '42-coin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4827', 'uis', 'Unitus', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4828', 'unify', 'Unify', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4829', 'hbt', 'Hubii Network', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4830', 'cbx', 'Crypto Bullion', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4831', 'brit', 'BritCoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4832', 'super', 'SuperCoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4833', 'bta', 'Bata', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4834', 'bbp', 'BiblePay', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4835', 'bwk', 'Bulwark', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4836', 'carbon', 'Carboncoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4837', 'wtt', 'Giga Watt Token', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4838', 'xmcc', 'MonacoCoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4839', 'proc', 'ProCurrency', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4840', 'log', 'Woodcoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4841', 'mrt', 'Miners'' Reward Token', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4842', 'fst', 'Fastcoin', '2017-12-20 11:07:41+00');
INSERT INTO "assets" VALUES ('4843', 'gim', 'Gimli', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4844', 'zet', 'Zetacoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4845', 'prix', 'Privatix', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4846', 'pipl', 'PiplCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4847', 'cdn', 'Canada eCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4848', 'sprts', 'Sprouts', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4849', 'linda', 'Linda', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4850', 'cft', 'CryptoForecast', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4851', 'prl', 'Oyster Pearl', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4853', 'kobo', 'Kobocoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4854', 'jns', 'Janus', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4855', 'pure', 'Pure', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4856', 'itns', 'IntenseCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4857', 'rkc', 'Royal Kingdom Coin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4859', 'dem', 'Deutsche eMark', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4860', 'arc', 'Arcade Token', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('4861', 'dft', 'DraftCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4862', 'inpay', 'InPay', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4863', 'cno', 'Coin(O)', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4864', 'kek', 'KekCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4865', 'nka', 'IncaKoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4866', 'smly', 'SmileyCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4867', 'dnr', 'Denarius', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4868', 'buzz', 'BuzzCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4869', 'grwi', 'Growers International', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4870', 'adz', 'Adzcoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4871', 'btcs', 'Bitcoin Silver', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('4872', 'rain', 'Condensate', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4873', 'nuko', 'Nekonium', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4874', 'ldoge', 'LiteDoge', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4875', 'nobl', 'NobleCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4876', 'btb', 'BitBar', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4877', 'vsx', 'Vsync', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4878', 'icob', 'ICOBID', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4879', 'gre', 'Greencoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4880', 'xios', 'Xios', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4881', 'colx', 'ColossusCoinXT', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4882', 'uny', 'Unity Ingot', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4883', 'strc', 'StarCredits', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4884', 'aht', 'Bowhead', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4885', 'mbi', 'Monster Byte', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4886', 'xhi', 'HiCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4887', 'netko', 'Netko', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4888', 'skin', 'SkinCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4889', 'dcy', 'Dinastycoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4891', 'ccrb', 'CryptoCarbon', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4892', 'xjo', 'Joulecoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4893', 'troll', 'Trollcoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4894', 'dsh', 'Dashcoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4895', 'rns', 'Renos', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4896', 'sigt', 'Signatum', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4898', 'fjc', 'FujiCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4899', 'eltcoin', 'ELTCOIN', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4900', 'zer', 'Zero', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4901', 'ats', 'Authorship', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4902', 'epy', 'Emphy', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4903', 'hold', 'Interstellar Holdings', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4904', 'tag', 'TagCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4905', 'ufr', 'Upfiring', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4907', 'crc', 'CrowdCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4908', 'pfr', 'Payfair', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4909', 'rlt', 'RouletteToken', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4910', 'moin', 'Moin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4911', 'utc', 'UltraCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4912', 'usnbt', 'NuBits', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4913', 'mzc', 'MazaCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4914', 'tkr', 'CryptoInsight', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4915', 'bitbtc', 'bitBTC', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4916', 'lcp', 'Litecoin Plus', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4917', 'ebch', 'eBitcoinCash', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4918', 'blockpay', 'BlockPay', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4919', 'hbn', 'HoboNickels', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4920', 'insn', 'InsaneCoin', '2017-12-20 11:07:42+00');
INSERT INTO "assets" VALUES ('4921', 'bro', 'Bitradio', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4922', 'pxc', 'Phoenixcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4923', 'hero', 'Sovereign Hero', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4924', 'smc', 'SmartCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4925', 'xcpo', 'Copico', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4926', 'j', 'Joincoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4927', 'crm', 'Cream', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4928', 'xgox', 'XGOX', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4929', 'ebet', 'EthBet', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4930', 'max', 'MaxCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4931', 'tes', 'TeslaCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4932', 'pos', 'PoSToken', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4933', 'dp', 'DigitalPrice', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4934', 'hpc', 'Happycoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4935', 'bbt', 'BitBoost', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4936', 'nto', 'Fujinto', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4937', 'zzc', 'ZoZoCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4938', 'bigup', 'BigUp', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4939', 'altcom', 'AltCommunity Coin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4940', 'ltb', 'LiteBar', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4941', 'emb', 'EmberCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4942', 'tit', 'Titcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4943', 'otx', 'Octanox', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4944', 'fc2', 'FuelCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4945', 'lot', 'LottoCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4946', 'funk', 'The Cypherfunks', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4947', 'atom', 'Atomic Coin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4948', 'fnc', 'FinCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4949', 'xpd', 'PetroDollar', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4950', 'units', 'GameUnits', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4951', 'vlt', 'Veltor', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4952', 'trump', 'TrumpCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4953', 'acc', 'AdCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('4955', 'dgc', 'Digitalcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4956', 'mne', 'Minereum', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4957', 'pop', 'PopularCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4958', 'ccn', 'CannaCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4959', 'hat', 'Hawala.Today', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4960', 'bria', 'BriaCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4961', 'newb', 'Newbium', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4962', 'btcr', 'Bitcurrency', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4963', 'crx', 'Chronos', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4964', 'bcf', 'Bitcoin Fast', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4965', 'zur', 'Zurcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4966', 'pak', 'Pakcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4967', 'pho', 'Photon', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4968', 'fuck', 'FuckToken', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4969', 'btwty', 'Bit20', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4970', 'bucks', 'SwagBucks', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4971', 'iflt', 'InflationCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4972', 'cfd', 'Confido', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4973', 'ieth', 'iEthereum', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4974', 'tri', 'Triangles', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4975', 'cco', 'Ccore', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4976', 'bern', 'BERNcash', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4977', 'el', 'Elcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4978', 'piggy', 'Piggycoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4979', 'xlc', 'LeviarCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4980', 'xptx', 'PlatinumBAR', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4981', 'etg', 'Ethereum Gold', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4982', 'pasl', 'Pascal Lite', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4983', 'bun', 'BunnyCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4984', 'bxt', 'BitTokens', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4985', 'gpl', 'Gold Pressed Latinum', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4986', 'jet', 'Jetcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4987', 'kush', 'KushCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4988', 'red', 'RedCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4989', 'ddf', 'DigitalDevelopersFund', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4990', 'slg', 'Sterlingcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4991', 'tycho', 'Tychocoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4992', 'iti', 'iTicoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4993', 'whl', 'WhaleCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4994', 'grim', 'Grimcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4995', 'hodl', 'HOdlcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4996', 'e4row', 'E4ROW', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4997', 'ent', 'Eternity', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4998', 'lana', 'LanaCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('4999', 'boli', 'Bolivarcoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('5000', 'bsty', 'GlobalBoost-Y', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('5001', 'eco', 'EcoCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('5002', 'ecash', 'Ethereum Cash', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('5003', 'sac', 'SACoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('5004', 'eagle', 'EagleCoin', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('5005', 'xbl', 'Billionaire Token', '2017-12-20 11:07:43+00');
INSERT INTO "assets" VALUES ('5006', '4chn', 'ChanCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5007', 'blas', 'BlakeStar', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5008', 'saga', 'SagaCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5009', 'pr', 'Prototanium', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5010', 'bln', 'Bolenum', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5011', 'hnc', 'Huncoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5012', 'post', 'PostCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5013', 'xpy', 'PayCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5014', 'dalc', 'Dalecoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5016', 'qcn', 'QuazarCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5017', 'meow', 'Kittehcoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5018', 'ethd', 'Ethereum Dark', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5019', 'sdrn', 'Senderon', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5020', 'emd', 'Emerald Crypto', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5021', 'bumba', 'BumbaCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5022', 'xra', 'Ratecoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5023', 'ttc', 'TittieCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5024', 'gp', 'GoldPieces', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5025', 'mnc', 'MantraCoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5026', 'space', 'SpaceCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5027', 'zcg', 'ZCash Gold', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5028', 'evo', 'Evotion', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5029', 'cmpco', 'CampusCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5030', 'xvp', 'Virtacoinplus', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5031', 'ari', 'Aricoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5032', '808', '808Coin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5033', '888', 'OctoCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5034', 'grt', 'Grantcoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5035', 'cj', 'Cryptojacks', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5036', 'roc', 'Rasputin Online Coin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5037', 'xct', 'C-Bit', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5038', 'qtl', 'Quatloo', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5039', 'eot', 'EOT Token', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5040', 'sgr', 'Sugar Exchange', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5041', 'usde', 'USDe', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5042', 'drxne', 'DROXNE', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5043', 'src', 'SecureCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5044', 'btpl', 'Bitcoin Planet', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5045', 'bost', 'BoostCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5046', 'coal', 'BitCoal', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5047', 'mut', 'Mutual Coin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5048', 'drs', 'Digital Rupees', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5049', 'xcxt', 'CoinonatX', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5050', 'cach', 'CacheCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5051', 'tek', 'TEKcoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5052', 'imx', 'Impact', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5053', 'hxx', 'Hexx', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5054', 'score', 'Scorecoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5055', 'rbx', 'Ripto Bux', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5056', 'gpu', 'GPU Coin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5057', 'cmt', 'CyberMiles', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5058', 'aerm', 'Aerium', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5059', 'bas', 'BitAsean', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5060', 'vuc', 'Virta Unique Coin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5061', 'prc', 'PRCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5062', 'bitgold', 'bitGold', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5063', 'ltcr', 'Litecred', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5064', 'biteur', 'bitEUR', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5065', 'corg', 'CorgiCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5066', '611', 'SixEleven', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5067', 'func', 'FUNCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5068', 'arg', 'Argentum', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5069', 'kayi', 'Kayicoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5070', 'glt', 'GlobalToken', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5071', 'monk', 'Monkey Project', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5072', 'vot', 'VoteCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5073', 'gtc', 'Global Tour Coin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5074', 'luna', 'Luna Coin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5075', 'rupx', 'Rupaya [OLD]', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5076', '300', '300 Token', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5077', 'acp', 'AnarchistsPrime', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5078', '$$$', 'Money', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5079', 'cpn', 'CompuCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5080', 'ltcu', 'LiteCoin Ultra', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5081', 'kurt', 'Kurrent', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5082', 'cxt', 'Coinonat', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5083', 'asafe2', 'AllSafe', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5084', 'bip', 'BipCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5085', 'ree', 'ReeCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5086', 'xco', 'X-Coin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5087', 'spt', 'Spots', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5088', 'itz', 'Interzone', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5089', 'brat', 'BROTHER', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5090', 'crdnc', 'Credence Coin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5091', 'icon', 'Iconic', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5092', 'women', 'WomenCoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5093', 'ery', 'Eryllium', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5094', 'js', 'JavaScript Token', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5095', 'lbtc', 'LiteBitcoin', '2017-12-20 11:07:44+00');
INSERT INTO "assets" VALUES ('5096', 'nanox', 'Project-X', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5097', 'krone', 'Kronecoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5098', 'rbt', 'Rimbit', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5099', 'ponzi', 'PonziCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5100', 'mscn', 'Master Swiscoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5101', 'wbb', 'Wild Beast Block', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5102', 'bnx', 'BnrtxCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5103', 'vrs', 'Veros', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5104', 'zyd', 'Zayedcoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5105', 'xcs', 'CybCSec', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5106', 'sfc', 'Solarflarecoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5107', 'jobs', 'JobsCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5108', 'creva', 'CrevaCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5109', 'argus', 'Argus', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5110', 'lvps', 'LevoPlus', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5111', 'fraz', 'Frazcoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5112', 'gsr', 'GeyserCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5113', 'hmc', 'HarmonyCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5114', 'ecn', 'E-coin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5115', 'stcn', 'Stakecoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5116', 'xc', 'XCurrency', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5117', 'pgl', 'Prospectors Gold', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5118', 'fimk', 'FIMKrypto', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5119', 'b@', 'Bankcoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5120', 'rustbits', 'Rustbits', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5121', 'icoo', 'ICO OpenLedger', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5122', 'yash', 'YashCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5123', 'rc', 'RussiaCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5125', 'orb', 'Orbitcoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5126', 'htc', 'HitCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5127', 'shorty', 'Shorty', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5128', 'etbs', 'Ethbits', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5129', 'metal', 'MetalCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5130', 'lnk', 'Link Platform', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5131', 'emv', 'Ethereum Movie Venture', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5132', 'itt', 'Intelligent Trading Tech', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5134', 'cv2', 'Colossuscoin V2', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5135', 'casino', 'Casino', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5136', 'btsr', 'BTSR', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5137', 'unic', 'UniCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5138', 'v', 'Version', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5139', 'val', 'Valorbit', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5140', 'mac', 'Machinecoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5141', 'opal', 'Opal', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5142', 'i0c', 'I0Coin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5143', 'mao', 'Mao Zedong', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5144', 'sts', 'Stress', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5145', 'gaia', 'GAIA', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5146', 'flt', 'FlutterCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5147', '8bit', '8Bit', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5148', 'riya', 'Etheriya', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5149', 'talk', 'BTCtalkcoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5150', 'klc', 'KiloCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5151', 'way', 'WayGuide', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5152', 'daxx', 'DaxxCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5153', 'bpc', 'Bitpark Coin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5154', 'nyan', 'Nyancoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5155', 'ohm', 'OHM', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5156', 'uni', 'Universe', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5157', 'au', 'AurumCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5158', 'xgr', 'GoldReserve', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5159', 'spex', 'SproutsExtreme', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5160', 'urc', 'Unrealcoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5161', 'bits', 'Bitstar', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5162', 'gun', 'Guncoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5163', 'frc', 'Freicoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5164', 'fly', 'Flycoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5165', 'chess', 'ChessCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5166', 'sh', 'Shilling', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5167', 'good', 'Goodomy', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5168', 'q2c', 'QubitCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5169', 'c2', 'Coin2.1', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5170', 'cube', 'DigiCube', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5171', 'stv', 'Sativacoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5172', 'trk', 'Truckcoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5173', 'glc', 'GlobalCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5174', 'swing', 'Swing', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5175', 'mrja', 'GanjaCoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5176', 'tgc', 'Tigercoin', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5177', 'shdw', 'Shadow Token', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5179', 'usc', 'Ultimate Secure Cash', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5180', 'hal', 'Halcyon', '2017-12-20 11:07:45+00');
INSERT INTO "assets" VALUES ('5181', 'amber', 'AmberCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5182', 'bitsilver', 'bitSilver', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5183', 'cnnc', 'Cannation', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5184', 'mad', 'SatoshiMadness', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5185', 'wyv', 'Wyvern', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5186', 'xbtc21', 'Bitcoin 21', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5187', 'vidz', 'PureVidz', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5188', 'wmc', 'WMCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5189', 'cyp', 'Cypher', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5190', 'phs', 'Philosopher Stones', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5191', 'ked', 'Darsek', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5192', 'gap', 'Gapcoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5193', 'mojo', 'MojoCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5194', 'evil', 'Evil Coin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5195', 'rbies', 'Rubies', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5196', 'px', 'PX', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5197', 'acoin', 'Acoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5198', 'xcre', 'Creatio', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5199', 'frk', 'Franko', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5200', 'blc', 'Blakecoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5201', 'mcrn', 'MACRON', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5202', 'mnm', 'Mineum', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5203', 'arco', 'AquariusCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5204', 'yac', 'Yacoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5205', 'hmp', 'HempCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5206', 'lea', 'LeaCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5207', 'isl', 'IslaCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5208', 'all', 'Allion', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5209', 'fire', 'Firecoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5210', 'dlc', 'Dollarcoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5211', 'duo', 'ParallelCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5212', 'ims', 'Independent Money System', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5213', 'taj', 'TajCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5214', 'vec2', 'VectorAI', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5215', 'con', 'PayCon', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5216', 'bitz', 'Bitz', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5217', 'ice', 'iDice', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5218', 'euc', 'Eurocoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5219', 'rpc', 'RonPaulCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5220', 'mars', 'Marscoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5221', 'tse', 'Tattoocoin (Standard Edition)', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5222', 'cf', 'Californium', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5223', 'sling', 'Sling', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5224', 'pxi', 'Prime-XI', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5225', 'uro', 'Uro', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5226', 'anti', 'AntiBitcoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5227', 'dbtc', 'Debitcoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5228', 'xre', 'RevolverCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5229', 'mtlmc3', 'Metal Music Coin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5230', 'soon', 'SoonCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5231', 'neva', 'NevaCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5232', 'jin', 'Jin Coin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5233', 'blz', 'BlazeCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5234', 'scrt', 'SecretCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5236', 'mnd', 'MindCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5237', 'mst', 'MustangCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5238', 'honey', 'Honey', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5239', 'mar', 'Marijuanacoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5240', 'egas', 'ETHGAS', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5241', 'bstar', 'Blackstar', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5242', 'slm', 'Slimcoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5243', 'jwl', 'Jewels', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5244', 'bvc', 'BeaverCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5245', 'cto', 'Crypto', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5246', 'zmc', 'ZetaMicron', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5247', 'vc', 'VirtualCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5248', 'emp', 'EMoneyPower', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5249', 'blry', 'BillaryCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5250', 'drm', 'Dreamcoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5251', 'soil', 'SOILcoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5252', 'ammo', 'Ammo Rewards', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5253', 'may', 'Theresa May Coin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5254', 'warp', 'WARP', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5255', 'song', 'SongCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5256', 'kic', 'KibiCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5257', 'vip', 'VIP Tokens', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5258', 'exn', 'ExchangeN', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5259', 'prx', 'Printerium', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5260', 'xbts', 'Beatcoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5261', 'nro', 'Neuro', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5262', 'tor', 'Torcoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5263', 'off', 'Cthulhu Offerings', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5264', 'atx', 'Artex Coin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5265', 'pulse', 'Pulse', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5266', 'cwxt', 'CryptoWorldX Token', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5267', 'orly', 'Orlycoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5268', 'bsc', 'BowsCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5269', 'btq', 'BitQuark', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5270', 'crt', 'CRTCoin', '2017-12-20 11:07:46+00');
INSERT INTO "assets" VALUES ('5271', 'adcn', 'Asiadigicoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5272', 'benji', 'BenjiRolls', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5273', 'fuzz', 'FuzzBalls', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5274', 'plnc', 'PLNcoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5275', 'flvr', 'FlavorCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5276', 'dibc', 'DIBCOIN', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5277', 'cage', 'CageCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5278', 'ereal', 'eREAL', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5279', 'steps', 'Steps', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5280', 'fxe', 'FuturXe', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5281', 'ego', 'EGO', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5282', 'des', 'Destiny', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5283', 'flax', 'Flaxscript', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5284', 'imps', 'ImpulseCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5285', 'slevin', 'Slevin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5286', 'milo', 'MiloCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5287', 'os76', 'OsmiumCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5288', 'cash', 'Cash Poker Pro', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5289', 'arb', 'ARbit', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5290', 'pex', 'PosEx', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5291', 'pie', 'PIECoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5292', 'cnc', 'CHNCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5293', 'dix', 'Dix Asset', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5294', 'boat', 'BOAT', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5295', 'vprc', 'VapersCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5296', 'tagr', 'TAGRcoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5297', 'dpay', 'DPAY', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5298', 'vltc', 'Vault Coin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5299', 'dollar', 'Dollar Online', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5300', 'worm', 'HealthyWormCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5301', 'uet', 'Useless Ethereum Token', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5302', 'qbk', 'Qibuck Asset', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5303', 'lir', 'LetItRide', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5304', 'ntwk', 'Network Token', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5305', 'gbt', 'GameBet Coin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5306', 'placo', 'PlayerCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5307', 'bios', 'BiosCrypto', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5308', 'ride', 'Ride My Car', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5309', 'dlisk', 'DAPPSTER', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5310', 'g3n', 'G3N', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5311', 'token', 'SwapToken', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5312', 'zne', 'Zonecoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5313', 'sdp', 'SydPak', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5315', 'mtm', 'MTMGaming', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5316', 'biob', 'BioBar', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5317', 'hvco', 'High Voltage', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5318', 'aglc', 'AgrolifeCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5319', 'brain', 'Braincoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5320', 'altc', 'Antilitecoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5321', 'cesc', 'CryptoEscudo', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5322', 'scs', 'Speedcash', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5323', 'roofs', 'Roofs', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5324', 'crtm', 'Corethum', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5325', 'env', 'Environ', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5326', 'rsgp', 'RSGPcoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5327', 'ibank', 'iBank', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5328', 'slfi', 'Selfiecoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5329', 'socc', 'SocialCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5330', 'geert', 'GeertCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5331', 'xrc', 'Rawcoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5332', 'xoc', 'Xonecoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5333', 'vta', 'Virtacoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5334', 'els', 'Elysium', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5335', 'mgm', 'Magnum', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5336', 'volt', 'Bitvolt', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5337', 'ccm100', 'CCMiner', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5338', 'gbc', 'GBCGoldCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5339', 'p7c', 'P7Coin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5340', 'das', 'DAS', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5341', 'cab', 'Cabbage', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5342', 'coxst', 'CoExistCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5343', 'ocean', 'BurstOcean', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5344', 'mrng', 'MorningStar', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5345', 'sandg', 'Save and Gain', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5346', 'lex', 'Lex4All', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5347', 'ctic2', 'Coimatic 2.0', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5348', 'nodc', 'NodeCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5349', 'ebt', 'Ebittree Coin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5350', 'soj', 'Sojourn', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5351', 'conx', 'Concoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5352', 'xng', 'Enigma', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5353', 'ula', 'Ulatech', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5354', 'trade', 'Tradecoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5355', 'pizza', 'PizzaCoin', '2017-12-20 11:07:47+00');
INSERT INTO "assets" VALUES ('5356', 'wbc', 'WalletBuildersCoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5357', 'tstr', 'Tristar Coin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5358', 'dgcs', 'Digital Credits', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5359', 'abn', 'Abncoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5361', 'dmb', 'Digital Money Bits', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5362', 'calc', 'CaliphCoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5363', 'fal', 'Falcoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5364', 'fdc', 'Future Digital Currency', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5365', 'apw', 'AppleCoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5366', 'atmc', 'ATMCoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5367', 'icx', 'ICON', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5368', 'smt', 'SmartMesh', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5369', 'ost', 'Simple Token', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5370', 'bcd', 'Bitcoin Diamond [Futures]', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5371', 'gto', 'Gifto', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5373', 'bcx', 'BitcoinX [Futures]', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5375', 'b2x', 'SegWit2x [Futures]', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5376', 'ai', 'POLY AI', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5377', 'cms', 'COMSA [XEM]', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5378', 'gnx', 'Genaro Network', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5379', 'sbtc', 'Super Bitcoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5382', 'itc', 'IoT Chain', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5383', 'frgc', 'Fargocoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5385', 'inf', 'InfChain', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5387', 'tsl', 'Energo', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5388', 'mds', 'MediShares', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5389', 'orme', 'Ormeus Coin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5390', 'rec', 'Regalcoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5391', 'hwc', 'HollyWoodCoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5393', 'llt', 'LLToken', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5394', 'wc', 'WINCOIN', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5395', 'amm', 'MicroMoney', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5396', 'mkr', 'Maker', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5397', 'fil', 'Filecoin [Futures - 6 Month]', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5398', 'bte', 'BitSerial', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5399', 'grx', 'GOLD Reward Token', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5400', 'qbt', 'Cubits', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5401', 'ugt', 'UG Token', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5402', 'btu', 'Bitcoin Unlimited (Futures)', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5403', 'stc', 'Santa Coin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5404', 'viu', 'Viuly', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5405', 'btca', 'Bitair', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5406', 'xin', 'Infinity Economics', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5407', 'ubtc', 'United Bitcoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5408', 'xid', 'International Diamond', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5409', 'mavro', 'Mavro', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5410', 'wrc', 'Worldcore', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5411', 'sbc', 'StrikeBitClub', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5412', 'cred', 'Verify', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5414', 'tok', 'Tokugawa', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5415', 'ths', 'TechShares', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5416', 'capp', 'Cappasity', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5417', 'bsr', 'BitSoar', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5418', 'zengold', 'ZenGold', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5420', 'loc', 'LockChain', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5421', 'dav', 'DavorCoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5422', 'vash', 'VPNCoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5423', 'shnd', 'StrongHands', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5424', 'dsr', 'Desire', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5425', 'bcdn', 'BlockCDN', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5426', 'send', 'Social Send', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5427', 'b3', 'B3Coin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5428', 'eag', 'EA Coin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5429', 'uqc', 'Uquid Coin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5430', 'snov', 'Snovio', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5431', 'ero', 'Eroscoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5432', 'bos', 'BOScoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5433', 'kbr', 'Kubera Coin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5434', 'btcm', 'BTCMoon', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5435', 'deus', 'DeusCoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5436', 'ryz', 'ANRYZE', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5437', 'ltg', 'LiteCoin Gold', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5438', 'pcoin', 'Pioneer Coin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5439', 'msd', 'MSD', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5440', 'evr', 'Everus', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5441', 'elite', 'Ethereum Lite', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5442', 'pkt', 'Playkey', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5443', 'neog', 'NEO GOLD', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5444', 'dfs', 'DFSCoin', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5445', 'ytn', 'YENTEN', '2017-12-20 11:07:48+00');
INSERT INTO "assets" VALUES ('5446', 'ifc', 'Infinitecoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5447', 'aky', 'Akuya Coin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5448', 'frwc', 'FrankyWillCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5449', 'cmp', 'Compcoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5450', 'mgc', 'GulfCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5451', 'sigma', 'SIGMAcoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5452', 'tcoin', 'T-coin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5453', 'nbit', 'netBit', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5454', 'trdt', 'Trident Group', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5455', 'for', 'FORCE', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5456', 'sisa', 'SISA', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5457', 'wild', 'Wild Crypto', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5458', 'gls', 'GlassCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5459', 'dutch', 'Dutch Coin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5460', 'snd', 'Sand Coin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5461', 'stu', 'bitJob', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5462', 'pnx', 'Phantomx', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5463', 'btc2x', 'Bitcoin2x', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5464', 'zbc', 'Zilbercoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5465', 'plx', 'PlexCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5466', 'tria', 'Triaconta', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5467', 'cor', 'CORION', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5468', 'aib', 'Advanced Internet Blocks', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5469', 'topaz', 'Topaz Coin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5470', 'mci', 'Musiconomi', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5471', 'mcr', 'Macro', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5472', 'ignis', 'Ignis [Futures]', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5473', 'evc', 'EventChain', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5474', 'sur', 'Suretly', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5475', 'plc', 'PlusCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5476', 'ocow', 'OCOW', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5477', 'edrc', 'EDRCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5478', 'coupe', 'Coupecoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5479', 'pec', 'Peacecoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5480', 'high', 'High Gain', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5481', 'hdlb', 'HODL Bucks', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5482', 'best', 'BestChain', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5483', 'dbg', 'Digital Bullion Gold', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5484', 'stex', 'STEX', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5486', 'india', 'India Coin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5487', 'wic', 'Wi Coin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5489', 'moto', 'Motocoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5491', 'cheap', 'Cheapcoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5492', 'tie', 'TIES Network', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5493', 'hytv', 'Hyper TV', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5494', 'flash', 'Flash', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5495', 'ibtc', 'iBTC', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5496', 'abc', 'Alphabit', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5497', 'day', 'Chronologic', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5499', 'ter', 'TerraNova', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5500', 'namo', 'NamoCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5501', 'iqt', 'iQuant', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5502', 'prm', 'PrismChain', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5503', 'fudd', 'DimonCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5504', 'exrn', 'EXRNchain', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5506', 'btbc', 'Bitbase', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5507', 'grn', 'Granite', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5508', 'uahpay', 'UAHPay', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5509', 'sha', 'SHACoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5510', 'blx', 'Blockchain Index', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5511', 'pcs', 'Pabyosi Coin (Special)', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5512', 'dmc', 'DynamicCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5513', 'skr', 'Sakuracoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5514', 'tesla', 'TeslaCoilCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5515', 'flap', 'FlappyCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5516', 'gay', 'GAY Money', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5517', 'xot', 'Internet of Things', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5518', 'vulc', 'Vulcano', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5519', 'irl', 'IrishCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5520', 'swp', 'Swapcoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5522', 'acn', 'Avoncoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5525', 'marx', 'MarxCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5526', 'ntc', 'Natcoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5527', 'xry', 'Royalties', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5528', 'zse', 'ZSEcoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5529', 'ams', 'AmsterdamCoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5530', 'ox', 'OX Fina', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5531', 'ctic3', 'Coimatic 3.0', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5532', 'wow', 'Wowcoin', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5533', 'tell', 'Tellurion', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5534', 'wa', 'WA Space', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5535', 'gbrc', 'Global Business Revolution', '2017-12-20 11:07:49+00');
INSERT INTO "assets" VALUES ('5536', 'don', 'Donationcoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5537', 'apc', 'AlpaCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5538', 'egg', 'EggCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5539', 'cme', 'Cashme', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5540', 'xqn', 'Quotient', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5541', 'skull', 'Pirate Blocks', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5543', '9coin', '9COIN', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5544', 'bub', 'Bubble', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5545', 'fc', 'Facecoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5546', 'rbbt', 'RabbitCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5547', 'top', 'TopCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5548', 'cbd', 'CBD Crystals', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5549', 'primu', 'Primulon', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5550', 'hallo', 'Halloween Coin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5551', 'rubit', 'RubleBit', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5552', 'ipy', 'Infinity Pay', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5553', 'lepen', 'LePen', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5554', 'lkc', 'LinkedCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5555', 'sak', 'Sharkcoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5556', 'omc', 'Omicron', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5557', 'blazr', 'BlazerCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5558', 'fonz', 'Fonziecoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5559', 'stars', 'StarCash Network', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5560', 'unrc', 'UniversalRoyalCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5561', 'frn', 'Francs', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5562', 'gmx', 'GoldMaxCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5563', 'aces', 'Aces', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5564', 'eusd', 'eUSD', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5565', 'laz', 'Lazaruscoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5566', 'bsn', 'Bastonet', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5567', 'karma', 'Karmacoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5568', 'runners', 'Runners', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5569', 'ebit', 'eBIT', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5570', 'snake', 'SnakeEyes', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5572', 'qora', 'Qora', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5573', 'xtd', 'XTD Coin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5574', 'ur', 'UR', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5575', 'minex', 'Minex', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5576', 'bgr', 'Bongger', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5577', 'ldcn', 'LandCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5578', 'magn', 'Magnetcoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5579', 'today', 'TodayCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5580', 'bit', 'First Bitcoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5581', 'cyc', 'Cycling Coin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5582', 'unc', 'UNCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5583', 'hyper', 'Hyper', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5584', 'prn', 'Protean', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5585', 'tcr', 'TheCreed', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5588', 'wsx', 'WeAreSatoshi', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5589', 'cyder', 'Cyder', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5590', 'skc', 'Skeincoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5591', 'rhfc', 'RHFCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5592', 'fazz', 'Fazzcoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5593', 'axiom', 'Axiom', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5594', 'sfe', 'SafeCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5595', 'trick', 'TrickyCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5596', 'rega', 'Regacoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5597', 'futc', 'FutCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5598', 'pres', 'President Trump', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5599', 'sport', 'SportsCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5600', 'ani', 'Animecoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5601', 'fap', 'FAPcoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5602', 'xve', 'The Vegan Initiative', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5603', 'hcc', 'Happy Creator Coin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5604', 'bitcf', 'First Bitcoin Capital', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5605', 'egold', 'eGold', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5606', 'voya', 'Voyacoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5607', 'qbc', 'Quebecoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5608', 'fbl', 'Faceblock', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5609', 'cc', 'CyberCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5610', 'wink', 'Wink', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5611', 'guc', 'GoldUnionCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5612', 'pcn', 'PeepCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5613', 'turbo', 'TurboCoin', '2017-12-20 11:07:50+00');
INSERT INTO "assets" VALUES ('5614', 'av', 'AvatarCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5615', 'antx', 'Antimatter', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5616', 'elc', 'Elacoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5617', 'dashs', 'Dashs', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5618', 'moneta', 'Moneta', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5619', 'gml', 'GameLeagueCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5620', 'bitok', 'Bitok', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5621', 'poke', 'PokeCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5622', 'mmxvi', 'MMXVI', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5623', 'eltc2', 'eLTC', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5624', 'birds', 'Birds', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5625', 'asn', 'Aseancoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5626', 'disk', 'DarkLisk', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5627', 'yes', 'Yescoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5628', 'bxc', 'Bitcedi', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5629', 'payp', 'PayPeer', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5630', 'dcre', 'DeltaCredits', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5631', 'mbl', 'MobileCash', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5632', 'uta', 'UtaCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5633', 'x2', 'X2', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5634', 'royal', 'RoyalCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5635', '10mt', '10M Token', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5636', 'nbe', 'BitCentavo', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5637', 'lth', 'LAthaan', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5638', 'ffc', 'FireFlyCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5639', 'richx', 'RichCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5640', 'tera', 'TeraCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5641', 'vgc', 'VegasCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5642', 'sync', 'Sync', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5644', 'xau', 'Xaucoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5645', 'shell', 'ShellCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5646', 'dub', 'Dubstep', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5647', 'ivz', 'InvisibleCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5648', 'opes', 'Opescoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5649', 'bac', 'BitAlphaCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5650', 'safex', 'Safe Exchange Coin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5651', 'psy', 'Psilocybin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5652', 'op', 'Operand', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5653', 'clint', 'Clinton', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5654', 'gain', 'UGAIN', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5655', 'gary', 'President Johnson', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5656', 'golf', 'Golfcoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5657', 'team', 'TeamUp', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5658', 'money', 'MoneyCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5659', 'xstc', 'Safe Trade Coin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5660', 'pdg', 'PinkDog', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5661', 'kashh', 'KashhCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5662', 'xde2', 'XDE II', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5663', 'bixc', 'BIXC', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5664', 'tle', 'Tattoocoin (Limited Edition)', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5665', 'tyc', 'Tyrocoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5666', 'pi', 'PiCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5667', 'adk', 'Aidos Kuneen', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5668', 'men', 'PeopleCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5669', 'fid', 'BITFID', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5670', 'bccs', 'BitcoinCashScrypt', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5671', 'yel', 'Yellow Token', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5672', 'mage', 'MagicCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5673', 'xylo', 'XYLO', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5674', 'csc', 'CasinoCoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5675', 'wec', 'Wowecoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5676', 'sic', 'Swisscoin', '2017-12-20 11:07:51+00');
INSERT INTO "assets" VALUES ('5677', 'edoge', 'EtherDoge', '2017-12-20 11:07:51+00');
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
"time" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of pairs
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
CREATE OR REPLACE FUNCTION "get_pair_id"("key1" varchar, "key2" varchar)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
  _id pairs.id%TYPE;
  _name1 assets.name%TYPE;
  _name2 assets.name%TYPE;
BEGIN

--LOCK TABLE statistics_cities IN EXCLUSIVE MODE;
	select "id" into _id from pairs where "base_key" = COALESCE(key1, 'Undefined') AND "quote_key" = COALESCE(key2, 'Undefined');
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

		insert into pairs("base_name","base_key","quote_name","quote_key","time") 
								values (_name1, COALESCE(key1, 'Undefined'),_name2, COALESCE(key2, 'Undefined'), to_timestamp(0)) RETURNING "id" into _id;
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
