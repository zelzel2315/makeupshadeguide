TrueShade.delete_all
User.delete_all
Makeup.delete_all

ts = TrueShade.create([
  {name: "Very-Fair", description: "Very-fair means you fall in the pale skin color range. You sunburn almost insantly and must have skin protection all the time. Your skin is a porcelain color that is almost clear."},
  {name: "Fair 1", description: "Fair 1 means you fall in the fair skin color range. You sunburn very easily and get freckles when you burn. Your skin is a pale porcelain color with a blue undertone."},
  {name: "Fair 2", description: "Fair 2 means you fall in the fair skin color range. You sunburn very easily and get freckles when you burn. Your skin is a pale porcelain color with a green undertone."},
  {name: "Fair 3", description: "Fair 3 means you fall in the fair skin color range. You sunburn very easily and get freckles when you burn. Your skin is a pale porcelain color with a pink undertone."},
  {name: "Fair-light 4", description: "Fair-light 4 means you fall in the lightest of light skin color range. You sunburn easily and rarely tan. Your skin is a pale ivory color with a yellow undertone."},
  {name: "Fair-light 2", description: "Fair-light 2 means you fall in the lightest of light skin color range. You sunburn easily and rarely tan. Your skin is a pale ivory color with a green undertone."},
  {name: "Fair-light 3", description: "Fair-light 3 means you fall in the lightest of light skin color range. You sunburn easily and rarely tan. Your skin is a pale ivory color with a pink undertone."},
  {name: "Light 4", description: "Light 4 means you fall in the light skin color range. You sunburn pretty easily but can tan slightly with SPF protection. Your skin is an ivory color with a yellow undertone."},
  {name: "Light 2", description: "Light 2 means you fall in the light skin color range. You sunburn pretty easily but can tan slightly with SPF protection. Your skin is an ivory color with a green undertone."},
  {name: "Light 3", description: "Light 3 means you fall in the light skin color range. You sunburn pretty easily but can tan slightly with SPF protection. Your skin is an ivory color with a pink undertone."},
  {name: "Light-medium 4", description: "Light-medium 4 means you fall in the lightest of medium skin color range. You sunburn pretty easily but can tan with SPF protection. Your skin is a cream/ripe cashew nut kind of color with a yellow undertone."},
  {name: "Light-medium 5", description: "Light-medium 5 means you fall in the lightest of medium skin color range. You sunburn pretty easily but can tan with SPF protection. Your skin is a cream/ripe cashew nut kind of color with a neutral undertone."},
  {name: "Light-medium 3", description: "Light-medium 3 means you fall in the lightest of medium skin color range. You sunburn pretty easily but can tan with SPF protection. Your skin is a cream/ripe cashew nut kind of color with a pink undertone."},
  {name: "Medium 4", description: "Medium 4 means you fall in the medium skin color range, common among 80% of women. You sometimes sunburn but tan easily with SPF protection. Your skin is a beige color with a yellow undertone."},
  {name: "Medium 5", description: "Medium 5 means you fall in the medium skin color range, common among 80% of women. You sometimes sunburn but tan easily with SPF protection. Your skin is a beige color with a neutral undertone."},
  {name: "Medium 3", description: "Medium 3 means you fall in the medium skin color range, common among 80% of women. You sometimes sunburn but tan easily with SPF protection. Your skin is a beige color with a pink undertone."},
  {name: "Light-tan 4", description: "Light-tan 4 means you fall in the light-tan skin color range. You rarely sunburn and always tan. Your skin is an iced coffee kind of color with a yellow undertone."},
  {name: "Light-tan 2", description: "Light-tan 2 means you fall in the light-tan skin color range. You rarely sunburn and always tan. Your skin is an iced coffee kind of color with a green undertone."},
  {name: "Light-tan 6", description: "Light-tan 6 means you fall in the light-tan skin color range. You rarely sunburn and always tan. Your skin is an iced coffee kind of color with a golden undertone."},
  {name: "Tan 6", description: "Tan 6 means you fall in the tan skin color range. You rarely sunburn and always tan. Your skin is a caramel color with a golden undertone."},
  {name: "Tan 2", description: "Tan 2 means you fall in the tan skin color range. You rarely sunburn and always tan. Your skin is a caramel color with a green undertone."},
  {name: "Tan 7", description: "Tan 7 means you fall in the tan skin color range. You rarely sunburn and always tan. Your skin is a caramel color with a red undertone."},
  {name: "Dark tan 6", description: "Dark tan 6 means you fall in the dark tan color range. You rarely sunburn and sometimes tan. Your skin is a milk chocolate color with a golden undertone."},
  {name: "Dark tan 2", description: "Dark tan 2 means you fall in the dark tan color range. You rarely sunburn and sometimes tan. Your skin is a milk chocolate color with a green undertone."},
  {name: "Dark tan 7", description: "Dark tan 7 means you fall in the dark tan color range. You rarely sunburn and sometimes tan. Your skin is a milk chocolate color with a red undertone."},
  {name: "Dark brown 6", description: "Dark brown 6 means you fall in the dark brown skin color range. You do not sunburn nor do you tan. Your skin is mahogany color with a golden undertone.."},
  {name: "Dark brown 2", description: "Dark brown 2 means you fall in the dark brown skin color range. You do not sunburn nor do you tan. Your skin is mahogany color with a green undertone."},
  {name: "Dark brown 7", description: "Dark brown 7 means you fall in the dark brown skin color range. You do not sunburn nor do you tan. Your skin is mahogany color with red a undertone."},
  {name: "Deep 8", description: "Deep 8 means you fall in the darkest skin color range. You do not sunburn nor do you tan. Your skin is an espresso color with a blue-black undertone."},
  {name: "Deep 7", description: "Deep 7 means you fall in the darkest skin color range. You do not sunburn nor do you tan. Your skin is an espresso color with a red undertone."}
  ])
 
