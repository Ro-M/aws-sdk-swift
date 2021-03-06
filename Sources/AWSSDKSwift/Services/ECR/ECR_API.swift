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
Client object for interacting with AWS ECR service.

Amazon Elastic Container Registry Amazon Elastic Container Registry (Amazon ECR) is a managed Docker registry service. Customers can use the familiar Docker CLI to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry. Amazon ECR supports private Docker repositories with resource-based permissions using IAM so that specific users or Amazon EC2 instances can access repositories and images. Developers can use the Docker CLI to author and manage images.
*/
public struct ECR {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the ECR client
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
            amzTarget: "AmazonEC2ContainerRegistry_V20150921",
            service: "api.ecr",
            signingName: "ecr",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2015-09-21",
            endpoint: endpoint,
            serviceEndpoints: ["af-south-1": "api.ecr.af-south-1.amazonaws.com", "ap-east-1": "api.ecr.ap-east-1.amazonaws.com", "ap-northeast-1": "api.ecr.ap-northeast-1.amazonaws.com", "ap-northeast-2": "api.ecr.ap-northeast-2.amazonaws.com", "ap-south-1": "api.ecr.ap-south-1.amazonaws.com", "ap-southeast-1": "api.ecr.ap-southeast-1.amazonaws.com", "ap-southeast-2": "api.ecr.ap-southeast-2.amazonaws.com", "ca-central-1": "api.ecr.ca-central-1.amazonaws.com", "cn-north-1": "api.ecr.cn-north-1.amazonaws.com.cn", "cn-northwest-1": "api.ecr.cn-northwest-1.amazonaws.com.cn", "eu-central-1": "api.ecr.eu-central-1.amazonaws.com", "eu-north-1": "api.ecr.eu-north-1.amazonaws.com", "eu-south-1": "api.ecr.eu-south-1.amazonaws.com", "eu-west-1": "api.ecr.eu-west-1.amazonaws.com", "eu-west-2": "api.ecr.eu-west-2.amazonaws.com", "eu-west-3": "api.ecr.eu-west-3.amazonaws.com", "me-south-1": "api.ecr.me-south-1.amazonaws.com", "sa-east-1": "api.ecr.sa-east-1.amazonaws.com", "us-east-1": "api.ecr.us-east-1.amazonaws.com", "us-east-2": "api.ecr.us-east-2.amazonaws.com", "us-gov-east-1": "api.ecr.us-gov-east-1.amazonaws.com", "us-gov-west-1": "api.ecr.us-gov-west-1.amazonaws.com", "us-iso-east-1": "api.ecr.us-iso-east-1.c2s.ic.gov", "us-west-1": "api.ecr.us-west-1.amazonaws.com", "us-west-2": "api.ecr.us-west-2.amazonaws.com"],
            possibleErrorTypes: [ECRErrorType.self]
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

