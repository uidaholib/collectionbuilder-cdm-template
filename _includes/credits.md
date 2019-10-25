<div class="card my-4">
<h5 class="card-header">Technical</h5>
<div class="card-body">
<div class="card-text" markdown="1">

This site is built using [CollectionBuilder-CONTENTdm](https://github.com/CollectionBuilder/collectionbuilder-contentdm) which utilizes [CONTENTdm](https://www.oclc.org/en/contentdm.html) APIs to create an engaging "skin" on top of an existing digital collection repository.

[CollectionBuilder](https://collectionbuilder.github.io/) is an open source tool for creating digital collection and exhibit websites that are driven by metadata and powered by modern static web technology. CollectionBuilder is a project of University of Idaho Library's [Digital Initiatives](https://www.lib.uidaho.edu/digital/) and the University's [Center for Digital Inquiry and Learning (CDIL)][https://cdil.lib.uidaho.edu/]. It was built following the [Lib-STATIC](https://lib-static.github.io) methodology. 

### Software and Tools Used

- **Static Site Generator** - CollectionBuilder uses the open source static site generator, [Jekyll](https://jekyllrb.com/), and a modern static web stack, to build the web pages and directories.
- **Template Language** - Jekyll's built in template language is [Liquid](https://shopify.github.io/liquid/), which we use to create and layout our elements
- **Framework** - The basic CSS and JavaScript frameworks are created using [Bootstrap](https://getbootstrap.com/) and [jQuery](https://jquery.com/).
- **Visualizations**
    - *Map* - [Leafletjs](http://leafletjs.com/)
    - *Table* - [DataTables](https://datatables.net/)
    - *Timeline* - Our basic timeline is created through html elements and the liquid programming languge. We also offer an option to create a [TimelineJS](https://timeline.knightlab.com/) interactive timeline.
- **Design and UI Elements**    
    - *Icons* - [FontAwesome](https://fontawesome.com/)
    - *Lazy Loaded Images* - [lazysizes](https://github.com/aFarkas/lazysizes)
    - *Image Galleries* - [lightGallery](http://sachinchoolur.github.io/lightGallery/)
    - *Search* - [Lunr.js](https://lunrjs.com/)
- **Data Protocols**
    - *Structured Data* - [Schema.org](http://schema.org)
    - *Social Media* - [Open Graph protocol](http://ogp.me/)

Questions can be directed to **libstatic.uidaho@gmail.com**

Get the [Source code]({{ site.data.theme.gh-repository }}) for this site!

Last build date: {{ site.time | date: "%Y-%m-%d" }}.

</div>
</div>
</div>