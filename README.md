# ReadByView

[![CI Status](https://img.shields.io/travis/mokoranyAli/ReadByView.svg?style=flat)](https://travis-ci.org/mokoranyAli/ReadByView)
[![Version](https://img.shields.io/cocoapods/v/ReadByView.svg?style=flat)](https://cocoapods.org/pods/ReadByView)
[![License](https://img.shields.io/cocoapods/l/ReadByView.svg?style=flat)](https://cocoapods.org/pods/ReadByView)
[![Platform](https://img.shields.io/cocoapods/p/ReadByView.svg?style=flat)](https://cocoapods.org/pods/ReadByView)

## Example
- import ReadByview

- declare your array of UIImage like :
let photots =
    [UIImage(named: "me")
        ,UIImage(named: "me1")
        ,UIImage(named: "me2")
        ,UIImage(named: "me3")
        ,UIImage(named: "me4")]

- add UIView in stoaryboard make its type ReadByview or just make it with code like :
let readByViewProgrammatically = ReadByView(frame: CGRect(x: your x posiotin, y: your y, width: your width, height: your height))
self.view.addSubview(readByViewProgrammatically)


- readByViewProgrammatically.photots = photots as! [UIImage]
  readByViewProgrammatically.numberOfPicturesThatAppear = 4 
  readByViewProgrammatically.readByLabelText = "your label"
  
  
  **you can take a look Example directory first.**
  
 

## Photo for ReadByView

 **NOTE : picture is too big when you see it from a laptop xD**

 ![Simulator Screen Shot - iPhone 11 Pro Max - 2020-07-03 at 05 33 49](https://user-images.githubusercontent.com/45698820/86429702-98cd8480-bcf0-11ea-9dfb-bb530a0b0fe3.png)

## Requirements
ios 12 or later
swift 5

## Installation

ReadByView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ReadByView'
```

## Author

mokoranyAli, mohammed.korany.ali@gmail.com

## License

ReadByView is available under the MIT license. See the LICENSE file for more info.
