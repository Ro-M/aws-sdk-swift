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
Client object for interacting with AWS IoTDataPlane service.

AWS IoT AWS IoT-Data enables secure, bi-directional communication between Internet-connected things (such as sensors, actuators, embedded devices, or smart appliances) and the AWS cloud. It implements a broker for applications and things to publish messages over HTTP (Publish) and retrieve, update, and delete thing shadows. A thing shadow is a persistent representation of your things and their state in the AWS cloud.
*/
public struct IoTDataPlane {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the IoTDataPlane client
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
            service: "data.iot",
            signingName: "iotdata",
            serviceProtocol: .restjson,
            apiVersion: "2015-05-28",
            endpoint: endpoint,
            possibleErrorTypes: [IoTDataPlaneErrorType.self]
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

    ///  Deletes the thing shadow for the specified thing. For more information, see DeleteThingShadow in the AWS IoT Developer Guide.
    public func deleteThingShadow(_ input: DeleteThingShadowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteThingShadowResponse> {
        return client.send(operation: "DeleteThingShadow", path: "/things/{thingName}/shadow", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Gets the thing shadow for the specified thing. For more information, see GetThingShadow in the AWS IoT Developer Guide.
    public func getThingShadow(_ input: GetThingShadowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetThingShadowResponse> {
        return client.send(operation: "GetThingShadow", path: "/things/{thingName}/shadow", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Publishes state information. For more information, see HTTP Protocol in the AWS IoT Developer Guide.
    @discardableResult public func publish(_ input: PublishRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "Publish", path: "/topics/{topic}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the thing shadow for the specified thing. For more information, see UpdateThingShadow in the AWS IoT Developer Guide.
    public func updateThingShadow(_ input: UpdateThingShadowRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateThingShadowResponse> {
        return client.send(operation: "UpdateThingShadow", path: "/things/{thingName}/shadow", httpMethod: "POST", input: input, on: eventLoop)
    }
}
