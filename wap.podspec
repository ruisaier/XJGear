
Pod::Spec.new do |s|
  s.name                = "wap"
  s.version             = "1.0.0"
  s.summary             = "wab"
  s.homepage            = "https://github.com/ruisaier/XJGear"
  s.license             = "MIT"
  s.authors             = { "coder" => "coderyi@163.com" }
  s.source              = { :git => "https://github.com/ruisaier/XJGear.git", :tag => "#{s.version}" }
  s.vendored_libraries  = 'wap/wap/*.a'
  s.public_header_files = 'wap/wap/*.h'
  s.source_files        = 'wap/wap/*.h'
  s.weak_frameworks     = 'UserNotifications'
  s.platform            = :ios, '9.0'
  s.requires_arc        = true
  s.libraries           = 'z','resolv'

end
