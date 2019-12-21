# CollectionBuilder CONTENTdm

IWDL is slightly modified from the base template. 
It downloads objects from CDM, but it uses local thumbs hosted on /digital. 
Data was ported from iwdl_source, which was a prototype of collectionbuilder.

----------------

This prototype version of CollectionBuilder is used by the University of Idaho Library to create skins for the digital libary collections maintained in a hosted CONTENTdm instance. 

To do so, librarians and staff work with a clean version of a single collection's metadata, as stored in a .csv document linked via this Jekyll repository's [`_config.yml`](https://github.com/uidaholib/collectionbuilder-cdm-template/blob/master/_config.yml) file.
Collection settings are customized using the [`_data/theme.yml`](https://github.com/uidaholib/collectionbuilder-cdm-template/blob/master/_data/theme.yml).

Prototype examples:

- [Mark Brooks Calnon Collection](https://www.lib.uidaho.edu/digital/calnon/index.html) 
- [Idaho Cities & Towns](https://www.lib.uidaho.edu/digital/cities/)
- [CCC Idaho](https://www.lib.uidaho.edu/digital/cccidaho/)
- [Idaho Waters Digital Library](https://www.lib.uidaho.edu/digital/iwdl/)

While this tool was built specifically for use at the University of Idaho Library, any other institution currently using CONTENTdm should also be able to use it with properly formatted metadata (use one of our CSVs as a model) and the correct url varibles in the `_config.yml` and `_data/theme.yml` files. 
We intend to further refine this and related CollectionBuilder tools over the course of the next year, adding a great deal more documentation and guides for the tool's use. 
