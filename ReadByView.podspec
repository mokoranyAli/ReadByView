#
# Be sure to run `pod lib lint ReadByView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'ReadByView'
    s.version          = '0.1.1'
    s.summary          = 'ReadByView is a pod for making view like seen by with circular images with less effort'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    'ReadByView just to save time for designing and also it is flixable with number of photos and controling the appearance '
    DESC
    
    s.homepage         = 'https://github.com/mokoranyAli/ReadByView'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'mokoranyAli' => 'mohammed.korany.ali@gmail.com' }
    s.source           = { :git => 'https://github.com/mokoranyAli/ReadByView.git', :tag => s.version.to_s }
    
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '12.0'
    
    s.source_files = 'source/**/* '
    s.swift_version = '5.0'
    s.platforms = {
        "ios": "12.0"
    }
    
    # s.resource_bundles = {
    #   'ReadByView' => ['ReadByView/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
