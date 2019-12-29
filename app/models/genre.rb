class Genre < ActiveHash::Base
  self.data = [
    {id: 1, name: "知識"}, {id: 2, name: 'ブログ'},
    {id: 3, name: '趣味'}
  ]
end