module Statsdeify
  class Measurement
    REGEXP = Regexp.new(/(\S+)=(\S+)/)

    attr_accessor :name, :value

    def self.from_line(line)
      h = hashify_line(line)
      valid?(h) ? new(h['measure'], h['value']) : nil
    end

    def self.hashify_line(line)
      line.scan(REGEXP).map do |x|
        Hash[*x]  
      end.inject({}) do |h,x|
        h.merge(x)  
      end
    end

    def self.valid?(h)
      h.has_key?('measure') && h.has_key?('value')
    end

    def initialize(name, value)
      self.name = name
      self.value = value
    end

    def to_s
      "#{name}:#{value}|g"
    end
  end
end
