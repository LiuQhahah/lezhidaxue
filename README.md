# README

跟着栋哥学ruby
#26期网页布局介绍——什么是bootstrap

	
>bootstrap:twitter出品的前端框架，字体渲染

1. 开启服务
	
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


2. 在Gemfile添加如下语句，[原文链接](https://github.com/twbs/bootstrap-rubygem) 
	
	gem 'bootstrap', '~> 4.0.0'
	gem 'jquery-rails'

然后bundle install下

	liu@liu:~/ruby_project/lezhidaxue$ bundle install

3. 更改文件名

	liu@liu:~/ruby_project/lezhidaxue$  mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss

并删除`.scss`文件中带有`*= require`以及`*= require_tree`
在`.scss`文件中添加

	// Custom bootstrap variables must be set or imported *before* bootstrap.
	@import "bootstrap";

4. 获取rails版本号，如果时Rails 5.1+，需要在`Gemfile`中添加如下语句

		gem 'jquery-rails'
经验证，本机不满足以上条件

		liu@liu:~/ruby_project/lezhidaxue$ rails version
		/var/lib/gems/2.3.0/gems/railties-5.0.6/lib/rails/app_loader.rb:40: warning: Insecure world writable dir /home/liu in PATH, mode 040777
		Rails 5.0.6

4. 重新启动

##2.设置状态栏，
在bootstrap官网，随便找一个状态栏的demo,将代码拷贝下来。[链接](https://getbootstrap.com/docs/4.0/components/navbar/) 

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
 	 <a class="navbar-brand" href="#">Navbar</a>
 	 <button class="navbar-toggler" type="button" data-	toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  	</button>

  	<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>


将以上代码拷贝到`app/views/layouts/application.html.erb`中，放在`body`下


不需要重启服务，刷新页面`http://127.0.0.1:3000`，即可。