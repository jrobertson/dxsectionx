Gem::Specification.new do |s|
  s.name = 'dxsectionx'
  s.version = '0.3.2'
  s.summary = 'Transforms entries containing Markdown within a Dynarex ' + 
      'document into HTML using the Martile gem.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/dxsectionx.rb']
  s.add_runtime_dependency('dynarex', '~> 1.8', '>=1.8.15')
  s.add_runtime_dependency('martile', '~> 1.1', '>=1.1.3')
  s.signing_key = '../privatekeys/dxsectionx.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/dxsectionx'
end
