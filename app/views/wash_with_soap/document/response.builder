xml.instruct!
xml.tag! "soap:Envelope", "xmlns:soap" => 'http://www.w3.org/2003/05/soap-envelope',
                          "xmlns:xsd" => 'http://www.w3.org/2001/XMLSchema',
                          "xmlns:tns" => @namespace do
  xml.tag! "soap:Body" do
    key = "tns:#{@operation}#{WashOut::Engine.camelize_wsdl ? 'Response' : '_response'}"

    xml.tag! @action_spec[:response_tag] do
      wsdl_data xml, result
    end
  end
end
