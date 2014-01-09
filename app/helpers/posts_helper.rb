module PostsHelper

  def post_preview(post)
    preview = ""
    unless post==nil
      i=0
      until i>100 && post.text[i-1] == "."
        if i<post.text.length
          preview += post.text[i]
          i+=1
        else
          break
        end
      end
    end
    preview
  end

  def pretty_date(time)
    time.strftime("%d %b %Y")
  end
end
