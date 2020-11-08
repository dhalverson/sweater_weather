class ForecastSerializer
  include FastJsonapi::ObjectSerializer
  attributes 
  set_id 'nil?'
  set_type :forecast
end