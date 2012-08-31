module SimpleLogin
  module Generators
    class SimpleLoginGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)


      def create_user
        generate("model", "user email:string password_digest:string auth_token:string password_reset_token:string password_reset_sent_at:datetime")
        rake("db:migrate")
        remove_file "user.rb", "app/models/user.rb"
      end

      def generate_user
        # Copy the controllers for user, sessions and password_reset
        directory "controllers", "app/controllers/"
        directory "mailers", "app/mailers/"
        directory "models", "app/models/"
        directory "views", "app/views/"
      end

      def insert_general_methods
        inject_into_file "app/controllers/application_controller.rb", after: "protect_from_forgery"  do
          a = "\n\n  private\n\n  def current_user\n"
          b = "    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]\n"
          c = "  end\n"
          d = "\n  helper_method :current_user\n\n"
          e = "  def authorize\n"
          f = "    redirect_to login_url, alert: 'Not authorized. Please login.' if current_user.nil?\n"
          g = "  end\n"
          a+b+c+d+e+f+g
        end
      end

      def insert_routes
        route("match 'signup', to: 'users#new', as: 'signup'")
        route("match 'login', to: 'sessions#new', as: 'login'")
        route("match 'logout', to: 'sessions#destroy', as: 'logout'")
        route("resources :users")
        route("resources :sessions")
        route("resources :password_resets")
      end

      def add_gems
        gem("bcrypt-ruby")
      end


    end
  end
end
