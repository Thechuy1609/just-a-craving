module ApplicationHelper
  def flash_class(flash_type)
      case flash_type
      when "notice"
        "border-green-500 bg-green-100"
      when "alert"
        "border-red-500 bg-red-100"
      else
        "border-gray-500 bg-gray-100"
      end
  end
end
