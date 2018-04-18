puts '... Creating employees ...'

edwin = Feedbook::Employee.create!(email: 'edwin.cruz@magmalabs.io')
tapia = Feedbook::Employee.create!(email: 'jonathan.tapia@magmalabs.io', parent: edwin)
rogelio = Feedbook::Employee.create!(email: 'rogelio.alatorre@magmalabs.io', parent: tapia)
