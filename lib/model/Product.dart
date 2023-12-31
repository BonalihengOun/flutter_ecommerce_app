class ImageInfo {
  final String url;
  final String? color;

  ImageInfo({required this.url, this.color});
}

class Product {
  final List<ImageInfo>? imageUrl;
  int quantity;
  final String name;
  bool isFavorite;
  final double? price;
  final double? disPrice;
  final String? discount;
  final String? type;
  final String? type1;
  final String describtion;
  final String? styleColor4;
  final String colorshown_1;
  final String? imgURL2;
  final String? imgURL3;
  final String? imgURL4;
  final String? colorshown_3;
  final String? colorshown_2;
  final String? colorshown_4;
  final String? styleColor2;
  final String? styleColor3;
  final String styleColor1;
  final String? color1;
  final String? color2;
  final String? color3;
  final String? color4;

  Product(
      {this.imageUrl,
      required this.name,
      this.price,
      this.disPrice,
      required this.describtion,
      required this.quantity,
      required this.isFavorite,
      this.color1,
      this.color2,
      this.color3,
      this.color4,
      this.type,
      this.imgURL2,
      this.colorshown_3,
      this.colorshown_2,
      this.colorshown_4,
      this.imgURL3,
      this.imgURL4,
      this.styleColor2,
      this.styleColor3,
      this.styleColor4,
      this.type1,
      required this.styleColor1,
      required this.colorshown_1,
      this.discount});
}

