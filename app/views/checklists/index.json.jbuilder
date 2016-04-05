json.array!(@checklists) do |checklist|
  json.extract! checklist, :id, :facebook, :twitter, :linkedin, :viadeo, :instagram, :community, :cms, :seo, :crowdfunding
  json.url checklist_url(checklist, format: :json)
end
