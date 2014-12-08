module Test
  class CiController < ActionController::Base
    respond_to :xml, only: [:jenkins]

    def jenkins
      status = "Success"
      # status = "Failure"

      render(xml:
        <<-XML
<Projects>
  <Project name="test1" lastBuildLabel="1" lastBuildTime="#{Time.now - 2.hours}" lastBuildStatus="#{status}" activity="Sleeping"/>
  <Project name="test2" lastBuildLabel="1" lastBuildTime="#{Time.now - 1.hour}" lastBuildStatus="#{status}" activity="Sleeping"/>
</Projects>
      XML
      )
    end
  end
end
