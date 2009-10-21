# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

=begin
task 'torquebox:rails:deploy:bundle'=>[ 'torquebox:rails:bundle' ] do
  bundle_name = File.basename( RAILS_ROOT ) + '.jar' 
  src  = "#{RAILS_ROOT}/#{bundle_name}"
  dest = "#{ENV['JBOSS_HOME']}/server/default/deploy/" 
  puts "deploying #{bundle_name}"
  FileUtils.cp( src, dest )
end

task 'torquebox:rails:bundle' do
  puts "Bundling #{RAILS_ROOT}"
  bundle_name = File.basename( RAILS_ROOT ) + '.jar'
  FileUtils.rm_rf( bundle_name )

  skip_files = [
    'log',
    'tmp',
  ]
  include_files = []
  Dir[ "#{RAILS_ROOT}/*" ].each do |entry|
    entry = File.basename( entry )
    unless ( skip_files.include?( entry ) )
      include_files << entry
    end
  end

  puts "building bundle #{bundle_name}"

  Dir.chdir( RAILS_ROOT ) do
    cmd = "jar cf #{bundle_name} #{include_files.join(' ')}"
    Open3.popen3( cmd ) do |stdin, stdout, stderr|
      stdin.close
      stdout_thr = Thread.new(stdout) {|stdout_io|
        stdout_io.readlines.each do |l|
          puts l
        end
        stdout_io.close
      }
      stderr_thr = Thread.new(stderr) {|stderr_io|
        stderr_io.readlines.each do |l|
          puts l
        end
      }
      stdout_thr.join
      stderr_thr.join
    end
  end
end
=end
