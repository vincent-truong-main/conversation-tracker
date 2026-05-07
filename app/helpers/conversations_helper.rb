module ConversationsHelper
  def energy_badge_class(energy)
    case energy
    when "draining"   then "bg-red-100 text-red-700"
    when "medium"     then "bg-gray-100 text-gray-600"
    when "energizing" then "bg-green-100 text-green-700"
    end
  end

  def engagement_badge_class(engagement)
    case engagement
    when "boring"   then "bg-orange-100 text-orange-700"
    when "neutral"  then "bg-gray-100 text-gray-600"
    when "engaging" then "bg-blue-100 text-blue-700"
    end
  end
end
