module ApplicationHelper
end

=begin
## Copié de l'app eventbrite olivier
  module ApplicationHelper

  # REF https://coderwall.com/p/jzofog/ruby-on-rails-flash-messages-with-bootstrap
  def flash_class(level)
    case level
        when 'notice' then "alert alert-info alert-dismissible fade show"
        when 'success' then "alert alert-success alert-dismissible fade show"
        when 'warning' then "alert alert-warning alert-dismissible fade show"
        when 'alert' then "alert alert-error alert-dismissible fade show"
    end
  end
  # REF https://www.railstutorial.org/book/rails_flavored_ruby#code-application_layout_full_title
  def full_title(page_title = '')
    base_title = "evntMGMT"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def user_is_admin(user)
    # SU is a global variable defining email of 'Super User"
    # in config/initializers/my_constants.rb
    user.email == SU ? true : false
  end
end

=end