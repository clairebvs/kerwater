require 'rails_helper'

describe 'Project' do
  it 'find all projects related to water' do
      data = { project_name: "Modernization of Water Supply and Sanitation Services",
               regionname: "Latin America and Caribbean",
               countryshortname: "Peru",
               project_abstract: {
                cdata: "The development objectives of the Modernization of Water Supply and Sanitation Services Project for Peru are to increase access to, and quality of, water and sanitation services in selected areas, and develop the Borrower’s sectoral institutions and participating service providers’ management capacity to provide efficient water and sanitation services."
               },
               boardapprovaldate: "2018-07-26T00:00:00Z",
               closingdate: "2023-12-31T00:00:00Z",
               lendprojectcost: "200,000,000",
               teamleadname: [
                "Martin Benedikt Albrecht",
                "Gustavo Saltiel"
                ],
              }

        project = Project.new(data)

        expect(project.name).to eq("Modernization of Water Supply and Sanitation Services")
        expect(project.country).to eq("Peru")
        expect(project.region).to eq("Latin America and Caribbean")
        (project.abstract).should include("to provide efficient water and sanitation services")
        expect(project.approval_date).to eq("2018-07-26T00:00:00Z")
        expect(project.closing_date).to eq("2023-12-31T00:00:00Z")
        expect(project.total_cost).to eq("200,000,000")
        expect(project.team_leader).to eq(["Martin Benedikt Albrecht", "Gustavo Saltiel"])
    end
end
