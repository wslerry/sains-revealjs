# # _plugins/revealjs.rb
# module Jekyll
#   class RevealJSSlideGenerator < Generator
#     safe true
#     priority :low

#     def generate(site)
#       site.pages.each do |page|
#         if page.ext == '.md' && page.data['include'] == 'slide-content'
#           inject_revealjs_attributes(page)
#         end
#       end
#     end

#     def inject_revealjs_attributes(page)
#       reveal_section = <<~HTML
#         <!-- For Markdown files -->
#         <section
#           data-markdown
#           data-separator="\\n\\n"
#           data-separator-vertical="\\n\\n\\n"
#           data-separator-notes="^Note:"
#           data-charset="utf-8"
#         ></section>
#         <script type="text/template">
#       HTML

#       page.content = reveal_section + page.content + "</script>"
#     end
#   end
# end


# _plugins/revealjs_slide_generator.rb
module Jekyll
  class RevealJSSlideGenerator < Generator
    safe true
    priority :low

    def generate(site)
      slides_dir = '_slides'
      site.pages.each do |page|
        if page.path.start_with?(slides_dir) && (page.ext == '.md' || page.ext == '.html')
          inject_revealjs_attributes(page, site)
        end
      end
    end

    def inject_revealjs_attributes(page)
      content_with_section = if page.data['theme'] == 'sains'
        <<~HTML
          <!-- For Markdown files -->
          <section
            data-background-image="{{ site.baseurl }}/dist/theme/img/sains_bg_2.jpg"
            data-background-size="cover"
            data-background-repeat="no-repeat"
            data-markdown
            data-separator="\\n\\n"
            data-separator-vertical="\\n\\n\\n"
            data-separator-notes="^Note:"
            data-charset="utf-8"
          ></section>
          <script type="text/template">
            #{page.content}
          </script>
        HTML
      else
        <<~HTML
          <!-- For Markdown files -->
          <section
            data-markdown
            data-separator="\\n\\n"
            data-separator-vertical="\\n\\n\\n"
            data-separator-notes="^Note:"
            data-charset="utf-8"
          ></section>
          <script type="text/template">
            #{page.content}
          </script>
        HTML
      end

      page.content = <<~HTML + content_with_section
        <!-- first page -->
        <section>
          <div class="container">
            <div class="col">
              <h1 class="rightside">{{ page.title }}</h1>
              <br />
              {% if page.description %}
              <p class="rightside">🏷️ {{ page.description }}</p>
              <br />
              {% endif %}
              <hr />
              {% if page.location %}
              <p class="rightside">🏢 {{ page.location }}</p>
              {% endif %}
              {% if page.date %}
              <p class="rightside">📅 {{ page.date }}</p>
              {% else %}
              <p class="rightside" id="date"></p>
              {% endif %}
            </div>
          </div>
        </section>
      HTML
    end
  end
end
