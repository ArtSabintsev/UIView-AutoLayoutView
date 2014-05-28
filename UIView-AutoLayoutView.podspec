Pod::Spec.new do |s|
  s.name         = "UIView-AutoLayoutView"
  s.version      = "1.0.0"
  s.summary      = "A small Objective-C category on `UIView` that creates a UIView object that is ready to be used in programmatic AutoLayout."
  s.homepage     = "https://github.com/ArtSabintsev/UIView-AutoLayoutView"
  s.platform     = :ios, '5.0'
  s.source       = { :git => "https://github.com/ArtSabintsev/UIView-AutoLayoutView.git", :tag => "1.0.0" }
  s.source_files = 'UIView+AutoLayoutView/*.{h,m}'
  s.requires_arc = true
  s.author       = { "Arthur Ariel Sabintsev" => "arthur@sabintsev.com" }
  s.license      = 'MIT'
end
