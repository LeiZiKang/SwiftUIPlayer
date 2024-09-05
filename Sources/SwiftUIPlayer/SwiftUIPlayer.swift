// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 14.0, *)
public struct SwiftUIPlayer: View {
    
    @ObservedObject var viewModel: PlayerViewModel
    @State var showTimeCodeList: Bool
    public init(url: String, timecodes: [Timecode], showTimeCodeList: Bool) {
        self.viewModel = PlayerViewModel(url: url, timecodes: timecodes)
        self.showTimeCodeList = showTimeCodeList
    }
    
  
    
    public var body: some View {
        VideoPlayerView(player: viewModel.player, timecodes: viewModel.timecodes)
        if showTimeCodeList {
            TimecodeListView(player: viewModel.player, timecodes: viewModel.timecodes)
        }
    }
}
