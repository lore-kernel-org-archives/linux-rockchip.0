From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/3] Rockchip dts32 updates for 4.21
Date: Mon, 26 Nov 2018 11:06:38 +0100
Message-ID: <14719034.CB54cPrm89@phil>
References: <49803144.2ZsBJmaiIN@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <49803144.2ZsBJmaiIN@phil>
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

The following changes since commit 651022382c7f8da46cb4872a545ee1da6d097d2a:

  Linux 4.20-rc1 (2018-11-04 15:37:52 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.21-rockchip-dts32-1

for you to fetch changes up to 99935bd4b5b4558beb069222e6d6143fe5830d64:

  ARM: dts: rockchip: Add all CPUs in cooling maps (2018-11-19 14:45:07 +0100)

----------------------------------------------------------------
Powerdomain and QoS nodes for rk3066 and rk3188. A fix for a rock2
regulator name and referencing all cpus in the cooling maps instead
of only cpu0.

----------------------------------------------------------------
Heiko Stuebner (5):
      dt-bindings: add power-domain header for RK3188 SoCs
      dt-bindings: add power-domain header for RK3066 SoCs
      Merge branch 'v4.21-shared/pdids' into v4.21-armsoc/dts32
      ARM: dts: rockchip: add qos nodes found on rk3066 and rk3188
      ARM: dts: rockchip: add rk3066/rk3188 power-domains

John Keeping (1):
      ARM: dts: rockchip: Fix rk3288-rock2 vcc_flash name

Viresh Kumar (1):
      ARM: dts: rockchip: Add all CPUs in cooling maps

 arch/arm/boot/dts/rk3066a.dtsi             | 52 ++++++++++++++++++++++++++++++
 arch/arm/boot/dts/rk3188.dtsi              | 51 +++++++++++++++++++++++++++++
 arch/arm/boot/dts/rk322x.dtsi              | 10 ++++--
 arch/arm/boot/dts/rk3288-rock2-som.dtsi    |  2 +-
 arch/arm/boot/dts/rk3288-veyron-mickey.dts | 24 ++++++++------
 arch/arm/boot/dts/rk3288.dtsi              | 15 +++++++--
 arch/arm/boot/dts/rk3xxx.dtsi              | 40 +++++++++++++++++++++++
 include/dt-bindings/power/rk3066-power.h   | 22 +++++++++++++
 include/dt-bindings/power/rk3188-power.h   | 24 ++++++++++++++
 9 files changed, 224 insertions(+), 16 deletions(-)
 create mode 100644 include/dt-bindings/power/rk3066-power.h
 create mode 100644 include/dt-bindings/power/rk3188-power.h
