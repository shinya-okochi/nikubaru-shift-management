# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
    {
      id: 1,
      name: "大河内 真也",
      email: "shinya_okochi@gmail.com",
      password: "Shinya1203"
    },
    {
      id: 2,
      name: "師田 裕二郎",
      email: "yujiro_morota@gmail.com",
      password: "Yujiro0501"
    },
    {
      id: 3,
      name: "竹内 嵩将",
      email: "Takamasa@gmail.com",
      password: "Takamasa1225"
    }
  ]
)

News.create!(
    [
        {
            title: "ケーキセットが全時間帯適用",
            text: "お疲れ様です！\r\n４月２２日からケーキセットが全時間帯適用となります。\r\nケーキのラミサイドメニューは14:00から提示して訴求お願いします！\r\nよろしくお願いします",
            user_id: 1
        },
        {
            title: "精算マニュアル完成",
            text: "おはようございます。\r\n精算マニュアル完成したので、送付します。\r\nちなみにこのマニュアルは初見だとわけわからんと思います。\r\nなのでトレーニング受けた後の再確認用だと思ってもらった方がいいかと思います。",
            user_id: 1
        }
    ]
)

HopeShift.create!(
  [
    {
      date: '2021-4-16',
      start_time: '6:30',
      end_time: '17:00',
      user_id: 1
    },
    {
      date: '2021-4-17',
      start_time: '6:30',
      end_time: '15:00',
      user_id: 1
    },
    {
      date: '2021-4-18',
      start_time: '6:30',
      end_time: '15:00',
      user_id: 1
    },
    {
      date: '2021-4-20',
      start_time: '6:30',
      end_time: '17:00',
      user_id: 1
    },
    {
      date: '2021-4-21',
      start_time: '6:30',
      end_time: '17:00',
      user_id: 1
    },
    {
      date: '2021-4-22',
      start_time: '6:30',
      end_time: '15:00',
      user_id: 1
    },
    {
      date: '2021-4-23',
      start_time: '6:30',
      end_time: '12:00',
      user_id: 1
    },
    {
      date: '2021-4-24',
      start_time: '6:30',
      end_time: '15:00',
      user_id: 1
    },
    {
      date: '2021-4-25',
      start_time: '6:30',
      end_time: '15:00',
      user_id: 1
    },
    {
      date: '2021-4-27',
      start_time: '6:30',
      end_time: '15:00',
      user_id: 1
    },
    {
      date: '2021-4-28',
      start_time: '6:30',
      end_time: '17:00',
      user_id: 1
    },
    {
      date: '2021-4-30',
      start_time: '6:30',
      end_time: '15:00',
      user_id: 1
    },
    {
      date: '2021-5-30',
      start_time: '6:30',
      end_time: '15:00',
      user_id: 1
    },
    {
      date: '2021-5-23',
      start_time: '6:30',
      end_time: '23:00',
      user_id: 2
    },
    {
      date: '2021-5-16',
      start_time: '6:30',
      end_time: '11:00',
      user_id: 3
    }
  ]
)