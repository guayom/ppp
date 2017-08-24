
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

  create_data_file "construction.yml", :yaml, {
    total_population: dato.construction.total_population,
    automoviles: dato.construction.automoviles,
    total_lot_areas: dato.construction.total_lot_areas,
    total_building_area: dato.construction.total_building_area,
    airport_building_area: dato.construction.airport_building_area,
    airport_lot_area: dato.construction.airport_lot_area,
    future_development_area: dato.construction.future_development_area,
    imagen: dato.construction.imagen.url
  }
end

directory "_about/" do

  create_post "introduction.md" do
    frontmatter :yaml,
      title: "Introduction",
      subtitle: dato.introduction.sub_title,
      weight: 1

    content dato.introduction.body
  end

  create_post "executive-summary.md" do
    frontmatter :yaml,
      title: "Executive Summary",
      subtitle: dato.executive_summary.subtitle,
      weight: 2

    content dato.executive_summary.content
  end


  create_post "plans.md" do
    frontmatter :yaml,
      title: "Plans",
      subtitle: "How we envision Punta Perla Pacífico",
      layout: "plans",
      weight: 3
  end

  create_post "program-data.md" do
    frontmatter :yaml,
      title: "Program data - Smart City",
      subtitle: "How we envision Punta Perla Pacífico",
      layout: "program-data",
      weight: 4
  end

end

directory "_participants/" do
  count = 0
  dato.participants.each do |participant|
    create_post "#{participant.name.parameterize}.md" do
      frontmatter :yaml,
        title: participant.name,
        description: participant.description,
        order: count
    end
    count += 1
  end
end

directory "_clusters/" do
  dato.clusters.each do |cluster|
    create_post "#{cluster.title.parameterize}.md" do
      frontmatter :yaml,
        title: cluster.title,
        description: cluster.long_description,
        images: cluster.images
    end
  end
end
