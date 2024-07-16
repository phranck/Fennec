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
}
