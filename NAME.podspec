Pod::Spec.new do |s|
  s.name = "${POD_NAME}"
  s.version = "0.1.0"
  s.summary = "A short description of ${POD_NAME}."

  s.description = <<-DESC
  EZ组件模版
                       DESC

  s.homepage = "'https://github.com/cocoa1/${POD_NAME}"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "${USER_NAME}" => "${USER_EMAIL}" }
  s.source = { :git => "git@github.com:cocoa1/${POD_NAME}.git", :tag => s.version.to_s }

  s.ios.deployment_target = "12.0"
  s.static_framework = true
  # s.swift_version = "5.2"
  # s.libraries = "c++"
  # s.requires_arc = true

  s.source_files = "${POD_NAME}/Classes/**/*"

  # s.prefix_header_contents = '#import "${POD_NAME}PreHeader.h"'
  # s.resource_bundles = {
  #   "${POD_NAME}" => ["${POD_NAME}/Assets/*.xcassets"],
  # }

  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES",
    "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1",
  }
  s.user_target_xcconfig = {
    "DEFINES_MODULE" => "YES",
    "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1",
  }

  # s.dependency "MGJRouter"

end
