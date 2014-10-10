require 'optparse'

module Quizzer

  class Options

    private

    def parse(argv)
      OptionParser.new do |opts|
        opts.banner = 'Usage: quizzer [options] quizz_file asessment_file'

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