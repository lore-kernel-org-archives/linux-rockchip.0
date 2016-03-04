From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 3/3] 2nd part of rockchip dts64 changes for 4.6
Date: Fri, 04 Mar 2016 02:43:51 +0100
Message-ID: <8679609.ynY6sUar5J@diego>
References: <2165258.7vUftGQ1I7@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2165258.7vUftGQ1I7@diego>
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

Two small fixes as explained in the tag, so please pull


Thanks
Heiko


The following changes since commit e6f49b118f73a769ec51ed28a085e9dccd67f9a1:

  arm64: dts: rockchip: replace gpio-key,wakeup with wakeup-source property (2016-02-10 00:23:24 +0100)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.6-rockchip-dts64-2

for you to fetch changes up to a0cab1da6a3a6fb223fcbdcff43b4e9f973e59c5:

  arm64: dts: rockchip: remove broken-cd from emmc and sdio (2016-03-02 22:43:54 +0100)

----------------------------------------------------------------
Fixes for a wrong pin setting and removal of broken-cd where
only the non-removable should be used alone.

----------------------------------------------------------------
Caesar Wang (1):
      arm64: dts: rockchip: fix the incorrect otp-out pin on rk3368

Shawn Lin (1):
      arm64: dts: rockchip: remove broken-cd from emmc and sdio

 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts  | 1 -
 arch/arm64/boot/dts/rockchip/rk3368.dtsi     | 4 ++--
 3 files changed, 2 insertions(+), 4 deletions(-)
