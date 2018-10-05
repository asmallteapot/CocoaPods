module Pod
  class XcodeBuild
    BUILD_TOOL = 'xcodebuild'

    def self.which
      Pod::Executable.which(BUILD_TOOL)
    end

    def self.available?
      !which.nil?
    end
  end
end
