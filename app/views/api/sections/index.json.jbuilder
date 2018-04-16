# app/views/api/sections/index.json.jbuilder

json.array! @sections, partial: 'section', as: :section
