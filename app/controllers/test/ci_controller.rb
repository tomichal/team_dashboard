module Test
  class CiController < ActionController::Base
    respond_to :xml, only: [:jenkins]

    def jenkins
      status = "Success"
      # status = "Failure"

      render(xml:
        <<-XML
<Projects>
  <Project name="test1"
           lastBuildLabel="1"
           lastBuildTime="2001-01-01T00:00:00Z"
           lastBuildStatus="#{status}"
           activity="Sleeping"/>
  <Project name="test2"
           lastBuildLabel="1"
           lastBuildTime="2001-01-01T00:00:00Z"
           lastBuildStatus="#{status}"
           activity="Sleeping"/>
</Projects>
      XML
      )
    end
  end
end
