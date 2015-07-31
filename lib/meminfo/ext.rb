Process.instance_eval do
  def rss(pid = Process.pid)
    MemInfo.rss(pid)
  end
end
