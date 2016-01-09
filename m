From: Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>
Subject: [PATCH 0/2] Add support for wireless on Radxa Rock2
Date: Sat,  9 Jan 2016 13:54:16 +0100
Message-ID: <1452344058-27434-1-git-send-email-sjoerd.simons@collabora.co.uk>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

First patch improved the modelling of the power supplies on the Rock2
some a bit and adds the iodomain setup needed for wireless to work.
Second patch adds the actual updates for the wireless setup on the rock2
square board.

With current kernels the probing of the wifi card is unfortunately not
reliable as the 32k clock is provided by the external RTC module, this
is fixed by a patch from Heiko still in RFC state[0] to properly defer
things as needed. Also things only work if the io domains get
initialized before the sdio bus is probed as their is no explicit
dependency, fixing that is for a later patchset.

0: http://lists.infradead.org/pipermail/linux-arm-kernel/2015-November/387833.html


Sjoerd Simons (2):
  ARM: dts: rockchip: Add the iodomains for the Rock2 SOM
  ARM: dts: rockchip: Add the SDIO wifi on Radxa Rock2 square

 arch/arm/boot/dts/rk3288-rock2-som.dtsi   | 26 ++++++++++++++++++++++++
 arch/arm/boot/dts/rk3288-rock2-square.dts | 33 ++++++++++++++++++++++++++++++-
 2 files changed, 58 insertions(+), 1 deletion(-)

-- 
2.7.0.rc3
