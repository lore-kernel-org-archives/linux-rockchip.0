From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/2] Rockchip dts64 updates for 4.15 part2
Date: Sat, 04 Nov 2017 21:23:06 +0100
Message-ID: <1575518.sQZnmpGzTX@phil>
References: <3824439.LIeQpy2inU@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <3824439.LIeQpy2inU@phil>
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

The following changes since commit d85438991874205467f9739d5f3ee771245b4754:

  arm64: dts: rockchip: enable cec pin for rk3399 firefly (2017-10-15 14:11:32 +0200)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.15-rockchip-dts64-2

for you to fetch changes up to 6f8c539313d884f4715b328e1ce4a3987649b97e:

  arm64: dts: rockchip: add efuse for RK3368 SoCs (2017-10-24 15:25:27 +0200)

----------------------------------------------------------------
Support for the RGA (raster graphics accelerator) on rk3399
and efuses on rk3368.

----------------------------------------------------------------
Heiko Stuebner (2):
      clk: rockchip: add more rk3188 graphics clock ids
      Merge branch 'v4.15-shared/clkids' into v4.15-armsoc/dts64

Jacob Chen (1):
      arm64: dts: rockchip: add RGA device node for RK3399

Romain Perier (2):
      clk: rockchip: add clock id for PCLK_EFUSE256 of RK3368 SoCs
      arm64: dts: rockchip: add efuse for RK3368 SoCs

 arch/arm64/boot/dts/rockchip/rk3368.dtsi      | 16 ++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      | 11 +++++++++++
 include/dt-bindings/clock/rk3188-cru-common.h |  9 +++++++--
 include/dt-bindings/clock/rk3368-cru.h        |  1 +
 4 files changed, 35 insertions(+), 2 deletions(-)
