# Unique header eneration
require './lib/unique_head.rb'

# Markdown
set :markdown_engine, :redcarpet
set :markdown,
    fenced_code_blocks: true,
    smartypants: true,
    disable_indented_code_blocks: true,
    prettify: true,
    tables: true,
    with_toc_data: true,
    no_intra_emphasis: true,
    renderer: UniqueHeadCounter

# Assets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

set :http_prefix, ""
#if ENV['DOC_ENV'] === "local"
#  set :http_prefix, "/"
#else
#  set :http_prefix, "/api-reference/"
#end


# Activate the syntax highlighter
activate :syntax
ready do
  require './lib/multilang.rb'
end

activate :sprockets

activate :autoprefixer do |config|
  config.browsers = ['last 2 version', 'Firefox ESR']
  config.cascade  = false
  config.inline   = true
end

# Github pages require relative links
activate :relative_assets
set :relative_links, true

# Build Configuration
configure :build do
  # If you're having trouble with Middleman hanging, commenting
  # out the following two lines has been known to help
  activate :minify_css
  activate :minify_javascript
  # activate :relative_assets
  # activate :asset_hash
  # activate :gzip
end

# Deploy Configuration
# If you want Middleman to listen on a different port, you can set that below
set :port, 4567

helpers do
  require './lib/toc_data.rb'
end

# Global Variables
# set :endpoint, 'https://api.uiza.co/api/public/v4'
set :endpoint, 'https://stag-ap-southeast-1-api.uizadev.io/api/public/v4'
config[:endpoint]

set :token, 'uap-d6342a7b4a6c40d2b851a54a4442ea83-f3c977b7'
config[:token]

set :app_id, 'd6342a7b4a6c40d2b851a54a4442ea83'
config[:app_id]

# ENTITY params
# CREATE
set :entity_create_name, 'The Evolution of Dance'
config[:entity_create_name]

set :entity_create_url, 'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_10mb.mp4'
config[:entity_create_url]

set :entity_create_input_type, 'http'
config[:entity_create_input_type]

set :entity_create_description, 'Judson Laipply did a fantastic job in performing various dance moves'
config[:entity_create_description]

set :entity_create_short_description, 'How good a dancer can you be?'
config[:entity_create_short_description]

set :entity_create_id, 'c1a842ca-e266-4b3c-bc33-13dd9354d90a'
config[:entity_create_id]

# RETRIEVE
set :entity_retrieve_id, 'c1a842ca-e266-4b3c-bc33-13dd9354d90a'
config[:entity_retrieve_id]

# LIST

# UPDATE
set :entity_update_id, 'c1a842ca-e266-4b3c-bc33-13dd9354d90a'
config[:entity_update_id]

set :entity_update_name, 'The Evolution of Dance 2'
config[:entity_update_name]

set :entity_update_description, 'Judson Laipply did it again with a fantastic job in performing better dance moves'
config[:entity_update_description]

# DELETE
set :entity_delete_id, '8da31fbe-e2b5-485b-8fa7-cabfcc5ac2ba'
config[:entity_delete_id]

# SEARCH
set :entity_search_keyword, 'dance'
config[:entity_search_keyword]

# PUBLISH
set :entity_publish_id, 'c1a842ca-e266-4b3c-bc33-13dd9354d90a'
config[:entity_publish_id]

# GET STATUS PUBLISH
set :entity_get_status_publish_id, 'c1a842ca-e266-4b3c-bc33-13dd9354d90a'
config[:entity_get_status_publish_id]

# GET AWS UPLOAD KEY

# CATEGORY
# CREATE
set :category_create_name, 'Folder sample'
config[:category_create_name]

set :category_create_type, 'folder'
config[:category_create_type]

set :category_create_description, 'Folder description'
config[:category_create_description]

set :category_create_order_number, '1'
config[:category_create_order_number]

set :category_create_id, 'e56934c6-979e-4d4e-8d9a-ec0b4248365c'
config[:category_create_id]

# RETRIEVE
set :category_retrieve_id, 'e56934c6-979e-4d4e-8d9a-ec0b4248365c'
config[:category_retrieve_id]

set :category_retrieve_name, 'Folder sample'
config[:category_retrieve_name]

set :category_retrieve_type, 'folder'
config[:category_retrieve_type]

set :category_retrieve_description, 'Folder description'
config[:category_retrieve_description]

set :category_retrieve_order_number, '1'
config[:category_retrieve_order_number]

# LIST

# UPDATE
set :category_update_id, 'e56934c6-979e-4d4e-8d9a-ec0b4248365c'
config[:category_update_id]

set :category_update_name, 'Folder edited'
config[:category_create_name]

set :category_update_type, 'folder'
config[:category_create_type]

set :category_update_description, 'Folder description new'
config[:category_create_description]

set :category_update_order_number, '1'
config[:category_create_order_number]

