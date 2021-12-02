# Update collection branches

> major update December 2021

## Update main!

First, always make sure your `main` branch is up-to-date, do a `git pull` on main.

## Select a branch to update

1. Use the digital_all_collections spreadsheet in AdminCollections google drive folder.
2. Select a collection that has a value in the `cb_cdm_branch` field, but no value in the `branch_notes` field.

## Merge main branch into the branch you've selected

1. In GitHub Desktop, find the branch name and switch to it.
2. In the Branches dropdown on GitHub Desktop, click the bottom button that says "Choose a branch to merge into [whatever branch you're on]," and choose the "main" branch. Once you select "main," the merge will begin.
3. In most cases, there will be conflicting files, and you'll need to click a button that accepts this to continue the merge.

## Sort out merge conflicts

GitHub Desktop will list the conflicts you need to resolve before the merge can be committed. To resolve them: 
1. Open the project in VS Code and locate and open a file that GitHub desktop says needs to be resolved. 
2. Scroll down in that file until you see the specific conflict area(s) highlighted, including the old and new content that conflicts. Git directly marks the conflicts in the text file by adding a pattern:
    - The top of the conflict has `<<<<<<< HEAD` on its own line, followed by the content in the old version of the file. 
    - Next you will see a line of `=======`, followed by the content of the new version of the file. 
    - Finally closed by `>>>>>>> branch_name`.
3. VS Code offers tools to try to manage these conflicts: above the highlighted section, you'll see a series of buttons that say `accept current change`, `accept incoming change`, and `accept both`. (Note these buttons are added by VS Code and aren't part of Git).
    - `current change` = changes on the current branch
    - `incoming change` = changes from the main branch
4. Which option you accept depends on which file you're looking at, so always look carefully at the code before determining which change to accept. In many cases, if the file is in the _includes folder, you'll probably accept the `incoming change` option to incorporate general updates to the collectionbuilder template code. If the file is in the _data folder, you'd be more likely to accept the `current change`, since these files are likely heavily customized to fit the collection. This isn't always the case, though, so take care and don't hesitate to reach out to Olivia to confirm. In some cases you might need to `accept both` and then sort it out manually.
5. Once you sort out the conflicts on a file, save the file. When you switch back to GitHub Desktop, you should see that the conflict is resolved, so you can move on to the next conflict following the instructions above.
6. Remember that you can always click on the files you edited in the Changes column of VS Code to see the git diff visualized, so you can review the changes to make sure they are correct.
7. After you've sorted out all the conflicts, you can either make a commit or move onto the changes below, whichever makes the most sense to you. If there are a lot of files that were changed in the merge, it might make more sense to commit at this point, since you'll be changing more in the steps below and it may be hard to keep track of your changes.

## Delete extra files from _data folder

If the following files exist in _data, delete them (unless one of them is actually the metadata for the branch!).
- browse-config.csv
- digital.csv
- map-config.csv
- metadata-config.csv
- nav-configuration.csv
- table-config.csv
- boxing.csv
- cities.csv
- dworshak.csv
- psychiana.csv

## General

