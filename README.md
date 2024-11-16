# PERN Boilerplate App

This is a boilerplate full stack application.  It is designed to be forked as a starting point to expedite new application development by laying out the core foundations.

Architectural design principles:
 - Immutable Infrastructure - *Servers will never be modified after deployment.  Servers can, and should be destroyed*
 - Environments - *Both client and server are designed to be instantiable using environment variables to allow for DEV, TEST and PROD (or other) environments with no code customisation required*
 - Reverse Proxy (optional) - *Used to allow multiple environments to be hosted on the same IP address.  SSL/TLS will be terminated at the proxy allowing a single certificate to be used for all environments*
 - All API endpoints will:
  - *Follow both REST and OpenAPI design standards*
  - *Be available internally and be designed to be available externally, even if this option is disabled*
  - *Be designed to allow for automatic API documentation to be created*
  - *Be versioned to allow for breaking changes to the data model over time*
 - Data Modelling - *All data models will be designed to allow automated anonymising of data when required, this will be defined at the column level*
 - Data Migrations - *Data will be migratable between PROD, TEST and DEV environments.  Migrations to TEST environments will be automated.  Migrations to DEV environments will be manual.  The anonymising of data between PROD and other environments will be determined by the .env file for each environment or by groups in auth TBC*