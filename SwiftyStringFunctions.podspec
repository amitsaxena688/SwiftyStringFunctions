Pod::Spec.new do |s|
s.name             = 'SwiftyStringFunctions'
s.version          = '1.0'
s.summary          = 'String Helper functions in Swift Language'

s.description      = <<-DESC
String Helper functions in Swift Language
DESC

s.homepage         = 'https://github.com/amitsaxena688/SwiftyStringFunctions'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Amit Saxena' => 'amitsaxena688@yahoo.com' }
s.source           = { :git => 'https://github.com/amitsaxena688/SwiftyStringFunctions.git', :tag => s.version.to_s }

s.ios.deployment_target = '10.0'
s.source_files = 'String+Extension.swift'

end
