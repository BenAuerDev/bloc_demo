BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "lunch_spot" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "category" text NOT NULL,
    "votes" bigint NOT NULL
);


--
-- MIGRATION VERSION FOR bloc_demo
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('bloc_demo', '20240618094854092', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240618094854092', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
