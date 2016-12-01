




# data_structures
#a hash that contains bands and array of their genres. 
#create a data structure that represents a real world construct
#print the structure
#print a few pieces of nested of nested data.
#demonstrat a few types of access. 

band_genre_hash = { 
	'Venom' => ['Black Metal', 'Classic Metal'],
	'Megadeth' => ['Thrash Metal'],
	'Cannibal Corpse' => ['Death Metal'], 
	'Bathory' => ['Black Metal', 'Pagan Metal'],
	'The Sword' => ['Sword Metal'],
	'Pallbearer' => ['Doom Metal'],
	'Inferos' => ['Black Metal', 'Death Metal', 'Grindcore'],
	'Napalm Death' => ['Grindcore']
}

p band_genre_hash

p band_genre_hash['Cannibal Corpse']

p band_genre_hash['Inferos']
band_genre_hash['Inferos'].push('Avant Garde') 
p band_genre_hash['Inferos']

p band_genre_hash['Venom'][1]

band_genre_hash['Cannibal Corpse'].insert(0, 'OG Death Metal') 

p band_genre_hash['Cannibal Corpse']







