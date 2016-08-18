# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Order.delete_all
#Order.create(usuario: 'Christian Eduardo Rodriguez Hernandez', carrera: '9-ITI-1', archivo: 'Integradora.pdf', monto: '15', pago: 'Pagado', estado: 'impreso')
#Order.create(usuario: 'David Andres Muñoz Treviño', carrera: '9-ITI-1', archivo: 'Integradora2.pdf', monto: '3', pago: 'Adeudo', estado: 'impreso')
#Order.create(usuario: 'Cristian Hassan Jeronimo Casares', carrera: '9-ITI-1', archivo: 'Integradora3.pdf', monto: '11', pago: 'Adeudo', estado: 'cancelado')
#Order.create(usuario: 'Carlos Perez', carrera: '4-ITI-1', archivo: 'Tarea.pdf', monto: '1', pago: 'Pagado', estado: 'progreso')
#Order.create(usuario: 'Francisco Lopez', carrera: '4-ITI-1', archivo: 'Tarea.pdf', monto: '5', pago: 'Pagado', estado: 'progreso')
#Order.create(usuario: 'Eduardo Hernandez', carrera: '2-ITI-1', archivo: 'Tarea.pdf', monto: '7', pago: 'Adeudo', estado: 'entregado')
#Order.create(usuario: 'Fernando Ramos', carrera: '8-ITI-1', archivo: 'Tarea.pdf', monto: '8', pago: 'Pagado', estado: 'impreso')
#Order.create(usuario: 'Andrea Larios', carrera: '8-ITI-1', archivo: 'Tarea.pdf', monto: '2', pago: 'Pagado', estado: 'cancelado')


Order.create(user_id: '1', linkFile: 'Integradora.pdf', mount: '15.0', paid: '1', state: '1')
Order.create(user_id: '2', linkFile: 'tarea.pdf', mount: '13.0', paid: '1', state: '1')
Order.create(user_id: '3', linkFile: 'Integradora.pdf', mount: '15.0', paid: '1', state: '1')
Order.create(user_id: '4', linkFile: 'tarea.pdf', mount: '13.0', paid: '1', state: '1')
Order.create(user_id: '5', linkFile: 'Integradora.pdf', mount: '15.0', paid: '1', state: '1')
Order.create(user_id: '6', linkFile: 'tarea.pdf', mount: '13.0', paid: '1', state: '1')
Order.create(user_id: '7', linkFile: 'Integradora.pdf', mount: '15.0', paid: '1', state: '1')
Order.create(user_id: '8', linkFile: 'tarea.pdf', mount: '13.0', paid: '1', state: '1')

#User.create(email: 'a20130297@utem.edu.mx', encrypted_password: '1234', sign_in_count: '1', name: 'David Andres Muñoz Treviño', career: 'tic')
#User.create(email: 'a20130298@utem.edu.mx', encrypted_password: '12345', sign_in_count: '1', name: 'Eduardo Andres Muñoz Treviño', career: 'gastro')