Pod::Spec.new do |s|

  s.name         = "DWCategory-OC"
  s.version      = "1.0.1"
  s.summary      = "项目常用类别整理."
  s.description  = <<-DESC
  - 将项目中常用类别整理成型
                   DESC

  s.homepage     = "https://github.com/CoderDwang/DWCategory"
  s.license      = "MIT"
  s.author             = { "Dwang" => "coderdwang@outlook.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/CoderDwang/DWCategory.git", :tag => s.version.to_s }
  s.source_files = 'Category/**/*.{h,m}'
  s.public_header_files = 'Category/**/*.{h}'
  s.frameworks = "UIKit", "Foundation"
  s.dependency "AESCrypt-ObjC", "~> 1.0.2"
end
