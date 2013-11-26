require 'will_paginate'

module WillPaginate
  	module ViewHelpers
    # This class does the heavy lifting of actually building the pagination
    # links. It is used by +will_paginate+ helper internally.
	    class LinkRenderer < LinkRendererBase
	    	protected

	    	def gap
			  tag(:li, "...", :class => "gap")
			end

			def page_number(page)
				if page == current_page
					tag(:li, link(page, '#', :class => 'pure-button pure-button-xsmall pure-button-active'))
				else
					tag(:li, link(page, page, rel: rel_value(page), :class => 'pure-button pure-button-xsmall'))
				end
			end

			def previous_page
				num = @collection.current_page > 1 && @collection.current_page - 1
				previous_or_next_page(num, "&#171;", 'prev')
			end

			def next_page
				num = @collection.current_page < total_pages && @collection.current_page + 1
				previous_or_next_page(num, "&#187;", 'next')
			end

			def previous_or_next_page(page, text, classname)
				if page
					tag(:li, link(text, page, :class => "pure-button pure-button-xsmall #{classname}"))
				else
					tag(:li, tag(:span, text, :class => "pure-button pure-button-xsmall #{classname} disabled") )
				end
			end

			def html_container(html)
				tag(:ul, html, container_attributes)
			end
	    end
	end
end