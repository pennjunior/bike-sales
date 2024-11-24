module ApplicationHelper
  def flash_class(level)
    case level.to_sym
    when :notice then "alert-success"  # Bootstrap success alert
    when :alert then "alert-danger"   # Bootstrap danger alert
    when :error then "alert-danger"   # For error messages
    when :warning then "alert-warning" # Bootstrap warning alert
    else "alert-info"                 # Default alert type
    end
  end
end
