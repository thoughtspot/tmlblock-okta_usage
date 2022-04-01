
# Okta
Prebuilt worksheets and liveboard visualizations based on Okta data. Monitor login events and application usuage for your org using Thoughtspot. 

# Artifacts 

### Snowflake DDL 
Snowflake DDL (okta_ga.sql) for creating tables and loading csv via snowsql. 

### Worksheets 
- Okta Sys Log Events Table 

### Liveboards
- Okta Login History 
- Okta Application History 
- Pinboard_Manifest.yaml

# Installation Instructions 

### Datasource 

The Okta Spot is built upon the data sourced as a csv from the System Log UI. This data can also be programmatically sourced via the API.
- [System Log UI](https://help.okta.com/en/prod/Content/Topics/Reports/Reports_SysLog.htm?cshid=ext_Reports_SysLog)
- [System Log API](https://developer.okta.com/docs/reference/api/system-log/)

The Okta System Log records system events that are related to your organization in order to provide an audit trail that can be used to understand platform activity and to diagnose problems.
The Okta System Log API provides near real-time, read-only access to your organization's system log and is the programmatic counterpart of the System Log UI.

### Retrieve and Prep data
- Use the okta_ga.sql DDL script to create the necessary staging table (syslog) in your data warehouse.
- Load your csv data file into the "syslog" table 

### Connect with Thoughtspot and Import TML
- Log into your ThoughtSpot instance and create an Embrace connection to each of the "syslog" table.
- Combine all liveboard TML files into a ZIP file: 
  - pinboard_liveboard.yaml
  - Okta Application Usage.pinboard.tml
  - Okta Login History.pinboard.tml
 
- Import the TML (okta_tmlblocks_worksheet.tml) for the worksheets and verify that it has all been imported without any errors.
- Import the zipped file for the liveboards and verify that it has all been imported without any errors.

# Liveboard Screenshots 

### Okta Login History 
<img width="1200" alt="okta login history" src="https://user-images.githubusercontent.com/102629468/161130359-ec5a2372-1a06-4df3-beaf-95b5646e86ec.png">

### Okta Application History
<img width="1200" alt="okta application usuage" src="https://user-images.githubusercontent.com/102629468/161130389-92c939cf-8228-41eb-ad20-008a8764d267.png">

