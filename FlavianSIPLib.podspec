#
# Be sure to run `pod lib lint VialerSIPLib.podspec --use-libraries' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
	s.name             	= "FlavianSIPLib"
	s.version          	= "1.0.0"
	s.summary          	= "Flavian SIP Library for iOS"
	s.description      	= "Objective-C wrapper around PJSIP."
	s.homepage         	= "https://github.com/flaviankeepcalling/VialerSIPLib"
	s.license          	= 'GNU GPL v3'
	s.author           	= {"Devhouse Spindle" => "opensource@wearespindle.com"}

	s.source           	= {:git => "https://github.com/flaviankeepcalling/VialerSIPLib.git", :tag => s.version.to_s}

	s.platform     		= :ios, '10.0'
	s.requires_arc 		= true

	s.source_files 		= "Pod/Classes/**/*.{h,m}"
	s.public_header_files   = "Pod/Classes/**/*.h"

	s.resource_bundles  = { 'VialerSIPLib' => 'Pod/Resources/*.wav' }

	s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
	s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

	s.dependency 'FlavianSipTest'
	s.dependency 'CocoaLumberjack'
    s.dependency 'Reachability'
end
