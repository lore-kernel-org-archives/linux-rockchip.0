From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip DT32 changes for 5.4 - round2
Date: Thu, 05 Sep 2019 14:18:11 +0200
Message-ID: <1718334.9BoTfW0Ujv@phil>
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
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi (arm-)soc people,

please find below and in the reply a small second round of Rockchip changes
targetted at 5.4.

Mainly only small cleanups and have been in linux-next for a while now,
I just didn't get to pull-requests due to travel and jetlag.
Linus wrote that he wants to do an -rc8 but if the stuff below is too late
I can also easily move it to 5.5.

So if not too late, please pull
Thanks
Heiko


The following changes since commit dd7c66ac777a70e224e66593e95ce6d22147c919:

  ARM: dts: add device tree for Mecer Xtreme Mini S6 (2019-08-16 18:04:43 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.4-rockchip-dts32-2

for you to fetch changes up to 9f72a1d0300b03a9fc6cba93f8cc0ab326185788:

  dt-bindings: arm: rockchip: remove reference to fennec board (2019-08-22 21:32:18 +0200)

----------------------------------------------------------------
Removal of the rk3288-fennec board which never made it to
any market.

----------------------------------------------------------------
Kever Yang (2):
      ARM: dts: rockchip: remove rk3288 fennec board support
      dt-bindings: arm: rockchip: remove reference to fennec board

 .../devicetree/bindings/arm/rockchip.yaml          |   5 -
 arch/arm/boot/dts/Makefile                         |   1 -
 arch/arm/boot/dts/rk3288-fennec.dts                | 347 ---------------------
 3 files changed, 353 deletions(-)
 delete mode 100644 arch/arm/boot/dts/rk3288-fennec.dts
