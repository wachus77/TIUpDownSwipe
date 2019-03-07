#
# Be sure to run `pod lib lint TIUpDownSwipe.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TIUpDownSwipe'
  s.version          = '0.4.0'
  s.summary          = 'Smooth, animated navigation between three controllers on a swipe gesture - up and down'
  s.swift_version    = '4.2'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a library thanks to which it is possible to set navigation between three controllers on a swipe gesture - up and down, with the animation of changing the navigation arrow and smooth transition of the background colors of the view controllers.
                       DESC

  s.homepage         = 'https://github.com/wachus77/TIUpDownSwipe'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tomasz Iwaszek' => 'wachus77@gmail.com' }
  s.source           = { :git => 'https://github.com/wachus77/TIUpDownSwipe.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'TIUpDownSwipe/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TIUpDownSwipe' => ['TIUpDownSwipe/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
