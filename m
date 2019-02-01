From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/2] Rockchip dts64 updates for 5.1
Date: Fri, 01 Feb 2019 12:24:29 +0100
Message-ID: <1744093.FyxTZ0jN5f@phil>
References: <2570520.8EeqtpO5V7@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2570520.8EeqtpO5V7@phil>
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

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.1-rockchip-dts64-1

for you to fetch changes up to 79164c99db284d07aa4e84e57b469d225609799c:

  arm64: dts: rockchip: clean up the abuse of disable-wp (2019-01-28 10:51:22 +0100)

----------------------------------------------------------------
New boards are the Rock Pi 4, NanoPC-T4 and NanoPi-M4, with the last
two being part of a family and sharing bigger parts of the devicetree.
rk3328 got sound-related upgrades and a wider patch drops mmc display-wp
fields from nodes which shouldn't use it.

----------------------------------------------------------------
Akash Gajjar (1):
      arm64: dts: rockchip: add ROCK Pi 4 DTS support

Heiko Stuebner (1):
      arm64: dts: rockchip: move rk3328 #sound-dai-cells to the soc dtsi

Katsuhiro Suzuki (2):
      arm64: dts: rockchip: add rk3328 ACODEC node
      arm64: dts: rockchip: enable analog audio node for rock64

Robin Murphy (4):
      arm64: dts: rockchip: Add DT for NanoPi M4
      arm64: dts: rockchip: Refine nanopi4 differences
      arm64: dts: rockchip: Add NanoPC-T4 IR receiver
      arm64: dts: rockchip: 'Fix' nanopi4 uSD card detect

Shawn Lin (1):
      arm64: dts: rockchip: clean up the abuse of disable-wp

Tomeu Vizoso (1):
      arm64: dts: rockchip: Add devicetree for NanoPC-T4

 .../devicetree/bindings/arm/rockchip.yaml          |  12 +
 arch/arm64/boot/dts/rockchip/Makefile              |   3 +
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     |  26 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  14 +
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi       |   1 -
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts    |   1 -
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi      |   1 -
 .../boot/dts/rockchip/rk3368-orion-r68-meta.dts    |   1 -
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts    |   1 -
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts        |   1 -
 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts  |  91 +++
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dts  |  66 ++
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   | 676 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts  | 606 ++++++++++++++++++
 .../dts/rockchip/rk3399-sapphire-excavator.dts     |   1 -
 15 files changed, 1492 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
