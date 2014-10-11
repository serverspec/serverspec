module Serverspec::Type
  class Host < Base
    def resolvable?(type)
      @runner.check_host_is_resolvable(@name, type)
    end

    def reachable?(port, proto, timeout, source_address)
      @runner.check_host_is_reachable(@name, port, proto, timeout, source_address)
    end

    def ipaddress
      @runner.get_host_ipaddress(@name).stdout.strip
    end
  end
end
