# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module CloudidentityV1beta1
      # Cloud Identity API
      #
      # API for provisioning and managing identity resources.
      #
      # @example
      #    require 'google/apis/cloudidentity_v1beta1'
      #
      #    Cloudidentity = Google::Apis::CloudidentityV1beta1 # Alias the module
      #    service = Cloudidentity::CloudIdentityService.new
      #
      # @see https://cloud.google.com/identity/
      class CloudIdentityService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudidentity.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Creates a `Group`.
        # @param [Google::Apis::CloudidentityV1beta1::Group] group_object
        # @param [String] initial_group_config
        #   Required. The initial configuration option for the `Group`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_group(group_object = nil, initial_group_config: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/groups', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.query['initialGroupConfig'] = initial_group_config unless initial_group_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `Group`.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of
        #   the `Group` to retrieve.
        #   Must be of the form `groups/`group_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `Group`.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of
        #   the `Group` to retrieve.
        #   Must be of the form `groups/`group_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Group::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Group
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the `Group`s under a customer or namespace.
        # @param [Fixnum] page_size
        #   The maximum number of results to return.
        #   Note that the number of results returned may be less than this value even
        #   if there are more available results. To fetch all results, clients must
        #   continue calling this method repeatedly until the response no longer
        #   contains a `next_page_token`.
        #   If unspecified, defaults to 200 for `View.BASIC` and to 50 for `View.FULL`.
        #   Must not be greater than 1000 for `View.BASIC` or 500 for `View.FULL`.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous list request, if any.
        # @param [String] parent
        #   Required. The parent resource under which to list all `Group`s.
        #   Must be of the form `identitysources/`identity_source_id`` for external-
        #   identity-mapped groups or `customers/`customer_id`` for Google Groups.
        # @param [String] view
        #   The level of detail to be returned.
        #   If unspecified, defaults to `View.BASIC`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ListGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ListGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_groups(page_size: nil, page_token: nil, parent: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/groups', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ListGroupsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ListGroupsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up the [resource
        # name](https://cloud.google.com/apis/design/resource_names) of a `Group` by
        # its `EntityKey`.
        # @param [String] group_key_id
        #   The ID of the entity.
        #   For Google-managed entities, the `id` must be the email address of an
        #   existing group or user.
        #   For external-identity-mapped entities, the `id` must be a string conforming
        #   to the Identity Source's requirements.
        #   Must be unique within a `namespace`.
        # @param [String] group_key_namespace
        #   The namespace in which the entity exists.
        #   If not specified, the `EntityKey` represents a Google-managed entity such
        #   as a Google user or a Google Group.
        #   If specified, the `EntityKey` represents an external-identity-mapped group.
        #   The namespace must correspond to an identity source created in Admin
        #   Console. Must be of the form `identitysources/`identity_source_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::LookupGroupNameResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::LookupGroupNameResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_group(group_key_id: nil, group_key_namespace: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/groups:lookup', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::LookupGroupNameResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::LookupGroupNameResponse
          command.query['groupKey.id'] = group_key_id unless group_key_id.nil?
          command.query['groupKey.namespace'] = group_key_namespace unless group_key_namespace.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `Group`.
        # @param [String] name
        #   Output only. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of
        #   the `Group`.
        #   Shall be of the form `groups/`group_id``.
        # @param [Google::Apis::CloudidentityV1beta1::Group] group_object
        # @param [String] update_mask
        #   Required. The fully-qualified names of fields to update.
        #   May only contain the following fields: `display_name`, `description`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_group(name, group_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for `Group`s matching a specified query.
        # @param [Fixnum] page_size
        #   The maximum number of results to return.
        #   Note that the number of results returned may be less than this value even
        #   if there are more available results. To fetch all results, clients must
        #   continue calling this method repeatedly until the response no longer
        #   contains a `next_page_token`.
        #   If unspecified, defaults to 200 for `GroupView.BASIC` and to 50 for
        #   `GroupView.FULL`.
        #   Must not be greater than 1000 for `GroupView.BASIC` or 500 for
        #   `GroupView.FULL`.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous search request, if
        #   any.
        # @param [String] query
        #   Required. The search query.
        #   Must be specified in [Common Expression
        #   Language](https://opensource.google/projects/cel). May only contain
        #   equality operators on the parent and inclusion operators on labels (e.g.,
        #   `parent == 'customers/`customer_id`' &&
        #   'cloudidentity.googleapis.com/groups.discussion_forum' in labels`).
        # @param [String] view
        #   The level of detail to be returned.
        #   If unspecified, defaults to `View.BASIC`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::SearchGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::SearchGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_groups(page_size: nil, page_token: nil, query: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/groups:search', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::SearchGroupsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::SearchGroupsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a `Membership`.
        # @param [String] parent
        #   Required. The parent `Group` resource under which to create the `Membership`.
        #   Must be of the form `groups/`group_id``.
        # @param [Google::Apis::CloudidentityV1beta1::Membership] membership_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_group_membership(parent, membership_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/memberships', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::Membership::Representation
          command.request_object = membership_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `Membership`.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of
        #   the `Membership` to delete.
        #   Must be of the form `groups/`group_id`/memberships/`membership_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_group_membership(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `Membership`.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of
        #   the `Membership` to retrieve.
        #   Must be of the form `groups/`group_id`/memberships/`membership_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Membership] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Membership]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_group_membership(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Membership::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Membership
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the `Membership`s within a `Group`.
        # @param [String] parent
        #   Required. The parent `Group` resource under which to lookup the `Membership`
        #   name.
        #   Must be of the form `groups/`group_id``.
        # @param [Fixnum] page_size
        #   The maximum number of results to return.
        #   Note that the number of results returned may be less than this value even
        #   if there are more available results. To fetch all results, clients must
        #   continue calling this method repeatedly until the response no longer
        #   contains a `next_page_token`.
        #   If unspecified, defaults to 200 for `GroupView.BASIC` and to 50 for
        #   `GroupView.FULL`.
        #   Must not be greater than 1000 for `GroupView.BASIC` or 500 for
        #   `GroupView.FULL`.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous search request, if
        #   any.
        # @param [String] view
        #   The level of detail to be returned.
        #   If unspecified, defaults to `MembershipView.BASIC`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ListMembershipsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ListMembershipsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_group_memberships(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/memberships', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ListMembershipsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ListMembershipsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up the [resource
        # name](https://cloud.google.com/apis/design/resource_names) of a
        # `Membership` by its `EntityKey`.
        # @param [String] parent
        #   Required. The parent `Group` resource under which to lookup the `Membership`
        #   name.
        #   Must be of the form `groups/`group_id``.
        # @param [String] member_key_id
        #   The ID of the entity.
        #   For Google-managed entities, the `id` must be the email address of an
        #   existing group or user.
        #   For external-identity-mapped entities, the `id` must be a string conforming
        #   to the Identity Source's requirements.
        #   Must be unique within a `namespace`.
        # @param [String] member_key_namespace
        #   The namespace in which the entity exists.
        #   If not specified, the `EntityKey` represents a Google-managed entity such
        #   as a Google user or a Google Group.
        #   If specified, the `EntityKey` represents an external-identity-mapped group.
        #   The namespace must correspond to an identity source created in Admin
        #   Console. Must be of the form `identitysources/`identity_source_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::LookupMembershipNameResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::LookupMembershipNameResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_group_membership(parent, member_key_id: nil, member_key_namespace: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/memberships:lookup', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::LookupMembershipNameResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::LookupMembershipNameResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['memberKey.id'] = member_key_id unless member_key_id.nil?
          command.query['memberKey.namespace'] = member_key_namespace unless member_key_namespace.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the `MembershipRole`s of a `Membership`.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of
        #   the `Membership` whose roles are to be modified.
        #   Must be of the form `groups/`group_id`/memberships/`membership_id``.
        # @param [Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesRequest] modify_membership_roles_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_membership_roles(name, modify_membership_roles_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:modifyMembershipRoles', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesRequest::Representation
          command.request_object = modify_membership_roles_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
