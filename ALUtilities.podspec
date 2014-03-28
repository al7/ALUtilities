Pod::Spec.new do |s|
   s.name           = 'ALUtilities'
   s.version        = '0.1.0'
   s.summary        = 'Utilities library for iOS'
   s.license        = 'MIT'
   s.homepage       = 'https://github.com/al7/ALUtilities'
   s.author         = { 'Alex Leite' => 'admin@al7dev.com' }
   s.source         = { :git => 'https://github.com/al7/ALUtilities.git', :tag => s.version.to_s }
   s.source_files   = 'ALUtilities/Source'
    s.platform      = :ios   
   s.frameworks     = 'QuartzCore'
   s.requires_arc   = true
end