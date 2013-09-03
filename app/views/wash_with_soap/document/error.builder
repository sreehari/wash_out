xml.instruct!
xml.tag! "soap:Envelope", "xmlns:soap" => 'http://www.w3.org/2003/05/soap-envelope' do
  xml.tag! "soap:Body" do
    xml.tag! "soap:Fault" do
      xml.faultcode "soap:Server"
      xml.faultstring error_message
    end
  end
end
