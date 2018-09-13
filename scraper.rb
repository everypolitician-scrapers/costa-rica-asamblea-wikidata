#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en_names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/costa-rica-election-2014', column: 'wikiname')
es_names = WikiData::Category.new('Categoría:Diputados de Costa Rica 2014-2018', 'es').member_titles

sparq = 'SELECT DISTINCT ?item WHERE { ?item p:P39/ps:P39 wd:Q21328617 }'
ids = EveryPolitician::Wikidata.sparql(sparq)

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { en: en_names, es: es_names })
