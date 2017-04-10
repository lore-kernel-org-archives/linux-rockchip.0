From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip dts32 updates for 4.12 part2
Date: Mon, 10 Apr 2017 11:56:03 +0200
Message-ID: <2927359.zDIxDMQbjs@phil>
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

some additional stuff, hopefully still in time for 4.12.
On the arm32 side devicetree the big thing is support for the phyCORE som
from Phytec and on the arm64 side (pull2) support for another new
4-core soc, the rk3328 (4*A53) .

Please pull

Thanks
Heiko

PS: There should also defconfig patch be around in the arm@kernel.org
inbox named "multi_v7_defconfig: make Rockchip usb2-phy built-in"
Maybe you could look at that too :-)


The following changes since commit 94bbdd77247d8c16eed5f55dddcf1cbc38d06cc4:

  ARM: dts: rockchip: setup DMA-channels for mmc0 and emmc for rk3188 (2017-03-22 16:49:39 +0100)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.12-rockchip-dts32-2

for you to fetch changes up to 81507732449076de35db3b5a439e4dfd548c6b5a:

  ARM: dts: rockchip: Add support for PCM-947 carrier board (2017-04-06 23:38:18 +0200)

----------------------------------------------------------------
Support for the usb-sata controller on the rock2 and another new rk3288
board, the phyCORE som and its PCM-947 carrier board from Phytec.

----------------------------------------------------------------
Sjoerd Simons (1):
      ARM: dts: rockchip: Enable sata support on rock2 square

Wadim Egorov (3):
      ARM: dts: rockchip: Add support for phyCORE-RK3288 SoM
      dt-bindings: Document Phytec phyCORE-RK3288 RDK
      ARM: dts: rockchip: Add support for PCM-947 carrier board

 Documentation/devicetree/bindings/arm/rockchip.txt |   4 +
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/rk3288-phycore-rdk.dts           | 298 ++++++++++++
 arch/arm/boot/dts/rk3288-phycore-som.dtsi          | 497 +++++++++++++++++++++
 arch/arm/boot/dts/rk3288-rock2-square.dts          |  21 +
 5 files changed, 821 insertions(+)
 create mode 100644 arch/arm/boot/dts/rk3288-phycore-rdk.dts
 create mode 100644 arch/arm/boot/dts/rk3288-phycore-som.dtsi
