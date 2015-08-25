From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 1/2] Rockchip dts fixes for 4.3
Date: Tue, 25 Aug 2015 11:25:42 +0200
Message-ID: <1879932.6Bpqy7C2KO@phil>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd, Kevin, Olof

Brian found two issues with regulator suspend-properties of the newly
added veyron boards, so please pull these fixes on top.


Thanks
Heiko

The following changes since commit 378abcdf3297613f6712343ce3a79b7d6abdf955:

  ARM: dts: rockchip: add veyron-minnie board (2015-08-08 12:31:27 +0200)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.3-rockchip32-dts3

for you to fetch changes up to 467fb18a8d538be6548ef4093003b63aebbb07b9:

  ARM: dts: rockchip: correct regulator power states for suspend (2015-08-21 01:40:35 +0200)

----------------------------------------------------------------
Fixes for non-standard and inverted regulator-suspend-properties
on veyron boards.

----------------------------------------------------------------
Brian Norris (2):
      ARM: dts: rockchip: correct regulator PM properties
      ARM: dts: rockchip: correct regulator power states for suspend

 arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 2 +-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 8 ++++++--
 arch/arm/boot/dts/rk3288-veyron-pinky.dts  | 2 +-
 arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi | 4 ++--
 4 files changed, 10 insertions(+), 6 deletions(-)
