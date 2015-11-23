From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL] ARM: rockchip: devicetree fixes for 4.4
Date: Mon, 23 Nov 2015 13:12:52 +0100
Message-ID: <1896520.ssRYuZn5dZ@diego>
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

The following changes since commit 8005c49d9aea74d382f474ce11afbbc7d7130bec:

  Linux 4.4-rc1 (2015-11-15 17:00:27 -0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.4-rockchip-dts32-fixes1

for you to fetch changes up to 784359b824bf2b095b257eefcd9615a3c48f2d8a:

  ARM: dts: rockchip: Add OTP gpio pinctrl to rk3288 tsadc node (2015-11-19 05:50:42 +0100)

----------------------------------------------------------------
Two fixes to Rockchip devicetree files, disabling the mmc-tuning
on the veyron-minnie board for now and adding the init state for
the over-temperature-protection to prevent glitches making the
system reboot sometimes.

----------------------------------------------------------------
Caesar Wang (1):
      ARM: dts: rockchip: Add OTP gpio pinctrl to rk3288 tsadc node

Heiko Stuebner (1):
      ARM: dts: rockchip: temporarily remove emmc hs200 speed from rk3288 minnie

 arch/arm/boot/dts/rk3288-veyron-minnie.dts |  4 ++++
 arch/arm/boot/dts/rk3288.dtsi              | 10 ++++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)
