Rails.application.config.assets.version = "1.0"
Rails.application.config.assets.paths << Rails.root.join("node_modules")
Rails.application.config.assets.precompile += %w( static_pages.scss users.scss )
