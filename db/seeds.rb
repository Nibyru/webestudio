# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	puts "<<<<<<<<<< Creando Admin >>>>>>>>>>"
	Admin.create(email: 'admin@admin.com', password: 'password')
	puts "<<<<<<<<<< Admin creado con exito >>>>>>>>>>"
	puts "<<<<<<<<<< Creando contenido >>>>>>>>>>"
	Content.create(
		person_message:     'Buscamos ser líderes en asesoramiento de empresas.',
		person_info:        'CEO Juan Pepe',
		about_us:           'C&C Asociados es un grupo de profesionales que brinda servicios integrales de consultoría, ofreciendo soluciones concretas a las necesidades de los empresarios.',
		us_message:         'Nuestra misión es acompañar a nuestros clientes en su crecimiento y en la búsqueda de la excelencia.',
		direction:          'Jorge Newbery 736',
		telephone:          '+54-381-5391431',
		email:              'contacto@contacto.com',
		photo_file_name:    'team2.jpg',
		photo_content_type: 'image/jpeg',
		photo_file_size:    76363
	)
	puts "<<<<<<<<<< Contenido creado con exito >>>>>>>>>>"
	puts "<<<<<<<<<< Creando links >>>>>>>>>>"
	6.times do 
		Link.create(
		 	name: "AFIP",
		 	description: nil,
		 	url: "http://www.afip.gov.ar/‎",
		 	photo_file_name: "AFIP-big.gif",
		 	photo_content_type: "image/gif",
		 	photo_file_size: 3157
		)
	end
	puts "<<<<<<<<<< Links creados con exito >>>>>>>>>>"
	puts "<<<<<<<<<< Creando users >>>>>>>>>>"
	6.times do
		User.create(
			name: "CPN Juan Pepe",
			job: "<span>Analista Semi Senior de Impuestos<br>Analista...",
			twitter: "",
			facebook: "",
			photo_file_name: "team2.jpg",
			photo_content_type: "image/jpeg",
			photo_file_size: 76363
		)
	end
	puts "<<<<<<<<<< Users creados con exito >>>>>>>>>>"
	puts "<<<<<<<<<< Creando services >>>>>>>>>>"
	6.times do
		Service.create( 
			symbol: "icon-check",
			title: "Consultoría y Gestión",
			header: "Buscamos ofrecerles las soluciones más innovadoras ...",
			body: "<ul><li>Análisis y evaluación del negocio actual y ..."
		)
	end
	puts "<<<<<<<<<< Services creados con exito >>>>>>>>>>"
	puts "<<<<<<<<<< Creando slider >>>>>>>>>>"
	3.times do
		Slider.create( 
			title: "Una noticia",
			header: "Tenemos una noticia para darte",
			photo_file_name: "office_training.jpg",
			photo_content_type: "image/jpeg",
			photo_file_size: 145734
		)
	end
	puts "<<<<<<<<<< Services creados con exito >>>>>>>>>>"