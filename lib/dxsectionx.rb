#!/usr/bin/env ruby

# file: dxsectionx.rb

require 'dynarex'
require 'martile'


class DxSectionX

  attr_writer :xsl_url, :domain


  def initialize(filepath, domain: nil)
  
    dx = Dynarex.new
    dx.import filepath
    @doc = dx.to_doc
    @domain = domain
    
  end

  def to_xml

    @doc.root.xpath('records/section/x') do |x|

      s = "=%s\n%s\n=" % [x.text.lines.first[/#\w+$/], x.text.unescape]

      html = Martile.new(s, ignore_domainlabel: domain).to_html

      e = x.parent
      e.attributes.merge x.attributes
      x.delete
      doc2 = Rexle.new(html)
      
      h1 = doc2.root.element('h1')
      details = Rexle::Element.new('details')
      details.attributes[:open] = 'open'
      summary = Rexle::Element.new('summary')
      summary.add h1

      details.add summary
      doc2.root.xpath('.').each {|x| details.add x }     
      doc2.root.add details
      doc2.root.elements.each do |e2|
        e.add e2
      end
    end

    if @xsl_url then

      @doc.instructions << [
        'xml-stylesheet',
        "title='XSL_formatting' type='text/xsl' href='#{@xsl_url}'"
      ]

    end

    return @doc

  end

end