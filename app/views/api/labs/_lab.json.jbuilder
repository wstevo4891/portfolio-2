# app/views/api/labs/_lab.json.jbuilder

json.extract! lab, :id, :title, :cover, :description, :tech_stack

json.url lab_url(lab, format: :json)