# DELETE
set :category_delete_id, 'a257d0b7-4a58-44ac-b2ff-0cb26006daa4'
config[:category_delete_id]

# CREATE RELATION
set :category_create_relation_entity_id, '680bef00-bb0c-4bed-9624-19109504fcfe'
config[:category_create_relation_entity_id]

set :category_create_relation_category_id_1, '35a3e064-8aea-4a0a-a03c-d6927ad98ae1'
config[:category_create_relation_category_id_1]

set :category_create_relation_category_id_2, '9b0c0c57-f85c-43d1-880b-23359c8374f4'
config[:category_create_relation_category_id_2]

# DELETE RELATION
set :category_delete_relation_entity_id, '680bef00-bb0c-4bed-9624-19109504fcfe'
config[:category_delete_relation_entity_id]

set :category_delete_relation_category_id_1, '35a3e064-8aea-4a0a-a03c-d6927ad98ae1'
config[:category_delete_relation_category_id_1]

set :category_delete_relation_category_id_2, '9b0c0c57-f85c-43d1-880b-23359c8374f4'
config[:category_delete_relation_category_id_2]

# STORAGE
# ADD FPT
set :storage_add_fpt_name, 'FTP Uiza'
config[:storage_add_fpt_name]

set :storage_add_fpt_host, 'ftp-example.uiza.io'
config[:storage_add_fpt_host]

set :storage_add_fpt_port, '21'
config[:storage_add_fpt_port]

set :storage_add_fpt_storage_type, 'ftp'
config[:storage_add_fpt_storage_type]

set :storage_add_fpt_description, 'FTP of Uiza, use for transcode'
config[:storage_add_fpt_description]

set :storage_add_fpt_username, 'uiza'
config[:storage_add_fpt_username]

set :storage_add_fpt_password, '=59x@LPsd+w7qW'
config[:storage_add_fpt_password]

set :storage_add_fpt_id, 'ca028a29-612c-40a8-add2-6dc811a2320f'
config[:storage_add_fpt_id]

# ADD S3
set :storage_add_s3_name, 'S3 Uiza'
config[:storage_add_s3_name]

set :storage_add_s3_host, 's3-example.uiza.io'
config[:storage_s3_fpt_host]

set :storage_add_s3_port, '21'
config[:storage_add_s3_port]

set :storage_add_s3_storage_type, 's3'
config[:storage_add_s3_storage_type]

set :storage_add_s3_description, 'S3 of Uiza, use for transcode'
config[:storage_add_s3_description]

set :storage_add_s3_username, 'uiza'
config[:storage_add_s3_username]

set :storage_add_s3_password, '=59x@LPsd+w7qW'
config[:storage_s3_fpt_password]

# RETRIEVE
set :storage_retrieve_id, 'ca028a29-612c-40a8-add2-6dc811a2320f'
config[:storage_retrieve_id]

set :storage_retrieve_name, 'FTP Uiza'
config[:storage_retrieve_name]

set :storage_retrieve_host, 'ftp-example.uiza.io'
config[:storage_retrieve_host]

set :storage_retrieve_port, '21'
config[:storage_retrieve_port]

set :storage_retrieve_type, 'ftp'
config[:storage_retrieve_type]

set :storage_retrieve_description, 'FTP of Uiza, use for transcode'
config[:storage_retrieve_description]

set :storage_retrieve_username, 'uiza'
config[:storage_retrieve_username]

set :storage_retrieve_password, '=59x@LPsd+w7qW'
config[:storage_retrieve_password]

# UPDATE
set :storage_update_id, 'ca028a29-612c-40a8-add2-6dc811a2320f'
config[:storage_update_id]

set :storage_update_name, 'FTP Uiza update'
config[:storage_update_name]

set :storage_update_host, 'ftp-example.uiza.io'
config[:storage_update_host]

set :storage_update_port, '21'
config[:storage_update_port]

set :storage_update_storage_type, 'ftp'
config[:storage_update_storage_type]

set :storage_update_description, 'FTP of Uiza, use for transcode update'
config[:storage_update_description]

set :storage_update_username, 'uiza'
config[:storage_update_username]

set :storage_update_password, '=59x@LPsd+w7qW'
config[:storage_update_password]

# REMOVE
set :storage_remove_id, '444f0f71-e56b-449e-a9ec-435d3c974f16'
config[:storage_remove_id]

# LIVE
# CREATE
set :live_create_name, 'test event'
config[:live_create_name]

set :live_create_mode, 'push'
config[:live_create_mode]

set :live_create_encode, '1'
config[:live_create_encode]

set :live_create_dvr, '1'
config[:live_create_dvr]

set :live_create_description, 'This is for test event'
config[:live_create_description]

set :live_create_description, 'This is for test event'
config[:live_create_description]

