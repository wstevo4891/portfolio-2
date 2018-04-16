# app/views/api/labs/index.json.jbuilder

json.array! @labs, partial: 'lab', as: :lab
