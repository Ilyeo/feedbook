puts '... Creating employees ...'

edwin = Feedbook::Employee.create!(email: 'edwin.cruz@magmalabs.io')
tapia = Feedbook::Employee.create!(email: 'jonathan.tapia@magmalabs.io', parent: edwin)
rogelio = Feedbook::Employee.create!(email: 'rogelio.alatorre@magmalabs.io', parent: tapia)



def add_skill_groups(skill_groups)
  skill_groups.each do |skill_group|
    Feedbook::SkillGroup.where(name: skill_group[:name]).first_or_create
  end
end

puts '... Creating skill groups ...'
skill_groups_list = [
  { name: 'Backend' },
  { name: 'FrontEnd' },
  { name: 'Mobile' },
  { name: 'Database' },
  { name: 'Testing' },
  { name: 'DevOps' },
  { name: 'Software Engineering' },
  { name: 'Soft Skill' }
]
add_skill_groups(skill_groups_list)
