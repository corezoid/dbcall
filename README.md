# dbcall

DBCall k8s standalone chart

 
# Install DBCall
`kubectl create namespace dbcall`

`helm upgrade --install dbcall -n dbcall .`

The application independently creates a user, database, tables.  
The app interacts with Corezoid. We recommend using the `PostgreSQL` and `RabbitMQ` database that Corezoid uses (i.e. connect dbcall to existing services)

If you have problems with automatic migration (creating a user, database, tables, migrating to a database), you can perform these actions manually:  
```sql
create role 'POSTGRES_DB_USER' with password 'POSTGRES_DB_PASSWORD' login;
CREATE DATABASE dbcall OWNER 'POSTGRES_DB_USER';
\c dbcall
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE dbcall_instances (
    id      VARCHAR(100) NOT NULL PRIMARY KEY,
    version UUID NOT NULL UNIQUE
);

CREATE TABLE dbcall_sync_counter (
    id           VARCHAR(100) NOT NULL PRIMARY KEY,
    sync_counter BIGINT
);
```


#### Dependencies:
#####Testing on Kubernetes version 1.26 and helm v3
#####Supported stateful versions:
- Postgresql 13.3
- RabbitMQ 3.8/3.9

### SYSTEM REQUIREMENTS:

#### Recommended minimum system requirements for a cluster:
- 2 instances with 2 CPUs and 4GB RAM

#### Recommended system requirements for a PROD cluster:
- 3 instances with 2 CPUs and 4GB RAM