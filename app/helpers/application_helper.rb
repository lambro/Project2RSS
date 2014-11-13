module ApplicationHelper

  def bookmark_menu_items(bookmarks)

    if bookmarks.present?
      if bookmarks.count > 2
        links = ''
        bookmarks.take(3).each do |bookmark|
          links += link_to bookmark[1], bookmark[0]
        end
        links
      else
        "No bookmarks yet"
      end

    end
  end

end
