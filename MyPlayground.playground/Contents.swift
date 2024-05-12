import UIKit

let data = [8,6,1,10,5,3,9,2,7,4]

func bubbleSort<T: Hashable & Comparable>(data: [T]) -> [T] {
  var data = data
  for i in 0..<data.count {
    for j in 0..<data.count - i - 1 {
      if data[j] > data[j + 1] {
        data.swapAt(j, j + 1)
      }
    }
  }
  return data
}

bubbleSort(data: data)


class CurrentObject<T> where T: Hashable & Comparable {
  init(index: Int, data: T) {
    self.index = index
    self.data = data
  }

  let index: Int
  let data: T
}

// context
class BubbleSortContext<T> where T: Hashable & Comparable {
  init(data: [T]) {
    self.data = data
    self.currentObjects = data.enumerated().map { CurrentObject(index: $0.offset, data: $0.element) }
  }

  var data: [T]
  var currentObjects: [CurrentObject<T>]
}

func bubbleSortOO<T: Hashable & Comparable>(data: [T]) -> [T] {
  var data = data
  for i in 0..<data.count {
      let currentObject = CurrentObject(index: i, data: data)
      if currentObject > currentObject.nextNeighbor {
        currentObject.swap()
      }
    }
  }
  return data
}


