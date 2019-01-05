From: Randy Li <ayaka@soulik.info>
Subject: [PATCH 0/3] The basic patches for rockchip video codec
Date: Sun,  6 Jan 2019 01:48:34 +0800
Message-ID: <20190105174837.19378-1-ayaka@soulik.info>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: Randy Li <ayaka@soulik.info>, mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, ulf.hansson@linaro.org, zhangqing@rock-chips.com, geert+renesas@glider.be
List-Id: linux-rockchip.vger.kernel.org

I will post a driver for video codec using the vendor userspace
interface. It is not used for merging but checking the work status of
the other devices and pre-patches need to be merged.

Without the following modification, video codec can't work properly.
I check the status of the upstream kernel for rockchip, network, eMMC,
USB and VOP work much worse and slow than the vendor kernel. I think the
video codec driver would be a good example to verify the other drivers.

Randy Li (3):
  clk: rockchip: add video clk parents for rk3399
  arm64: dts: rockchip: add power domain to iommu rk3399
  soc: rockchip: power-domain: export idle request

 arch/arm64/boot/dts/rockchip/rk3399.dtsi |  2 ++
 drivers/clk/rockchip/clk-rk3399.c        |  5 +++--
 drivers/soc/rockchip/pm_domains.c        | 23 +++++++++++++++++++++++
 include/dt-bindings/clock/rk3399-cru.h   |  2 ++
 include/soc/rockchip/pm_domains.h        | 18 ++++++++++++++++++
 5 files changed, 48 insertions(+), 2 deletions(-)
 create mode 100644 include/soc/rockchip/pm_domains.h

-- 
2.20.1
