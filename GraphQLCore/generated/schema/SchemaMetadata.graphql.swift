// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public protocol RocketReserverAPI_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == RocketReserverAPI.SchemaMetadata {}

public protocol RocketReserverAPI_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == RocketReserverAPI.SchemaMetadata {}

public protocol RocketReserverAPI_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == RocketReserverAPI.SchemaMetadata {}

public protocol RocketReserverAPI_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == RocketReserverAPI.SchemaMetadata {}

public extension RocketReserverAPI {
  typealias ID = String

  typealias SelectionSet = RocketReserverAPI_SelectionSet

  typealias InlineFragment = RocketReserverAPI_InlineFragment

  typealias MutableSelectionSet = RocketReserverAPI_MutableSelectionSet

  typealias MutableInlineFragment = RocketReserverAPI_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
      switch typename {
      case "Query": return RocketReserverAPI.Objects.Query
      case "LaunchConnection": return RocketReserverAPI.Objects.LaunchConnection
      case "Launch": return RocketReserverAPI.Objects.Launch
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}