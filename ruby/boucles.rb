utilisateurs = [
	"Alice","Bob","John"
]
i = 0
utilisateurs.each do |user|
	puts i +=1
	puts user 
	end

	puts "\n" 
#10.times do |i| #i prend des valeurs de 0 à 9
	#puts "Hello #{i}"
		#i.times do 
		#puts "World !"
		#end
	#end

jours_ouvres = [
  "lundi","mardi","mercredi","jeudi","vendredi"
]

i=5

jours_ouvres.each do |jour|
	  if jour == "vendredi" 
	    puts jour + " : Bon weekend !"
	  elsif jour == "lundi"
	    puts jour + " : Bon courage !"
	  else
	    puts jour + " : Weekend dans #{i} jours !"
	  end
	  i-=1
end

7.times do 
  puts "tourner sa langue"
end
puts "... et parler !"
