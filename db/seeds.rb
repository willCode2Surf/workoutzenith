Group.destroy_all
Exercise.destroy_all

["Abs", "Arms", "Back", "Chest", "Legs"].each do |group|
  Group.create!(name: group)
end
#abs
Exercise.create(name: 'Stomach Chrunch', description: 'description', Group: Group.where(:name => 'Abs'))
