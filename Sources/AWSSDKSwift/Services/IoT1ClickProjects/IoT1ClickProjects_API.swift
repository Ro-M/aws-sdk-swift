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
Client object for interacting with AWS IoT1ClickProjects service.

The AWS IoT 1-Click Projects API Reference
*/
public struct IoT1ClickProjects {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the IoT1ClickProjects client
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
        self.serviceConfig = ServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "projects.iot1click",
            signingName: "iot1click",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-14",
            endpoint: endpoint,
            possibleErrorTypes: [IoT1ClickProjectsErrorType.self]
        )
        self.client = AWSClient(
            credentialProviderFactory: credentialProvider ?? .runtime,
            serviceConfig: serviceConfig,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Associates a physical device with a placement.
    public func associateDeviceWithPlacement(_ input: AssociateDeviceWithPlacementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateDeviceWithPlacementResponse> {
        return client.send(operation: "AssociateDeviceWithPlacement", path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Creates an empty placement.
    public func createPlacement(_ input: CreatePlacementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePlacementResponse> {
        return client.send(operation: "CreatePlacement", path: "/projects/{projectName}/placements", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.
    public func createProject(_ input: CreateProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        return client.send(operation: "CreateProject", path: "/projects", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a placement. To delete a placement, it must not have any devices associated with it.  When you delete a placement, all associated data becomes irretrievable. 
    public func deletePlacement(_ input: DeletePlacementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePlacementResponse> {
        return client.send(operation: "DeletePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes a project. To delete a project, it must not have any placements associated with it.  When you delete a project, all associated data becomes irretrievable. 
    public func deleteProject(_ input: DeleteProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProjectResponse> {
        return client.send(operation: "DeleteProject", path: "/projects/{projectName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Describes a placement in a project.
    public func describePlacement(_ input: DescribePlacementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePlacementResponse> {
        return client.send(operation: "DescribePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns an object describing a project.
    public func describeProject(_ input: DescribeProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectResponse> {
        return client.send(operation: "DescribeProject", path: "/projects/{projectName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Removes a physical device from a placement.
    public func disassociateDeviceFromPlacement(_ input: DisassociateDeviceFromPlacementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateDeviceFromPlacementResponse> {
        return client.send(operation: "DisassociateDeviceFromPlacement", path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Returns an object enumerating the devices in a placement.
    public func getDevicesInPlacement(_ input: GetDevicesInPlacementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicesInPlacementResponse> {
        return client.send(operation: "GetDevicesInPlacement", path: "/projects/{projectName}/placements/{placementName}/devices", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the placement(s) of a project.
    public func listPlacements(_ input: ListPlacementsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPlacementsResponse> {
        return client.send(operation: "ListPlacements", path: "/projects/{projectName}/placements", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    public func listProjects(_ input: ListProjectsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProjectsResponse> {
        return client.send(operation: "ListProjects", path: "/projects", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the tags (metadata key/value pairs) which you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see AWS Tagging Strategies.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes one or more tags (metadata key/value pairs) from a resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").
    public func updatePlacement(_ input: UpdatePlacementRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePlacementResponse> {
        return client.send(operation: "UpdatePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").
    public func updateProject(_ input: UpdateProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProjectResponse> {
        return client.send(operation: "UpdateProject", path: "/projects/{projectName}", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
