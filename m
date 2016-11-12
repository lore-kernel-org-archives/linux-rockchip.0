From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 3/3] Rockchip dts64 changes for 4.10
Date: Sat, 12 Nov 2016 16:36:25 +0100
Message-ID: <4932547.OPNQihgQS9@phil>
References: <1698724.ZQnZMjf8xY@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1698724.ZQnZMjf8xY@phil>
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

The following changes since commit 1001354ca34179f3db924eb66672442a173147dc:

  Linux 4.9-rc1 (2016-10-15 12:17:50 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.10-rockchip-dts64-1

for you to fetch changes up to c49590691f3819bb6be3f77938ef39038eb76643:

  arm64: dts: rockchip: replace to "max-frequency" instead of "clock-freq-min-max" (2016-11-09 15:08:55 +0100)

----------------------------------------------------------------
64bit devicetree changes including the px5 evaluation board
a fix for wrong i2c registers on rk3368 a new nvmem cell and
power-domain on rk3399 as well as moving mmc frequency
properties to the more generic max-frequency one.

----------------------------------------------------------------
Andy Yan (2):
      arm64: dts: rockchip: fix i2c resource error of rk3368
      arm64: dts: rockchip: Add PX5 Evaluation board

Chris Zhong (1):
      arm64: dts: rockchip: add powerdomain for typec on rk3399

Jaehoon Chung (1):
      arm64: dts: rockchip: replace to "max-frequency" instead of "clock-freq-min-max"

Shawn Lin (2):
      arm64: dts: rockchip: Add more properties for emmc on px5-evb
      arm64: dts: rockchip: add sdmmc support for px5-evb

Ziyuan Xu (1):
      arm64: dts: rockchip: add cpu-id nvmem cell node for rk3399

 Documentation/devicetree/bindings/arm/rockchip.txt |   8 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/rk3368-orion-r68-meta.dts    |   2 +-
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts    | 314 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |  18 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   9 +-
 6 files changed, 340 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
