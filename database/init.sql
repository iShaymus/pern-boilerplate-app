-- Create operational and audit schemas
CREATE SCHEMA IF NOT EXISTS ${DB_OPERATIONAL_SCHEMA};
CREATE SCHEMA IF NOT EXISTS ${DB_AUDIT_SCHEMA};

-- Grant the operational schema the ability to write to the audit schema
GRANT ALL ON SCHEMA ${DB_AUDIT_SCHEMA} TO ${DB_OPERATIONAL_SCHEMA};

-- Create the express API user
CREATE USER ${DB_USER} WITH PASSWORD '${DB_PASSWORD}';
-- Grant the express API user the ability to read/write to the operational schema
GRANT USAGE ON SCHEMA ${DB_OPERATIONAL_SCHEMA} TO ${DB_USER};
-- Deny the express API user any access to the audit schema
REVOKE ALL ON SCHEMA ${DB_AUDIT_SCHEMA} FROM ${DB_USER};