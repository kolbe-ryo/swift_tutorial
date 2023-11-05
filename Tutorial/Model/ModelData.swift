import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    
    var categories: [String: [Landmark]] {
        // カテゴリ名でグローピングしたLandmarkのMapが完成する
        Dictionary(
            grouping: landmarks
//            by: {$0.category.rawValue}
//            下の描き方と同じ
        ) {
            return $0.category.rawValue
        }
    }
}



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Coundn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Coundn't find \(filename) in main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Coundn't parse \(filename) as \(T.self):\n\(error)")
    }
}
