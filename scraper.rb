#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/costa-rica-election-2014', column: 'wikiname')

sparq = 'SELECT DISTINCT ?item WHERE { ?item p:P39/ps:P39 wd:Q21328617 }'
ids = EveryPolitician::Wikidata.sparql(sparq)

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { en: names })
