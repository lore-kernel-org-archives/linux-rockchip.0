From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip arm32 devicetree fixes for 4.20
Date: Thu, 22 Nov 2018 13:32:04 +0100
Message-ID: <110221357.jpgQ0Qy0za@phil>
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

please find below and in the second mail some fixes for Rockchip boards.
Please pull.

Thanks
Heiko

The following changes since commit 651022382c7f8da46cb4872a545ee1da6d097d2a:

  Linux 4.20-rc1 (2018-11-04 15:37:52 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.20-rockchip-dts32fixes-1

for you to fetch changes up to 672e60b72bbe7aace88721db55b380b6a51fb8f9:

  ARM: dts: rockchip: Remove @0 from the veyron memory node (2018-11-19 09:28:17 +0100)

----------------------------------------------------------------
Moving the veyron memory node from memory@0 back to memory, as the
firmware on these devices as issues identifying the formally correct
node.

----------------------------------------------------------------
Heiko Stuebner (1):
      ARM: dts: rockchip: Remove @0 from the veyron memory node

 arch/arm/boot/dts/rk3288-veyron.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)
