CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = ENV["24UQ6YMdm_UnaO7njzEq_Fd1t_ISb65NuTKLVfV2"]
  config.qiniu_secret_key    = ENV["nCnW4wRO0TQWlo3sphD_rVOxKzSuMXidp6NBSVCa"]
  config.qiniu_bucket        = ENV["paoguo"]
  config.qiniu_bucket_domain = ENV["oqa1xqxil.bkt.clouddn.com"]
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up.qiniug.com"  #选择不同的区域时，"up.qiniug.com" 不同

end
