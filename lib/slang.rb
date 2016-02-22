class Slang
  # @return [Integer] The UrbanDictionary definition ID.
  attr_reader :id

  # @return [String] The word being defined.
  attr_reader :word

  # @return [String] The author of the definition.
  attr_reader :author

  # @return [String] A permalink to the definition.
  attr_reader :permalink

  # @return [String] The actual definition.
  attr_reader :definition

  # @return [String] An example of the word's usage.
  attr_reader :example

  # @return [Integer] The number of thumbs-up the definition has received.
  attr_reader :upvotes

  # @return [Integer] The number of thumbs-down the definition has received.
  attr_reader :downvotes

  # Creates a new Slang object.
  # @param opts [Hash] The options hash.
  # @option opts [Integer] :id The definition ID.
  # @option opts [String] :word The word being defined.
  # @option opts [String] :author The author of the definition.
  # @option opts [String] :permalink The permalink for the definition.
  # @option opts [String] :definition The definition for the :word
  # @option opts [String] :example An example of its usage.
  # @option opts [Integer] :thumbs_up The number of upvotes the definition has received.
  # @option opts [Integer] :thumbs_down The number of downvotes the definition has received.
  def initialize(opts = {})
    @id = opts['defid'] || opts[:defid]
    @word = opts['word'] || opts[:word]
    @author = opts['author'] || opts[:author]
    @permalink = opts['permalink'] || opts[:permalink]
    @definition = opts['definition'] || opts[:definition]
    @example = opts['example'] || opts[:example]
    @upvotes = opts['thumbs_up'] || opts[:thumbs_up]
    @downvotes = opts['thumbs_down'] || opts[:thumbs_down]
  end

  # Returns a hash representation of this Slang object.
  # @return [Hash<Symbol, Integer/String>] See the source for details.
  def to_h
    {
      id: @id,
      word: @word,
      author: @author,
      permalink: @permalink,
      definition: @definition,
      example: @example,
      upvotes: @upvotes,
      downvotes: @downvotes
    }
  end
end