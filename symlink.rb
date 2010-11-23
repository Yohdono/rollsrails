require 'FileUtils'
# File.symlink hack (no symlink on windows)
class File
  def File.symlink(a,b)
    FileUtils.cp_r(a,b,:preserve => false)
  end
end
