# All Collections Nav

To make it easier to keep the list of collections up-to-date the data is loaded from a JSON file that is generated in the mainweb project.
The Digital master list is loaded in the mainweb repository as `_data/digital_all_collections.csv`.
This is used to generate `/assets/data/all-collections.json`.
Currently `all-collections.json` is simply structured as:

```
{ "collections" : [ [ "collection title", "collection-link" ], ... ] }
```

Individual digital collections load this central json file to generate the all collections nav.
