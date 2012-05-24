Group.destroy_all

["Abs", "Arms", "Back", "Chest", "Legs"].each do |group|
  Group.create!(name: group)
end
