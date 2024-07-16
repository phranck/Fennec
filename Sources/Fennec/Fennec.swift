import CLVGL

public final class Fennec {
    init() {
        lv_init()
    }

    deinit {
        lv_deinit()
    }
}

// MARK: - Public API

public extension Fennec {
    var isInitialized: Bool {
        lv_is_initialized()
    }

    var version: String {
        guard let cVersion = lv_version_info() else { return "n/a" }
        return String(cString: cVersion)
    }
}
