desc "Clean all"
task clean: :environment do
  Dashboard.destroy_all
end

desc "Build CI Jenkins widgets for the default projects, or update the existing ones with default attributes"
task build: :environment do
  dashboard = Dashboard.find_or_create_by(:name => "View")

  default_settings = BackendSettings.config.jenkins

  # all_results = Sources::Ci::Jenkins.new.request_build_status(url)
  # all_project_names = all_results["Projects"]["Project"].map { |attrs| attrs["name"] }

  all_project_names = default_settings["projects"]
  all_project_names.each do |project_name|
    settings = { server_url: default_settings["url"], project: project_name }
    widget =
      dashboard.widgets.find_by(settings: settings.to_yaml) ||
        dashboard.widgets.build(settings: settings)
    widget.attributes = { name: "CI Build Status",
                          kind: "ci",
                          size_x: 2,
                          size_y: 1,
                          source: "jenkins",
                          update_interval: 10 }
    widget.save!
  end
end
