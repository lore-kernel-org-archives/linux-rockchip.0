From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 2/3] Rockchip dt32 changes for 5.8
Date: Thu, 21 May 2020 03:17:58 +0200
Message-ID: <3735080.6Cexqc3t0Y@phil>
References: <1970481.V9vR1fIhX2@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1970481.V9vR1fIhX2@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, soc-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.8-rockchip-dts32-1

for you to fetch changes up to 54b1a4e070330c3fba5becfb0b619bf360bc2657:

  ARM: dts: rockchip: add rga node for rk322x (2020-05-19 00:50:21 +0200)

----------------------------------------------------------------
RGA node for rk322x, wifi node for rk3229-xms6 and some cleanups.

----------------------------------------------------------------
Johan Jonker (2):
      ARM: dts: rockchip: rename and label gpio-led subnodes
      ARM: dts: rockchip: remove identical #include from rk3288.dtsi

Justin Swartz (3):
      ARM: dts: enable WLAN for Mecer Xtreme Mini S6
      ARM: dts: remove disable-wp from rk3229-xms6 emmc
      ARM: dts: rockchip: add rga node for rk322x

 arch/arm/boot/dts/rk3036-kylin.dts          |  2 +-
 arch/arm/boot/dts/rk3066a-mk808.dts         |  2 +-
 arch/arm/boot/dts/rk3188-radxarock.dts      |  6 +++---
 arch/arm/boot/dts/rk3229-xms6.dts           | 19 +++++++++++++++++--
 arch/arm/boot/dts/rk322x.dtsi               | 10 ++++++++++
 arch/arm/boot/dts/rk3288-firefly-reload.dts | 12 ++++++------
 arch/arm/boot/dts/rk3288-firefly.dtsi       | 12 ++++++------
 arch/arm/boot/dts/rk3288-miqi.dts           |  2 +-
 arch/arm/boot/dts/rk3288-phycore-som.dtsi   |  6 +++---
 arch/arm/boot/dts/rk3288-rock2-square.dts   |  4 ++--
 arch/arm/boot/dts/rk3288-tinker.dtsi        |  6 +++---
 arch/arm/boot/dts/rk3288.dtsi               |  1 -
 12 files changed, 53 insertions(+), 29 deletions(-)
