# app/controllers/feed_controller.rb
class FeedController < ApplicationController
  def google
    # Fetch all bikes from the database
    @bikes = Bike.all # You can filter this as needed (e.g., only available bikes)

    respond_to do |format|
      format.xml { render xml: generate_feed(@bikes) }
    end
  end

  private

  def generate_feed(bikes)
    builder = Nokogiri::XML::Builder.new do |xml|
      xml.rss(version: "2.0", "xmlns:g" => "http://base.google.com/ns/1.0") {
        xml.channel {
          xml.title "Bikez ATV Sale Product Feed"
          xml.link "https://bikezsale.us"
          xml.description "A rugged utility ATV perfect for heavy-duty tasks and adventurous trails."

          bikes.each do |bike|
            xml.item {
              xml["g"].id bike.id
              xml["g"].title bike.model
              xml["g"].description bike.description
              xml["g"].link bike_url(bike) # Assuming bike_url is a valid path helper
              xml["g"].image_link bike_image_url(bike) # Make sure your image logic is correct
              xml["g"].price "#{bike.price} USD"
              xml["g"].condition "used"  # All bikes are used for now
              xml["g"].brand bike.brand.name  # Fetch the brand name from the associated Brand
              xml["g"].category bike.category.name  # Fetch the category name from the associated Category
              xml["g"].fuel_type bike.fuel_type
              xml["g"].kilometers bike.kilometers
              xml["g"].engine_capacity bike.engine_capacity
              xml["g"].maximum_speed bike.maximum_speed
              xml["g"].registration_status bike.registration_status
              xml["g"].features bike.features
              xml["g"].availability "in stock"
              xml["g"].tax do
                xml["g"].country "US"
                xml["g"].rate "0.0"
                xml["g"].tax_ship false
              end
            }

          end
        }
      }
    end
    builder.to_xml
  end

  def bike_image_url(bike)
    bike.photos.attached? ? bike.photos.first.url : nil
  end

end
