---
title: About
layout: page
permalink: /about.html
# add image to index page bootstrap jumbotron
featured-image: "objects/test001.jpg"
---

<div markdown="1" class="row">

<div markdown="1" class="col-md-8"><div markdown="1" class="py-3 px-4">

# About {{ site.title }}

The Idaho Waters Digital Library (IWDL) provides open digital access to unique information resources relating to water issues in key Idaho river basins.
Making up the core of the collection are more than 700 scientific and technical reports produced by [Idaho Water Resources Research Institute](http://www.uidaho.edu/research/entities/iwrri) (IWRRI) researchers between 1963 and 2014, digitized by University of Idaho Library.
IWDL supports ongoing research and understanding of the region while preserving an era of previous work and research investment.

### Background

A significant amount of unique research publications related to Idaho water resources remain difficult to discover and access, existing in print copies only with limited availability to researchers and the public.
To address this issue, the IWDL has been developed and managed at the University of Idaho Library since 2008, when Jodi Haire laid the foundation as a graduate project.
Her work was influential in jump starting the Digital Initiatives program at the library, representing its first large document collection hosted online.

The IWDL was greatly enhanced and expanded by funding from the [United States Geological Survey](https://www.usgs.gov/) administered by IWRRI in 2012 and 2017. 
Each phase of development brought more digitized documents, quality metadata, and web interface improvements that ensure usability and discoverability of the collection.
This funding helped solidify the IWDL, supporting a wealth of content and technical enhancements that add value for researchers, scholars, and other stakeholders.

More than 700 documents are currently accessible, ranging in date from 1897 to 2016 and representing over 550 critical subject areas, such as mine wastes, water policy, hydroelectric power, and aquifer management. 
IWDL serves as a central repository to facilitate research on Idaho watersheds, enabling better discovery, access, and dissemination, while ensuring digital preservation of the materials.  

### Data

The full descriptive metadata can be downloaded as a <a href="{{ "/data/iwdl-metadata.csv" | absolute_url }}" target="_blank">CSV spreadsheet</a>, <a href="{{ "/data/iwdl-metadata.json" | absolute_url }}" target="_blank">JSON</a>, or a <a href="{{ "/data/iwdl-geodata.json" | absolute_url }}" target="_blank">GeoJSON</a> export.
The data can be subsetted and downloaded as CSV or Excel from the <a href="{{ "/browse/" | relative_url }}" >documents table</a>.

### Western Waters Digital Library

The value of IWDL was recognized by selection for inclusion in the [Western Waters Digital Library](http://westernwaters.org/) (WWDL), which aggregates “digital collections of significant primary and secondary resources on water in the Western United States”. 
WWDL collects information about unique materials related to water resources in the Western US improving and simplifying discovery for a diverse group of stakeholders. 
However, it does not build collections or digitize materials. 
WWDL and other aggregators rely on quality regional collections, such as IWDL, [New Mexico Waters](http://econtent.unm.edu/cdm/landingpage/collection/NMWaters), or [California Water Documents](http://ccdl.libraries.claremont.edu/cdm/landingpage/collection/cwd), to provide the content necessary for researchers.

### Acknowledgements

This project would not have been possible without the grant support of the [United States Geological Survey](https://www.usgs.gov/) and the [Idaho Water Resources Research Institute](http://www.uidaho.edu/research/entities/iwrri), the metadata and digitization work of Warren Bromley-Vogel and Karen Trebitz, and the ground work and continuing efforts of Jodi Haire.

</div></div>
<div class="col-md-4">
<div class="card">
<div class="card-header">Supporters</div>
<div class="card-body p-md-3">
<p class="text-center"><a href="https://www.uidaho.edu/research/entities/iwrri"><img class="img-fluid rounded mt-3" src="{{ '/iwdl/ui-iwrri-logo.jpg' | prepend: site.digital-objects }}" alt="IWRRI Logo" ></a></p>
<p class="text-center"><a href="https://www.usgs.gov/"><img class="img-fluid rounded mt-3" src="{{ '/iwdl/USGS_logo.png' | prepend: site.digital-objects }}" alt="USGS Logo"></a></p>
</div>
</div>
<p class="mt-3"><img class="img-fluid rounded" src="{{ '/iwdl/pinecreek.jpg' | prepend: site.digital-objects }}" alt="Pine Creek"></p>
</div>
</div>

{% include credits.md %}
