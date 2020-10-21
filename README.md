# CollectionBuilder CONTENTdm

IWDL is slightly modified from the base template. 
It downloads objects from CDM, but it uses local thumbs hosted on /digital. 
Data was ported from iwdl_source, which was a prototype of collectionbuilder.

----------------

This prototype version of CollectionBuilder is used by the University of Idaho Library to create skins for the digital libary collections maintained in a hosted CONTENTdm instance. 
https://www.lib.uidaho.edu/digital/

This highly customized version of [CollectionBuilder-CONTENTdm](https://github.com/CollectionBuilder/collectionbuilder-contentdm) is used by the University of Idaho Library to create skins for the digital library collections maintained in a hosted CONTENTdm instance. 
Active development takes place in the [CollectionBuilder-CONTENTdm repository](https://github.com/CollectionBuilder/collectionbuilder-contentdm).

Librarians and staff work with a clean version of a single collection's metadata, as stored in a .csv file.
Collection settings are customized using the [`_data/theme.yml`](https://github.com/uidaholib/collectionbuilder-cdm-template/blob/master/_data/theme.yml).
Each digital collection is a branch in this repository.

While this version was built specifically for use at the University of Idaho Library, any other institution currently using CONTENTdm can also adopt it, starting from the generic base [CollectionBuilder-CONTENTdm](https://github.com/CollectionBuilder/collectionbuilder-contentdm) template.
