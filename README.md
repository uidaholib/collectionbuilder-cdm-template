# collectionbuilder-cdm-template

template base for creating digital collections at [University of Idaho Library Digital Initiatives](https://www.lib.uidaho.edu/digital/)

added mine,depth, and other fields to metadata-config.csv

subjects/keywords have not been changed because they are not well suited for this project. Removed "subjects" page from nav-configuration.csv It might be worth the time to work on the subjects.
Letters from the old collection website are not present.
Lat/Long not extracted from Fusion Table yet. Map page removed from nav-configuration.csv
Scraped the old website page to fill out the about page

2019-07-29 Olivia Wikle
- locations.json and locations.csv have been altered to map mines, not locations
- watkins.csv metadata field "subject (lcsh)" changed to "subject" because otherwise subjects.json doesn't work
- when subject browse-link is turned on the link doesn't work because it's not escaping correctly. I turned it off in the metadata, but it also doesn't work from the buttons in the Top Subjects box or the Related Items box on the item page.
- still need map data
- need to re-create the "Letters" exhibit