makeups = Makeup.create([
  {brand: "Giorgio Armani", product: "Luminous Silk Foundation", shade: "13", true_shade_id: ts[26].id},
  {brand: "NARS", product: "Sheer Glow Foundation", shade: "Benares", true_shade_id: ts[26].id},
  {brand: "NARS", product: "Sheer Matte Foundation", shade: "Benares", true_shade_id: ts[26].id},
  {brand: "Make Up For Ever", product: "Mat Velvet + Matifying Foundation", shade: "75", true_shade_id: ts[26].id},
  {brand: "MAC", product: "Matchmaster SPF 15 Foundation", shade: "8", true_shade_id: ts[26].id},
  {brand: "e.l.f.", product: "Studio Flawless Finish Foundation", shade: "Coco #83116", true_shade_id: ts[26].id}, 
  {brand: "L’Oreal", product: "Magic Skin Beautifier B.B. Cream", shade: "814 Medium", true_shade_id: ts[19].id},
  {brand: "L'Oreal", product: "True Match Lumi Healthy Foundation", shade: "Buff Beige", true_shade_id: ts[19].id},
  {brand: "Kat Von D", product: "Lock-it Tattoo Foundation", shade: "Medium 54", true_shade_id: ts[19].id},
  {brand: "Revlon", product: "ColorStay Makeup For Combo/Oily Skin", shade: "350 Rich Tan", true_shade_id: ts[19].id},
  {brand: "Urban Decay", product: "Naked Skin Foundation", shade: "6.0", true_shade_id: ts[19].id},
  {brand: "Chanel", product: "Vitalumiere Aqua Ultra Light Skin Perfecting Make Up SFP 15", shade: "B30 Sable", true_shade_id: ts[13].id},
  {brand: "Neutrogena", product: "Healthy Skin Liquid Makeup Broad Spectrum SPF 20", shade: "Natural Beige", true_shade_id: ts[13].id},
  {brand: "Estee Lauder", product: "Double Wear Stay-in-Place Makeup", shade: "Sand 1W2", true_shade_id: ts[13].id},
  {brand: "Revlon", product: "Colorstay Combination/Oily SPF 6", shade: "280 Golden Beige", true_shade_id: ts[13].id},
  {brand: "Tarte", product: "Powderful Amazonian Clay Pressed Mineral Powder", shade: "Medium 08", true_shade_id: ts[13].id}, 
  {brand: "Revlon", product: "Nearly Naked", shade: "260 Caramel", true_shade_id: ts[23].id},
  {brand: "Liz Earle", product: "Signature Foundation", shade: "Caramel 07", true_shade_id: ts[23].id},
  {brand: "MAC", product: "Face and Body Foundation", shade: "C7", true_shade_id: ts[23].id},
  {brand: "NARS", product: "Sheer Matte", shade: "New Orleans", true_shade_id: ts[22].id},
  {brand: "MAC", product: "Studio Fix Fluid Foundation", shade: "NW45", true_shade_id: ts[22].id},
  {brand: "e.l.f.", product: "Tinted Moisturizer", shade: "Espresso", true_shade_id: ts[22].id},
  {brand: "Iman", product: "Second to None Luminous Foundation", shade: "Earth 2", true_shade_id: ts[22].id},
  {brand: "CoverGirl", product: "Queen Collection 3 in 1 Foundation", shade: "Q840 Almond Glow", true_shade_id: ts[25].id},
  {brand: "Revlon", product: "ColorStay Makeup For Combo/Oily Skin", shade: "440 Mahogany", true_shade_id: ts[25].id},
  {brand: "MAC", product: "Studio Sculpt Foundation", shade: "NW20", true_shade_id: ts[6].id},
  {brand: "Rimmel", product: "Wake Me Up Foundation", shade: "True Ivory", true_shade_id: ts[6].id},
  # {name: "Bobbi Brown BB Cream SPF 35 Medium", brand: "Bobbi", product: "Brown BB Cream SPF 35", shade: "Medium", true_shade_id: ts[19].id},
  {brand: "Make Up For Ever", product: "HD Invisible Cover Foundation", shade: "140", true_shade_id: ts[14].id},
  {brand: "Make Up For Ever", product: "Mat Velvet + Matifying Foundation", shade: "40", true_shade_id: ts[14].id},
  {brand: "Urban Decay", product: "Naked Skin Foundation", shade: "4.0", true_shade_id: ts[14].id}
  ])


# images 

# makeup = Makeup.find(1)
# file = File.open("db/seeds/images/katvond.jpg", "rb").read
# makeup.makeup_image = file
# makeup.save!



# my_id = true_shade.find([:name])
# true_shade_id:"[true_shade.id]"




# reviews = Review.create([
#   {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."},
#   # {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."},
#   # {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."},
#   # {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."},
#   # {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."},
#   # {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."}


# ])

# 1. clinique, perfectly real makeup, shade 24
# 2. 3
# 3. “The shade has too many red undertones. Being asian, it’s too peachy.” -Kara

# Bobbi Brown BB Cream SPF 35 Medium 5!

