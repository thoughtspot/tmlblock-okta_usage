
# Okta Application Management SpotApp

SpotApps are ThoughtSpot’s out-of-the-box solution templates built for specific use cases and data sources. They leverage ThoughtSpot Modeling Language (TML) Blocks, which are pre-built pieces of code that are easy to download and implement directly from the product.

The Okta Application Management SpotApp mimics the Okta data model. When deployed, it creates several Worksheets, Answers, and Liveboards based on your Okta data in your cloud data warehouse.

This is a sample Liveboard, created after you deploy the Okta Application Management SpotApp:
![image](https://github.com/thoughtspot/tmlblock-okta_usage/assets/102629468/bd034465-b5c6-46db-9b15-6fc2956dda4f)

Use the Okta Application Management SpotApp to understand login problems and application adoption. Diagnose login problems by tracking login events and platform activity. You can also measure which applications people in your organization use the most.

## Prerequisites

Before you can deploy the Okta Application Management SpotApp, you must complete the following prerequisites:

- **Review Required Data**: Examine the required tables and columns for the SpotApp.
- **Ensure Column Compatibility**: Ensure that your columns match the required column type listed in the schema for your SpotApp.
- **Sync Data**: Synchronize all tables and columns from Okta to your cloud data warehouse. While only specific tables and columns may be required, ThoughtSpot recommends syncing all tables and columns from Okta to ensure comprehensive data availability. This includes Okta’s out-of-the-box columns or any custom columns you are using.
- **Collaborate on Data Movement**: If you are using an ETL/ELT tool or working with another team within your organization, sync all columns from the tables listed in the SpotApp.
- **Obtain Credentials**: Acquire credentials and SYSADMIN privileges to connect to your cloud data warehouse. The warehouse must contain the data ThoughtSpot will use to create Answers, Liveboards, and Worksheets. Refer to the connection reference for your cloud data warehouse for detailed information about required credentials.
- **Unique Connection Name**: Each new SpotApp connection name must be unique.
- **Administrator Access to Okta**: Maintain administrator access to manage Okta resources.
- **Access to Okta Tables**: Ensure access to the following Okta table in your cloud data warehouse:
  - `SYSLOG`

### Run SQL Commands

Execute the necessary SQL commands in your cloud data warehouse to standardize data types and column names. They create 4 views in your cloud data warehouse schema. Modify the code as necessary for your specific cloud data warehouse.

SQL code can be found in the file **okta_ga.sql**

## Deploy the Okta Application Management SpotApp

After you have downloaded the Zip file and verified its contents, follow these steps:

1. Log into your ThoughtSpot instance and create an Embrace connection to all of the relevant views.
2. Import the TML for the worksheets and verify that it has all been imported without any errors.
3. Import the TML for the pinboard and verify that it has all been imported without any errors.
4. You are ready to start searching your Okta data!

For detailed instructions on how to import TML files, refer to the [ThoughtSpot documentation](https://docs.thoughtspot.com/software/latest/tml-import-export-multiple).

# Liveboard Screenshots 

### Okta Login History 
<img width="1200" alt="okta login history" src="https://user-images.githubusercontent.com/102629468/161130359-ec5a2372-1a06-4df3-beaf-95b5646e86ec.png">

### Okta Application History
<img width="1200" alt="okta application usuage" src="https://user-images.githubusercontent.com/102629468/161130389-92c939cf-8228-41eb-ad20-008a8764d267.png">

