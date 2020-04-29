---
title: Tests
layout: page
permalink: /test/
---
{% assign items = site.data[site.metadata] %}
{% assign items_size = items | size %}

# CB Tests

## _config.yml 

{% if site.metadata %}
Currently using `{{ site.metadata }}.csv` metadata file.
{:.alert .alert-success}
{% else %}
The `metadata` value is not configured. Please fix and restart Jekyll before proceeding!
{:.alert .alert-danger}
{% endif %}

{% assign pagegen = site.page_gen | map: "data" | first %}
{% if site.metadata == pagegen %}
The `page_gen` data value is correctly configured to use `{{ site.metadata }}`.
{:.alert .alert-success}
{% else %}
The `page_gen` data value does not match your `metadata` value. Please fix and restart Jekyll before proceeding!
{:.alert .alert-danger}
{% endif %}

## Objectid

{% assign objectids_nil = items | where_exp: 'item','item.objectid == nil' | size %}
{% if objectids_nil == 0 %}
All items have `objectid`.
{:.alert .alert-success}
{% elsif objectids_nil == items_size %}
You are missing the `objectid` field. Please fix before proceeding! (is it misnamed `object-id`?)
{:.alert .alert-danger}
{% else %}
{{ objectids_nil }} items are missing `objectid`. Please fix before proceeding!
{:.alert .alert-danger}
{% endif %}

{% assign objectids = items | map: "objectid" | compact %}
{% assign objectids_len = objectids | size %}
{% assign objectids_uniq = objectids | uniq | size | minus: objectids_len %}
{% if objectids_uniq == 0 %}
All `objectid` are unique.
{:.alert .alert-success}
{% else %}
{{ objectids_uniq | abs }} `objectid` are **not unique**. Please fix before proceeding!
{:.alert .alert-danger}
{% endif %}

## CONTENTdm

{% assign collectionids = items | map: "collectionid" %}
{% assign collectionids_len = collectionids | compact | size %}
{% if collectionids_len != 0 %}
Currently {{ collectionids_len }} items are using the `collectionid` field in metadata to access objects from these CONTENTdm collections: `{{ collectionids | uniq | compact | join: "; "}}`.
{% if site.cdm-collection-id %}The default is set as `{{ site.cdm-collection-id }}`.{% else %}There is no default set in "_config.yml" `cdm-collection-id`.{% endif %}
(<a href="{{ site.cdm-url }}/search/collection/{{ site.data[site.metadata] | map: 'collectionid' | push: site.cdm-collection-id | compact | uniq | join: '!' }}/" target="_blank" rel="noopener">database link</a>)
{:.alert .alert-success}
{% elsif site.cdm-collection-id %}
Currently using `{{ site.cdm-collection-id }}` CONTENTdm collection (<a href="{{ site.cdm-url }}/cdm/search/collection/{{ site.cdm-collection-id }}/" target="_blank" rel="noopener">database link</a>).
{:.alert .alert-success}
{% else %}
A `cdm-collection-id` value in "_config.yml" or `collectionid` field in the metadata is not configured. Please fix before proceeding!
{:.alert .alert-danger}
{% endif %}

{% assign cdmids_nil = items | where_exp: 'item','item.cdmid == nil' | size %}
{% if cdmids_nil == 0 %}
All items have `cdmid`.
{:.alert .alert-success}
{% else %}
{{ cdmids_nil }} items are missing `cdmid`. This is okay if they have `youtubeid` instead.
{:.alert .alert-warning}
{% endif %}

{% assign cdmids = items | map: "cdmid" | compact %}
{% assign cdmids_len = cdmids | size %}
{% assign cdmids_uniq = cdmids | uniq | size | minus: cdmids_len %}
{% if cdmids_uniq == 0 %}
All `cdmid` are unique.
{:.alert .alert-success}
{% else %}
{{ cdmids_uniq | abs }} `cdmid` are **not unique**. This could be okay if you are using `collectionid` with multiple collections. Please check before proceeding!
{:.alert .alert-warning}
{% endif %}

## Format

{% assign formats_nil = items | where_exp: 'item','item.format == nil' | size %}
{% if formats_nil == 0 %}
All items have `format`.
{:.alert .alert-success}
{% elsif formats_nil == items_size %}
You are missing the `format` field. Please fix before proceeding!
{:.alert .alert-danger}
{% else %}
{{ formats_nil }} items are missing `format`. Please fix before proceeding!
{:.alert .alert-danger}
{% endif %}

{% assign formats = site.data[site.metadata] | map: "format" | uniq | compact %}
{% assign supported_formats = "image/jpg;application/pdf;video/mp4;audio/mp3" | split: ";" %}

The following `format` values are used in the collection:
{% for f in formats %}
- {{ f }}, {% if supported_formats contains f %}*supported*{:.text-success}. {% else %}*may not be supported*{:.text-danger}.{% endif %}
{% endfor %}

