From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 1/3] Rockchip defconfig64 changes for 4.10
Date: Thu, 24 Nov 2016 16:41:48 +0100
Message-ID: <1594090.z775ZFR2cz__21765.7302077443$1482607589$gmane$org@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd, Kevin, Olof,

please find below (and in the replies) some more pull requests
for 4.10.

If that is to late, feel free to ignore them and I'll resubmit
after 4.10-rc.


Thanks
Heiko

The following changes since commit 1001354ca34179f3db924eb66672442a173147dc:

  Linux 4.9-rc1 (2016-10-15 12:17:50 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.10-rockchip-defconfig64

for you to fetch changes up to 92d22d77b14c988bce0293502a1b3ef25b267ed9:

  arm64: defconfig: allow rk3399-based boards to boot from mmc and usb (2016-11-17 17:15:59 +0100)

----------------------------------------------------------------
64bit defconfig changes to allow arm64 Rockchip socs
to basically boot.

----------------------------------------------------------------
Andy Yan (2):
      arm64: defconfig: enable I2C and DW MMC controller on rockchip platform
      arm64: defconfig: enable RK808 components

Heiko Stuebner (1):
      arm64: defconfig: allow rk3399-based boards to boot from mmc and usb

 arch/arm64/configs/defconfig | 11 +++++++++++
 1 file changed, 11 insertions(+)
