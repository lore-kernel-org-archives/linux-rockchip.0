From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL] Rockchip dts32 fix for 4.18
Date: Wed, 11 Jul 2018 16:18:55 +0200
Message-ID: <1776596.Q4iCTXTKyP@phil>
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
To: arm@kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd, Kevin, Olof,

please find below a one-patch pull fixing a new warning the updated dtc
in 4.18 found. So far no other regressions have been found in Rockchip
parts it seems. So please pull!

Thanks
Heiko

The following changes since commit ce397d215ccd07b8ae3f71db689aedb85d56ab40:

  Linux 4.18-rc1 (2018-06-17 08:04:49 +0900)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.18-rockchip-dts32fixes-1

for you to fetch changes up to cddb86833615d9550d7b3a1b65b71071784dae70:

  ARM: dts: rockchip: fix graph node unit address error from dtc (2018-06-17 09:31:34 +0200)

----------------------------------------------------------------
Fix for a new warning from dtc in graph node unit addresses.

----------------------------------------------------------------
Heiko Stuebner (1):
      ARM: dts: rockchip: fix graph node unit address error from dtc

 arch/arm/boot/dts/rk3288-evb.dtsi               | 2 +-
 arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
