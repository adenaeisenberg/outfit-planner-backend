json.id outfit.id
json.user_id outfit.user_id
json.day outfit.day.strftime('%A, %B %e')
json.bottom outfit.bottom
json.top outfit.top

json.bottom outfit.bottom, partial: "bottoms/bottom", as: :bottom
json.top outfit.top, partial: "tops/top", as: :top
