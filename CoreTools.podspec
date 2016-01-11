Pod::Spec.new do |s|

  s.name         = "CoreTools"
  s.version      = "0.1"
  s.summary      = "CoreTools contains common functionality, shared across Javier Laguna's  Apps."

  s.homepage     = "https://github.com/lagubull/"
 
  s.license      = {:type => 'PUBLIC USE', :file => 'LICENSE.md' }

  s.author       = { "Javier Laguna" => "lagubull@hotmail.com" }

  s.platform     = :ios, "9.2"

  s.source       = { :git => "https://github.com/lagubull/CoreTools.git", :branch => "master", :tag => s.version }

  s.source_files  = "CoreTools/**/*.{h,m}"
  s.public_header_files = "CoreTools/**/*.{h}"

  s.requires_arc = true
end
