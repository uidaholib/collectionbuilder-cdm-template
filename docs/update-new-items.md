# Update a collection with new items recently imported into CONTENTdm

> April 2022

## Add objects to CONTENTdm

1. Follow standard procedures to add new objects to CONTENTdm

## Export metadata from CONTENTdm

1. Go to CONTENTdm Administration, click on the "collections" tab
2. Select the collection you're editing from the "Current collection" dropdown, and click the "change" button
3. Click the "Export" link
4. On the "Export metadata" page, make sure that "Tab-delimited" is checked, and check the box underneath that says "Return field names in first record. Leave everything else as it is and click the "next" button.
5. On the "Export successful page, right click the "export.txt" link and select "Save link as". Give the file a name and save it to your computer.

## Import metadata export to Google Sheets

1. In google sheets select "New" > "Google Sheet"
2. In the new sheet, select "File" > "Import" > "Upload" and drag the export.txt file into the Upload box
3. An "Import file" box will pop up. Make sure these values are selected: `Import location: Replace spreadsheet`, `Separator type: Tab`, `Convert text to numbers, dates, and formulas: unchecked`. Then click the "Import data" button.
4. Delete the following columns from the metadata: `Filename`, `Date created`, `Date modified`

## Compare CONTENTdm metadata export to current CollectionBuilder metadata

1. Import the current metadata csv from CollectionBuilder into Google Sheets to edit.
2. In the metadata export file, locate the new objects that you just added. You can do this by looking at where the "cdmid" value ends on the CollectionBuilder metadata and where it picks up on the new export file. Carefully copy over new metadata records from the CONTENTdm export to the CollectionBuilder metadata. You'll need to pay attention to the order of fields. In most cases the order will be almost the same, with a few differences.
3. Take some time to make sure that metadata fields are consistent across new and old items (check type, date, etc.)
4. When you're sure that everything is ready, export the metadata as a CSV from Google Sheets, upload it to CollectionBuilder, and check the site thoroughly one more time before making it live following the usual process of copying it to the server.