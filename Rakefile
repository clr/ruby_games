require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "rspecifunny"
    s.summary = %Q{TODO}
    s.email = "clr@port49.com"
    s.homepage = "http://github.com/clr/rspecifunny"
    s.description = "TODO"
    s.authors = ["clr"]
  end
rescue LoadError
#  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'rspecifunny'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.libs << 'lib' << 'spec'
  t.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |t|
  t.libs << 'lib' << 'spec'
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.rcov = true
end

begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)
rescue LoadError
#  puts "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
end

namespace :count do

  desc "DB Time"
  task :db_time do
    require 'benchmark'

    report = Benchmark.measure do
      filename = "log/joyent_production.log.20080305.short.txt"
      filesize = File.size "log/joyent_production.log.20080305.short.txt"
      filechunk = ( filesize / 10 ).to_i
      db_time_sum = 0.0

      f = []
      Thread.new do
        f[0] = File.open( filename, 'r' )
        f[0].pos = ( 0 * filechunk )
        while( ( f[0].pos < ( filechunk + ( 0 * filechunk ) ) ) && ( line = f[0].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.join
      Thread.new do
        f[1] = File.open( filename, 'r' )
        f[1].pos = ( 1 * filechunk )
        while( ( f[1].pos < ( filechunk + ( 1 * filechunk ) ) ) && ( line = f[1].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.join
      Thread.new do
        f[2] = File.open( filename, 'r' )
        f[2].pos = ( 2 * filechunk )
        while( ( f[2].pos < ( filechunk + ( 2 * filechunk ) ) ) && ( line = f[2].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.join
      Thread.new do
        f[3] = File.open( filename, 'r' )
        f[3].pos = ( 3 * filechunk )
        while( ( f[3].pos < ( filechunk + ( 3 * filechunk ) ) ) && ( line = f[3].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.join
      Thread.new do
        f[4] = File.open( filename, 'r' )
        f[4].pos = ( 4 * filechunk )
        while( ( f[4].pos < ( filechunk + ( 4 * filechunk ) ) ) && ( line = f[4].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.join
      Thread.new do
        f[5] = File.open( filename, 'r' )
        f[5].pos = ( 5 * filechunk )
        while( ( f[5].pos < ( filechunk + ( 5 * filechunk ) ) ) && ( line = f[5].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.join
      Thread.new do
        f[6] = File.open( filename, 'r' )
        f[6].pos = ( 6 * filechunk )
        while( ( f[6].pos < ( filechunk + ( 6 * filechunk ) ) ) && ( line = f[6].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.join
      Thread.new do
        f[7] = File.open( filename, 'r' )
        f[7].pos = ( 7 * filechunk )
        while( ( f[7].pos < ( filechunk + ( 7 * filechunk ) ) ) && ( line = f[7].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.join
      Thread.new do
        f[8] = File.open( filename, 'r' )
        f[8].pos = ( 8 * filechunk )
        while( ( f[8].pos < ( filechunk + ( 8 * filechunk ) ) ) && ( line = f[8].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.join
      Thread.new do
        f[9] = File.open( filename, 'r' )
        f[9].pos = ( 9 * filechunk )
        while( ( f[9].pos < ( filechunk + ( 9 * filechunk ) ) ) && ( line = f[9].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.join

      puts db_time_sum.to_s + " seconds used by the DB." 
    end
    puts report
  end

  desc "Fibrous DB Time"
  task :db_time_fiber do
    require 'benchmark'

    report = Benchmark.measure do
      filename = "log/joyent_production.log.20080305.short.txt"
      filesize = File.size "log/joyent_production.log.20080305.short.txt"
      filechunk = ( filesize / 10 ).to_i
      db_time_sum = 0.0

      f = []
      Fiber.new do
        f[0] = File.open( filename, 'r' )
        f[0].pos = ( 0 * filechunk )
        while( ( f[0].pos < ( filechunk + ( 0 * filechunk ) ) ) && ( line = f[0].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.resume
      Fiber.new do
        f[1] = File.open( filename, 'r' )
        f[1].pos = ( 1 * filechunk )
        while( ( f[1].pos < ( filechunk + ( 1 * filechunk ) ) ) && ( line = f[1].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.resume
      Fiber.new do
        f[2] = File.open( filename, 'r' )
        f[2].pos = ( 2 * filechunk )
        while( ( f[2].pos < ( filechunk + ( 2 * filechunk ) ) ) && ( line = f[2].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.resume
      Fiber.new do
        f[3] = File.open( filename, 'r' )
        f[3].pos = ( 3 * filechunk )
        while( ( f[3].pos < ( filechunk + ( 3 * filechunk ) ) ) && ( line = f[3].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.resume
      Fiber.new do
        f[4] = File.open( filename, 'r' )
        f[4].pos = ( 4 * filechunk )
        while( ( f[4].pos < ( filechunk + ( 4 * filechunk ) ) ) && ( line = f[4].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.resume
      Fiber.new do
        f[5] = File.open( filename, 'r' )
        f[5].pos = ( 5 * filechunk )
        while( ( f[5].pos < ( filechunk + ( 5 * filechunk ) ) ) && ( line = f[5].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.resume
      Fiber.new do
        f[6] = File.open( filename, 'r' )
        f[6].pos = ( 6 * filechunk )
        while( ( f[6].pos < ( filechunk + ( 6 * filechunk ) ) ) && ( line = f[6].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.resume
      Fiber.new do
        f[7] = File.open( filename, 'r' )
        f[7].pos = ( 7 * filechunk )
        while( ( f[7].pos < ( filechunk + ( 7 * filechunk ) ) ) && ( line = f[7].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.resume
      Fiber.new do
        f[8] = File.open( filename, 'r' )
        f[8].pos = ( 8 * filechunk )
        while( ( f[8].pos < ( filechunk + ( 8 * filechunk ) ) ) && ( line = f[8].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.resume
      Fiber.new do
        f[9] = File.open( filename, 'r' )
        f[9].pos = ( 9 * filechunk )
        while( ( f[9].pos < ( filechunk + ( 9 * filechunk ) ) ) && ( line = f[9].gets ) )
          if line_match = line.match( /(...) (..) (..):(..):(..) ideablob rails\[(\d+)\]: Completed in ([\S]+) .+ Rendering: ([\S]+) .+ DB: ([\S]+) \(([\d\.]+)%\) \| ([\d]{3}) (\w+)/ )
            db_time_sum = db_time_sum + line_match[9].to_f
          end
        end
      end.resume

      puts db_time_sum.to_s + " seconds used by the DB." 
    end
    puts report
  end
end
# Jan 17 03:14:47 domain.com rails[21891]: Completed in 0.30499 (3 reqs/sec) | Rendering: 0.08480 (27%) | DB: 0.19095 (62%) | 200 OK [http://domain.com/]

task :default => :spec
