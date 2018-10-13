
import Foundation

/**
 * TODO: ⚠️️ Possibly scope to CamView
 */
enum CaptureError: Swift.Error,CustomStringConvertible {
    case noTempFolderAccess
    case malformedImageData
    case noVideoConnection
    case noInputDevice
    case alreadyRecording
    case alreadyStoppedRecording
    var description: String {
        switch self {
        case .noTempFolderAccess:
            return "couldn't access temp folder on device"
        case .malformedImageData:
            return "Couldn't convert to imageData"
        case .noVideoConnection:
            return "unable to create video connection"
        case .noInputDevice:
            return "unabel to access input device"
        case .alreadyStoppedRecording:
            return "already stopped recording"
        case .alreadyRecording:
            return "already recording"
        }
    }
}
enum SetupError: Swift.Error,CustomStringConvertible {
    case unableToAddPhotoOutput
    case unableToAddVideoOutput
    case unableToGetAudioCaptureDevice
    case unableToGetVideoCaptureDevice
    case unableToCreateVideoConnection
    case unableToActivateBackgroundAudio
    var description: String {
        switch self {
        case .unableToAddPhotoOutput:
            return "unable to add output: capturePhotoOutput"
        case .unableToAddVideoOutput:
            return "unable to add output: captureVideoOutput"
        case .unableToGetAudioCaptureDevice:
            return " could not get audio capture device"
        case .unableToGetVideoCaptureDevice:
            return "could not get video capture device"
        case .unableToCreateVideoConnection:
            return "unable to create video connection"
        case .unableToActivateBackgroundAudio:
            return "unable to set background audio"
        }
    }
}
