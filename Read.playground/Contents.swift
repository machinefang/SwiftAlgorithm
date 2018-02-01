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


class Reader4{
    func read4(_ buf: [Character.Type]) -> Int{
        return 4 //return value depends on how many character left in file
    }

}


class Solution: Reader4 {

    /**
     * @param buf destination buffer
     * @param n maximum number of characters to read
     * @return the number of characters read
     */

    var buffer = Array(repeatElement(Character.self, count: 4))
    var head = 0
    var tail = 0

    func read(buf: [Character], n: Int) -> Int {

        var desBuf = buf

        var i = 0 //result
        while(i < n) { //needs to read
            //if queue is empty( buffer is a queue), then needs to call read4
            if(head == tail) {
                head = 0
                tail = read4(buffer)
                //check if file is empty

                if(tail == 0) {
                    break;
                }
            }

            //if queue is not empty, then needs to assign value to it
            while(i < n && head < tail) {
                desBuf[i] = buffer[head]
                i += 1
                head += 1
            }


        }

    }
}

