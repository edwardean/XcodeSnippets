// Resize UIImage and Alpha Category
// 重设图片大小和透明度（image）
//
// IDECodeSnippetCompletionPrefix: imagesize
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: BBF5F93B-CE86-4B50-8312-AF5371D51F90
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
@interface UIImage (ResizeImage)
	
	- (UIImage *)imageScaledToSize:(CGSize)size;
	
	- (BOOL)hasAlpha;
	
	- (UIImage *)imageWithAlpha;
	
	@end
	
	@implementation UIImage (ResizeImage)
	
	- (UIImage *)imageScaledToSize:(CGSize)size
	{
	
	  if (UIGraphicsBeginImageContextWithOptions != NULL) {
	    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
	  } else {
	    UIGraphicsBeginImageContext(size);
	  }
	  
	  [self drawInRect:CGRectMake(0.0, 0.0, size.width, size.height)];
	  
	  UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
	  UIGraphicsEndImageContext();
	  
	  return result;
	}
	
	// Checking alpha channel availability
	- (BOOL)hasAlpha
	{
	  CGImageAlphaInfo alpha = CGImageGetAlphaInfo(self.CGImage);
	  return (alpha == kCGImageAlphaFirst ||
	          alpha == kCGImageAlphaLast ||
	          alpha == kCGImageAlphaPremultipliedFirst ||
	          alpha == kCGImageAlphaPremultipliedLast);
	}
	
	// Applying alpha channel to image
	- (UIImage *)imageWithAlpha
	{
	  if ([self hasAlpha]) {
	    return self;
	  }
	  
	  CGImageRef imageRef = self.CGImage;
	  size_t width = CGImageGetWidth(imageRef);
	  size_t height = CGImageGetHeight(imageRef);
	  
	  // The bitsPerComponent and bitmapInfo values are hard-coded to prevent an "unsupported parameter combination" error
	  CGContextRef offscreenContext = CGBitmapContextCreate(NULL, width, height, 8, 0, CGImageGetColorSpace(imageRef), kCGBitmapByteOrderDefault | kCGImageAlphaPremultipliedFirst);
	  
	  CGContextDrawImage(offscreenContext, CGRectMake(0, 0, width, height), imageRef);
	  CGImageRef imageRefWithAlpha = CGBitmapContextCreateImage(offscreenContext);
	  UIImage *imageWithAlpha = [UIImage imageWithCGImage:imageRefWithAlpha];
	  
	  CGContextRelease(offscreenContext);
	  CGImageRelease(imageRefWithAlpha);
	  
	  return imageWithAlpha;
	  
	}
	
	@end
