require 'rails_helper'

describe 'Project' do
  it 'find all projects related to water' do
      data = { project_name: "Modernization of Water Supply and Sanitation Services",
               regionname: "Latin America and Caribbean",
               countryshortname: "Peru",
               project_abstract: {
                cdata: "The development objectives of the Modernization of Water Supply and Sanitation Services Project for Peru are to increase access to, and quality of, water and sanitation services in selected areas, and develop the Borrower’s sectoral institutions and participating service providers’ management capacity to provide efficient water and sanitation services. The project comprises of three components. The first component, improving governance of water supply and sanitation service providers will contribute to improving the efficiency of the sector by financing activities that will support national‐level sector entities, primarily the ministry of housing, construction, and sanitation (MVCS), technical organization for the administration of (water and) sanitation services (OTASS), and national superintendence of (water and) sanitation services (SUNASS), as well as the efficiency of the six selected empresa prestadora de servicios de saneamiento (EPSs). It consists of following sub-components: (i) improving institutions, policy, and regulation of water supply and sanitation services; (ii) strengthening of OTASS and national program for urban (water and) sanitation (PNSU); and (iii) improving efficiency and sustainability of participating EPS. The second component, improving and expanding water supply and sanitation services in the participating EPS will finance the rehabilitation and expansion of water supply and sanitation (WSS) infrastructure of participating EPSs. The third component, general project administration will support the management and monitoring of activities associated with project implementation and include technical assistance (TA) and administrative support to the day‐to‐day implementation of procurement and financial management (FM) activities, the environmental and social safeguards monitoring, monitoring and evaluation (M and E), and final project evaluati"
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
        expect(project.counrty).to eq("Peru")
        expect(project.region).to eq("Latin America and Caribbean")
        expect(project.abstract).to includes("to provide efficient water and sanitation services")
        expect(project.approval_date).to eq("2018-07-26T00:00:00Z")
        expect(project.closing_date).to eq("2023-12-31T00:00:00Z")
        expect(project.total_cost).to eq("200,000,000")
        expect(project.team_leader).to eq(["Martin Benedikt Albrecht", "Gustavo Saltiel"])
    end
end
