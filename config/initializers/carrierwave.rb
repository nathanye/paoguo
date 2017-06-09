CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = ENV["xebKCo9RMYkrei56GGvSkGnt8KzAOQGq-ie5AFWa"]
  config.qiniu_secret_key    = ENV["rUBX7FGW75-RmkLnRUkckrH5faim9fsbsBeSiJ_W"]
  config.qiniu_bucket        = ENV["paoguo"]
  config.qiniu_bucket_domain = ENV["oqa1xqxil.bkt.clouddn.com"]
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up-z1.qiniu.com"  #选择不同的区域时，"up.qiniug.com" 不同

end
