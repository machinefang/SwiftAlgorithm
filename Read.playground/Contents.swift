//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Read Characters From File - multiple calls
//http://www.lintcode.com/zh-cn/problem/read-characters-from-file-multiple-calls/
//http://www.jiuzhang.com/solutions/read-characters-from-file-multiple-calls/

//接口：int read4(char * buf)一次从文件中读取 4 个字符。
//返回值是实际读取的字符数。 例如，如果文件中只剩下 3 个字符，则返回 3。
//通过使用read4 接口，实现从文件读取 n 个字符的函数int read(char * buf，int n)。
//
//注意事项
//
//read 函数可能被调用多次。


struct Reader4{

}


class Solution : Reader4 {

    /**
     * @param buf destination buffer
     * @param n maximum number of characters to read
     * @return the number of characters read
     */

    func read(buf: [Character], n: Int) -> Int {

    }
}

