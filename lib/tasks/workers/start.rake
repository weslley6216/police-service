namespace :workers do
  desc 'Starting all workers for application'
  task start: :environment do
    worker_files = Dir.glob('app/workers/*.rb')
    worker_files.each do |file|
      worker_class = File.basename(file, '.rb').classify.constantize
      puts "Starting workers for #{worker_class}..."
      system "WORKERS=#{worker_class} bundle exec rake sneakers:run"
    end
  end
end
