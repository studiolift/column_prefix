require "column_prefix/version"

module ColumnPrefix
  # Alias prefixed attributes
  def column_prefix(prefix)
    column_names.each do |name|
      new_name = name.sub(prefix, '')
      if !self.respond_to? new_name
        alias_attribute new_name.to_sym, name.to_sym
      end
    end
  end
end

ActiveRecord::Base.send :extend, ColumnPrefix
