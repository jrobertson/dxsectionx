#!/usr/bin/env ruby

# file: dxsectionx.rb

require 'dynarex'
require 'martile'
require 'kramdown'


class DxSectionX

  attr_reader :dx
  attr_writer :xsl_url, :domain


  def initialize(x, domain: nil, xsl_url: nil, debug: false)

    @domain, @xsl_url, @debug = domain, xsl_url, debug
    
    if x.is_a? Rexle then
      @doc = x
      transform()
    else
      
      @dx = Dynarex.new
      @dx.import x
      puts '@dx.to_s : ' + @dx.to_s if @debug

      transform()

    end

  end
  
  def create(h)
    @dx.create h
  end

  def to_doc()
    @doc
  end
  
  def to_s()
    @dx.to_s
  end
  
  def transform
    
    doc = @dx.doc.clone
    
    doc.root.xpath('records/section/x') do |x|
 
      s = "=%s\n%s\n=" % [x.text.lines.first[/#\w+$/], x.text.unescape]

      html = Kramdown::Document\
          .new(Martile.new(s, ignore_domainlabel: @domain).to_s).to_html
      
      puts 'html: ' + html.inspect if @debug
      
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
      doc2.root.xpath('*').each {|x| details.add x }     
      doc2.root.add details
      
      doc2.root.elements.each {|e2|  e.add e2 }

    end
    @doc = doc

    if @xsl_url then

      @doc.instructions << [
        'xml-stylesheet',
        "title='XSL_formatting' type='text/xsl' href='#{@xsl_url}'"
      ]

    end
    
    return @doc

  end

end
