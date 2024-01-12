FROM mcr.microsoft.com/mssql/server:2022-latest

USER mssql
CMD ["/opt/mssql/bin/sqlservr"]