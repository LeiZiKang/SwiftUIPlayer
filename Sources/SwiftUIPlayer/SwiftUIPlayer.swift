// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 14.0, *)
public struct SwiftUIPlayer: View {
    
    @ObservedObject var viewModel: PlayerViewModel
    
    public init(url: String, timecodes: [Timecode]) {
        self.viewModel = PlayerViewModel(url: url, timecodes: timecodes)
    }
    
    @State var showTimeCodeList = true
    
    public var body: some View {
        VideoPlayerView(player: viewModel.player, timecodes: viewModel.timecodes)
        if showTimeCodeList {
            TimecodeListView(player: viewModel.player, timecodes: viewModel.timecodes)
        }
    }
}
