require "rubygems"
require "bundler"
Bundler.setup

namespace :styles do
  
  desc "Run compass stats"
  task :stats => ["stats:default"]

  namespace :stats do

    task :default do
      puts "*** Running compass stats ***"
      system "compass stats"
    end

    desc "Create a log of compass stats"
    task :log do
      t = DateTime.now
      filename = "compass-stats-#{t.strftime("%Y%m%d")}-#{t.strftime("%H%M%S")}.log"
      log_dir = "log"
      puts "*** Logging stats ***"
      system "compass stats > #{log_dir}/#{filename}"
      puts "Created #{log_dir}/#{filename}"
    end
    
  end
  
  desc "Clear the styles"
  task :clear => ["compile:clear"]
  
  desc "List the styles"
  task :list do
    system "ls -lh public/stylesheets"
  end
  
  desc "Compile new styles"
  task :compile => ["compile:default"]

  namespace :compile do
    
    task :clear do
      puts "*** Clearing styles ***"
      system "rm -Rfv public/stylesheets/*"
    end

    task :default => :clear do
      puts "*** Compiling styles ***"
      system "compass compile"
    end

    desc "Compile new styles for production"
    task :production => :clear do
      puts "*** Compiling styles ***"
      system "compass compile --output-style compressed --force"
    end

  end
  
end

desc "Generate a new project at dir=foo"
task :generate do
  # Generate the new 'dir' if it's not already created
  system "mkdir #{(ENV['dir'])}" unless File.exists?(ENV['dir'])
  
  # Archive the current HEAD to 'dir'
  system "git archive HEAD | (cd #{ENV['dir']} && tar -xvf -)"

  puts "\n *** A new project has been generated at: #{(ENV['dir'])} ***"
end