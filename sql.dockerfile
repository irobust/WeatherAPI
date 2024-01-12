FROM mcr.microsoft.com/mssql/server:2022-latest

ARG PROJECT_DIR=/usr/src/app/
WORKDIR $PROJECT_DIR
COPY sql/InitializeDatabase.sql ./
COPY sql/entrypoint.sh ./
COPY sql/setup.sh ./

EXPOSE 1433
CMD ["/opt/mssql/bin/sqlservr"]