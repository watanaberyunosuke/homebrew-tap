cask "groundkit" do
  version "1.1.0"
  sha256 "11eb88cf3d47c3534c76aeecd67f52606e67512f278b46cedde76e8f1ae47cbc"

  url "https://github.com/watanaberyunosuke/groundkit-ios/releases/download/v#{version}/GroundKit-macOS.zip"
  name "GroundKit"
  desc "Flight and turnaround status for apron, ramp and cargo staff"
  homepage "https://github.com/watanaberyunosuke/groundkit-ios"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "GroundKit.app"

  zap trash: "~/Library/Containers/com.harrydatahub.GroundKit"

  caveats <<~EOS
    GroundKit is not signed with an Apple Developer ID or notarised.
    On first launch macOS will block it: open System Settings > Privacy & Security
    and choose Open Anyway.
  EOS
end
