Pod::Spec.new do |s|
  s.name              = 'ExtensionLite'
  s.version           = '0.0.6'
  s.summary           = 'iOS common extension for UIView, UIControl, Date, UIVIewController and manymore'
  s.homepage          = 'https://github.com/alizainprasla/ExtensionLite'
  s.ios.deployment_target = '8.0'
  s.swift_versions = '5.0'
  s.platform = :ios, '8.0'
  s.license           = {
    :type => 'MIT',
    :file => 'LICENSE'
  }
  s.author            = {
    'Alizain Prasla' => 'alizain.prasla@gmail.com'
  }
  s.source            = {
    :git => 'https://github.com/alizainprasla/ExtensionLite.git',
    :tag => "#{s.version}" }
  s.source_files      = 'ExtensionLite*' , 'Classes/*', 'Resource/*'
  s.requires_arc      = true

end
