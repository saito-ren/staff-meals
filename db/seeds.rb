# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
	email: "a@gmail.com",
	password: "aaaaaa"
	)

Employee.create!(
   [
      {
	      first_name: "五十嵐",
	      last_name: "宏行",
	      first_name_kana: "イガラシ",
	      last_name_kana: "ヒロユキ",
	      email: "hiro@ex",
	      gender: "男",
	      position: 1,
	      status: "有効",
	      password: "hirohiro",
      },
      {
      	first_name: "佐藤",
	      last_name: "篤志",
	      first_name_kana: "サトウ",
	      last_name_kana: "アツシ",
	      email: "atsushi@ex",
	      gender: "男",
	      position: 2,
	      status: "有効",
	      password: "atsuatsu",
      }
   ]
   )

  Category.create!(
    [
      {
      	name: "ハンバーグ",
      	image: File.open("./app/assets/images/21fb40affd3cc42569d4a6edaf411ebd.jpg")
      },
      {
      	name: "肉・ステーキ",
      	image: File.open("./app/assets/images/images.jpeg")
      },
      {
      	name: "パスタ・ドリア",
      	image: File.open("./app/assets/images/food-2616456_1280.jpg")
      },
      {
      	name: "ライスプレート・パン",
      	image: File.open("./app/assets/images/images (1).jpeg")
      },
      {
      	name: "麺",
      	image: File.open("./app/assets/images/64860201.jpg")
      },
      {
      	name: "和膳",
      	image: File.open("./app/assets/images/adpDSC_6100-750x500.jpg")
      },
      {
      	name: "サラダ",
      	image: File.open("./app/assets/images/salad-2805813_1280.jpg")
      },
      {
      	name: "デザート",
      	image: File.open("./app/assets/images/images (2).jpeg")
      }
    ]
  	)

  Menu.create!(
    [
      {
        category_id: 1,
        name: "和風ハンバーグ",
        status: 1,
        introduction: "不動の人気メニュー！",
        image: File.open("./app/assets/images/IMG_2098.jpeg")
      },
      {
      	category_id: 1,
        name: "キノコのデミ煮込みハンバーグ",
        status: 1,
        introduction: "秋の味覚をハンバーグとデミグラスソースで！",
        image: File.open("./app/assets/images/IMG_2091.jpeg")
      },
      {
      	category_id: 1,
        name: "ALLビーフハンバーグ&エビフライ",
        status: 1,
        introduction: "ビーフハンバーグとエビフライの大人気コラボ！",
        image: File.open("./app/assets/images/IMG_2099.jpeg")
      },
      {
        category_id: 2,
        name: "カットステーキ",
        status: 1,
        introduction: "一口サイズで柔らかく食べやすいステーキ！",
        image: File.open("./app/assets/images/IMG_2094.jpeg")
      },
      {
      	category_id: 2,
        name: "三元豚ロースのグリル〜ジンジャーソース〜",
        status: 1,
        introduction: "低温調理を施した柔らかい豚肉をジンジャーソースで！",
        image: File.open("./app/assets/images/IMG_2100.jpeg")
      },
      {
      	category_id: 3,
        name: "たらこパスタ",
        status: 1,
        introduction: "お子様にも人気のたらこたっぷりパスタ！",
        image: File.open("./app/assets/images/IMG_2089.jpeg")
      },
      {
      	category_id: 3,
        name: "牡蠣と海老のパスタ",
        status: 1,
        introduction: "プリプリの牡蠣とエビのピリ辛ソースパスタ！",
        image: File.open("./app/assets/images/IMG_2097.jpeg")
      },
      {
      	category_id: 3,
        name: "ミートソースパスタ",
        status: 1,
        introduction: "みんな大好きミートソース！",
        image: File.open("./app/assets/images/IMG_2105.jpeg")
      },
      {
      	category_id: 4,
        name: "アメリカンクラブハウスサンド",
        status: 1,
        introduction: "シェアもできる、おやつにもどうぞ！",
        image: File.open("./app/assets/images/IMG_2095.jpeg")
      },
      {
      	category_id: 4,
        name: "オムライス",
        status: 1,
        introduction: "お子様から大人まで大人気のオムライス！",
        image: File.open("./app/assets/images/IMG_2090.jpeg")
      },
      {
      	category_id: 4,
        name: "ベジタブルカレー",
        status: 1,
        introduction: "ひじきご飯の野菜カレー！",
        image: File.open("./app/assets/images/IMG_2092.jpeg")
      },
      {
      	category_id: 5,
        name: "坦々麺",
        status: 1,
        introduction: "胡麻ベースのスープで濃厚な坦々麺！",
        image: File.open("./app/assets/images/IMG_2101.jpeg")
      },
      {
      	category_id: 6,
        name: "生姜焼き膳",
        status: 1,
        introduction: "厚めの肩ロースを大人気の生姜焼きで！",
        image: File.open("./app/assets/images/IMG_2096.jpeg")
      },
      {
      	category_id: 7,
        name: "パワーサラダ",
        status: 1,
        introduction: "ボリュームたっぷりのサラダ尽くし！",
        image: File.open("./app/assets/images/IMG_2102.jpeg")
      },
      {
      	category_id: 8,
        name: "マスカットのミニパルフェ",
        status: 1,
        introduction: "マスカットの食べやすいサイズのパフェ！",
        image: File.open("./app/assets/images/IMG_2103.jpeg")
      },
      {
      	category_id: 8,
        name: "マスカットのサンデー",
        status: 1,
        introduction: "マスカットを贅沢に乗せたパフェ！",
        image: File.open("./app/assets/images/IMG_2106.jpeg")
      },
      {
      	category_id: 8,
        name: "クリームあんみつ",
        status: 1,
        introduction: "人気の和デザート！",
        image: File.open("./app/assets/images/IMG_2104.jpeg")
      }
    ]
  	)