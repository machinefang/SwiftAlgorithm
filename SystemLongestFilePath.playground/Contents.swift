//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//System Longest File Path
//http://www.lintcode.com/zh-cn/problem/system-longest-file-path/
//http://www.jiuzhang.com/solutions/system-longest-file-path/

//假设我们通过以下的方式用字符串来抽象我们的文件系统：
//字符串"dir\n\tsubdir1\n\tsubdir2\n\t\tfile.ext"代表了：
//
//dir
//subdir1
//subdir2
//file.ext
//目录 dir 包含一个空子目录 subdir1 和一个包含文件file.ext的子目录 subdir2。
//字符串
//
//"dir\n\tsubdir1\n\t\tfile1.ext\n\t\tsubsubdir1\n\tsubdir2\n\t\tsubsubdir2\n\t\t\tfile2.ext"
//代表了：
//
//dir
//subdir1
//file1.ext
//subsubdir1
//subdir2
//subsubdir2
//file2.ext
//目录 dir 包含两个子目录 subdir1 和 subdir2 。 subdir1 包含一个文件 file1.ext 和一个空的二级子目录 subsubdir1 。 subdir2 包含一个包含文件 file2.ext 的二级子目录 subsubdir2。
//我们有兴趣找到文件系统中文件的最长绝对路径（字符数）。例如，在上面的第二个例子中，最长的绝对路径是“dir/subdir2/subsubdir2/file2.ext”，其长度为 32 (不包括双引号)。
//给定一个以上述格式表示文件系统的字符串，返回抽象文件系统中文件最长绝对路径的长度。如果系统中没有文件，则返回 0 。
//
//注意事项
//
//一个文件的名称至少包含一个 . 和扩展名。
//目录或子目录的名称不会包含 . 。
//时间复杂度要求： O(n) 其中 n 是输入字符串的大小。
//请注意如果有另一条路径 aaaaaaaaaaaaaaaaaaaaa / sth.png 存在的话, a/aa/aaa/file1.txt 不是最长的文件路径。
//您在真实的面试中是否遇到过这个题？ Yes
//样例
//给你一个输入："dir\n\tsubdir1\n\tsubdir2\n\t\tfile.ext"
//返回 20

