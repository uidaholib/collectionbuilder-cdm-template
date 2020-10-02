# collectionbuilder-cdm-template

https://www.lib.uidaho.edu/digital/

This highly customized version of [CollectionBuilder-CONTENTdm](https://github.com/CollectionBuilder/collectionbuilder-contentdm) is used by the University of Idaho Library to create skins for the digital library collections maintained in a hosted CONTENTdm instance. 
Active development takes place in the [CollectionBuilder-CONTENTdm repository](https://github.com/CollectionBuilder/collectionbuilder-contentdm).

Librarians and staff work with a clean version of a single collection's metadata, as stored in a .csv file.
Collection settings are customized using the [`_data/theme.yml`](https://github.com/uidaholib/collectionbuilder-cdm-template/blob/master/_data/theme.yml).
Each digital collection is a branch in this repository.

While this version was built specifically for use at the University of Idaho Library, any other institution currently using CONTENTdm can also adopt it, starting from the generic base [CollectionBuilder-CONTENTdm](https://github.com/CollectionBuilder/collectionbuilder-contentdm) template.

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