set :live_create_poster, '//image1.jpeg'
config[:live_create_poster]

set :live_create_thumbnail, '//image1.jpeg'
config[:live_create_thumbnail]

set :live_create_link_stream, 'https://playlist.m3u8'
config[:live_create_link_stream]

set :live_create_resource_mode, 'single'
config[:live_create_resource_mode]

set :live_create_id, '471734b1-90b8-44c5-b24b-132ed9d7529b'
config[:live_create_id]

# RETRIEVE
set :live_retrieve_id, '471734b1-90b8-44c5-b24b-132ed9d7529b'
config[:live_retrieve_id]

set :live_retrieve_name, 'test event'
config[:live_retrieve_name]

set :live_retrieve_mode, 'push'
config[:live_retrieve_mode]

set :live_retrieve_encode, '1'
config[:live_retrieve_encode]

set :live_retrieve_dvr, '1'
config[:live_retrieve_dvr]

set :live_retrieve_description, 'This is for test event'
config[:live_retrieve_description]

set :live_retrieve_description, 'This is for test event'
config[:live_retrieve_description]

set :live_retrieve_poster, '//image1.jpeg'
config[:live_retrieve_poster]

set :live_retrieve_thumbnail, '//image1.jpeg'
config[:live_retrieve_thumbnail]

set :live_retrieve_link_stream, 'https://playlist.m3u8'
config[:live_retrieve_link_stream]

set :live_retrieve_resource_mode, 'single'
config[:live_retrieve_resource_mode]

# UPDATE
set :live_update_id, '471734b1-90b8-44c5-b24b-132ed9d7529b'
config[:live_update_id]

set :live_update_name, 'live test'
config[:live_update_name]

set :live_update_mode, 'pull'
config[:live_update_mode]

set :live_update_encode, '0'
config[:live_update_encode]

set :live_update_dvr, '1'
config[:live_update_dvr]

set :live_update_resource_mode, 'single'
config[:live_update_resource_mode]

# START FEED
set :live_start_feed_id, '471734b1-90b8-44c5-b24b-132ed9d7529b'
config[:live_start_feed_id]

# STOP FEED
set :live_stop_feed_id, '471734b1-90b8-44c5-b24b-132ed9d7529b'
config[:live_stop_feed_id]

# GET VIEW
set :live_get_view_id, '471734b1-90b8-44c5-b24b-132ed9d7529b'
config[:live_get_view_id]

# LIST RECORDED

# DELETE
set :live_delete_record_id, '92121a42-81d5-4364-8d5d-100799b34cd9'
config[:live_delete_record_id]

# CONVERT TO VOD
set :live_convert_to_vod, '21e513b1-43bf-4ce7-8cd0-692574563043'
config[:live_convert_to_vod]

# CALLBACK
# CREATE
set :callback_create_url, 'https://callback-url.uiza.co'
config[:callback_create_url]

set :callback_create_method, 'POST'
config[:callback_create_method]

set :callback_create_json_data, 'Example json data'
config[:callback_create_json_data]

set :callback_create_headers_data, 'Example headers data'
config[:callback_create_headers_data]

set :callback_create_id, '56422bdf-95c8-42c7-8c52-1be99e732afa'
config[:callback_create_id]

# RETRIEVE
set :callback_retrieve_id, '56422bdf-95c8-42c7-8c52-1be99e732afa'
config[:callback_retrieve_id]

set :callback_retrieve_url, 'https://callback-url.uiza.co'
config[:callback_retrieve_url]

set :callback_retrieve_method, 'POST'
config[:callback_retrieve_method]

set :callback_retrieve_json_data, 'Example json data'
config[:callback_retrieve_json_data]

set :callback_retrieve_headers_data, 'Example headers data'
config[:callback_retrieve_headers_data]

# UPDATE
set :callback_update_id, '56422bdf-95c8-42c7-8c52-1be99e732afa'
config[:callback_update_id]

set :callback_update_url, 'https://callback-url-update.uiza.co'
config[:callback_update_url]

set :callback_update_method, 'POST'
config[:callback_update_method]

set :callback_update_json_data, 'Example json data updated'
config[:callback_update_json_data]

set :callback_update_headers_data, 'Example headers data updated'
config[:callback_update_headers_data]

# DELETE
set :callback_delete_id, '14a27ff9-869a-4969-a6d9-34220f01e48c'
config[:callback_delete_id]

set :sample_video, 'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_10mb.mp4'
config[:sample_video]

set :sample_poster, 'https://sample-videos.com/img/Sample-jpg-image-200kb.jpg'
config[:sample_poster]

set :sample_thumbnail, 'https://sample-videos.com/img/Sample-jpg-image-200kb.jpg'
config[:sample_thumbnail]

set :uiza_entity_id, '16ab25d3-fd0f-4568-8aa0-0339bbfd674f'
config[:uiza_entity_id]