List<Product> productMen = [
  Product(
      name: "Nike InfinityRN4 Midnight",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_Midnight.png',
            color: '0xff1E3F84'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_white.png',
            color: '0xffDFEBB7'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_whiteRed.png',
            color: '0xffBDCED6'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_Blackwhite.png',
            color: '0xff100B11'),
      ],
      price: 133.00,
      disPrice: 175.00,
      styleColor2: 'DR2665-101',
      styleColor3: 'DR2665-100',
      styleColor4: 'DR2665-001',
      styleColor1: 'DR2665-005',
      colorshown_1: 'Black/Anthracite/Racer',
      colorshown_2: 'White\n/Light Lemon',
      colorshown_3: 'White\n/Platinum Tint/Light Crimson\n/Velvet Brown',
      colorshown_4: 'Black/Dark Grey/White',
      type1: 'productMen',
      type: 'Shoes',
      describtion:
          "Nike InfinityRN 4 is a brand-new take on a familiar favourite.\tIt's made from our all-new Nike ReactX foam, which gives you 13% more energy return compared with Nike React foam, to help you stay fresh and bouncy. (What's more? Nike ReactX reduces the carbon footprint of the midsole by at least 43% compared with Nike React foam, so it helps support the planet, too).",
      discount: '24%'),
  Product(
      name: "Nike Air Pegasus",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_Blueaccent.png',
            color: '0xff00415F'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_BlackRed.png',
            color: '0xffD9414E'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_White.png',
            color: '0xffEEEFF5'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_WhiteGreen.png',
            color: '0xffAFB792'),
      ],
      price: 87.5,
      disPrice: 175.00,
      styleColor1: 'FB7180-001',
      styleColor2: 'DV3853-003',
      styleColor3: 'DV3853-102',
      styleColor4: 'DV3853-101',
      colorshown_1: 'Black/Green Abyss/Baltic Blue/Hyper',
      colorshown_2: 'Black/Light Crimson/White',
      colorshown_3: 'White/Black/Photon Dust/Wolf Grey',
      colorshown_4: 'White/Coconut Milk/Volt/Multi-Color',
      type: 'Shoes',
      type1: 'productMen',
      describtion:
          "A springy ride for any run, the Peg’s familiar,\n just-for-you feel returns to help you accomplish your goals. \nThis version has the same responsiveness and neutral support you love, \nbut with improved comfort in those sensitive areas of your foot,\nlike the arch and toes. Whether you’re logging long marathon miles, squeezing in a speed session before the sun goes down or hopping into a spontaneous group jaunt,\nit’s still the established road runner you can put your faith in, day after day, run after run.",
      discount: '50%'),
  Product(
      name: "Nike Runner",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_whitebrown.png',
            color: '0xffE0C4A3'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_Blue.png',
            color: '0xff4673AF'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_pink.png',
            color: '0xffD74F93'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_white.png',
            color: '0xffB8EEE5'),
      ],
      price: 133,
      disPrice: 175.00,
      styleColor1: 'DX5048-500',
      styleColor2: 'DX5048-400',
      styleColor3: 'DX5048-600',
      styleColor4: 'DX5048-300',
      colorshown_1: 'Violet Ash/Vast Grey/Violet Ash',
      colorshown_2: 'Game Royal/Game Royal/Game Royal',
      colorshown_3: 'Fierce Pink/Fierce Pink/Fierce Pink',
      colorshown_4: 'Jade Ice/Jade Ice/Jade Ice',
      type: 'Shoes',
      type1: 'productMen',
      describtion:
          'With supportive cushioning built for a smooth run, the Infinity RN 4 helps you hit the ground running. With personalization options all over and enough color combinations to make your head spin, the Infinity RN 4 By You can help you run and stunt all day. From the Flyknit to Swoosh designs and midsole, it’s ready for your eccentric touch too.',
      discount: '24%'),
  Product(
      name: "Nike Air VaporMax 2023 Flyknit",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit_Gold.jpeg',
            color: '0xffB4843F'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit_Redfire.png',
            color: '0xff910106'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit_Sea.png',
            color: '0xff79E6F3'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit.png',
            color: '0xff424443'),
      ],
      price: 133,
      disPrice: 175.00,
      colorshown_1: 'Sand Drift/Bronzine/Sand Drift/Bronzine',
      colorshown_2: 'Track Red/Track Red/Track Red/Mystic Red',
      colorshown_3: 'Baltic Blue/Green Abyss/Hot Punch/Citron Tint',
      colorshown_4: 'Black/Anthracite/Black/Black',
      styleColor1: 'DV1678-100',
      styleColor2: 'DV1678-600',
      styleColor3: 'DV1678-400',
      styleColor4: 'DV1678-003',
      type: 'Shoes',
      type1: 'productMen',
      describtion:
          "Have you ever walked on Air? Step into the Air VaporMax 2023 to see how it's done. The innovative tech is revealed through the perforated sockliner (pull it out to see more). The stretchy Flyknit upper is made from at least 20% recycled content by weight.",
      discount: '24%'),
];
List<Product> sportswear = [
  Product(
      name: "Nike Sportswear Heritage86 Futura",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_GreenLight.png',
            color: '0xff87C39E'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_Pink.png',
            color: '0xffEDD7D7'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_Purple.png',
            color: '0xffBB7FB5'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_Black.png',
            color: '0xff23272B'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_Black.png',
            color: '0xff23272B'),
      ],
      price: 35.00,
      disPrice: 17.5,
      styleColor1: '913011-363',
      styleColor2: '913011-686',
      styleColor3: '913011-532',
      styleColor4: '913011-010',
      colorshown_1: 'Spring Green/White',
      colorshown_2: 'Pink Bloom/White',
      colorshown_3: 'Rush Fuchsia/White',
      colorshown_4: 'White/White/Black',
      type: 'Hat',
      type1: 'sportwear',
      describtion:
          "Crafted from soft fabric, the Nike Sportswear Heritage86 Futura Washed Hat has a 6-panel design for classic comfort and an adjustable closure for a personalized fit.",
      discount: '50%'),
  Product(
    name: "Nike Sportswear Tech Fleece",
    isFavorite: false,
    quantity: 0,
    imageUrl: [
      ImageInfo(
        url:
            'lib/assets/pic/category/Product/SportWears/Nike Sportswear Tech Fleece.png',
        color: '0xffF0EEEB',
      ),
    ],
    price: 170.00,
    colorshown_1: 'Light Grey/Heather/Black',
    styleColor1: 'FN7124-013',
    type: 'women_hoodie',
    type1: 'sportwear',
    describtion:
        "Can you believe it's already been 10 years of Tech Fleece? We're celebrating the occasion with a modern silhouette and a colour palette inspired by natural minerals. Since 2013, our premium, lightweight fleece is smooth both inside and out—giving you plenty of warmth without unnecessary bulk. ",
  ),
  Product(
    name: "Nike SB",
    isFavorite: false,
    quantity: 0,
    imageUrl: [
      ImageInfo(
          url: 'lib/assets/pic/category/Product/SportWears/Nike SB.png',
          color: '0xffFFD244'),
    ],
    price: 89.65,
    colorshown_1: 'University Gold',
    styleColor1: 'DV8840-739',
    type: 'men_hoodie',
    type1: 'sportwear',
    describtion:
        "Made from soft French terry fleece for warmth and comfort, this Nike SB hoodie features our signature box logo front and centre. The skate-ready fit is roomy through the chest, shoulders and body for easy movement and layering. Skate hard, lounge easy. ",
  ),
  Product(
    name: "Nike Sportswear Tech Fleece Windrunner",
    isFavorite: false,
    quantity: 0,
    imageUrl: [
      ImageInfo(
          url:
              'lib/assets/pic/category/Product/SportWears/sportswear_tech_fleece_windrunner_mens_full_zip_hoodie_rznlBf.jpeg',
          color: '0xffF0EAD7')
    ],
    price: 145.00,
    colorshown_1: 'Coconut Milk/Black',
    styleColor1: 'FB7921-113',
    type: 'men_hoodie',
    type1: 'sportwear',
    describtion:
        "Blending 2 of our most iconic looks, this full-zip hoodie draws design inspiration from our timeless Windrunner jacket as well as our Tech Fleece jacket.",
  ),
  Product(
      name: "Nike Sportswear Tech Fleece OG",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/sportswear-tech-fleece-og-womens-loose-cape-S4zv0w.jpeg',
            color: '0xffDCDCDA'),
      ],
      price: 150.00,
      colorshown_1: 'Dark Grey Heather/Black',
      styleColor1: 'FN4164-063',
      type: 'women_hoodie',
      type1: 'sportwear',
      describtion:
          "Can you believe it's already been 10 years of Tech Fleece? We’re celebrating the occasion by bringing back the tailored lines and sleek details from the original design. Our premium, lightweight fleece–smooth both inside and out–gives you plenty of warmth without adding bulk.Complete your look with matching joggers or your favorite pair of leggings. The future of fleece starts here."),
  Product(
      name: "Nike Sportswear Phoenix Fleece",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/SportWears/Nike Sportswear Phoenix Fleece.png',
          color: '0xff7B8D9C',
        )
      ],
      price: 80.00,
      colorshown_1: 'Diffused Blue',
      styleColor1: 'FQ6226-491',
      type: 'women_hoodie',
      type1: 'sportwear',
      describtion:
          "With eye-catching stripes and a voluminous fit, this Phoenix Fleece sweatshirt gives you a look that's anything but basic. Midweight brushed fleece feels extra soft on the inside and smooth on the outside, helping you stay comfortable while keeping its structured shape."),
  Product(
      name: "Nike Everyday Plus Cushioned",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Everyday Plus Cushioned.png',
            color: '0xff5A5958')
      ],
      price: 18.00,
      colorshown_1: 'Black/White',
      styleColor1: 'DJ5857-010',
      type: 'sock',
      type1: 'sportwear',
      describtion:
          "As outdoorsy as the Nike Everyday Plus Cushioned ankle socks look, they're actually just big softies. Their heathered, knit construction offers a trail-ready look and extra-cozy feel perfect for pairing with your favorite hiking boots, sneakers or even just your slippers."),
  Product(
      name: "Nike Everyday Wool",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Everyday Wool.png',
            color: '0xff50879A'),
      ],
      price: 16.97,
      disPrice: 22.00,
      colorshown_1: 'Multi-Color',
      styleColor1: 'DQ6397-904',
      type: 'sock',
      discount: '22%',
      type1: 'sportwear',
      describtion:
          "As outdoorsy as the Nike Everyday Plus Cushioned ankle socks look, they're actually just big softies. Their heathered, knit construction offers a trail-ready look and extra-cozy feel perfect for pairing with your favorite hiking boots, sneakers or even just your slippers."),
  Product(
      name: "Nike Peak",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url: 'lib/assets/pic/category/Product/SportWears/Nike Peak.png',
            color: '0xff003145'),
      ],
      price: 30.00,
      colorshown_1: 'Noise Aqua/White',
      styleColor1: 'FB6529-440',
      type: 'Hat Peak',
      type1: 'sportwear',
      describtion:
          "Knit with plenty of fuzzy, warm fabric to cuff, our Nike Peak beanie gives you stylish options to help conquer the cold. Plush knit yarn hugs your head for comfort that lasts all day. When cold weather hits, you can fold the cuff down over your ears for extra protection."),
  Product(
      name: "Nike Sportswear Club PrimaLoft®",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Club PrimaLoft®.png',
            color: '0xff6A6872'),
      ],
      price: 150.00,
      colorshown_1: 'Iron Grey/White',
      styleColor1: 'FB7373-068',
      type: 'Water-Repellent Puffer Vest',
      type1: 'sportwear',
      describtion:
          "Bring the warmth this classic puffer vest design. It's equipped with PrimaLoft® Thermoplume insulation and water-repellent ripstop fabric to help you fight off the chill from those cold, rainy days. Pull it on over your favorite flannel or hoodie and face the cool weather with confidence."),
];
List<Product> shoes_football = [
  Product(
      name: "Nike Mercurial Superfly 9 Lite",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Mercurial Superfly_Orange.png',
            color: '0xffFEB187'),
      ],
      price: 75.0,
      disPrice: 150.00,
      colorshown_1: 'Guava Ice/Black',
      styleColor1: 'DZ3475-800',
      
      type: 'football shoes',
      describtion:
          "Step into the dawn of a new day and put the globe on notice about your skills. A flashy iridescent plate, futuristic graphic and vibrant colours resembling a gradient sunrise speak to the gravitational power of the women's game, a fully fledged force capable of uniting us on and off the pitch.",
      discount: '50%'),
  Product(
      name: "Nike Mercurial Superfly 9 Academy",
      quantity: 0,
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Mercurial Superfly_Pink.png',
            color: '0xffDE2A6E'),
      ],
      price: 90.00,
      disPrice: 180.00,
      colorshown_1: 'Pink Blast/Gridiron/Volt',
      styleColor1: 'DJ5625-605',
      type: 'football shoes',
      describtion:
          "Instantly tilt the pitch in the bold design of the Superfly 9 Academy MG. It's loaded with a Zoom Air unit and flexible NikeSkin up top for exceptional touch, so you can dominate in the waning minutes of a match—when it matters most. Fast is in the Air.",
      discount: '50%'),
  Product(
      name: "Nike Phantom GX Academy",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Phantom GX Academy_BlackOrange.png',
            color: '0xff9C342F')
      ],
      price: 50.00,
      disPrice: 100.00,
      colorshown_1: 'Bright Crimson/White/University Red/Black',
      styleColor1: 'DD9473-600',
      type: 'football shoes',
      describtion:
          "Instantly tilt the pitch in the bold design of the Superfly 9 Academy MG. It's loaded with a Zoom Air unit and flexible NikeSkin up top for exceptional touch, so you can dominate in the waning minutes of a match—when it matters most. Fast is in the Air.",
      discount: '50%'),
  Product(
      name: "Nike Zoom Mercurial Vapor 15 Elite FG",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Zoom Mercurial Vapor 15 Elite FG.png',
            color: '0xffAD1F4B')
      ],
      price: 60.00,
      disPrice: 120.00,
      colorshown_1: 'Multi-Colour/Multi-Colour',
      styleColor1: 'DV3909-903',
      type: 'football shoes',
      describtion:
          "Put the football world on notice with this custom Vapor 15 Elite. Express your creative side with a wide array of vibrant, eye-catching colours that reflect your distinct, brash style. ",
      discount: '50%'),
];
List<Product> nike_air_jordan = [
  Product(
      name: "Air Jordan 1 Retro High OG",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Air_Jordan_1_Retro_High_OG.png',
          color: '0xff004781',
        )
      ],
      price: 150.00,
      disPrice: 300.00,
      colorshown_1: 'True Blue/Cement Grey/White',
      styleColor1: 'DZ5485-410',
      type: 'Sneaker',
      describtion:
          "3 + 1 = a whole new icon. Celebrating 35 years of the Air Jordan 3, these kicks combine the classic AJ1 silhouette with an original AJ3 colourway.",
      discount: '50%'),
  Product(
      name: "Jordan Stay Loyal 2",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Jordan Stay Loyal 2.png',
          color: '0xffB7B6B9',
        )
      ],
      price: 125.00,
      disPrice: 250.00,
      colorshown_1: 'White/Cement Grey/Anthracite/Topaz Gold',
      styleColor1: 'DQ8401-103',
      type: 'Sneaker',
      describtion:
          "Inspired by generations of Js, these kicks are a collage of cool. Design details recall decades of legendary shoes while paying homage to MJs storied career.",
      discount: '50%'),
  Product(
      name: "Air Jordan KO1",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Air Jordan KO1.png',
          color: '0xff449AA1',
        ),
      ],
      disPrice: 200.00,
      price: 100.00,
      colorshown_1: ' Bleached Aqua/White',
      styleColor1: 'DO5047-411',
      type: 'Sneaker',
      describtion:
          "We all know staring is a bad look—but when your kicks are this good, can you blame 'em? It's no surprise everyone wants to see the AJKO, a re-imagining of Jordan's first hit shoe that leverages a mix of materials for a whole new vibe. ",
      discount: '50%'),
  Product(
      name: "Jumpman MVP",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Jumpman MVP.png',
          color: '0xffC4541F',
        ),
      ],
      price: 325.00,
      disPrice: 650.00,
      colorshown_1: 'White/Vivid Orange/Black/Cardinal Red',
      styleColor1: 'DZ4475-168',
      type: 'Sneaker',
      describtion:
          "Whenyou need a shoe that's ready 24/7, it's gotta be the Max Aura 5. Inspired by the AJ3, this pair of kicks puts a modern spin on the classic.",
      discount: '50%'),
];
List<Product> Product_all = [
  Product(
      name: "Nike InfinityRN4 Midnight",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_Midnight.png',
            color: '0xff1E3F84'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_white.png',
            color: '0xffDFEBB7'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_whiteRed.png',
            color: '0xffBDCED6'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_Blackwhite.png',
            color: '0xff100B11'),
      ],
      price: 133.00,
      disPrice: 175.00,
      styleColor2: 'DR2665-101',
      styleColor3: 'DR2665-100',
      styleColor4: 'DR2665-001',
      styleColor1: 'DR2665-005',
      colorshown_1: 'Black/Anthracite/Racer',
      colorshown_2: 'White\n/Light Lemon',
      colorshown_3: 'White\n/Platinum Tint/Light Crimson\n/Velvet Brown',
      colorshown_4: 'Black/Dark Grey/White',
      type1: 'productMen',
      type: 'Shoes',
      describtion:
          "Nike InfinityRN 4 is a brand-new take on a familiar favourite.\tIt's made from our all-new Nike ReactX foam, which gives you 13% more energy return compared with Nike React foam, to help you stay fresh and bouncy. (What's more? Nike ReactX reduces the carbon footprint of the midsole by at least 43% compared with Nike React foam, so it helps support the planet, too).",
      discount: '50%'),
  Product(
      name: "Nike Air Pegasus",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_Blueaccent.png',
            color: '0xff00415F'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_BlackRed.png',
            color: '0xffD9414E'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_White.png',
            color: '0xffEEEFF5'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_WhiteGreen.png',
            color: '0xffAFB792'),
      ],
      price: 87.5,
      disPrice: 175.00,
      styleColor1: 'FB7180-001',
      styleColor2: 'DV3853-003',
      styleColor3: 'DV3853-102',
      styleColor4: 'DV3853-101',
      colorshown_1: 'Black/Green Abyss/Baltic Blue/Hyper',
      colorshown_2: 'Black/Light Crimson/White',
      colorshown_3: 'White/Black/Photon Dust/Wolf Grey',
      colorshown_4: 'White/Coconut Milk/Volt/Multi-Color',
      type: 'Shoes',
      type1: 'productMen',
      describtion:
          "A springy ride for any run, the Peg’s familiar,\n just-for-you feel returns to help you accomplish your goals. \nThis version has the same responsiveness and neutral support you love, \nbut with improved comfort in those sensitive areas of your foot,\nlike the arch and toes. Whether you’re logging long marathon miles, squeezing in a speed session before the sun goes down or hopping into a spontaneous group jaunt,\nit’s still the established road runner you can put your faith in, day after day, run after run.",
      discount: '50%'),
  Product(
      name: "Nike Runner",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_whitebrown.png',
            color: '0xffE0C4A3'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_Blue.png',
            color: '0xff4673AF'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_pink.png',
            color: '0xffD74F93'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_white.png',
            color: '0xffB8EEE5'),
      ],
      price: 133,
      disPrice: 175.00,
      styleColor1: 'DX5048-500',
      styleColor2: 'DX5048-400',
      styleColor3: 'DX5048-600',
      styleColor4: 'DX5048-300',
      colorshown_1: 'Violet Ash/Vast Grey/Violet Ash',
      colorshown_2: 'Game Royal/Game Royal/Game Royal',
      colorshown_3: 'Fierce Pink/Fierce Pink/Fierce Pink',
      colorshown_4: 'Jade Ice/Jade Ice/Jade Ice',
      type: 'Shoes',
      quantity: 0,
      type1: 'productMen',
      describtion:
          'With supportive cushioning built for a smooth run, the Infinity RN 4 helps you hit the ground running. With personalization options all over and enough color combinations to make your head spin, the Infinity RN 4 By You can help you run and stunt all day. From the Flyknit to Swoosh designs and midsole, it’s ready for your eccentric touch too.',
      discount: '24%'),
  Product(
      name: "Nike Air VaporMax 2023 Flyknit",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit_Gold.jpeg',
            color: '0xffB4843F'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit_Redfire.png',
            color: '0xff910106'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit_Sea.png',
            color: '0xff79E6F3'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit.png',
            color: '0xff424443'),
      ],
      price: 133,
      disPrice: 175.00,
      colorshown_1: 'Sand Drift/Bronzine/Sand Drift/Bronzine',
      colorshown_2: 'Track Red/Track Red/Track Red/Mystic Red',
      colorshown_3: 'Baltic Blue/Green Abyss/Hot Punch/Citron Tint',
      colorshown_4: 'Black/Anthracite/Black/Black',
      styleColor1: 'DV1678-100',
      styleColor2: 'DV1678-600',
      styleColor3: 'DV1678-400',
      styleColor4: 'DV1678-003',
      type: 'Shoes',
      type1: 'productMen',
      describtion:
          "Have you ever walked on Air? Step into the Air VaporMax 2023 to see how it's done. The innovative tech is revealed through the perforated sockliner (pull it out to see more). The stretchy Flyknit upper is made from at least 20% recycled content by weight.",
      discount: '24%'),
  Product(
      name: "Nike Sportswear Heritage86 Futura",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_GreenLight.png',
            color: '0xff87C39E'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_Pink.png',
            color: '0xffEDD7D7'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_Purple.png',
            color: '0xffBB7FB5'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_Black.png',
            color: '0xff23272B'),
      ],
      price: 17.5,
      disPrice: 35.00,
      styleColor1: '913011-363',
      styleColor2: '913011-686',
      styleColor3: '913011-532',
      styleColor4: '913011-010',
      colorshown_1: 'Spring Green/White',
      colorshown_2: 'Pink Bloom/White',
      colorshown_3: 'Rush Fuchsia/White',
      colorshown_4: 'White/White/Black',
      type: 'Hat',
      type1: 'sportwear',
      quantity: 0,
      describtion:
          "Crafted from soft fabric, the Nike Sportswear Heritage86 Futura Washed Hat has a 6-panel design for classic comfort and an adjustable closure for a personalized fit.",
      discount: '50%'),
  Product(
    name: "Nike Sportswear Tech Fleece",
    imageUrl: [
      ImageInfo(
        url:
            'lib/assets/pic/category/Product/SportWears/Nike Sportswear Tech Fleece.png',
        color: '0xffF0EEEB',
      ),
    ],
    price: 170.00,
    colorshown_1: 'Light Grey/Heather/Black',
    styleColor1: 'FN7124-013',
    type: 'women_hoodie',
    type1: 'sportwear',
    quantity: 0,
    isFavorite: false,
    describtion:
        "Can you believe it's already been 10 years of Tech Fleece? We're celebrating the occasion with a modern silhouette and a colour palette inspired by natural minerals. Since 2013, our premium, lightweight fleece is smooth both inside and out—giving you plenty of warmth without unnecessary bulk. ",
  ),
  Product(
    name: "Nike SB",
    imageUrl: [
      ImageInfo(
          url: 'lib/assets/pic/category/Product/SportWears/Nike SB.png',
          color: '0xffFFD244'),
    ],
    price: 89.65,
    colorshown_1: 'University Gold',
    styleColor1: 'DV8840-739',
    type: 'men_hoodie',
    type1: 'sportwear',
    quantity: 0,
    isFavorite: false,
    describtion:
        "Made from soft French terry fleece for warmth and comfort, this Nike SB hoodie features our signature box logo front and centre. The skate-ready fit is roomy through the chest, shoulders and body for easy movement and layering. Skate hard, lounge easy. ",
  ),
  Product(
    name: "Nike Sportswear Tech Fleece Windrunner",
    imageUrl: [
      ImageInfo(
          url:
              'lib/assets/pic/category/Product/SportWears/sportswear_tech_fleece_windrunner_mens_full_zip_hoodie_rznlBf.jpeg',
          color: '0xffF0EAD7')
    ],
    price: 145.00,
    colorshown_1: 'Coconut Milk/Black',
    styleColor1: 'FB7921-113',
    type: 'men_hoodie',
    type1: 'sportwear',
    isFavorite: false,
    quantity: 0,
    describtion:
        "Blending 2 of our most iconic looks, this full-zip hoodie draws design inspiration from our timeless Windrunner jacket as well as our Tech Fleece jacket.",
  ),
  Product(
      name: "Nike Sportswear Tech Fleece OG",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/sportswear-tech-fleece-og-womens-loose-cape-S4zv0w.jpeg',
            color: '0xffDCDCDA'),
      ],
      price: 150.00,
      colorshown_1: 'Dark Grey Heather/Black',
      styleColor1: 'FN4164-063',
      type: 'women_hoodie',
      type1: 'sportwear',
      quantity: 0,
      describtion:
          "Can you believe it's already been 10 years of Tech Fleece? We’re celebrating the occasion by bringing back the tailored lines and sleek details from the original design. Our premium, lightweight fleece–smooth both inside and out–gives you plenty of warmth without adding bulk.Complete your look with matching joggers or your favorite pair of leggings. The future of fleece starts here."),
  Product(
      name: "Nike Sportswear Phoenix Fleece",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/SportWears/Nike Sportswear Phoenix Fleece.png',
          color: '0xff7B8D9C',
        )
      ],
      price: 80.00,
      colorshown_1: 'Diffused Blue',
      styleColor1: 'FQ6226-491',
      type: 'women_hoodie',
      type1: 'sportwear',
      quantity: 0,
      describtion:
          "With eye-catching stripes and a voluminous fit, this Phoenix Fleece sweatshirt gives you a look that's anything but basic. Midweight brushed fleece feels extra soft on the inside and smooth on the outside, helping you stay comfortable while keeping its structured shape."),
  Product(
      name: "Nike Everyday Plus Cushioned",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Everyday Plus Cushioned.png',
            color: '0xff5A5958')
      ],
      price: 18.00,
      colorshown_1: 'Black/White',
      styleColor1: 'DJ5857-010',
      type: 'sock',
      type1: 'sportwear',
      quantity: 0,
      describtion:
          "As outdoorsy as the Nike Everyday Plus Cushioned ankle socks look, they're actually just big softies. Their heathered, knit construction offers a trail-ready look and extra-cozy feel perfect for pairing with your favorite hiking boots, sneakers or even just your slippers."),
  Product(
      name: "Nike Everyday Wool",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Everyday Wool.png',
            color: '0xff50879A'),
      ],
      price: 16.97,
      disPrice: 22.00,
      colorshown_1: 'Multi-Color',
      styleColor1: 'DQ6397-904',
      type: 'sock',
      discount: '22%',
      type1: 'sportwear',
      quantity: 0,
      describtion:
          "As outdoorsy as the Nike Everyday Plus Cushioned ankle socks look, they're actually just big softies. Their heathered, knit construction offers a trail-ready look and extra-cozy feel perfect for pairing with your favorite hiking boots, sneakers or even just your slippers."),
  Product(
      name: "Nike Peak",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url: 'lib/assets/pic/category/Product/SportWears/Nike Peak.png',
            color: '0xff003145'),
      ],
      price: 30.00,
      colorshown_1: 'Noise Aqua/White',
      styleColor1: 'FB6529-440',
      type: 'Hat Peak',
      type1: 'sportwear',
      quantity: 0,
      describtion:
          "Knit with plenty of fuzzy, warm fabric to cuff, our Nike Peak beanie gives you stylish options to help conquer the cold. Plush knit yarn hugs your head for comfort that lasts all day. When cold weather hits, you can fold the cuff down over your ears for extra protection."),
  Product(
      name: "Nike Sportswear Club PrimaLoft®",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Club PrimaLoft®.png',
            color: '0xff6A6872'),
      ],
      price: 150.00,
      colorshown_1: 'Iron Grey/White',
      styleColor1: 'FB7373-068',
      type: 'Water-Repellent Puffer Vest',
      type1: 'sportwear',
      quantity: 0,
      describtion:
          "Bring the warmth this classic puffer vest design. It's equipped with PrimaLoft® Thermoplume insulation and water-repellent ripstop fabric to help you fight off the chill from those cold, rainy days. Pull it on over your favorite flannel or hoodie and face the cool weather with confidence."),
  Product(
      name: "Nike Mercurial Superfly 9 Lite",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Mercurial Superfly_Orange.png',
            color: '0xffFEB187'),
      ],
      price: 75.0,
      disPrice: 150.00,
      colorshown_1: 'Guava Ice/Black',
      styleColor1: 'DZ3475-800',
      type: 'football shoes',
      quantity: 0,
      describtion:
          "Step into the dawn of a new day and put the globe on notice about your skills. A flashy iridescent plate, futuristic graphic and vibrant colours resembling a gradient sunrise speak to the gravitational power of the women's game, a fully fledged force capable of uniting us on and off the pitch.",
      discount: '50%'),
  Product(
      name: "Nike Mercurial Superfly 9 Academy",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Mercurial Superfly_Pink.png',
            color: '0xffDE2A6E'),
      ],
      price: 90.00,
      disPrice: 180.00,
      colorshown_1: 'Pink Blast/Gridiron/Volt',
      styleColor1: 'DJ5625-605',
      type: 'football shoes',
      quantity: 0,
      describtion:
          "Instantly tilt the pitch in the bold design of the Superfly 9 Academy MG. It's loaded with a Zoom Air unit and flexible NikeSkin up top for exceptional touch, so you can dominate in the waning minutes of a match—when it matters most. Fast is in the Air.",
      discount: '50%'),
  Product(
      name: "Nike Phantom GX Academy",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Phantom GX Academy_BlackOrange.png',
            color: '0xff9C342F')
      ],
      price: 50.00,
      disPrice: 100.00,
      colorshown_1: 'Bright Crimson/White/University Red/Black',
      styleColor1: 'DD9473-600',
      type: 'football shoes',
      quantity: 0,
      describtion:
          "Instantly tilt the pitch in the bold design of the Superfly 9 Academy MG. It's loaded with a Zoom Air unit and flexible NikeSkin up top for exceptional touch, so you can dominate in the waning minutes of a match—when it matters most. Fast is in the Air.",
      discount: '50%'),
  Product(
      name: "Nike Zoom Mercurial Vapor 15 Elite FG",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Zoom Mercurial Vapor 15 Elite FG.png',
            color: '0xffAD1F4B')
      ],
      price: 60.00,
      disPrice: 120.00,
      colorshown_1: 'Multi-Colour/Multi-Colour',
      styleColor1: 'DV3909-903',
      type: 'football shoes',
      quantity: 0,
      describtion:
          "Put the football world on notice with this custom Vapor 15 Elite. Express your creative side with a wide array of vibrant, eye-catching colours that reflect your distinct, brash style. ",
      discount: '50%'),
  Product(
      name: "Air Jordan 1 Retro High OG",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Air_Jordan_1_Retro_High_OG.png',
          color: '0xff004781',
        )
      ],
      price: 150.00,
      disPrice: 300.00,
      colorshown_1: 'True Blue/Cement Grey/White',
      styleColor1: 'DZ5485-410',
      type: 'Sneaker',
      quantity: 0,
      describtion:
          "3 + 1 = a whole new icon. Celebrating 35 years of the Air Jordan 3, these kicks combine the classic AJ1 silhouette with an original AJ3 colourway.",
      discount: '50%'),
  Product(
      name: "Jordan Stay Loyal 2",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Jordan Stay Loyal 2.png',
          color: '0xffB7B6B9',
        )
      ],
      price: 125.00,
      disPrice: 250.00,
      colorshown_1: 'White/Cement Grey/Anthracite/Topaz Gold',
      styleColor1: 'DQ8401-103',
      type: 'Sneaker',
      quantity: 0,
      describtion:
          "Inspired by generations of Js, these kicks are a collage of cool. Design details recall decades of legendary shoes while paying homage to MJs storied career.",
      discount: '50%'),
  Product(
      name: "Air Jordan KO1",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Air Jordan KO1.png',
          color: '0xff449AA1',
        ),
      ],
      disPrice: 200.00,
      price: 100.00,
      colorshown_1: ' Bleached Aqua/White',
      styleColor1: 'DO5047-411',
      type: 'Sneaker',
      describtion:
          "We all know staring is a bad look—but when your kicks are this good, can you blame 'em? It's no surprise everyone wants to see the AJKO, a re-imagining of Jordan's first hit shoe that leverages a mix of materials for a whole new vibe. ",
      discount: '50%',
      quantity: 0),
  Product(
      name: "Jumpman MVP",
      isFavorite: false,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Jumpman MVP.png',
          color: '0xffC4541F',
        ),
      ],
      price: 325.00,
      disPrice: 650.00,
      colorshown_1: 'White/Vivid Orange/Black/Cardinal Red',
      styleColor1: 'DZ4475-168',
      type: 'Sneaker',
      describtion:
          "Whenyou need a shoe that's ready 24/7, it's gotta be the Max Aura 5. Inspired by the AJ3, this pair of kicks puts a modern spin on the classic.",
      discount: '50%',
      quantity: 0),
];
List<Product> product_discount = [
  Product(
      name: "Nike InfinityRN4 Midnight",
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_Midnight.png',
            color: '0xff1E3F84'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_white.png',
            color: '0xffDFEBB7'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_whiteRed.png',
            color: '0xffBDCED6'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_infinity_colors/Nike_infinityRN4_Blackwhite.png',
            color: '0xff100B11'),
      ],
      price: 133.00,
      disPrice: 175.00,
      styleColor2: 'DR2665-101',
      styleColor3: 'DR2665-100',
      styleColor4: 'DR2665-001',
      styleColor1: 'DR2665-005',
      colorshown_1: 'Black/Anthracite/Racer',
      colorshown_2: 'White\n/Light Lemon',
      colorshown_3: 'White\n/Platinum Tint/Light Crimson\n/Velvet Brown',
      colorshown_4: 'Black/Dark Grey/White',
      type1: 'productMen',
      type: 'Shoes',
      describtion:
          "Nike InfinityRN 4 is a brand-new take on a familiar favourite.\tIt's made from our all-new Nike ReactX foam, which gives you 13% more energy return compared with Nike React foam, to help you stay fresh and bouncy. (What's more? Nike ReactX reduces the carbon footprint of the midsole by at least 43% compared with Nike React foam, so it helps support the planet, too).",
      discount: '24%', isFavorite: false),
  Product(
      name: "Nike Air Pegasus",
      quantity: 0,
      isFavorite: false,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_Blueaccent.png',
            color: '0xff00415F'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_BlackRed.png',
            color: '0xffD9414E'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_White.png',
            color: '0xffEEEFF5'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_Pegasus_colors/Nike Pegasus_WhiteGreen.png',
            color: '0xffAFB792'),
      ],
      price: 87.5,
      disPrice: 175.00,
      styleColor1: 'FB7180-001',
      styleColor2: 'DV3853-003',
      styleColor3: 'DV3853-102',
      styleColor4: 'DV3853-101',
      colorshown_1: 'Black/Green Abyss/Baltic Blue/Hyper',
      colorshown_2: 'Black/Light Crimson/White',
      colorshown_3: 'White/Black/Photon Dust/Wolf Grey',
      colorshown_4: 'White/Coconut Milk/Volt/Multi-Color',
      type: 'Shoes',
      type1: 'productMen',
      describtion:
          "A springy ride for any run, the Peg’s familiar,\n just-for-you feel returns to help you accomplish your goals. \nThis version has the same responsiveness and neutral support you love, \nbut with improved comfort in those sensitive areas of your foot,\nlike the arch and toes. Whether you’re logging long marathon miles, squeezing in a speed session before the sun goes down or hopping into a spontaneous group jaunt,\nit’s still the established road runner you can put your faith in, day after day, run after run.",
      discount: '50%'),
  Product(
      name: "Nike Runner",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_whitebrown.png',
            color: '0xffE0C4A3'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_Blue.png',
            color: '0xff4673AF'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_pink.png',
            color: '0xffD74F93'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike_runner_colors/Nike runner_white.png',
            color: '0xffB8EEE5'),
      ],
      price: 133,
      
      disPrice: 175.00,
      styleColor1: 'DX5048-500',
      styleColor2: 'DX5048-400',
      styleColor3: 'DX5048-600',
      styleColor4: 'DX5048-300',
      colorshown_1: 'Violet Ash/Vast Grey/Violet Ash',
      colorshown_2: 'Game Royal/Game Royal/Game Royal',
      colorshown_3: 'Fierce Pink/Fierce Pink/Fierce Pink',
      colorshown_4: 'Jade Ice/Jade Ice/Jade Ice',
      type: 'Shoes',
      type1: 'productMen',
      describtion:
          'With supportive cushioning built for a smooth run, the Infinity RN 4 helps you hit the ground running. With personalization options all over and enough color combinations to make your head spin, the Infinity RN 4 By You can help you run and stunt all day. From the Flyknit to Swoosh designs and midsole, it’s ready for your eccentric touch too.',
      discount: '24%'),
  Product(
      name: "Nike Air VaporMax 2023 Flyknit",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit_Gold.jpeg',
            color: '0xffB4843F'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit_Redfire.png',
            color: '0xff910106'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit_Sea.png',
            color: '0xff79E6F3'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Air VaporMax 2023 Flyknit/Nike Air VaporMax 2023 Flyknit.png',
            color: '0xff424443'),
      ],
      price: 133,
      disPrice: 175.00,
      colorshown_1: 'Sand Drift/Bronzine/Sand Drift/Bronzine',
      colorshown_2: 'Track Red/Track Red/Track Red/Mystic Red',
      colorshown_3: 'Baltic Blue/Green Abyss/Hot Punch/Citron Tint',
      colorshown_4: 'Black/Anthracite/Black/Black',
      styleColor1: 'DV1678-100',
      styleColor2: 'DV1678-600',
      styleColor3: 'DV1678-400',
      styleColor4: 'DV1678-003',
      type: 'Shoes',
      type1: 'productMen',
      describtion:
          "Have you ever walked on Air? Step into the Air VaporMax 2023 to see how it's done. The innovative tech is revealed through the perforated sockliner (pull it out to see more). The stretchy Flyknit upper is made from at least 20% recycled content by weight.",
      discount: '24%'),
  Product(
      name: "Nike Sportswear Heritage86 Futura",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_GreenLight.png',
            color: '0xff87C39E'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_Pink.png',
            color: '0xffEDD7D7'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_Purple.png',
            color: '0xffBB7FB5'),
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Sportswear Heritage86 Futura Washed_Black.png',
            color: '0xff23272B'),
      ],
      price: 17.5,
      disPrice: 35.00,
      styleColor1: '913011-363',
      styleColor2: '913011-686',
      styleColor3: '913011-532',
      styleColor4: '913011-010',
      colorshown_1: 'Spring Green/White',
      colorshown_2: 'Pink Bloom/White',
      colorshown_3: 'Rush Fuchsia/White',
      colorshown_4: 'White/White/Black',
      type: 'Hat',
      type1: 'sportwear',
      describtion:
          "Crafted from soft fabric, the Nike Sportswear Heritage86 Futura Washed Hat has a 6-panel design for classic comfort and an adjustable closure for a personalized fit.",
      discount: '50%'),
  Product(
      name: "Nike Everyday Wool",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/SportWears/Nike Everyday Wool.png',
            color: '0xff50879A'),
      ],
      price: 16.97,
      disPrice: 22.00,
      colorshown_1: 'Multi-Color',
      styleColor1: 'DQ6397-904',
      type: 'sock',
      discount: '22%',
      type1: 'sportwear',
      describtion:
          "As outdoorsy as the Nike Everyday Plus Cushioned ankle socks look, they're actually just big softies. Their heathered, knit construction offers a trail-ready look and extra-cozy feel perfect for pairing with your favorite hiking boots, sneakers or even just your slippers."),
  Product(
      name: "Nike Mercurial Superfly 9 Lite",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Mercurial Superfly_Orange.png',
            color: '0xffFEB187'),
      ],
      price: 75.0,
      disPrice: 150.00,
      colorshown_1: 'Guava Ice/Black',
      styleColor1: 'DZ3475-800',
      type: 'football shoes',
      describtion:
          "Step into the dawn of a new day and put the globe on notice about your skills. A flashy iridescent plate, futuristic graphic and vibrant colours resembling a gradient sunrise speak to the gravitational power of the women's game, a fully fledged force capable of uniting us on and off the pitch.",
      discount: '50%'),
  Product(
      name: "Nike Mercurial Superfly 9 Academy",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Mercurial Superfly_Pink.png',
            color: '0xffDE2A6E'),
      ],
      price: 90.00,
      disPrice: 180.00,
      colorshown_1: 'Pink Blast/Gridiron/Volt',
      styleColor1: 'DJ5625-605',
      type: 'football shoes',
      describtion:
          "Instantly tilt the pitch in the bold design of the Superfly 9 Academy MG. It's loaded with a Zoom Air unit and flexible NikeSkin up top for exceptional touch, so you can dominate in the waning minutes of a match—when it matters most. Fast is in the Air.",
      discount: '50%'),
  Product(
      name: "Nike Phantom GX Academy",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Phantom GX Academy_BlackOrange.png',
            color: '0xff9C342F')
      ],
      price: 50.00,
      disPrice: 100.00,
      colorshown_1: 'Bright Crimson/White/University Red/Black',
      styleColor1: 'DD9473-600',
      type: 'football shoes',
      describtion:
          "Instantly tilt the pitch in the bold design of the Superfly 9 Academy MG. It's loaded with a Zoom Air unit and flexible NikeSkin up top for exceptional touch, so you can dominate in the waning minutes of a match—when it matters most. Fast is in the Air.",
      discount: '50%'),
  Product(
      name: "Nike Zoom Mercurial Vapor 15 Elite FG",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
            url:
                'lib/assets/pic/category/Product/Nike Mercurial Superfly 9 Academy/Nike Zoom Mercurial Vapor 15 Elite FG.png',
            color: '0xffAD1F4B')
      ],
      price: 60.00,
      disPrice: 120.00,
      colorshown_1: 'Multi-Colour/Multi-Colour',
      styleColor1: 'DV3909-903',
      type: 'football shoes',
      describtion:
          "Put the football world on notice with this custom Vapor 15 Elite. Express your creative side with a wide array of vibrant, eye-catching colours that reflect your distinct, brash style. ",
      discount: '50%'),
  Product(
      name: "Air Jordan 1 Retro High OG",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Air_Jordan_1_Retro_High_OG.png',
          color: '0xff004781',
        )
      ],
      price: 150.00,
      disPrice: 300.00,
      colorshown_1: 'True Blue/Cement Grey/White',
      styleColor1: 'DZ5485-410',
      type: 'Sneaker',
      describtion:
          "3 + 1 = a whole new icon. Celebrating 35 years of the Air Jordan 3, these kicks combine the classic AJ1 silhouette with an original AJ3 colourway.",
      discount: '50%'),
  Product(
      name: "Jordan Stay Loyal 2",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Jordan Stay Loyal 2.png',
          color: '0xffB7B6B9',
        )
      ],
      price: 125.00,
      disPrice: 250.00,
      colorshown_1: 'White/Cement Grey/Anthracite/Topaz Gold',
      styleColor1: 'DQ8401-103',
      type: 'Sneaker',
      describtion:
          "Inspired by generations of Js, these kicks are a collage of cool. Design details recall decades of legendary shoes while paying homage to MJs storied career.",
      discount: '50%'),
  Product(
      name: "Air Jordan KO1",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Air Jordan KO1.png',
          color: '0xff449AA1',
        ),
      ],
      disPrice: 200.00,
      price: 100.00,
      colorshown_1: ' Bleached Aqua/White',
      styleColor1: 'DO5047-411',
      type: 'Sneaker',
      describtion:
          "We all know staring is a bad look—but when your kicks are this good, can you blame 'em? It's no surprise everyone wants to see the AJKO, a re-imagining of Jordan's first hit shoe that leverages a mix of materials for a whole new vibe. ",
      discount: '50%'),
  Product(
      name: "Jumpman MVP",
      isFavorite: false,
      quantity: 0,
      imageUrl: [
        ImageInfo(
          url:
              'lib/assets/pic/category/Product/Nike Air Jordan/Jumpman MVP.png',
          color: '0xffC4541F',
        ),
      ],
      price: 325.00,
      disPrice: 650.00,
      colorshown_1: 'White/Vivid Orange/Black/Cardinal Red',
      styleColor1: 'DZ4475-168',
      type: 'Sneaker',
      describtion:
          "Whenyou need a shoe that's ready 24/7, it's gotta be the Max Aura 5. Inspired by the AJ3, this pair of kicks puts a modern spin on the classic.",
      discount: '50%'),
];
