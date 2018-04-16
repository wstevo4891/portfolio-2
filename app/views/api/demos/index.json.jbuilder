# app/views/api/demos/index.json.jbuilder

json.array! @demos, partial: 'demo', as: :demo
