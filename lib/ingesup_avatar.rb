require 'cgi'

module IngesupAvatarHelper

  DEFAULT_OPTIONS = {
    :default => nil,
    :size => 50,
    :alt => '',
    :title => '',
	
	#utilisation de la classe CSS "gravatar" pour rester compatible avec les templates
    :class => 'gravatar',
  }
  
  module PublicMethods
  
	def ingesup_avatar(ingid, options={})
      src = h("https://1gpc.ingesup.com/datas/modules/student/photos//#{ingid}.jpg")
      options = DEFAULT_OPTIONS.merge(options)
      [:class, :alt, :size, :title].each { |opt| options[opt] = h(options[opt]) }
      "<img class=\"#{options[:class]}\" alt=\"#{options[:alt]}\" title=\"#{options[:title]}\" width=\"#{options[:size]}\" height=\"#{options[:size]}\" src=\"#{src}\" />"
    end
	
  end
  
end
