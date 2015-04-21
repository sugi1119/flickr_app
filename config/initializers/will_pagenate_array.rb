require 'will_paginate/collection'
require 'will_paginate/array'
require "will_paginate-bootstrap"

=begin
Array.class_eval do
  def paginate(page = 1, per_page = 20)
    page = 1 if page.blank?
      WillPaginate::Collection.create(page, per_page, size) do |pager| pager.replace self[pager.offset, pager.per_page].to_a
    end
  end

end

=end
