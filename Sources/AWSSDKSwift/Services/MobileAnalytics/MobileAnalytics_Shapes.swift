// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MobileAnalytics {

    public struct Event: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "attributes", required: false, type: .map), 
            AWSShapeMember(label: "eventType", required: true, type: .string), 
            AWSShapeMember(label: "metrics", required: false, type: .map), 
            AWSShapeMember(label: "session", required: false, type: .structure), 
            AWSShapeMember(label: "timestamp", required: true, type: .string), 
            AWSShapeMember(label: "version", required: false, type: .string)
        ]

        /// A collection of key-value pairs that give additional context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public let attributes: [String: String]?
        /// A name signifying an event that occurred in your app. This is used for grouping and aggregating like events together for reporting purposes.
        public let eventType: String
        /// A collection of key-value pairs that gives additional, measurable context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public let metrics: [String: Double]?
        /// The session the event occured within. 
        public let session: Session?
        /// The time the event occurred in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let timestamp: String
        /// The version of the event.
        public let version: String?

        public init(attributes: [String: String]? = nil, eventType: String, metrics: [String: Double]? = nil, session: Session? = nil, timestamp: String, version: String? = nil) {
            self.attributes = attributes
            self.eventType = eventType
            self.metrics = metrics
            self.session = session
            self.timestamp = timestamp
            self.version = version
        }

        public func validate() throws {
            try validate(eventType, name:"eventType", max: 50)
            try validate(eventType, name:"eventType", min: 1)
            try session?.validate()
            try validate(version, name:"version", max: 10)
            try validate(version, name:"version", min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
            case eventType = "eventType"
            case metrics = "metrics"
            case session = "session"
            case timestamp = "timestamp"
            case version = "version"
        }
    }

    public struct PutEventsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "clientContext", location: .header(locationName: "x-amz-Client-Context"), required: true, type: .string), 
            AWSShapeMember(label: "clientContextEncoding", location: .header(locationName: "x-amz-Client-Context-Encoding"), required: false, type: .string), 
            AWSShapeMember(label: "events", required: true, type: .list)
        ]

        /// The client context including the client ID, app title, app version and package name.
        public let clientContext: String
        /// The encoding used for the client context.
        public let clientContextEncoding: String?
        /// An array of Event JSON objects
        public let events: [Event]

        public init(clientContext: String, clientContextEncoding: String? = nil, events: [Event]) {
            self.clientContext = clientContext
            self.clientContextEncoding = clientContextEncoding
            self.events = events
        }

        public func validate() throws {
            try events.forEach {
                try $0.validate()
            }
        }

        private enum CodingKeys: String, CodingKey {
            case clientContext = "x-amz-Client-Context"
            case clientContextEncoding = "x-amz-Client-Context-Encoding"
            case events = "events"
        }
    }

    public struct Session: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "duration", required: false, type: .long), 
            AWSShapeMember(label: "id", required: false, type: .string), 
            AWSShapeMember(label: "startTimestamp", required: false, type: .string), 
            AWSShapeMember(label: "stopTimestamp", required: false, type: .string)
        ]

        /// The duration of the session.
        public let duration: Int64?
        /// A unique identifier for the session
        public let id: String?
        /// The time the event started in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let startTimestamp: String?
        /// The time the event terminated in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let stopTimestamp: String?

        public init(duration: Int64? = nil, id: String? = nil, startTimestamp: String? = nil, stopTimestamp: String? = nil) {
            self.duration = duration
            self.id = id
            self.startTimestamp = startTimestamp
            self.stopTimestamp = stopTimestamp
        }

        public func validate() throws {
            try validate(id, name:"id", max: 50)
            try validate(id, name:"id", min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case duration = "duration"
            case id = "id"
            case startTimestamp = "startTimestamp"
            case stopTimestamp = "stopTimestamp"
        }
    }
}