    ///  Checks the availability of one or more image layers in a repository. When an image is pushed to a repository, each image layer is checked to verify if it has been uploaded before. If it has been uploaded, then the image layer is skipped.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func batchCheckLayerAvailability(_ input: BatchCheckLayerAvailabilityRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchCheckLayerAvailabilityResponse> {
        return client.send(operation: "BatchCheckLayerAvailability", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a list of specified images within a repository. Images are specified with either an imageTag or imageDigest. You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository. You can completely delete an image (and all of its tags) by specifying the image's digest in your request.
    public func batchDeleteImage(_ input: BatchDeleteImageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDeleteImageResponse> {
        return client.send(operation: "BatchDeleteImage", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets detailed information for an image. Images are specified with either an imageTag or imageDigest. When an image is pulled, the BatchGetImage API is called once to retrieve the image manifest.
    public func batchGetImage(_ input: BatchGetImageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetImageResponse> {
        return client.send(operation: "BatchGetImage", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a sha256 digest of the image layer for data validation purposes. When an image is pushed, the CompleteLayerUpload API is called once per each new image layer to verify that the upload has completed.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func completeLayerUpload(_ input: CompleteLayerUploadRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteLayerUploadResponse> {
        return client.send(operation: "CompleteLayerUpload", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a repository. For more information, see Amazon ECR Repositories in the Amazon Elastic Container Registry User Guide.
    public func createRepository(_ input: CreateRepositoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRepositoryResponse> {
        return client.send(operation: "CreateRepository", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the lifecycle policy associated with the specified repository.
    public func deleteLifecyclePolicy(_ input: DeleteLifecyclePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLifecyclePolicyResponse> {
        return client.send(operation: "DeleteLifecyclePolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a repository. If the repository contains images, you must either delete all images in the repository or use the force option to delete the repository.
    public func deleteRepository(_ input: DeleteRepositoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRepositoryResponse> {
        return client.send(operation: "DeleteRepository", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the repository policy associated with the specified repository.
    public func deleteRepositoryPolicy(_ input: DeleteRepositoryPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRepositoryPolicyResponse> {
        return client.send(operation: "DeleteRepositoryPolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the scan findings for the specified image.
    public func describeImageScanFindings(_ input: DescribeImageScanFindingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageScanFindingsResponse> {
        return client.send(operation: "DescribeImageScanFindings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns metadata about the images in a repository.  Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by DescribeImages. 
    public func describeImages(_ input: DescribeImagesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        return client.send(operation: "DescribeImages", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes image repositories in a registry.
    public func describeRepositories(_ input: DescribeRepositoriesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoriesResponse> {
        return client.send(operation: "DescribeRepositories", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves an authorization token. An authorization token represents your IAM authentication credentials and can be used to access any Amazon ECR registry that your IAM principal has access to. The authorization token is valid for 12 hours. The authorizationToken returned is a base64 encoded string that can be decoded and used in a docker login command to authenticate to a registry. The AWS CLI offers an get-login-password command that simplifies the login process. For more information, see Registry Authentication in the Amazon Elastic Container Registry User Guide.
    public func getAuthorizationToken(_ input: GetAuthorizationTokenRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAuthorizationTokenResponse> {
        return client.send(operation: "GetAuthorizationToken", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image. When an image is pulled, the GetDownloadUrlForLayer API is called once per image layer that is not already cached.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func getDownloadUrlForLayer(_ input: GetDownloadUrlForLayerRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDownloadUrlForLayerResponse> {
        return client.send(operation: "GetDownloadUrlForLayer", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the lifecycle policy for the specified repository.
    public func getLifecyclePolicy(_ input: GetLifecyclePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLifecyclePolicyResponse> {
        return client.send(operation: "GetLifecyclePolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the results of the lifecycle policy preview request for the specified repository.
    public func getLifecyclePolicyPreview(_ input: GetLifecyclePolicyPreviewRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLifecyclePolicyPreviewResponse> {
        return client.send(operation: "GetLifecyclePolicyPreview", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the repository policy for the specified repository.
    public func getRepositoryPolicy(_ input: GetRepositoryPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRepositoryPolicyResponse> {
        return client.send(operation: "GetRepositoryPolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Notifies Amazon ECR that you intend to upload an image layer. When an image is pushed, the InitiateLayerUpload API is called once per image layer that has not already been uploaded. Whether or not an image layer has been uploaded is determined by the BatchCheckLayerAvailability API action.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func initiateLayerUpload(_ input: InitiateLayerUploadRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InitiateLayerUploadResponse> {
        return client.send(operation: "InitiateLayerUpload", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all the image IDs for the specified repository. You can filter images based on whether or not they are tagged by using the tagStatus filter and specifying either TAGGED, UNTAGGED or ANY. For example, you can filter your results to return only UNTAGGED images and then pipe that result to a BatchDeleteImage operation to delete them. Or, you can filter your results to return only TAGGED images to list all of the tags in your repository.
    public func listImages(_ input: ListImagesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListImagesResponse> {
        return client.send(operation: "ListImages", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  List the tags for an Amazon ECR resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates the image manifest and tags associated with an image. When an image is pushed and all new image layers have been uploaded, the PutImage API is called once to create or update the image manifest and the tags associated with the image.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func putImage(_ input: PutImageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutImageResponse> {
        return client.send(operation: "PutImage", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the image scanning configuration for the specified repository.
    public func putImageScanningConfiguration(_ input: PutImageScanningConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutImageScanningConfigurationResponse> {
        return client.send(operation: "PutImageScanningConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the image tag mutability settings for the specified repository. For more information, see Image Tag Mutability in the Amazon Elastic Container Registry User Guide.
    public func putImageTagMutability(_ input: PutImageTagMutabilityRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutImageTagMutabilityResponse> {
        return client.send(operation: "PutImageTagMutability", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates the lifecycle policy for the specified repository. For more information, see Lifecycle Policy Template.
    public func putLifecyclePolicy(_ input: PutLifecyclePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutLifecyclePolicyResponse> {
        return client.send(operation: "PutLifecyclePolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Applies a repository policy to the specified repository to control access permissions. For more information, see Amazon ECR Repository Policies in the Amazon Elastic Container Registry User Guide.
    public func setRepositoryPolicy(_ input: SetRepositoryPolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetRepositoryPolicyResponse> {
        return client.send(operation: "SetRepositoryPolicy", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts an image vulnerability scan. An image scan can only be started once per day on an individual image. This limit includes if an image was scanned on initial push. For more information, see Image Scanning in the Amazon Elastic Container Registry User Guide.
    public func startImageScan(_ input: StartImageScanRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartImageScanResponse> {
        return client.send(operation: "StartImageScan", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts a preview of a lifecycle policy for the specified repository. This allows you to see the results before associating the lifecycle policy with the repository.
    public func startLifecyclePolicyPreview(_ input: StartLifecyclePolicyPreviewRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartLifecyclePolicyPreviewResponse> {
        return client.send(operation: "StartLifecyclePolicyPreview", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes specified tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Uploads an image layer part to Amazon ECR. When an image is pushed, each new image layer is uploaded in parts. The maximum size of each image layer part can be 20971520 bytes (or about 20MB). The UploadLayerPart API is called once per each new image layer part.  This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func uploadLayerPart(_ input: UploadLayerPartRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadLayerPartResponse> {
        return client.send(operation: "UploadLayerPart", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
