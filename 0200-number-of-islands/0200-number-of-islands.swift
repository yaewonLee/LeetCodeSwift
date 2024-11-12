class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        let (m, n) = (grid.count, grid[0].count)
        var visited = Array(repeating: Array(repeating: false, count: n), count: m)
        var count = 0
        
        for i in 0..<m {
            for j in 0..<n {
                if !visited[i][j], grid[i][j] == "1" {
                    dfs(x: i, y: j, visited: &visited, m: m, n: n, grid: grid)
                    count += 1
                }
            }
        }      
        return count
    }
    
    func dfs(x: Int, y: Int, visited: inout [[Bool]], m: Int, n: Int, grid: [[Character]]) {
        let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        visited[x][y] = true
        
        for direction in directions {
            let (nx, ny) = (x + direction.0, y + direction.1)
            
            if nx >= 0, ny >= 0, nx < m, ny < n, !visited[nx][ny], grid[nx][ny] == "1" {
                dfs(x: nx, y: ny, visited: &visited, m: m, n: n, grid: grid)
            }
        }
    }
}