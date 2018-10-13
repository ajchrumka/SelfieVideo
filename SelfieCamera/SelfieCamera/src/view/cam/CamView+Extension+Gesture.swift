
import UIKit

extension CamView:UIGestureRecognizerDelegate{
    func addGestureRecognizer(){
        /*Focus*/
        let tap = UITapGestureRecognizer(target: self, action:#selector(onPreviewViewTap))
        self.previewView.addGestureRecognizer(tap)
        /*Zoom*/
        let pinchRecognizer = UIPinchGestureRecognizer(target: self, action:#selector(onPreviewViewPinch))
        pinchRecognizer.delegate = self
        self.previewView.addGestureRecognizer(pinchRecognizer)
    }
    /**
     * Normal tap
     */
    @objc func onPreviewViewTap(sender: UIGestureRecognizer) {
        guard [.ended,.cancelled,.failed].contains(sender.state) else {return}/*ensures that the tap isnt a swipe tap etc*/
        let devicePoint: CGPoint = (self.previewView.previewLayer).captureDevicePointConverted(fromLayerPoint: sender.location(in: sender.view))
        Swift.print(devicePoint)
        self.focusWithMode(focusMode: .continuousAutoFocus, exposureMode: .continuousAutoExposure, point: devicePoint, monitorSubjectAreaChange: true)
    }
    /**
     * TODO: move this code into action
     */
    @objc func onPreviewViewPinch(_ sender: UIPinchGestureRecognizer) {
        guard let device = self.deviceInput?.device else {Swift.print("device not available"); return }
        if sender.state == .changed {
            let pinchVelocityDividerFactor: CGFloat = 1.0/*was 5.0, which was a bit too fast*/
            let desiredZoomFactor = device.videoZoomFactor + atan2(sender.velocity, pinchVelocityDividerFactor)
            setZoom(zoomFactor: desiredZoomFactor)
        }
    }
}
