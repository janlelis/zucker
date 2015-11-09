require 'sugar_refinery'

module SugarRefinery
  module MarshalCopy
    refine Object do
      def marshal_copy
        Marshal.load Marshal.dump self
      end
    end
  end
end