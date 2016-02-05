Pod::Spec.new do |s|

  s.name         = "SwiftDelayer"
  s.version      = "1.0.1"
  s.summary      = "Simple GCD delayer wrapper in Swift"
  s.description  = <<-DESC
    Just a simple wrapper for the GCD delay functionality written in Swift
  DESC

  s.homepage     = "https://github.com/PiXeL16/SwiftDelayer"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Chris Jimenez" => "cjimenez16@gmail.com" }
  s.social_media_url   = "http://twitter.com/chrisjimeneznat"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/PiXeL16/SwiftDelayer.git", :tag => s.version }
  s.source_files  = "SwiftDelayer/", "SwiftDelayer/**/*.{h,m,swift}"

  s.requires_arc = true

end
