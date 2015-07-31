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

  def memsize
    ObjectSpace.each_object.reduce(0) { |a, e| a + ObjectSpace.memsize_of(e) }
  end

  private def ps_rss(pid)
    `ps ax -o rss,pid`.each_line.grep(/^\s*(\d+)\s+#{pid}$/) { $1 }.first
  end
end
