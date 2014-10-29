class CronicGenerator < Rails::Generators::Base
  source_root File.expand_path("../../../templates", __FILE__)

  desc "Creates the bin/cronic daemon control script and sets up job samples in config/cronic.d"

  def create_scheduler_script
    copy_file "bin/cronic"
    chmod 'bin/cronic', 0755
  end

  def create_jobs_dir
    directory "config/cronic.d"
  end
end
