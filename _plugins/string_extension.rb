class String
  def to_permalink
    self.downcase.gsub( /&/, 'and' ).gsub( /\s/, '-' )
  end
end

