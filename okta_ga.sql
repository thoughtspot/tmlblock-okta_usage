--- Create Table 

create database OKTA;

create or replace table "OKTA"."PUBLIC"."SYSLOG" (
"severity" STRING,
"event_type" STRING,
"display_message" STRING,
"uuid" STRING,
"version" STRING,
"timestamp" DATETIME,
"outcome.result" STRING,
"outcome.reason" STRING,
"actor.id" STRING,
"actor.type" STRING,
"actor.display_name" STRING,
"actor.alternate_id" STRING,
"authentication_context.authentication_step" STRING,
"authentication_context.authentication_provider" STRING,
"authentication_context.credential_provider" STRING,
"authentication_context.credential_type" STRING,
"authentication_context.issuer" STRING,
"authentication_context.external_session_id" STRING,
"client.zone" STRING,
"client.ip_address" STRING,
"client.device" STRING,
"client.user_agent.raw_user_agent" STRING,
"client.user_agent.os" STRING,
"client.user_agent.browser" STRING,
"client.geographical_context.country" STRING,
"client.geographical_context.city" STRING,
"client.geographical_context.postal_code" STRING,
"client.geographical_context.geolocation.lon" STRING,
"client.geographical_context.geolocation.lat" STRING,
"transaction.id" STRING,
"transaction.type" STRING,
"debug_context.debug_data.request_uri" STRING,
"legacy_event_type" STRING,
"target0.id" STRING,
"target0.type" STRING,
"target0.alternate_id" STRING,
"target0.display_name" STRING,
"target1.id" STRING,
"target1.type" STRING,
"target1.alternate_id" STRING,
"target1.display_name" STRING,
"target2.id" STRING,
"target2.type" STRING,
"target2.alternate_id" STRING,
"target2.display_name" STRING,
"target3.id" STRING,
"target3.type" STRING,
"target3.alternate_id" STRING,
"target3.display_name" STRING,
"request.ip_chain.geographical_context.postal_code" STRING,
"request.ip_chain.geographical_context.geolocation.lon" STRING,
"request.ip_chain.geographical_context.geolocation.lat" STRING,
"request.ip_chain.geographical_context.geolocation.state" STRING,
"request.ip_chain.ip" STRING,
"request.ip_chain.source" STRING,
"request.ip_chain.version" STRING
);

	
--- Load Okta csa via snowsql


PUT file:///Users/damian.waldron/TS_Data/okta/syslog_query.csv @%SYSLOG;
;

list @%SYSLOG;
remove @%SYSLOG;

copy into "OKTA"."PUBLIC"."SYSLOG" file_format = (
TYPE = 'CSV' 
COMPRESSION = 'AUTO' 
FIELD_DELIMITER = ',' 
RECORD_DELIMITER = '\n' 
SKIP_HEADER = 1 
FIELD_OPTIONALLY_ENCLOSED_BY = '\042' 
TRIM_SPACE = TRUE 
ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE 
ESCAPE = 'NONE' 
ESCAPE_UNENCLOSED_FIELD = '\134' 
DATE_FORMAT = 'AUTO' 
TIMESTAMP_FORMAT = 'AUTO' 
NULL_IF = ('\\N')
);

