require 'rouge' unless defined? ::Rouge.version

module Rouge
  module Themes
    class Custom < CSSTheme
      name 'custom'

      palette :grey   => '#888888'
      palette :purple => '#795da3'
      palette :pink   => '#bb0066'
      palette :green  => '#008800'


      style Comment,                   :fg => :grey
      style Comment::Preproc,          :fg => '#cc0000', :bold => true
      style Comment::Special,          :fg => '#cc0000', :bg => '#fff0f0', :bold => true

      style Error,                     :fg => '#a61717', :bg => '#e3d2d2'
      style Generic::Error,            :fg => '#aa0000'

      style Generic::Heading,          :fg => '#333333'
      style Generic::Subheading,       :fg => '#666666'

      style Generic::Deleted,          :fg => '#000000', :bg => '#ffdddd'
      style Generic::Inserted,         :fg => '#000000', :bg => '#ddffdd'

      style Generic::Emph,             :italic => true
      style Generic::Strong,           :bold => true

      style Generic::Lineno,           :fg => :grey
      style Generic::Output,           :fg => :grey
      style Generic::Prompt,           :fg => '#555555'
      style Generic::Traceback,        :fg => '#aa0000'

      style Keyword,                   :fg => :pink, :bold => true
      style Keyword::Pseudo,           :fg => :pink
      style Keyword::Type,             :fg => :pink, :bold => true

      style Num,                       :fg => '#0000dd', :bold => true

      style Str,                       :fg => '#dd2200'
      style Str::Escape,               :fg => '#0044dd'
      style Str::Interpol,             :fg => '#3333bb'
      style Str::Other,                :fg => '#22bb22'

      style Str::Regex,                :fg => :pink
      style Str::Symbol,               :fg => '#aa6600', :bg => '#fff0f0'

      style Name::Attribute,           :fg => '#336699'
      style Name::Builtin,             :fg => '#003388'
      style Name::Class,               :fg => :purple, :bold => true
      style Name::Constant,            :fg => '#003366', :bold => true
      style Name::Decorator,           :fg => '#0086b3'
      style Name::Exception,           :fg => :purple, :bold => true
      style Name::Function,            :fg => '#0086b3', :bold => true

      style Name::Label,               :fg => '#336699'
      style Name::Namespace,           :fg => :purple, :bold => true
      style Name::Property,            :fg => '#336699', :bold => true
      style Name::Tag,                 :fg => :purple, :bold => true
      style Name::Variable,            :fg => '#336699'
      style Name::Variable::Global,    :fg => '#dd7700'
      style Name::Variable::Instance,  :fg => '#3333bb'

      style Operator::Word,            :fg => :pink

      style Text,                      {}
      style Text::Whitespace,          :fg => '#bbbbbb'
    end
  end
end
