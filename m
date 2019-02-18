From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip dts32 updates for 5.1 - round 2
Date: Mon, 18 Feb 2019 01:18:23 +0100
Message-ID: <1972197.JU0Au1QvNm@phil>
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

Hi Arnd, Kevin Olof,

please find below and in the reply a second round of Rockchip devicetree
updates targetted at 5.1. Again nothing major just some more collected
improvements. So if there is still time, please pull.

Thanks
Heiko

The following changes since commit e6b97a47b5b9512828859778acafd3fe107b395e:

  ARM: dts: rockchip: clean up the abuse of disable-wp (2019-01-28 10:51:55 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.1-rockchip-dts32-2

for you to fetch changes up to 5aed37a5cdef6453eb3bf307574e19e547ca0432:

  ARM: dts: rockchip: add chosen node on veyron devices (2019-02-16 21:18:26 +0100)

----------------------------------------------------------------
A number of improvements for rv1108 boards, removal of an obsolete property
from the Edison tablet and a chosen node for veyron devices.

----------------------------------------------------------------
Enric Balletbo i Serra (1):
      ARM: dts: rockchip: add chosen node on veyron devices

Johan Jonker (1):
      ARM: dts: rockchip: remove cap-mmc-highspeed from rk3188-bqedison2qc mmc1 node

Otavio Salvador (3):
      ARM: dts: rockchip: Fix vcc5/6-supply representation on rv1108-elgin
      ARM: dts: rockchip: Use the correct regulator properties on rv1108-elgin
      ARM: dts: rockchip: Use the correct regulator properties on rv1108-evb

 arch/arm/boot/dts/rk3188-bqedison2qc.dts |  1 -
 arch/arm/boot/dts/rk3288-veyron.dtsi     |  4 ++++
 arch/arm/boot/dts/rv1108-elgin-r1.dts    | 34 +++++++++++++++++---------------
 arch/arm/boot/dts/rv1108-evb.dts         | 20 +++++++++----------
 4 files changed, 32 insertions(+), 27 deletions(-)
