Pod::Spec.new do |s|

  s.name         = "DWCategoryKit"
  s.version      = "2.2"
  s.summary      = "项目常用类别整理."
  s.description  = <<-DESC
  - 将项目中常用类别整理成型
                   DESC

  s.homepage     = "https://github.com/CoderDwang/DWCategoryKit"
  s.license      = "MIT"
  s.author             = { "Dwang" => "coderdwang@outlook.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/CoderDwang/DWCategoryKit.git", :tag => s.version.to_s }
  s.source_files = "DWCategoryKit/**/*.{h,m}"
  s.resources     = "DWCategoryKit/Resources.bundle"
  s.public_header_files = "DWCategoryKit/**/*.{h}"
  s.frameworks = "UIKit", "Foundation"
end
