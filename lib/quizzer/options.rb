require 'optparse'

module Quizzer

  class Options

    DEFAULT_MANIFEST = 'manifest.json'

    attr_reader :manifest

    def initialize(argv)
      @manifest = DEFAULT_MANIFEST
      parse(argv)
    end

    private

    def parse(argv)
      OptionParser.new do |opts|
        opts.banner = 'Usage: quizzer [options] quizz_file asessment_file'

        opts.on('-m', '--manifest manifest', String, 'Get JSON files URIs from manifest file.') do |m|
          @manifest = m
        end

        opts.on_tail('-h', '--help', 'Show this message') do
          puts opts
          exit
        end

        # opts.on_tail("-v", "--version", "Show version") do
        #   puts ::Version.join('.')
        #   exit
        # end

        begin
          opts.parse!(argv)
        rescue OptionParser::ParseError => e
          STDERR.puts e.message, "\n", opts
          exit(-1)
        end
      end
    end # parse()
  end # class Options
end # module Quizzer