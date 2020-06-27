//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS AppSync service.

AWS AppSync provides API actions for creating and interacting with data sources using GraphQL from your application.
*/
public struct AppSync {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the AppSync client
    /// - parameters:
    ///     - credentialProvider: Object providing credential to sign requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProviderFactory? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "appsync",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            possibleErrorTypes: [AppSyncErrorType.self]
        )
        self.client = AWSClient(
            credentialProviderFactory: credentialProvider ?? .runtime,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Creates a cache for the GraphQL API.
    public func createApiCache(_ input: CreateApiCacheRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiCacheResponse> {
        return client.execute(operation: "CreateApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a unique key that you can distribute to clients who are executing your API.
    public func createApiKey(_ input: CreateApiKeyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiKeyResponse> {
        return client.execute(operation: "CreateApiKey", path: "/v1/apis/{apiId}/apikeys", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a DataSource object.
    public func createDataSource(_ input: CreateDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataSourceResponse> {
        return client.execute(operation: "CreateDataSource", path: "/v1/apis/{apiId}/datasources", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a Function object. A function is a reusable entity. Multiple functions can be used to compose the resolver logic.
    public func createFunction(_ input: CreateFunctionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFunctionResponse> {
        return client.execute(operation: "CreateFunction", path: "/v1/apis/{apiId}/functions", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a GraphqlApi object.
    public func createGraphqlApi(_ input: CreateGraphqlApiRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGraphqlApiResponse> {
        return client.execute(operation: "CreateGraphqlApi", path: "/v1/apis", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a Resolver object. A resolver converts incoming requests into a format that a data source can understand and converts the data source's responses into GraphQL.
    public func createResolver(_ input: CreateResolverRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateResolverResponse> {
        return client.execute(operation: "CreateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a Type object.
    public func createType(_ input: CreateTypeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTypeResponse> {
        return client.execute(operation: "CreateType", path: "/v1/apis/{apiId}/types", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes an ApiCache object.
    public func deleteApiCache(_ input: DeleteApiCacheRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApiCacheResponse> {
        return client.execute(operation: "DeleteApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes an API key.
    public func deleteApiKey(_ input: DeleteApiKeyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApiKeyResponse> {
        return client.execute(operation: "DeleteApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a DataSource object.
    public func deleteDataSource(_ input: DeleteDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDataSourceResponse> {
        return client.execute(operation: "DeleteDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a Function.
    public func deleteFunction(_ input: DeleteFunctionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFunctionResponse> {
        return client.execute(operation: "DeleteFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a GraphqlApi object.
    public func deleteGraphqlApi(_ input: DeleteGraphqlApiRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGraphqlApiResponse> {
        return client.execute(operation: "DeleteGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a Resolver object.
    public func deleteResolver(_ input: DeleteResolverRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteResolverResponse> {
        return client.execute(operation: "DeleteResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a Type object.
    public func deleteType(_ input: DeleteTypeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTypeResponse> {
        return client.execute(operation: "DeleteType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Flushes an ApiCache object.
    public func flushApiCache(_ input: FlushApiCacheRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FlushApiCacheResponse> {
        return client.execute(operation: "FlushApiCache", path: "/v1/apis/{apiId}/FlushCache", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves an ApiCache object.
    public func getApiCache(_ input: GetApiCacheRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetApiCacheResponse> {
        return client.execute(operation: "GetApiCache", path: "/v1/apis/{apiId}/ApiCaches", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves a DataSource object.
    public func getDataSource(_ input: GetDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDataSourceResponse> {
        return client.execute(operation: "GetDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Get a Function.
    public func getFunction(_ input: GetFunctionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetFunctionResponse> {
        return client.execute(operation: "GetFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves a GraphqlApi object.
    public func getGraphqlApi(_ input: GetGraphqlApiRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGraphqlApiResponse> {
        return client.execute(operation: "GetGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves the introspection schema for a GraphQL API.
    public func getIntrospectionSchema(_ input: GetIntrospectionSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIntrospectionSchemaResponse> {
        return client.execute(operation: "GetIntrospectionSchema", path: "/v1/apis/{apiId}/schema", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves a Resolver object.
    public func getResolver(_ input: GetResolverRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResolverResponse> {
        return client.execute(operation: "GetResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves the current status of a schema creation operation.
    public func getSchemaCreationStatus(_ input: GetSchemaCreationStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSchemaCreationStatusResponse> {
        return client.execute(operation: "GetSchemaCreationStatus", path: "/v1/apis/{apiId}/schemacreation", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves a Type object.
    public func getType(_ input: GetTypeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTypeResponse> {
        return client.execute(operation: "GetType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the API keys for a given API.  API keys are deleted automatically sometime after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call DeleteApiKey to manually delete a key before it's automatically deleted. 
    public func listApiKeys(_ input: ListApiKeysRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApiKeysResponse> {
        return client.execute(operation: "ListApiKeys", path: "/v1/apis/{apiId}/apikeys", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the data sources for a given API.
    public func listDataSources(_ input: ListDataSourcesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDataSourcesResponse> {
        return client.execute(operation: "ListDataSources", path: "/v1/apis/{apiId}/datasources", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List multiple functions.
    public func listFunctions(_ input: ListFunctionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFunctionsResponse> {
        return client.execute(operation: "ListFunctions", path: "/v1/apis/{apiId}/functions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists your GraphQL APIs.
    public func listGraphqlApis(_ input: ListGraphqlApisRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListGraphqlApisResponse> {
        return client.execute(operation: "ListGraphqlApis", path: "/v1/apis", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the resolvers for a given API and type.
    public func listResolvers(_ input: ListResolversRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResolversResponse> {
        return client.execute(operation: "ListResolvers", path: "/v1/apis/{apiId}/types/{typeName}/resolvers", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List the resolvers that are associated with a specific function.
    public func listResolversByFunction(_ input: ListResolversByFunctionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResolversByFunctionResponse> {
        return client.execute(operation: "ListResolversByFunction", path: "/v1/apis/{apiId}/functions/{functionId}/resolvers", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/v1/tags/{resourceArn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the types for a given API.
    public func listTypes(_ input: ListTypesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTypesResponse> {
        return client.execute(operation: "ListTypes", path: "/v1/apis/{apiId}/types", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Adds a new schema to your GraphQL API. This operation is asynchronous. Use to determine when it has completed.
    public func startSchemaCreation(_ input: StartSchemaCreationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartSchemaCreationResponse> {
        return client.execute(operation: "StartSchemaCreation", path: "/v1/apis/{apiId}/schemacreation", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Tags a resource with user-supplied tags.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/v1/tags/{resourceArn}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Untags a resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/v1/tags/{resourceArn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the cache for the GraphQL API.
    public func updateApiCache(_ input: UpdateApiCacheRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiCacheResponse> {
        return client.execute(operation: "UpdateApiCache", path: "/v1/apis/{apiId}/ApiCaches/update", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates an API key.
    public func updateApiKey(_ input: UpdateApiKeyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiKeyResponse> {
        return client.execute(operation: "UpdateApiKey", path: "/v1/apis/{apiId}/apikeys/{id}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a DataSource object.
    public func updateDataSource(_ input: UpdateDataSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDataSourceResponse> {
        return client.execute(operation: "UpdateDataSource", path: "/v1/apis/{apiId}/datasources/{name}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a Function object.
    public func updateFunction(_ input: UpdateFunctionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFunctionResponse> {
        return client.execute(operation: "UpdateFunction", path: "/v1/apis/{apiId}/functions/{functionId}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a GraphqlApi object.
    public func updateGraphqlApi(_ input: UpdateGraphqlApiRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGraphqlApiResponse> {
        return client.execute(operation: "UpdateGraphqlApi", path: "/v1/apis/{apiId}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a Resolver object.
    public func updateResolver(_ input: UpdateResolverRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateResolverResponse> {
        return client.execute(operation: "UpdateResolver", path: "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a Type object.
    public func updateType(_ input: UpdateTypeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTypeResponse> {
        return client.execute(operation: "UpdateType", path: "/v1/apis/{apiId}/types/{typeName}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
