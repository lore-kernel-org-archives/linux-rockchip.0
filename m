From: Finlye Xiao <finley.xiao@rock-chips.com>
Subject: [PATCH v2 0/4] nvmem: rockchip-efuse: support more rockchip SoCs
Date: Thu, 11 Aug 2016 09:13:45 +0800
Message-ID: <1470878029-11878-1-git-send-email-finley.xiao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: srinivas.kandagatla@linaro.org, maxime.ripard@free-electrons.com, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, linux@armlinux.org.uk, catalin.marinas@arm.com, will.deacon@arm.com, dianders@chromium.org
Cc: huangtao@rock-chips.com, linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com, Finley Xiao <finley.xiao@rock-chips.com>, cl@rock-chips.com, jay.xu@rock-chips.com, linux-arm-kernel@lists.infradead.org, wxt@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

From: Finley Xiao <finley.xiao@rock-chips.com>

As the timing and organization of efuse may be different
between rockchip SoCs, so their read function mya be different.
We add different device tree compatible string for rockchip SoCs
to match their own read function.

V1->V2:
- 1/4 add a "Deprecated properties" section
- 4/4 keep the rockchip,rockchip-efuse around and restore the order of
  initcall

Finley Xiao (4):
  nvmem: rockchip-efuse: update compatible strings for Rockchip efuse
  ARM: dts: rockchip: update compatible strings for Rockchip efuse
  arm64: dts: rockchip: add efuse0 device node for rk3399
  nvmem: rockchip-efuse: add rk3399-efuse support

 .../devicetree/bindings/nvmem/rockchip-efuse.txt   |  13 ++-
 arch/arm/boot/dts/rk3066a.dtsi                     |   2 +-
 arch/arm/boot/dts/rk3188.dtsi                      |   2 +-
 arch/arm/boot/dts/rk3288.dtsi                      |   2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  29 +++++
 drivers/nvmem/rockchip-efuse.c                     | 130 ++++++++++++++++++---
 6 files changed, 154 insertions(+), 24 deletions(-)

-- 
1.9.1
