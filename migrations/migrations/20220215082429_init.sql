-- migrate:up

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS dbcall_instances (
  id      VARCHAR(100) NOT NULL PRIMARY KEY,
  version UUID NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS dbcall_sync_counter (
  id           VARCHAR(100) NOT NULL PRIMARY KEY,
  sync_counter BIGINT
);

-- migrate:down

DROP TABLE IF EXISTS dbcall_instances;
DROP TABLE IF EXISTS dbcall_sync_counter;
