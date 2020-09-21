# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
	email: "a@a",
	password: "aaaaaa"
	)
10.times do |i|
  Employee.create!{
	first_name:"#{i}",
	last_name:"#{i}",
	first_name_kana: "#{i}",
	last_name_kana: "#{i}",
	email: "#{i}@#{i}",
	password: "#{i}#{i}#{i}#{i}#{i}#{i}"
  }

  Category.create!(
    [
      {
      	name: "ハンバーグ",
      	image: File.open("./app/assets/images/21fb40affd3cc42569d4a6edaf411ebd.jpg")
      },
      {
      	name: "肉・ステーキ",
      	images: File.open("./app/assets/images/images.jpeg")
      },
      {
      	name: "パスタ・ドリア",
      	images: File.open("./app/assets/images/food-2616456_1280.jpg")
      },
      {
      	name: "ライスプレート・パン",
      	images: File.open("./app/assets/images/images (1).jpeg")
      },
      {
      	name: "麺",
      	images: File.open("./app/assets/images/64860201.jpg")
      },
      {
      	name: "和膳",
      	images: File.open("./app/assets/images/adpDSC_6100-750x500.jpg")
      },
      {
      	name: "サラダ",
      	images: File.open("./app/assets/images/salad-2805813_1280.jpg")
      },
      {
      	name: "デザート",
      	images: File.open("./app/assets/images/images (2).jpeg")
      }
    ]
  	)

  Menu.create!(
    [
      {
        category_id: 1,
        name: "和風ハンバーグ",
        introduction: "不動の人気メニュー！",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 1,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 1,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      },
      {
        category_id: 2,
        name: "カットステーキ",
        introduction: "一口サイズで柔らかく食べやすいステーキ！",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 2,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 2,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 3,
        name: "たらこパスタ",
        introduction: "お子様にも人気のたらこたっぷりパスタ！",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 3,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 3,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 4,
        name: "アメリカンクラブハウスサンド",
        introduction: "シェアもできる、おやつにもどうぞ！",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 4,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 5,
        name: "坦々麺",
        introduction: "胡麻ベースのスープで濃厚な坦々麺！",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 5,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 6,
        name: "チキン南蛮膳",
        introduction: "唐揚げ好きにはたまらない一品！",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 6,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 7,
        name: "パワーサラダ",
        introduction: "ボリュームたっぷりのサラダ尽くし！",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 7,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 8,
        name: "キャラメルハチミツパンケーキ",
        introduction: "甘いもの食べたい時はこれ！",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 8,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      },
      {
      	category_id: 8,
        name: "",
        introduction: "",
        image: File.open("./app/assets/images/  ")
      }
    ]
  	)