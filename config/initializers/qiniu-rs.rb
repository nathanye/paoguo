Qiniu::RS.establish_connection! :access_key => xebKCo9RMYkrei56GGvSkGnt8KzAOQGq-ie5AFWa,
                                :secret_key => rUBX7FGW75-RmkLnRUkckrH5faim9fsbsBeSiJ_W


Qiniu::RS.generate_upload_token :scope              => paoguo,
                                :expires_in         => expires_in_seconds,
                                :callback_url       => callback_url,
                                :callback_body      => callback_body,
                                :callback_body_type => callback_body_type,
                                :customer           => end_user_id,
                                :escape             => allow_upload_callback_api,
                                :async_options      => async_callback_api_commands,
                                :return_body        => custom_response_body