1. Serve the site using the `jekyll s` command.
2. Do a general overview of the site.
3. On the **browse page** and **item pages**, make sure there are no broken links, images not showing up, etc. (if you see something amiss, fix it!)
    - Check the config-metadata.csv in the _data folder (remember, this controls what metadata shows up on the collection's item pages) and compare it with the collection's metadata spreadsheet. Are there any fields you think should be added to the metadata displaying on the collection's item pages? If so, add them to the config-metadata.csv. Make sure any field with browse_link = `true` in the config-metadata.csv is also included on the browse cards, using the config-browse.csv, since the browse links won't work properly if the fields aren't included on the browse cards. 
4. Check to see if the **map** is properly centered and if the **word clouds** make sense.
    - Check theme.yml file to see what metadata fields are included in the locations and subjects word clouds. First, check the metadata CSV to determine if there are any other fields you should add to these visualizations. Second, make sure the same fields are included on the browse cards, using the config-browse.csv, since the word cloud links won't work properly if the fields aren't included on the browse cards. 
5. Check the **timeline** dropdown (top right of the timeline page) and change it in theme.yml if it needs editing. Note that in the "Timeline Page" section of theme.yml, only one of the two variable options (`year-navigation` and `year-nav-increment`) should be used. If you're using `year-navigation`, remember to use quotation marks around your series of dates, just as the example does.

## About Pages

1. Sometimes, there may be two About pages in the repository (one in the base of the repo and one in the pages folder). The correct about page should be in the pages folder. If there are two About pages, check the content of each and make sure the one in the pages folder is the most up to date. After you've ensured that no information is missing, delete the about.md file at the root of the repository, but leave the one in the pages folder.
2. Check the About page for content and format, cleaning up and making edits as you see fit.
    - In particular, keep an eye out for hyperlinked text that says something like "click here." When you see this, rephrase so that the hyperlinked text describes what it links to, i.e. "For more information, see the [Idaho Forestry Website](https://www.idl.idaho.gov/forestry/)," *not* "To check out the Idaho Forestry Website, [click here](https://www.idl.idaho.gov/forestry/)."
3. If you use the "float" option in the feature/image include, make sure to include the code `<div class="clearfix"></div>` at the bottom of about.md. This makes sure the layout of the About page works correctly on mobile devices. So if you see `<div class="clearfix"></div>` already in this file, just leave it there.

## Library Logos

UI library logos replace the Digital Initiatives logo buttons in the top right on non-home pages, and in the mobile nav.
The links for these buttons no longer trigger the all-collections modal.
Instead, the top right logo on the home page links to <https://www.lib.uidaho.edu/>, and the top right logo on the other site pages links back to <https://www.lib.uidaho.edu/digital/>.
Edits to these logos will appear in `collection-banner.html` and `collection-nav.html` files.

## Metadata

### Edit current metadata in Google Sheets

1. Import the collection's metadata csv into google sheets to edit.
2. In most cases, if any column is empty, you can delete that column. If you're not sure, let Olivia know to check it out.
3. Rename the `reference url` field `cdm_url`
4. Make sure that the column with the URLs to the copyright statements is titled `rightsstatement` (it might say `rights information` or `rights (standardized)`). Change it so it is titled `rightsstatement`.
5. Rename `image/jpg` values to `image/jpeg`
6. Do a general overview to make sure the metadata looks good. If it seems like there could be lat/long values added, make a note in the klytie_updates column of the digital_all_collections spreadsheet.
7. Export the spreadsheet from google sheets as a csv, and upload to the repository, replacing the old metadata spreadsheet.

### Additional metadata edits in VS Code

1. After you've completed your edits in Google Sheets and downloaded the metadata as a CSV, rename the file to whatever the metadata file's name currently is, and drag it back into the _data folder in VS Code. VS Code will as you if you want to replace the current file, since they have the same name. Say Yes, you do want to replace it.
2. Run `jekyll s` to serve the site locally.
3. Open the updated metadata CSV in VS Code. Make sure all field names are lowercase. If they aren't, use this shortcut: highlight the first row of fieldnames and select ctrl + shift + p, select the "transform to lowercase" option.
4. Open the theme.yml file and navigate to the data section. Copy the first row in the metadata CSV (the row with all the metadata field names), and paste it in between the quotation marks in the value for the `metadata-export-fields` variable, replacing the current values. Remove any metadata fields that you don't feel should be in the export file.
5. Also in the data section of the theme.yml file, check the values for the `metadata-facets-fields` fields (sometimes it's easier to view this in the browser, by clicking on the "facets json" button at the bottom of the homepage). Determine if there should be other metadata fields added to this list (the fields added should have values that occur more than once across the collection items. Subject will almost always be there, but other common ones might be location, creator, etc.).

### Check metadata export

1. Find and open metadata.csv and metadata.json in _site/data folder.
2. Check to make sure the following fields exist in these files and their values look correct: `object_thumb`, `object_download`, `reference_url` (you can also do this after you run `rake deploy` in the steps below)

## Commit and push your changes

Use VS Code and/or GitHub Desktop to commit and push your changes up to GitHub.

## Update the live site
1. Stop the jekyll server (`ctrl` + `c`) and run the command `rake deploy`. This might take a few seconds to generate, depending on how big the collection is. When you see a "done" message in the terminal, this process is finished and you can move to the next step.
2. Locate the collectionbuilder-cdm-template repository in your file explorer and navigate to the `_site` folder (you can also easily do this from VS Code by right clicking the `_site` folder and selecting "Reveal in File Explorer"). (Note: **you *must* be sure to only copy files from the _site folder**. Files outside of this folder will not be configured correctly for our server, and you'll notice right away that the site does not work.)
3. Leaving this file explorer window open, proceed to open another file explorer window. In this one, select the `Websites (W:)` drive. Select www-lib-uidaho-edu > Content > Digital > the collection folder you want to update (in most cases, this folder name will match the branch name. If you don't see this folder name, check the record for the collection in the digital_all_collections spreadsheet, and look at the value for cdmid. If the folder name is not the cb_cdm_branch value, it should be the cdmid value, but this is rare.).
4. Carefully copy and paste the content from your repository folder into the collection folder. As soon as you copy these files over, they will be live.
    - Note: if you're nervous to copy over the current files, you can always first copy the current files to an empty folder on your computer, then copy over the edited files to the server, check to make sure they look correct, and delete the old files that you temporarily moved to an empty folder.
5. Check the live site to make sure everything looks correct. If it doesn't, make sure that you copied from the _site folder of the repository. If you did and it still looks wrong, let Olivia know.

## Update the digital_all_collections spreadsheet
1. Add "done" and any notes to the klytie_updates column.
2. Update the value for the `last_cb_update` field in the digital_all_collections spreadsheet to reflect the current year and month.
