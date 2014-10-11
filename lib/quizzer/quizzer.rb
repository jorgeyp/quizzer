require_relative('options')
require 'json'
require 'open-uri'

module Quizzer

  class Quizzer

    def initialize(assessment, quizz, scores)
      @assessment = assessment
      @quizz = quizz
      @scores = scores

      p assessment
      p quizz
      p scores
    end


  end

  class Main

    def initialize(argv)
      @options = Options.new(argv)
    end

    def run
      if @options.manifest
        manifest = parse_json(@options.manifest)

        manifest["tests"].each { |test|
          assesment = parse_json(test["assessment"])
          quizz = parse_json(test["quizz"])
          scores = parse_json(test["scores"])

          @quizzer = Quizzer.new(assesment, quizz, scores)
        }
      end

    end

    def parse_json(path)
      JSON.load(open(path))
      #JSON.parse(IO.read(path))
    end
  end
end
