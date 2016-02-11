From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 3/4] rockchip dts64 changes for 4.6
Date: Thu, 11 Feb 2016 15:52:40 +0100
Message-ID: <29700148.FpDzERqiyH@phil>
References: <1734524.3yNt5L3F1F@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1734524.3yNt5L3F1F@phil>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd, Olof, Kevin,

some small 64bit devicetree changes for 4.6 that allow mmc tuning and
use the newer wakeup-source property for the gpio-keys.


Thanks
Heiko

The following changes since commit 92e963f50fc74041b5e9e744c330dca48e04f08d:

  Linux 4.5-rc1 (2016-01-24 13:06:47 -0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.6-rockchip-dts64-1

for you to fetch changes up to e6f49b118f73a769ec51ed28a085e9dccd67f9a1:

  arm64: dts: rockchip: replace gpio-key,wakeup with wakeup-source property (2016-02-10 00:23:24 +0100)

----------------------------------------------------------------
Define the tuning-related mmc clocks and move from
gpio-key,wakeup to the more generic wakeup-source property.

----------------------------------------------------------------
Shawn Lin (1):
      arm64: dts: rockchip: add rk3368 tuning clk for emmc and sdmmc

Sudeep Holla (1):
      arm64: dts: rockchip: replace gpio-key,wakeup with wakeup-source property

 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi |  2 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts  |  2 +-
 arch/arm64/boot/dts/rockchip/rk3368.dtsi     | 10 ++++++----
 3 files changed, 8 insertions(+), 6 deletions(-)
