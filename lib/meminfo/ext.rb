Process.instance_eval do
  def rss(pid = Process.pid)
    MemInfo.rss(pid)
  end
end

ObjectSpace.instance_eval do
  def memsize
    MemInfo.memsize
  end
end
