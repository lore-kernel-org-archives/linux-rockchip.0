From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip dts32 fixes for 4.15
Date: Wed, 13 Dec 2017 07:56:24 +0100
Message-ID: <6469701.IcmEy0bVhn@phil>
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

please find below and in the next mail some fixes for things cropping up
recently, which may hopefully go into 4.15-rc.

Please pull

Thanks
Heiko

The following changes since commit 4fbd8d194f06c8a3fd2af1ce560ddb31f7ec8323:

  Linux 4.15-rc1 (2017-11-26 16:01:47 -0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.15-rockchip-dts32fixes-1

for you to fetch changes up to 912d7985f3cef1b901a4fd9fede549b919fe7ac3:

  ARM: dts: rockchip: fix rk3288 iep-IOMMU interrupts property cells (2017-12-04 11:44:20 +0100)

----------------------------------------------------------------
Removed another trailing interrupt-cell 0 and added the cpu regulator
on the rk3066a-marsboard to make it not fail from cpufreq changes.

----------------------------------------------------------------
Heiko Stuebner (1):
      ARM: dts: rockchip: add cpu0-regulator on rk3066a-marsboard

Rob Herring (1):
      ARM: dts: rockchip: fix rk3288 iep-IOMMU interrupts property cells

 arch/arm/boot/dts/rk3066a-marsboard.dts | 4 ++++
 arch/arm/boot/dts/rk3288.dtsi           | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)
