["Ba Đình", "Cầu Giấy", "Đống Đa", "Hai Bà Trưng", "Hoàn Kiếm", "Tây Hồ",
  "Thanh Xuân", "Từ Liêm", "VP. Quận khác"] do |name|
  description = Faker::Lorem.paragraph(8)
  District.create! name: name, description: description
end

districts = District.all

districts.each do |district|
  10.times do |n|
    name = Faker::Name.name
    short_description = Faker::Lorem.paragraphs(1)
    position = Faker::Name.tile
    num_floor = Faker::Lorem.sentence
    area = Faker::Lorem.sentence
    height_floor = Faker::Lorem.sentence
    parking = Faker::Lorem.sentence
    evaluator = Faker::Lorem.sentence
    air_condition = Faker::Lorem.sentence
    open_time = Faker::Lorem.sentence
    price = Faker::Lorem.sentence
    map = Faker::Lorem.sentence

    district.towers.create! name: name, short_description: short_description,
      position: position, num_floor: num_floor, area: area, height_floor: height_floor,
      parking: parking, evaluator: evaluator, air_condition: air_condition,
      open_time: open_time, price: price, map: map
  end
end

50.times do |n|
  Post.create! name: Faker::Name.name, content: Faker::Lorem.paragraphs(5)
end
