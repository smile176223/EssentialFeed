//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Liam on 2023/7/12.
//

import Foundation
import EssentialFeed

final class FeedImageViewModel<Image> {
    typealias Observer<T> = (T) -> Void
    
    private var task: FeedImageDataLoaderTask?
    private let model: FeedImage
    private let imageLoader: FeedImageDataLoader
    private let imageTransformer: (Data) -> Image?
    
    init(model: FeedImage, imageLoader: FeedImageDataLoader, imageTransformer: @escaping (Data) -> Image?) {
        self.model = model
        self.imageLoader = imageLoader
        self.imageTransformer = imageTransformer
    }
    
    var description: String? {
        return model.description
    }
    
    var location: String? {
        return model.location
    }
    
    var  hasLocation: Bool {
        return location != nil
    }
    
    var onImageLoad: Observer<Image>?
    var onImageLoadStateChange: Observer<Bool>?
    var onShouldRetryImageStateChange: Observer<Bool>?
    
    func loadImageData() {
        onImageLoadStateChange?(true)
        onShouldRetryImageStateChange?(false)
        task = imageLoader.loadImageData(from: model.url) { [weak self] result in
            self?.handle(result)
        }
    }
    
    private func handle(_ result: FeedImageDataLoader.Result) {
        if let image = (try? result.get()).flatMap(imageTransformer) {
            onImageLoad?(image)
        } else {
            onShouldRetryImageStateChange?(true)
        }
        onImageLoadStateChange?(false)
    }
    
    func cancelImageDataLoad() {
        task?.cancel()
        task = nil
    }
}
