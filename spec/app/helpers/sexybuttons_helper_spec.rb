require File.join(File.dirname(__FILE__), '..', '..', 'spec_helper')

module Yeqs
  module Sexybuttons
    describe SexybuttonHelper do
      before(:each) do
        @obj = Object.new
        @obj.extend(ActionView::Helpers::TagHelper)
        @obj.extend(SexybuttonHelper)
      end

      it "should generate a link tag including the sexybuttons' stylesheet" do
        html = @obj.include_sexybuttons
        html.should == '<link href="/components/SexyButtons/sexybuttons.css" media="screen" rel="stylesheet" type="text/css" />'
      end
      
      it "should generate a simple sexybutton" do
        html = @obj.sexybutton('Simple Button') do |b|
          b.id = 'sbtn-id'
          b.style = 'custom'
          b.type = 'submit'
          b.color = 'orange'
          b.image = 'ok'
          b.html_options = { :rel => 'sbtn' }
        end

        html.should == '<button class="sexybutton sexysimple sexyorange custom" id="sbtn-id" rel="sbtn" type="submit"><span class="ok">Simple Button</span></button>'
      end

      it "should generate a link" do
        html = @obj.sexybutton('Google', 'http://www.google.com') do |b|
          b.color = 'orange'
        end

        html.should == '<a class="sexybutton sexysimple sexyorange" href="http://www.google.com">Google</a>'
      end

      it "should generate a link with a image" do
        html = @obj.sexybutton('Google', 'http://www.google.com', 'google')
        html.should == '<a class="sexybutton sexysimple sexyblack" href="http://www.google.com"><span class="google">Google</span></a>'
      end
    end
  end
end
