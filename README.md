docker-oracle-apex
============================

Apex 5.1.2 upgrade package for ashimjk/docker-oracle-12c

### Installation

    docker pull ashimjk/oracle-apex

### Run APEX upgrade on Oracle Database Container:

    # In this case, build would be with default setting and credential
    docker run -it --rm --volumes-from ${DB_CONTAINER_NAME} --link ${DB_CONTAINER_NAME}:oracle-database ashimjk/oracle-apex install

Run with custom parameters and credentials:

    docker run -it --rm --volumes-from ${DB_CONTAINER_NAME} --link ${DB_CONTAINER_NAME}:oracle-database -e PASS=SomePassWorD ashimjk/oracle-apex install

### Default List of ENV variables:

    USER=sys
    PASS=oracle
    HOST=oracle-database
    PORT=1521
    SID=XE
    HTTP_PORT=8080
    oracle_db_name=oracle

> NOTE: Upgrade might take 10-20 Minutes (Depends on hardware).

### Many Thanks To

- [Maksym Bilenko](https://github.com/MaksymBilenko/docker-oracle-apex)
