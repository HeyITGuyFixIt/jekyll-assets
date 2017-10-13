# Frozen-string-literal: true
# Copyright: 2012 - 2017 - MIT License
# Encoding: utf-8

module Jekyll
  module Assets
    class Default
      class Img < Default
        types "image/webp", "image/jpeg", "image/jpeg", "image/tiff",
          "image/bmp", "image/gif", "image/png",
            "imgage/svg+xml"

        def set_src
          unless @args[:inline]
            @args[:src] = @env.prefix_path(@asset.digest_path)
          end
        end

        def set_integrity
          @args[:integrity] = @asset.integrity
          unless @args.key?(:crossorigin)
            @args[:crossorigin] = "anonymous"
          end
        end
      end
    end
  end
end
