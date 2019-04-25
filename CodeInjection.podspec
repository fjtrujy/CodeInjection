Pod::Spec.new do |s|
  s.name = 'CodeInjection'
  s.version = '1.5.3'
  s.summary = "CodeInjection save you a lot of compiling time"
  s.description = "Code injection allows you to update the implementation of methods of a class incrementally in the iOS simulator without having to rebuild or restart your application saving developer time. It requires to run the additional InjectionIII Mac app"
  s.homepage = 'http://injectionforxcode.com/'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = 'Francisco Javier Trujillo Mata'
  s.source = { :git => 'https://github.com/fjtrujy/CodeInjection.git', :tag => s.version }

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'
  s.swift_version = '4.0'

  s.library = 'z'
  s.source_files  = 'InjectionBundle/InjectionClient.{h,mm}',
                    'InjectionBundle/NSObjectSwiftInjection.swift',
                    'InjectionBundle/UIViewControllerSwiftInjection.swift',
                    'InjectionBundle/SwiftEval.swift',
                    'InjectionBundle/SwiftInjection.swift',
                    'InjectionBundle/Vaccine.swift',
                    'InjectionBundle/XprobeSwift-Bridging-Header.h',
                    'InjectionIII/InjectionEnum.h',
                    'InjectionIII/SimpleSocket.{h,mm}',
                    'XprobePlugin/Classes/Xprobe.h',
                    'XprobePlugin/Classes/Xtrace.h',
                    'XprobePlugin/XprobeSwift/SwiftSwizzler.swift',
                    'XprobePlugin/XprobeSwift/XprobeSwift.swift'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'InjectionBundle/CoreInjectionClient.{h,mm}'
  end

  s.subspec 'Test' do |ss|
    ss.source_files =   'InjectionBundle/InjectionClient.{h,mm}',
                        'InjectionBundle/NSObjectSwiftInjection.swift',
                        'InjectionBundle/UIViewControllerSwiftInjection.swift',
                        'InjectionBundle/SwiftEval.swift',
                        'InjectionBundle/SwiftInjection.swift',
                        'InjectionBundle/Vaccine.swift',
                        'InjectionBundle/XprobeSwift-Bridging-Header.h',
                        'InjectionIII/InjectionEnum.h',
                        'InjectionIII/SimpleSocket.{h,mm}',
                        'XprobePlugin/Classes/Xprobe.h',
                        'XprobePlugin/Classes/Xtrace.h',
                        'XprobePlugin/XprobeSwift/SwiftSwizzler.swift',
                        'XprobePlugin/XprobeSwift/XprobeSwift.swift',
                        'InjectionBundle/XCTestInjectionClient.{h,mm}',
                        'InjectionBundle/XCTestSwiftInjection.swift'
    ss.framework = 'XCTest'
    ss.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '$(PLATFORM_DIR)/Developer/Library/Frameworks' }
    ss.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  end

end
