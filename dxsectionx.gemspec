Gem::Specification.new do |s|
  s.name = 'dxsectionx'
  s.version = '0.1.5'
  s.summary = 'Transforms entries containing Markdown within a Dynarex document into HTML using the Martile gem'
  s.authors = ['James Robertson']
  s.files = Dir['lib/dxsectionx.rb']
  s.add_runtime_dependency('dynarex', '~> 1.5', '>=1.5.36')
  s.add_runtime_dependency('martile', '~> 0.6', '>=0.6.12')
  s.signing_key = '../privatekeys/dxsectionx.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/dxsectionx'
end
