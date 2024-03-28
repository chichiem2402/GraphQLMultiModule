// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI
import GraphQLCore

public class LaunchListQuery: GraphQLQuery {
  public static let operationName: String = "LaunchList"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query LaunchList { launches { __typename cursor hasMore launches { __typename id site } } }"#
    ))

  public init() {}

  public struct Data: RocketReserverAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { RocketReserverAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("launches", Launches.self),
    ] }

    public var launches: Launches { __data["launches"] }

    /// Launches
    ///
    /// Parent Type: `LaunchConnection`
    public struct Launches: RocketReserverAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { RocketReserverAPI.Objects.LaunchConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("cursor", String.self),
        .field("hasMore", Bool.self),
        .field("launches", [Launch?].self),
      ] }

      public var cursor: String { __data["cursor"] }
      public var hasMore: Bool { __data["hasMore"] }
      public var launches: [Launch?] { __data["launches"] }

      /// Launches.Launch
      ///
      /// Parent Type: `Launch`
      public struct Launch: RocketReserverAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { RocketReserverAPI.Objects.Launch }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", RocketReserverAPI.ID.self),
          .field("site", String?.self),
        ] }

        public var id: RocketReserverAPI.ID { __data["id"] }
        public var site: String? { __data["site"] }
      }
    }
  }
}
