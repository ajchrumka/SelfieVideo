import UIKit
import AVFoundation
/**
 * Extra
 */
extension CamView{
    /**
     * Switches between front and back cam
     */
    func setCamera(cameraType:AVCaptureDevice.Position){
        try? setupCaptureDeviceInput(cameraType:cameraType)
    }
    func setFlashMode(flashMode:AVCaptureDevice.FlashMode){//AVCaptureDevice.FlashMode
        self.flashMode = flashMode
    }
    /**
     * TODO: ⚠️️ Could be moved to static method
     * Ref: https://stackoverflow.com/a/50450425/5389500
     */
    func focusWithMode(focusMode:AVCaptureDevice.FocusMode, exposureMode:AVCaptureDevice.ExposureMode, point:CGPoint, monitorSubjectAreaChange:Bool){
        guard let device:AVCaptureDevice = self.deviceInput?.device else {Swift.print("device unavailable 🚫");return}
        do {
            try device.lockForConfiguration()
            if device.isFocusPointOfInterestSupported && device.isFocusModeSupported(focusMode){
                device.focusMode = focusMode
                device.focusPointOfInterest = point
            }
            if device.isExposurePointOfInterestSupported && device.isExposureModeSupported(exposureMode){
                device.exposurePointOfInterest = point
                device.exposureMode = exposureMode
            }
            device.isSubjectAreaChangeMonitoringEnabled = monitorSubjectAreaChange
            device.unlockForConfiguration()
        } catch {
            Swift.print(error)
        }
    }
    /**
     * TODO: ⚠️️ Could be moved to static method
     */
    func setZoom(zoomFactor:CGFloat){
        guard let device/*:AVCaptureDevice*/ = self.deviceInput?.device else {Swift.print("device not available"); return }
        let maxZoomFactor = device.activeFormat.videoMaxZoomFactor
        do {
            try device.lockForConfiguration()
            defer { device.unlockForConfiguration() }
            device.videoZoomFactor = max(1.0, min(zoomFactor, maxZoomFactor))
        } catch {
            print(error)
        }
    }
}
