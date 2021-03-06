//
//  Plugin.swift
//  PlayKit
//
//  Created by Noam Tamim on 31/10/2016.
//  Copyright © 2016 Kaltura. All rights reserved.
//

import UIKit
import AVFoundation

/// The `PKPlugin` protocol defines all the properties and methods required to define a plugin object.
@objc public protocol PKPlugin {
    /// The plugin name.
    static var pluginName: String { get }
    /// The associated media entry.
    weak var mediaEntry: MediaEntry? { get set }

    init(player: Player, pluginConfig: Any?, messageBus: MessageBus)
    
    /// On first load. used for doing initialization for the first time with the media config.
    func onLoad(mediaConfig: MediaConfig)
    /// On update media. used to update the plugin with new media config when available
    func onUpdateMedia(mediaConfig: MediaConfig)
    func destroy()
}

