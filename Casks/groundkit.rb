cask "groundkit" do
  version "1.2.0"
  sha256 "65aa16114d6f1caf9ce32da162b81aaf2685c2d9a0821136da3511ad9f97d2d3"

  url "https://github.com/watanaberyunosuke/groundkit-ios/releases/download/v#{version}/GroundKit-macOS.zip"
  name "GroundKit"
  desc "Flight and turnaround status for apron, ramp and cargo staff"
  homepage "https://github.com/watanaberyunosuke/groundkit-ios"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "GroundKit.app"

  zap trash: "~/Library/Containers/com.harrydatahub.GroundKit"

  caveats <<~EOS
    GroundKit is not signed with an Apple Developer ID or notarised.
    On first launch macOS will block it: open System Settings > Privacy & Security
    and choose Open Anyway.
  EOS
end
