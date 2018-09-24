guard 'bundler' do
  watch('Gemfile')
  watch(/^.+\.gemspec/)
end

guard :rubocop do
  watch(%r{.+\.rb$})
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end

# parameters:
#  output     => the formatted to use
#  backtrace  => number of lines, nil =  everything
guard 'bacon', output: 'BetterOutput', backtrace: 4 do
  watch(%r{^lib/(.+)\.rb$})     { |m| "specs/lib/#{m[1]}_spec.rb" }
  watch(%r{specs/.+\.rb$})
end
