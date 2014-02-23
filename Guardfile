guard 'spork' do
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb') { :rspec }
  watch('main.rb')
end

guard 'rspec', all_after_pass: false, cli: '--drb' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/factories/.+\.rb$})
  watch('spec/spec_helper.rb')                { "spec" }
  watch(%r{^spec/support/(.+)\.rb$})          { "spec" }
  watch(%r{views/(.+)\.rb$})                  { "spec" }
  watch('main.rb')
end
