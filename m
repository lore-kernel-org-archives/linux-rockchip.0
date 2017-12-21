From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip dts32 changes for 4.16
Date: Thu, 21 Dec 2017 19:30:11 +0100
Message-ID: <2013174.TmhWXT9G0E@phil>
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

please find below and in the next mail Rockchip changes for 4.16.
The volume especially on 32bit is quite low this time, possibly due
to the holiday season. So if nothing looks bad, please pull

Thanks and merry xmas
Heiko

The following changes since commit 4fbd8d194f06c8a3fd2af1ce560ddb31f7ec8323:

  Linux 4.15-rc1 (2017-11-26 16:01:47 -0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.16-rockchip-dts32-1

for you to fetch changes up to fe8fd85a23a746bd7f0a14e5dcd55c9bc517a055:

  ARM: dts: rockchip: add reset property for rk3066a-rayeager emac phy (2017-12-16 21:09:37 +0100)

----------------------------------------------------------------
Just the reset property for the rk3066a-rayeager emac phy

----------------------------------------------------------------
Chris Zhong (1):
      ARM: dts: rockchip: add reset property for rk3066a-rayeager emac phy

 arch/arm/boot/dts/rk3066a-rayeager.dts | 1 +
 1 file changed, 1 insertion(+)
