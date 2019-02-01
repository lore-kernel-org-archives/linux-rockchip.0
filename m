From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/2] Rockchip arm64 devicetree fixes for 5.0
Date: Fri, 01 Feb 2019 12:14:40 +0100
Message-ID: <23121360.LiWTZRSn6P@phil>
References: <7484850.KS8GUYnfXV@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <7484850.KS8GUYnfXV@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: arm@kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The following changes since commit bfeffd155283772bbe78c6a05dec7c0128ee500c:

  Linux 5.0-rc1 (2019-01-06 17:08:20 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.0-rockchip-dts64fixes-1

for you to fetch changes up to 26e2d7b03ea7ff254bf78305aa44dda62e70b78e:

  arm64: dts: rockchip: enable usb-host regulators at boot on rk3328-rock64 (2019-01-27 23:14:04 +0100)

----------------------------------------------------------------
Fix for new dtc graph warnings and a regulator fix for rock64.

----------------------------------------------------------------
Dmitry Voytik (1):
      arm64: dts: rockchip: enable usb-host regulators at boot on rk3328-rock64

Enric Balletbo i Serra (1):
      arm64: dts: rockchip: fix graph_port warning on rk3399 bob kevin and excavator

 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts             | 2 ++
 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 2 +-
 4 files changed, 5 insertions(+), 3 deletions(-)
