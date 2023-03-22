module Import
  class Processor
    class << self
      def run
        BasePokemonImporter.run
        TypeMatchupImporter.run
      end
    end
  end
end
