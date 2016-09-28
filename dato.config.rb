# directory "_data" do
#   dato.clusters.each do |item|
#     create_data_file "#{item.title.slug}.yaml", :yaml,
#       title: item.title,
#       description: item.short_description
#   end
# end
directory "_data/" do
  create_data_file "contacto.yml", :yaml,
    email: dato.contacto.email,
    phone: dato.contacto.phone,
    address: dato.contacto.address
end

directory "_about/" do
  create_post "introduction.md" do
    frontmatter :yaml,
      title: "Introduction",
      subtitle: dato.introduction.sub_title,
      permalink: "/about/introduction/",
      layout: "project"

    content dato.introduction.body
  end

  create_post "plans.md" do
    frontmatter :yaml,
      title: "Plans",
      subtitle: "How we envision Punta Palmar Pacífico",
      permalink: "/about/plans/",
      layout: "project"
  end

  create_post "program-data.md" do
    frontmatter :yaml,
      title: "Program data - Smart City",
      subtitle: "How we envision Punta Palmar Pacífico",
      permalink: "/about/program-data/",
      layout: "project"
  end

  create_post "participants.md" do
    frontmatter :yaml,
      dato.participants.map(&:to_hash)
  end

end
