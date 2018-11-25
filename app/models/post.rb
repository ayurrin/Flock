class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum:500}}
  validates :title, {presence: true, length: {maximum:25}}
  validates :user_id, {presence: true}

  def user
    return Login.find_by(id: self.user_id)
  end
  def generater(content,title,id)
    require 'rmagick'

    imgl = Magick::ImageList.new
    # 200x200 で画像を準備しつつ、わかりやすいように薄い色でグリッドを描画しとく
    imgl.new_image(300, 300) { self.background_color = "rgb(246, 129, 6)" }
    gc = Magick::Draw.new

    # 座標系の原点を左上から中央に移動


    # fontsize
    gc.pointsize(15)


    # 文字を描画
    gc.fill('white') # 見やすいように黒で
    gc.font("app/assets/fonts/NotoSansCJKjp-Medium.otf")
    gc.text(10, 50, content)
    gc.draw(imgl)



    gc.gravity(Magick::NorthGravity)
    gc.pointsize(20)
    gc.text(0, 0, title)

    gc.draw(imgl)

    imgl.write("public/#{id}.png") # ファイルに書き出し
  end

end
