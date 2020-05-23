class User<ActiveRecord::Base
  def to_displayable
      "#{name} #{email} #{password}"
  end
end
