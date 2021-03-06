# Hello, Rails

### 1. `vagrant` 서버 실행(window 작업 시)

   **반드시 `Vagrantfile`이 있는 곳**에서 실행해야함. (/students/vagrant)

   ```console
   $ vagrant up
   $ vagrant ssh
   $ cd /vagrant
   ```



### 2. 새로운 Rails 프로젝트 생성

   ```console
   $ rails new projectname
   $ cd projectname
   ```



### 3. Rails 서버 실행

   ```console
   $ rails server
   ```

### 4. 컨트롤러 생성

   ```console
   $ rails generate controller이름 action1이름 action2이름
   ```



### 5. routes 및 페이지 설정

   ```ruby
   # config/routes.rb
   # localhost:3000으로 요청이오면(루트페이지), home#index를 실행하세요.
   root 'home#index'
   # localhost:3000/home/index로 요청이오면, home컨트롤러의 index 액션을 실행하세요.
   get 'home/index' => 'home#index'
   ```

   ```ruby
   # app/controllers/home_controller.rb
   def index
   end
   ```

   ```erb
   <!-- app/views/home/index.html.erb -->
   안녕!
   ```

### 6. layout

   ```erb
   <!-- 모든 html.erb파일은 기본적으로 app/views/layouts/application.html.erb의 영향을 받는다. -->
   <html>
       <head>
       </head>
       <body>
           <%= yield %>
       </body>
   </html>
   ```



## - form으로 데이터 받기

### 1. `routes.rb`

   ```ruby
   # config/routes.rb
   get '/game' => 'home#game'
   get '/gameresult' => 'home#gameresult'
   ```



### 2. `home_controller.rb`

   ```ruby
   # app/controllers/home_controller.rb
   def game
   end

   def gameresult
    @username = params[:name]
   end
   ```



### 3. `view` 파일 만들기

   ```erb
   <!-- app/views/home/game.html.erb -->
   <form action="/gameresult">
       <input name="name">
   </form>
   ```

   ```erb
   <!-- app/views/home/gameresult.html.erb -->
   <%= @username %> 하이!
   ```
