# Update collection branches

> major update November 2021

## Update main!

First, always make sure your `main` branch is up-to-date, do a `git pull` on main.

## Select a branch to update

Use the digital_all_collections spreadsheet in AdminCollections google drive folder.
Select a collection that has a value in the `cb_cdm_branch` field.

## Merge main into branch
1. switch to barnch you want to merge into
2. choose a branch to merge into your branch
3. select main
4. accept that there will be conflicting files
## Sort out merge conflicts

Open the project in VS Code.
If you open one of the files with a conflict, you will see the specific conflict areas highlighted, including the old and new content that conflicts. 
VS Code or GitHub Desktop offer tools to try to manage these conflicts, however you might just want to "accept both" and then sort it out manually.
However, I usually start working on the files without the helpers, since in the fairly complicated conflicts you will find in _config.yml and theme.yml they don't really help.
 
Git directly marks the conflicts in the text file by adding a pattern:

- The top of the conflict has `<<<<<<< HEAD` on its own line, followed by the content in the old version of the file. 
- Next you will see a line of `=======`, followed by the content of the new version of the file. 
- Finally closed by `>>>>>>> branch_name`.

These marks are just new normal text characters added to the file to mark the conflicts (any magical buttons around those marks are added by Code or GitHub Desktop and aren't part of Git). 
You could just commit it like that (in which case those marks are just a normal part of the file now) and sort it out later.
I usually just start manually editing the file, and as a final step manually delete the conflict markers. 

Once you sort out the conflicts on a file, on Code's Git menu you can click the plus sign to move the file from "Merge changes" to "Staged changes" so that it is ready to commit.
At that point you can always click on the "Stages changes" to see the git diff visualized, so you can review the changes to make sure they are correct.

current change = customized changes to the branch
incoming change = changes from the main branch

## Delete extra files from _data folder (unless this is actually the metadata for the collection you're working on):
- boxing.csv
- cities.csv
- dworshak.csv
- psychiana.csv

## General

1. Serve the site using the `jekyll s` command.
Do a general overview of the site.
Make sure there are no broken links, images not showing up, etc. (if you see something amiss, fix it!)
Check to see if the map is properly centered and if the word clouds make sense.

## About Pages

If two about pages, check the content of each. The correct about page should be in the pages/ folder. After you've ensured that no information is missing, delete the about.md file at the root of the repository.
Check each about page for content and format, cleaning up and making edits as you see fit.
In particular, keep an eye out for hyperlinked text that says something like "click here."
When you see this, rephrase so that the hyperlinked text describes what it links to, i.e. "For more information, see the [Idaho Forestry Website](https://www.idl.idaho.gov/forestry/)," *not* "To check out the Idaho Forestry Website, [click here](https://www.idl.idaho.gov/forestry/)."

## Library Logos

UI library logos replace the Digital Initiatives logo buttons in the top right on non-home pages, and in the mobile nav.
The links for these buttons no longer trigger the all collections modal.
Instead, they link back to https://www.lib.uidaho.edu/digital/.
Edits to these logos will appear in `collection-banner.html` and `collection-nav.html` files.

## Metadata

### Edit current metadata

1. Import metadata csv into google sheets to edit.
2. Make sure the `date created` field is unique. If there are two `date created` fields, delete one of them.
3. If the `filename` field (or any other field) is empty, delete the column
4. Rename the `reference url` field `cdm_url`
5. Make sure all field names are lowercase (you can wait until you're back in vs code for this and use this shortcut: highlight the first row of fieldnames and select ctrl + shift + p, transform to lowercase)
7. Export the spreadsheet from google sheets as a csv, and upload to the repository, replacing the old metadata spreadsheet.
rightsstatement

theme.yml

### Check metadata export

1. Run the command `jekyll s` to serve the site locally.
2. Find and open metadata.csv and metadata.json in _site/data folder.
3. Check to make sure the following fields exist and their values look correct: `object_thumb`, `object_small`, `object_download`, `reference_url` 

## Commit and push your changes

## Update the live site
1. Stop the jekyll server and run the command `rake deploy`.
2. Copy the site's files from the _site folder to the correct folder on digital/
3. Update the value for the `last_cb_update` field in the digital_all_collections spreadsheet to reflect the year and month
