From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL] Rockchip dts64 fixes for 4.9-rc
Date: Fri, 28 Oct 2016 11:22:20 +0200
Message-ID: <2007497.qXCdMDh9Wq@phil>
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

please find below two fixes for 64bit Rockchip boards. One makes
binds/unbinds fail and the other drops one unnecessary property.

Please pull.
Thanks
Heiko

The following changes since commit 1001354ca34179f3db924eb66672442a173147dc:

  Linux 4.9-rc1 (2016-10-15 12:17:50 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.9-rockchip-dts64-fixes1

for you to fetch changes up to 7c6273194445fe1316084d3096f9311c3dfa4da6:

  arm64: dts: rockchip: remove the abuse of keep-power-in-suspend (2016-10-18 20:03:54 +0200)

----------------------------------------------------------------
Correct regulator handling on Rockchip arm64 boards to make
bind/unbind calls work correctly and remove a sdio-only
property from non-sdio mmc hosts, that accidentially was
added there.

----------------------------------------------------------------
Shawn Lin (2):
      arm64: dts: rockchip: remove always-on and boot-on from vcc_sd
      arm64: dts: rockchip: remove the abuse of keep-power-in-suspend

 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts        | 3 ---
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 4 ----
 2 files changed, 7 deletions(-)
