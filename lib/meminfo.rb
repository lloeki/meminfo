require 'objspace'
require 'meminfo/ext'

# MemInfo gives a handful of methods allowing inspection of process memory use.
module MemInfo
  module_function

  class ProcessNotFound < StandardError; end

  def rss(pid = Process.pid)
    Integer(ps_rss(pid)) * 1024
  rescue TypeError
    raise ProcessNotFound, pid
  end

  private def ps_rss(pid)
    `ps ax -o rss,pid`.each_line.grep(/^\s*(\d+)\s+#{pid}$/) { $1 }.first
  end
end
