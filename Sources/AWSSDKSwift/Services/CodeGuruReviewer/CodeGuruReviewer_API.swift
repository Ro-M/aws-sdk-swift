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
Client object for interacting with AWS CodeGuruReviewer service.

This section provides documentation for the Amazon CodeGuru Reviewer API operations. Amazon CodeGuru Reviewer is a service that uses program analysis and machine learning to detect potential defects that are difficult for developers to find and recommends fixes in your Java code. By proactively detecting and providing recommendations for addressing code defects and implementing best practices, CodeGuru Reviewer improves the overall quality and maintainability of your code base during the code review stage. For more information about CodeGuru Reviewer, see the Amazon CodeGuru Reviewer User Guide.
*/
public struct CodeGuruReviewer {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the CodeGuruReviewer client
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
            service: "codeguru-reviewer",
            serviceProtocol: .restjson,
            apiVersion: "2019-09-19",
            endpoint: endpoint,
            possibleErrorTypes: [CodeGuruReviewerErrorType.self]
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

    ///  Associates an AWS CodeCommit repository with Amazon CodeGuru Reviewer. When you associate an AWS CodeCommit repository with Amazon CodeGuru Reviewer, Amazon CodeGuru Reviewer will provide recommendations for each pull request raised within the repository. You can view recommendations in the AWS CodeCommit repository. You can associate a GitHub repository using the Amazon CodeGuru Reviewer console.
    public func associateRepository(_ input: AssociateRepositoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateRepositoryResponse> {
        return client.send(operation: "AssociateRepository", path: "/associations", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Returns the metadaata associated with the code review along with its status.
    public func describeCodeReview(_ input: DescribeCodeReviewRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeReviewResponse> {
        return client.send(operation: "DescribeCodeReview", path: "/codereviews/{CodeReviewArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///   Describes the customer feedback for a CodeGuru Reviewer recommendation. 
    public func describeRecommendationFeedback(_ input: DescribeRecommendationFeedbackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecommendationFeedbackResponse> {
        return client.send(operation: "DescribeRecommendationFeedback", path: "/feedback/{CodeReviewArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Describes a repository association.
    public func describeRepositoryAssociation(_ input: DescribeRepositoryAssociationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoryAssociationResponse> {
        return client.send(operation: "DescribeRepositoryAssociation", path: "/associations/{AssociationArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Removes the association between Amazon CodeGuru Reviewer and a repository.
    public func disassociateRepository(_ input: DisassociateRepositoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateRepositoryResponse> {
        return client.send(operation: "DisassociateRepository", path: "/associations/{AssociationArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///   Lists all the code reviews that the customer has created in the past 90 days. 
    public func listCodeReviews(_ input: ListCodeReviewsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCodeReviewsResponse> {
        return client.send(operation: "ListCodeReviews", path: "/codereviews", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///   Lists the customer feedback for a CodeGuru Reviewer recommendation for all users. This API will be used from the console to extract the previously given feedback by the user to pre-populate the feedback emojis for all recommendations. 
    public func listRecommendationFeedback(_ input: ListRecommendationFeedbackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecommendationFeedbackResponse> {
        return client.send(operation: "ListRecommendationFeedback", path: "/feedback/{CodeReviewArn}/RecommendationFeedback", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///   Returns the list of all recommendations for a completed code review. 
    public func listRecommendations(_ input: ListRecommendationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRecommendationsResponse> {
        return client.send(operation: "ListRecommendations", path: "/codereviews/{CodeReviewArn}/Recommendations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists repository associations. You can optionally filter on one or more of the following recommendation properties: provider types, states, names, and owners.
    public func listRepositoryAssociations(_ input: ListRepositoryAssociationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRepositoryAssociationsResponse> {
        return client.send(operation: "ListRepositoryAssociations", path: "/associations", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///   Stores customer feedback for a CodeGuru-Reviewer recommendation. When this API is called again with different reactions the previous feedback is overwritten. 
    public func putRecommendationFeedback(_ input: PutRecommendationFeedbackRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutRecommendationFeedbackResponse> {
        return client.send(operation: "PutRecommendationFeedback", path: "/feedback", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
