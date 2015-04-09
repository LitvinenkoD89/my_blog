class VAlexL::MyBlog::Decorators::Breadcrumbs::Main

  class << self
    def items
      @items ||= VAlexL::MyBlog::Decorators::Breadcrumbs::Items.new
      @items
    end

    def printer
      @printer ||= VAlexL::MyBlog::Decorators::Breadcrumbs::Printer.new
      @printer
    end

    def reset_items
      @items = nil
    end

    def add_item(item, path)
      items.add item, path
    end

    def get_items
      items.get_all
    end
  end

  def render
    items = VAlexL::MyBlog::Decorators::Breadcrumbs::Main.get_items
    VAlexL::MyBlog::Decorators::Breadcrumbs::Main.printer.render_items(items)
  end
end
