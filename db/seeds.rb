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

  {brand: "Giorgio Armani", 
   product: "Luminous Silk Foundation", 
   shade: "13", 
   true_shade_id: ts[26].id, 
   image: "GiorgioArmani.jpg",
   description: "Capture the glow of perfect skin with Luminous Silk Foundation, an oil-free fluid with exclusive Micro-fil™ technology. So weightless, it redefines foundation. Its hydrating fluid glides on seamlessly with a silky texture and all-day, buildable coverage."},
  
  {brand: "NARS", 
  product: "Sheer Glow Foundation", 
  shade: "Benares", 
  true_shade_id: ts[26].id, 
  image:"NarsSheerGlow.jpg",
  description: "A glowing, natural radiant finish foundation with sheer and buildable coverage that immaculately evens skin tone. Replete with skincare benefits and the NARS Complexion Brightening Formula, it leaves skin hydrated, more luminous, softer and smoother. Used daily, Sheer Glow Foundation improves the skin's brightness and texture."},
  
  {brand: "NARS", 
   product: "Sheer Matte Foundation", 
   shade: "Benares", 
   true_shade_id: ts[26].id, 
   image:"NarsSheerMatte.jpg",
   description: "An oil-free, soft-matte-finish foundation with sheer, buildable coverage that controls shine throughout the day while evening the skin tone. Replete with skincare benefits and the NARS Complexion Brightening Formula, it leaves skin more luminous, softer and smoother. Used daily, Sheer Matte Foundation improves the skin's brightness and texture."},
  
  {brand: "Make Up For Ever", 
    product: "Mat Velvet + Matifying Foundation", 
    shade: "75", 
    true_shade_id: ts[26].id, 
    image:"MakeupForever75.jpg",
    description: "A shine controlling, oil-free, water-resistant, complete coverage liquid foundation. Hides imperfections, evens out skintone, and mattifies with a non-oily, perfectly powdered finish. The result is flawless and lasts for hours. Although this foundation provides full coverage, the end result is completely adjustable to fit your needs—a little goes a long way."},
  
  {brand: "MAC", 
    product: "Matchmaster SPF 15 Foundation", 
    shade: "8", 
    true_shade_id: ts[26].id, 
    image:"MacMatchmaster8.jpg",
    description: "Uses Shade Intelligence Technology to bring customized shades in a flawless demi-matte finish with medium, buildable coverage and broad spectrum UVA/UVB SPF 15 protection. Gives perfect colour purity without looking ashy or chalky, reduces shine on the skin's surface and helps to absorb excess oil. Conditions and soothes skin while minimizing the appearance of pores and imperfections."},
  
  {brand: "e.l.f.", 
    product: "Studio Flawless Finish Foundation", 
    shade: "Coco #83116", 
    true_shade_id: ts[26].id, 
    image:"ElfStudioCoco.jpg",
    description: "e.l.f. Studio Flawless Finish Foundation Achieve a flawless complexion with the silky smooth e.l.f. Studio Flawless Finish Foundation. The lightweight and oil-free formula blends in naturally for a beautiful semi-matte finish. This liquid foundation applies easily and lasts all day for visibly brighter and radiant looking skin. Using our Flawless Finish Foundation not only restores uneven skin textures and tones, but most importantly, the SPF 15 protects your skin against harmful sun damage!"}, 
  
  {brand: "L’Oreal", 
    product: "Magic Skin Beautifier B.B. Cream", 
    shade: "814 Medium", 
    true_shade_id: ts[19].id, 
    image:"LorealMagicskin814.jpg",
    description: "B.B. cream. 4 beautifying actions in 1. Primes, perfects, hydrates, corrects. Flawless bare skin finish. Innovation: Discover our 1st Magic B.B. Cream with Beautifying Beads: encapsulated pigments infused in an ultra-light lotion with antioxidants vitamin C & E. 4 Beautifying Actions in 1: Primes to smooth skin's texture; Perfects to hide imperfections; Hydrates for all day moisture; Corrects skin for a healthy looking, even complexion. Instantly transforms to your perfect shade for a flawless bare skin finish. Over time, more beautiful skin. Dermatologist tested. Helps protect against pore clogging. Made in USA."},
  
  {brand: "L'Oreal", 
    product: "True Match Lumi Healthy Foundation", 
    shade: "Buff Beige", 
    true_shade_id: ts[19].id, 
    image:"LorealTruematchBeige.jpg",
    description: "True Match™ Lumi Healthy Luminous Makeup combines 3 powerful ingredients that work to improve your complexion the more you wear them.  40% pure water for all-day hydration.  Antioxidants and Vitamins C and E for improved clarity and skin tone.  And Liquid Light Technology for an instant, luminous glow.  Isn’t it Time You Met your Match?"},
  
  {brand: "Kat Von D", 
    product: "Lock-it Tattoo Foundation", 
    shade: "Medium 54", 
    true_shade_id: ts[19].id, 
    image:"KatVonDTattoo54.jpg",
    description: "Kat created this foundation to provide exceptional coverage, without compromising a smooth, striking finish. Formulated with 21 percent pigment, this powerful formula was developed to match a broad range of skintones with bold coverage—the proprietary pigments can even effectively cover tattoos. The combination of raw materials and the best siliconic elastomers and siliconic esters provide 24-hour wear with transfer resistance. Natural polymers absorb oil for a matte, soft finish and the added emollients provide a velvety texture for perfectly smooth, hydrated skin. "},
  
  {brand: "Revlon", 
    product: "ColorStay Makeup For Combo/Oily Skin", 
    shade: "350 Rich Tan", 
    true_shade_id: ts[19].id, 
    image:"RevlonColorstayRichtan.jpg",
    description: "Long wearing coverage with a lightweight formula that won't cake, fade, or rub off.  With Time Release Technology specifically formulated for combination or oily skin to control oil absorption and shine.  Your look stays flawless throughout the day."},
  
  {brand: "Urban Decay", 
    product: "Naked Skin Foundation", 
    shade: "6.0", 
    true_shade_id: ts[19].id, 
    image:"UrbanDecayNaked6.jpg",
    description: "Naked Skin uses light-diffusing spheres to 'blur' imperfections for a luminous, demi-matte finish that feels invisible but looks professionally retouched. Naked Skin is oil-free, paraben-free, fragrance-free, and loaded with nourishing ingredients."},
  
  {brand: "Chanel", 
    product: "Vitalumiere Aqua Ultra Light Skin Perfecting Make Up SPF 15", 
    shade: "B30 Sable", 
    true_shade_id: ts[13].id, 
    image:"ChanelSable30.jpg",
    description: "The tiniest drop of this new hybrid fluid creates a fresh, natural complexion. Skin looks refined and feels refreshed, creating an exquisite makeup experience. The fluid formula has a soft, water-light texture, and comes in 10 shades that match perfectly to skin's undertones, whether pink or beige. Dermatologist-tested. Noncomedogenic. Oil- free.
   "},
  
  {brand: "Neutrogena", 
    product: "Healthy Skin Liquid Makeup Broad Spectrum SPF 20", 
    shade: "Natural Beige", 
    true_shade_id: ts[13].id, 
    image:"NeutrogenaHealthySkinNaturalBeige.jpg",
    description: "Neutrogena Healthy Skin® liquid makeup takes over where your skin care leaves off. Silky-light coverage glides on for a perfectly natural look, while the exclusive blend plus Broad Spectrum SPF 20 work together to visibly improve skin's luminosity, tone, and texture."},
  
  {brand: "Estee Lauder", 
    product: "Double Wear Stay-in-Place Makeup", 
    shade: "Sand 1W2", 
    true_shade_id: ts[13].id, 
    image:"EsteeLauderDoubleWearSand.jpg",
    description: "15-hour staying power. Flawless all day. This worry-free, long-wearing makeup stays fresh and looks natural through heat, humidity, nonstop activity. Won't change color, smudge or come off on clothes. Feels lightweight and comfortable. Now the flawless look you see in the morning is the look you keep all day"},
  
  {brand: "Revlon", 
    product: "Colorstay Combination/Oily SPF 6", 
    shade: "280 Golden Beige", 
    true_shade_id: ts[13].id, 
    image:"RevlonColorStayGoldenBeige.jpg",
    description: "Foundation smoothes on evenly for a flawless look. ColorStay Makeup with SoftFlex SPF 6 for Combination/Oily Skin by Revlon features SoftFlex technology that will not rub off with normal wear. Oil-free formula looks fresh, feels natural and controls excess oil."},
  
  {brand: "Tarte", 
    product: "Powderful Amazonian Clay Pressed Mineral Powder", 
    shade: "Medium 08", 
    true_shade_id: ts[13].id, 
    image:"TartePowderMedium8.jpg",
    description: "This Amazonian clay infused matte powder soothes skin as it gives the right amount of buildable coverage. Our whisperlight mineral pressed powder allows skin to breathe while it sets makeup in place, quiets shine, and treats skin to soothing vitamins and minerals. powderful™ can be used wet or dry and alone or with foundation and won't make your face look dusty."}, 
  
  {brand: "Revlon", 
    product: "Nearly Naked", 
    shade: "260 Caramel", 
    true_shade_id: ts[23].id, 
    image:"RevlonNearlyNakedCaramel.jpg",
    description: "Revlon's breakthrough nearly naked makeup balances skin and makeup so they work in perfect harmony. With buildable coverage and seamless blending, you are sure to cover flaws and perfect your skin's tone and texture. No heavy cakey or greasy mess."},
  
  {brand: "Liz Earle", 
    product: "Signature Foundation", 
    shade: "Caramel 07", 
    true_shade_id: ts[23].id, 
    image:"LizEarleCaramel.jpg",
    description: "Call off the search – our luxurious, silky foundation is your go-to for the skin you’ve always wanted. Offering easy-to-build coverage, the beautifully blendable formula glides on effortlessly to deliver a smooth, even and natural-looking finish in mere moments, with an ingenious combination of spherical particles and coated pigments that offer long-lasting wear and a radiant finish. Enriched with our own natural source vitamin E."},
  
  {brand: "MAC", 
    product: "Face and Body Foundation", 
    shade: "C7", 
    true_shade_id: ts[23].id, 
    image:"MacFaceBody7.jpg",
    description: "In the smaller, more portable size a fluid foundation that provides low-to-medium buildable coverage and a flawless, natural satin-shine finish. Skin conditioning, water-resistant and long-wearing. Also available in the classic 120 ml size. Same Face and Body formula with upgraded packaging.
    "},

  {brand: "NARS", 
    product: "Sheer Matte", 
    shade: "New Orleans", 
    true_shade_id: ts[22].id, 
    image:"NarsSheerMatteNewOrleans.jpg",
    description: "A modern foundation that combines a natural matte finish and medium, buildable coverage with broad spectrum UVA/UVB SPF 15 protection. Applies, builds and blends easily and evenly. Comfortable and long-wearing, helps minimize the appearance of pores and imperfections, giving skin a smoother, more flawless look and finish."},
  
  {brand: "MAC", 
    product: "Studio Fix Fluid Foundation", 
    shade: "NW45", 
    true_shade_id: ts[22].id, 
    image:"MacStudioFix45.jpg",
    description: "A modern foundation that combines a natural matte finish and medium, buildable coverage with broad spectrum UVA/UVB SPF 15 protection. Applies, builds and blends easily and evenly. Comfortable and long-wearing, helps minimize the appearance of pores and imperfections, giving skin a smoother, more flawless look and finish."},
  
  {brand: "e.l.f.", 
    product: "Tinted Moisturizer", 
    shade: "Espresso", 
    true_shade_id: ts[22].id, 
    image:"ElfTintedEspresso.jpg",
    description: "This lightweight and hydrating formula is breathable and provides anti-aging sun protection with UVA/UVB SPF 20. Achieve even skin tone and naturally radiant skin with this moisturizing sheer tint of color. The smooth formula enhances your complexion with the nourishing key ingredients Aloe, Cucumber and Vitamins A, C & E."},

  {brand: "Iman", 
    product: "Second to None Luminous Foundation", 
    shade: "Earth 2", 
    true_shade_id: ts[22].id, 
    image:"ImanLuminousEarth2.jpg",
    description: "Second to None, This luminous, sheer powder foundation contains Vitamin E and can be used wet or dry."},

  {brand: "CoverGirl", 
    product: "Queen Collection 3 in 1 Foundation", 
    shade: "Q840 Almond Glow", 
    true_shade_id: ts[25].id, 
    image:"CoverGirlCollectionAlmondGlow.jpg",
    description: "We fused the blendability of a liquid, the targeted coverage of a concealer, and the smooth finish of a powder into one lightweight step. The innovative 3-in-1 formula provides a flawless look that lasts all day long so you can feel confident that your makeup will stay put from 9 to 5."},

  {brand: "Revlon", 
    product: "ColorStay Makeup For Combo/Oily Skin", 
    shade: "440 Mahogany", 
    true_shade_id: ts[25].id, 
    image:"RevlonColorstayMahogany.jpg",
    description: "Contains patented ColorStay TM longwear technology for up to 16-hour wear. Provides medium to full coverage with a semi-matte finish. Oil-free Fragrance-free.Transfer-resistant."},

  {brand: "MAC", 
    product: "Studio Sculpt Foundation", 
    shade: "NW20", 
    true_shade_id: ts[6].id, 
    image:"MacStudio20.jpg",
    description: "A luxurious, creamy foundation that delivers ultimate hydration while instantly revitalizing the look of dull and dry skin. Innovative gel-based system provides outstanding skin feel and a medium, buildable coverage with a natural satin finish. Micronized silicone coated pigments improve skin adherence and blendability while helping to maintain colour purity. Offers broad-spectrum UVA/UVB protection with SPF 15. Comfortable on all skins, but especially suited for normal-dry and mature skins."},

  {brand: "Rimmel", 
    product: "Wake Me Up Foundation", 
    shade: "True Ivory", 
    true_shade_id: ts[6].id, 
    image:"RimmelWakeMeTrueIvory.jpg",
    description: "Wake Up & Glow! Rimmel’s first liquid foundation that instantly reawakens skin with a healthy, radiant glow Light, moisturising texture applies smoothly and leaves skin feeling soft and comfortable all day Gives an instant flawless, natural-looking finish Visible anti-fatigue effect with peptides and a Vitamin Moisturising complex"},

  # {brand: "Bobbi", 
  # product: "Brown BB Cream SPF 35", 
  # shade: "Medium", 
  # true_shade_id: ts[19].id, 
  # image:""},

  {brand: "Make Up For Ever", 
    product: "HD Invisible Cover Foundation", 
    shade: "140", 
    true_shade_id: ts[14].id, 
    image:"MakeupForever140.jpg",
    description: "An oil-free medium-to-full-coverage liquid foundation that covers skin imperfections flawlessly while remaining invisible on-screen and in real life. This foundation creates a soft-focus effect, which is designed to meet the coverage concerns of those in the spotlight. It leaves your complexion with such a flawless finish, it can withstand bright or harsh lighting."},

  {brand: "Make Up For Ever", 
    product: "Mat Velvet + Matifying Foundation", 
    shade: "40", 
    true_shade_id: ts[14].id, 
    image:"MakeupForeverMat40.jpg",
    description: "A shine controlling, oil-free, water-resistant, complete coverage liquid foundation. Hides imperfections, evens out skintone, and mattifies with a non-oily, perfectly powdered finish. The result is flawless and lasts for hours.Although this foundation provides full coverage, the end result is completely adjustable to fit your needs—a little goes a long way.
     "},

  {brand: "Urban Decay", 
    product: "Naked Skin Foundation", 
    shade: "4.0", 
    true_shade_id: ts[14].id, 
    image:"UrbanDecayNaked4.jpg",
    description: "Ideal for a variety of coverage levels. Naked Skin offers truly buildable coverage you can see but never feel. Coverage without compromise. Our weightless formula blurs imperfections for a flawless finish that feels invisible, but looks professionally retouched."}
  ])





reviews = Review.create([
  {makeup_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well.", user_id: "Jean"},
  {makeup_id: "MAC Studio Sculpt Foundation NC35", rating: "4", comment: "I feel it matches really well. They matched me while I was there and have used the same one for 3 years now.", user_id: "Dani"},
  {makeup_id: "Maybelline Fit Me Shine-Free Foundation Sun Beige 310", rating: "5", comment: "It blends in really good, almost exact color as my skin.", user_id: "Barbara"},
<<<<<<< HEAD
#   # {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."},
#   # {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."},
#   # {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."}
=======
  ])



# reviews = Review.create([
#   {makeups_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well.", user_id: "Jean"},
#   {makeups_id: "MAC Studio Sculpt Foundation NC35", rating: "4", comment: "I feel it matches really well. They matched me while I was there and have used the same one for 3 years now.", user_id: "Dani"},
#   {makeups_id: "Maybelline Fit Me Shine-Free Foundation Sun Beige 310", rating: "5", comment: "It blends in really good, almost exact color as my skin.", user_id: "Barbara"},
# #   # {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."},
# #   # {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."},
# #   # {foundation_id: "Tarte Powderful Amazonian Clay Pressed Mineral Powder Medium 08", rating: "4", comment: "It's a lightweight powder that goes on lightly as well. Good for basic everyday use, but not for heavy duty coverup. Matches pretty well."}

>>>>>>> master

# ])


