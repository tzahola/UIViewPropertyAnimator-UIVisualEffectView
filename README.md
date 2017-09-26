# UIViewPropertyAnimator + UIVisualEffectView

Proof-of-concept for interactive blur animation using `UIPropertyAnimator` and `UIVisualEffectView`:

```
self.blurView.effect = nil;
_animator = [[UIViewPropertyAnimator alloc] initWithDuration:1 curve:UIViewAnimationCurveLinear animations:^{
    self.blurView.effect = blur;
}];

...

- (IBAction)sliderValueChander:(UISlider*)slider {
    _animator.fractionComplete = slider.value;
}
```

Result:

![result](https://media.giphy.com/media/3ov9jGSXwFnaNiwoDK/giphy.gif)
