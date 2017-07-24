#
# Be sure to run `pod lib lint Peloton-UIColors.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Peloton-UIColors'
  s.version          = '0.4'
  s.summary          = 'UIColors for Peloton Apps.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  UIColors used in Peloton Apps and libs
                       DESC

  s.homepage         = 'https://github.com/pelotoncycle/Peloton-UIColors'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ryan Fitzgerald' => 'ryan.fitzgerald@pelotoncycle.com' }
  s.source           = { :git => 'https://github.com/pelotoncycle/Peloton-UIColors.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Peloton-UIColors/Classes/**/*'

  # s.resource_bundles = {
  #   'Peloton-UIColors' => ['Peloton-UIColors/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
