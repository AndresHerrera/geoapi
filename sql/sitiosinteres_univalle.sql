SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "sitiosinteres_univalle" (gid serial,
"osm_id" varchar(11),
"timestamp" varchar(20),
"name" varchar(48),
"type" varchar(16));
ALTER TABLE "sitiosinteres_univalle" ADD PRIMARY KEY (gid);
SELECT AddGeometryColumn('','sitiosinteres_univalle','the_geom','4326','POINT',2);
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('687147994','2013-03-17T06:00:04Z','Fundacion','restaurant','0101000020E6100000DDEC0F945B2253C059F734CC75FF0A40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('687148147','2010-04-07T01:21:21Z','Plazoleta de Ingenieria','theatre','0101000020E61000005E6743FE192253C0469561DC0D020B40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('1230848643','2013-03-17T15:53:13Z','Universidad Del Valle - Ciudad Universitaria Mel','university','0101000020E6100000BC02D193322253C0C5724BAB21010B40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('2206266142','2013-03-17T05:53:46Z','FruterÃ­a','greengrocer','0101000020E61000008AC8B08A372253C0983E2AB462FE0A40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('2206891349','2015-09-27T16:55:49Z','Los Guaduales','restaurant','0101000020E61000003FA5EFDA4A2253C0BA11161571FA0A40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('2206904133','2013-03-17T16:08:59Z','CAI, Centro de AlimentaciÃ³n Inmediata','restaurant','0101000020E61000002BE2CF4B202253C0EDBAB72231010B40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('2206916348','2013-03-17T16:08:59Z','Comidas RÃ¡pidas','fast_food','0101000020E61000005BC52CC51F2253C00854A4671F000B40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('2209103955','2013-03-18T22:04:59Z',NULL,'bicycle_parking','0101000020E61000004D28E9062F2253C0F02AB528FDFE0A40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('2209103959','2013-03-18T22:04:59Z',NULL,'bicycle_parking','0101000020E6100000FAC44B81162253C00458E4D70F010B40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('2209103961','2013-03-18T22:04:59Z',NULL,'bicycle_parking','0101000020E61000000A21318B1A2253C00458E4D70F010B40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('2209103963','2013-03-18T22:04:59Z',NULL,'bicycle_parking','0101000020E61000005636621C122253C0AD904D4DDD000B40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('2209103965','2013-03-18T22:04:59Z',NULL,'bicycle_parking','0101000020E6100000FB3BDBA3372253C0C432ECE698020B40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('2555806410','2014-03-27T20:37:20Z','Origami + Art','artwork','0101000020E61000002E3FCB4E1A2253C01E55A8C9E7000B40');
INSERT INTO "sitiosinteres_univalle" ("osm_id","timestamp","name","type",the_geom) VALUES ('2747580099','2014-03-27T20:37:20Z','Alcance@Roa','electronics','0101000020E61000005FFA4D17182253C055940156FD000B40');
COMMIT;
ANALYZE "sitiosinteres_univalle";
