class ForecastSerializer
  include FastJsonapi::ObjectSerializer
  attributes :dt, :sunrise, :sunset, :temp, :feels_like, :humidity, :uvi, :visibility, :description, :icon
  set_id 'nil?'
  set_type :forecast
end