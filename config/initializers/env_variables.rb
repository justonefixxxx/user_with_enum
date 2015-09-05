Rails.application.config.before_configuration do
  env_file = File.join(Rails.root, 'config', 'local_env.yml')
  YAML.load(File.open(env_file)).each do |key, val|
    ENV[key.to_s] = val
  end if File.exists?(env_file)  
end
