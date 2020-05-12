# Update collection branches

> major update April 2020

## Update master!

First, always make sure your `master` branch is up-to-date, do a `git pull` on master. 

## Start merging updates

Second, start merging the updates into your collection branch:

- Checkout the collection branch to work on, `git checkout psychiana`
- Make sure the branch is updated from GitHub, `git pull`
- Merge master into the collection branch, `git merge master` (this will pull the master branch into the currently checked out branch)
- This merge will result in a bunch of changes (100+) and a few conflicts, so the auto-merge will not complete--git will leave you in "merging" state until you sort out the conflicts and commit. If you check your "Git" panel on VS Code, you will see all the changes as "Staged Changes" (ready to commit), and the conflicts as "Merge changes" (need to be fixed before commit)
- Carefully sort out the merge!

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

## Merge config and theme

The key will be to look very carefully at _config.yml and _data/theme.yml, since values have moved between the two.
Basically you are making sure that the values from the old versions are translated into the new format, which you can do while working the the "merging" state.

Check the new format ([_config.yml](https://github.com/uidaholib/collectionbuilder-cdm-template/blob/master/_config.yml) and [theme.yml](https://github.com/uidaholib/collectionbuilder-cdm-template/blob/master/_data/theme.yml)) to make sure by the end of the merge all the old values are in the correct place and match the new format.

For _config.yml, most values of the "Site Settings" and "Collection Settings" area are in the old version of theme.yml, and need to be migrated. 
These values include: title, tagline, description, author, metadata, cdm-collection-id.

For theme.yml quite a few old key+value pairs go away (in addition to those that migrated to _config.yml).
The main differences are: 

- the old sections "Site settings", "repository variables", "header and head metadata" have migrated to _config.yml. Once you have the values migrated to _config.yml (which hopefully you have already sorted at this point) the old stuff can be deleted. 
- the old "home page and browse" section is significantly restructured in the new "home page" section, with several variables going away. The main value to migrate is `home-banner-image-number` (a CDM id number) becomes `featured-image` (an objectid, but usually follows the pattern of collectionname + cdmid, so you should be able to translate it easily)
- check the new variable `carousel-type` which selects the type of carousel featured on the index page
- check the new section "About page" with `about-featured-image` if you want to use the default jumbotron on about.
- the "Subjects Page" and "Locations Page" sections have been restructured, but should be easy to merge. The only complication is that they are moved up in the theme.yml file above the "Map page" section. 
- The "Map Page" section has a new variable `map-base`, check it if you don't want to default `Esri_WorldStreetMap`
- "Data" section is new, be sure to update metadata fields before configuring this (you might want to do it after sorting out the rest of the merge).

## Migrate About page

The old template has "about.md" in the root folder. 
The updated template moves this file to "pages/about.md".
This change might not automatically happen during the merge. 

Open "about.md" and copy the content to "pages/about.md".
Then delete "about.md" so you don't have two versions in the repo. 
Finally, make sure to `add` those changes to the merge commit using the Git menu. 

Note that the old template about.md had `featured-image` in front matter, but this has been moved the theme.yml `about-featured-image` if necessary. 

Also, "item-figure" include was added to different locations in different collections, and not all versions have compatible options. 
Preferably update to use the current version, `_include/feature/item-figure.html`.

## Update metadata fields

Two important updates are necessary on the metadata file. 
Change the following metadata fields: 

- `cdm-id` --> `cdmid`
- `object-id` --> `objectid`

Also, check the various rights fields.
The item pages automatically add a field named "rights" and "rightsstatement" to the rights box--so it is important to have at least one or the other. 
"rights" is a freeform statement, "rightsstatement" is a link to a specific formal statement such as on http://rightsstatements.org/.
Collections use many different names for these metadata fields, such as "rights information" or "rights (standardized)".
Identify the correct field and update the name to `rights` or `rightsstatement`. 
Make a note if the collection does not have an appropriately formatted rights field.

## Migrate configs

Configs in _data/ have migrated to new filenaming convention.
Check the old file and copy the values into the new version making sure they match the new options (I usually open both side by side, using `alt` click on the Code file browser). 
Finally delete the old version.

- `browse-config.csv` --> `config-browse.csv`. config-browse may already be in use in your collection, depending on when it was updated. By default all collections should have their identifier field ("original-identifier", "source-identifier", or what ever it is actually called) added to browse to provide sort options. It can be hidden if desired.
- `map-config.csv` --> `config-map.csv` (options are same)
- `metadata-config.csv` --> `config-metadata.csv`, options have been rearranged, so carefully review this file. Make sure the field names match the metadata file. Review the new dc and scheme mapping fields to ensure some relevant metadata is being mapped to provide rich markup. See [config-metadata docs](https://collectionbuilder.github.io/docs/customize.html#config-metadata) for options.
- `nav-configuration.csv` --> `config-nav.csv`, options are compatible, but new version adds "dropdown_parent" option (which is normally blank)
- `table-config.csv` --> `config-table.csv` (options are same)

Once the configs are migrated, you can `add` those changes to the "Staged Changes" as well.

## Test and Check Customizations

At this point the collection should be fully functional, so try `jekyll s`. 
Explore over the collection to make sure things seem to be working.
Visit the current digital collection website on the live web to compare.

Each collection might have a number of other small customizations.
Review the features to ensure you aren't over writing these customizations. 
These would most likely be in the pages/ and _layouts. 

## Commit

If everything seems to be working and looks correct, you can finally commit all the changes to complete the merge. 
Making the commit ends the "Merging" status, and you can proceed as normal.
Remember to `git push` your changes.
