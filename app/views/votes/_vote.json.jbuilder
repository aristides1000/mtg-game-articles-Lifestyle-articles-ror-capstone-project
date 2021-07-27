json.extract! vote, :id, :userid, :articleid, :created_at, :updated_at
json.url vote_url(vote, format: :json)
