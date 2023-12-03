import Algorithms

struct Day01: AdventDay {
    // Save your data in a corresponding text file in the `Data` directory.
    var data: String
    
    // Splits input data into its component parts and convert from string.
    var entities: [String] {
        data.components(separatedBy: "\n")
    }
    
    // Replace this with your solution for the first part of the day's challenge.
    func part1() -> Any {
        // Calculate the sum of the first set of input data
        let stringOfNums = entities.map { s in
            s.filter("0123456789".contains)
        }.dropLast()
        
        let nums = stringOfNums.map {
            String([$0.first!, $0.last!])
        }.map {
            Int($0) ?? 0
        }
        
        return nums.reduce(0, +)
    }
    
    // Replace this with your solution for the second part of the day's challenge.
    func part2() -> Any {
        // Sum the maximum entries in each set of data
        return false
        // entities.map { $0.max() ?? 0 }.reduce(0, +)
    }
}
