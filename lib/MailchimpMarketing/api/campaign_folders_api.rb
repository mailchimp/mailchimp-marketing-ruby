=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.37
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpMarketing
  class CampaignFoldersApi
    attr_accessor :api_client

    def initialize(api_client)
      @api_client = api_client
    end

    # Delete campaign folder
    def remove(folder_id, opts = {})
      fail ArgumentError, "Missing required param: 'folder_id'" if folder_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/campaign-folders/{folder_id}'.sub('{' + 'folder_id' + '}', folder_id.to_s)
      data = @api_client.call_api(:DELETE, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List campaign folders
    def list(opts = {})
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      post_body = nil

      local_var_path = '/campaign-folders'
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get campaign folder
    def get(folder_id, opts = {})
      fail ArgumentError, "Missing required param: 'folder_id'" if folder_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/campaign-folders/{folder_id}'.sub('{' + 'folder_id' + '}', folder_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Update campaign folder
    def update(folder_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'folder_id'" if folder_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/campaign-folders/{folder_id}'.sub('{' + 'folder_id' + '}', folder_id.to_s)
      data = @api_client.call_api(:PATCH, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Add campaign folder
    def create(body, opts = {})
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/campaign-folders'
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end
  end
end
