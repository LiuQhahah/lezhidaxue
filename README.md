# README

跟着栋哥学ruby
#25期网页布局介绍——什么是bootstrap

	
开启服务
	
	liu@liu:~/ruby_project/lezhidaxue$ rails s
	/var/lib/gems/2.3.0/gems/railties-5.0.6/lib/rails/app_loader.rb:40: warning: Insecure world writable dir /home/liu in PATH, mode 040777
	=> Booting Puma
	=> Rails 5.0.6 application starting in development on http://localhost:3000
	=> Run `rails server -h` for more startup options
	Puma starting in single mode...
	* Version 3.11.2 (ruby 2.3.1-p112), codename: Love Song
	* Min threads: 5, max threads: 5
	* Environment: development
	* Listening on tcp://0.0.0.0:3000
	Use Ctrl-C to stop
	^[Started GET "/" for 127.0.0.1 at 2018-02-28 22:34:53 +0800
  	ActiveRecord::SchemaMigration Load (510.2ms)  SELECT `schema_migrations`.* FROM `schema_migrations`
	Processing by DemoController#print as HTML
 	 Rendering demo/print.html.erb within layouts/application
 	 Rendered demo/print.html.erb within layouts/application (5.9ms)
	Completed 200 OK in 535ms (Views: 510.8ms | ActiveRecord: 0.0ms)


在Gemfile添加如下语句，[原文链接](https://github.com/twbs/bootstrap-rubygem) 
	
	gem 'bootstrap', '~> 4.0.0'
	gem 'jquery-rails'

然后bundle install下

	liu@liu:~/ruby_project/lezhidaxue$ bundle install


