require_relative('options')
require 'json'
require 'open-uri'

module Quizzer

  class Quizzer
    def initialize(argv)
      @options = Options.new(argv)
      @quizz
      @assesment
      @scores
    end

    def parse_json(path)
      JSON.parse(IO.read(path))
    end
  end
end

quizzer = Quizzer.new
quizzer.parse_json('manifest.json')
