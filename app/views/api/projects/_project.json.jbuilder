# app/views/api/projects/_project.json.jbuilder

json.extract! project,
              :id, :title, :slug, :cover, :site_link, :repo_link,
              :description, :highlights, :tech_stack

json.url project_url(project, format: :json)
