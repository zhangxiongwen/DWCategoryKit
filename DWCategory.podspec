Pod::Spec.new do |s|

  s.name         = "DWCategory"
  s.version      = "0.0.1"
  s.summary      = "项目常用类别整理."
  s.description  = <<-DESC
  - 将项目中常用类别整理成型
                   DESC

  s.homepage     = "https://github.com/CoderDwang/DWCategory"
  s.license      = "MIT"
  s.author             = { "Dwang" => "coderdwang@outlook.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/CoderDwang/DWCategory.git", :tag => "#{s.version}" }

  s.source_files  = "DWCategory", "DWCategory/**/*.{h,m}"
  s.frameworks = "UIKit", "Foundation"

end
