#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/costa-rica-election-2014', column: 'wikiname')
EveryPolitician::Wikidata.scrape_wikidata(names: { en: names }, output: false)
warn EveryPolitician::Wikidata.notify_rebuilder
