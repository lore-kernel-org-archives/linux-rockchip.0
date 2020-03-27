From: Chen-Yu Tsai <wens@kernel.org>
Subject: [PATCH 0/6] arm64: dts: rockchip: misc. cleanups
Date: Fri, 27 Mar 2020 11:04:08 +0800
Message-ID: <20200327030414.5903-1-wens@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Chen-Yu Tsai <wens@csie.org>

Hi,

Here are a bunch of cleanups for rk3399 and rk3328.

  - Some dtc warnings were silenced, however a few still remain.
    Found those while making device tree overlays

  - Replaced some hardware specific device node names, such as dwc3
    and rk808, with generic names

  - Fixed MMC numbering for roc-rk3399-pc with mezzanine

The series is based on linux-next 2020-03-24. For some reason 2020-03-26
doesn't boot.

Please have a look.

Regards
ChenYu

Chen-Yu Tsai (6):
  arm64: dts: rockchip: rk3399-roc-pc: Fix MMC numbering for LED
    triggers
  arm64: dts: rockchip: rk3328: Replace RK805 PMIC node name with "pmic"
  arm64: dts: rockchip: rk3328: drop non-existent gmac2phy pinmux
    options
  arm64: dts: rockchip: rk3328: drop #address-cells, #size-cells from
    grf node
  arm64: dts: rockchip: rk3399: drop #address-cells, #size-cells from
    pmugrf node
  arm64: dts: rockchip: rk3399: Rename dwc3 device nodes to make dtc
    happy

 arch/arm64/boot/dts/rockchip/rk3328-evb.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi       | 18 ------------------
 .../dts/rockchip/rk3399-roc-pc-mezzanine.dts   |  8 ++++++++
 .../arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3399.dtsi       |  6 ++----
 6 files changed, 14 insertions(+), 26 deletions(-)

-- 
2.25.1
