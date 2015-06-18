#creat a select box of state
states = {'HN' => 'Ha noi','HCM' => 'Ho Chi Minh','DN' => 'Da Nang'}

puts"<select name='state'>"
states.each do |state,abbrev|
  puts"\t<option value='#{state}'>#{abbrev}</option>"
end
puts"</select>"