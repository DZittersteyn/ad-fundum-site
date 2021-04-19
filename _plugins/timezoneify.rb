require 'tzinfo'

module Jekyll
  module Timezoneify
    def timezoneify(time)
      return nil unless time

      ::TZInfo::Timezone.get('Europe/Amsterdam').local_to_utc(time).strftime('%Y%m%dT%H%M%SZ')
    end
  end
end

Liquid::Template.register_filter(Jekyll::Timezoneify)
