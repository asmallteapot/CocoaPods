require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe XcodeBuild do
    describe 'Meta' do
      it 'can locate the `xcodebuild` command' do
        Executable.expects(:which).with('xcodebuild').once
      end
    end
  end
end
