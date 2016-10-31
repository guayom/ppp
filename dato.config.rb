
directory "_data/" do
  create_data_file "clusters.yml", :yaml,
    dato.clusters.map(&:to_hash)

  create_data_file "slides.yml", :yaml,
    dato.slides.map(&:to_hash)

  create_data_file "program_data_charts.yml", :yaml,
    dato.program_data_charts.map(&:to_hash)

  create_data_file "small_slides.yml", :yaml,
    dato.small_slides.map(&:to_hash)

  create_data_file "plans.yml", :yaml,
    dato.plans.map(&:to_hash)

  create_data_file "participants.yml", :yaml,
    dato.participants.map(&:to_hash)

  create_data_file "small_description.yml", :yaml, {
    content: dato.small_description.content
  }

  create_data_file "contacto.yml", :yaml, {
    email: dato.contacto.email,
    phone: dato.contacto.phone,
    address: dato.contacto.address
  }
end

directory "_about/" do
  create_post "introduction.md" do
    frontmatter :yaml,
      title: "Introduction",
      subtitle: dato.introduction.sub_title

    content dato.introduction.body
  end

  create_post "plans.md" do
    frontmatter :yaml,
      title: "Plans",
      subtitle: "How we envision Punta Palmar Pacífico",
      layout: "plans"
  end

  create_post "program-data.md" do
    frontmatter :yaml,
      title: "Program data - Smart City",
      subtitle: "How we envision Punta Palmar Pacífico",
      layout: "program-data"
  end

end

directory "_participants/" do
  dato.participants.each do |participant|
    create_post "#{participant.name.parameterize}.md" do
      frontmatter :yaml,
        title: participant.name,
        description: participant.description
    end
  end
end
