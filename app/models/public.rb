class Public < ActiveHash::Base
  self.data = [
    {id: 1, name: "公開"}, {id: 2, name: '非公開'}
  ]
end