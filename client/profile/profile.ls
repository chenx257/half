Template['profile'].helpers {
  profile: ->
    if user = Meteor.users. find-one {username: Session.get 'username'}
      user.profile
  occupation: ->
    if user = Meteor.users. find-one {username: Session.get 'username'}
      orderToOccupation user.profile.occupation
}

orderToOccupation = (order)->
  switch order
  | 'occup0' => '互联网科技'
  | 'occup1' => '金融'
  | 'occup2' => '信息传媒'
  | 'occup3' => '教育'
  | 'occup4' => '医疗卫生'
  | 'occup5' => '服务业'
  | 'occup6' => '地产建筑'
  | 'occup7' => '国家机关'
  | 'occup8' => '农林牧鱼'
  | 'occup9' => '制作加工'
  | otherwise => console.log 'wrong occupation order'