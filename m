From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 0/5] ARM: dts: rockchip: some regulator updates for popmetal
 and firefly
Date: Wed, 30 Sep 2015 21:17:45 +0200
Message-ID: <1443640670-21104-1-git-send-email-heiko@sntech.de>
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

The upcoming mmc tuning definitly needs correct handling of the iodomains,
which is also good to have in general. So this fixes some small regulator
issues and then adds the io-domains for the rk3288 popmetal and firefly
boards.

Heiko Stuebner (5):
  ARM: dts: rockchip: add rk3288-popmetal board to dtb list
  ARM: dts: rockchip: add rk3288-popmemtal mmc supplies
  ARM: dts: rockchip: add rk3288-popmetal iodomains
  ARM: dts: rockchip: fixup firefly mmc supplies
  ARM: dts: rockchip: add rk3288-firefly iodomains

 arch/arm/boot/dts/Makefile            |  1 +
 arch/arm/boot/dts/rk3288-firefly.dtsi | 55 +++++++++++++++++++++--
 arch/arm/boot/dts/rk3288-popmetal.dts | 85 +++++++++++++++++++++++++++++++++--
 3 files changed, 134 insertions(+), 7 deletions(-)

-- 
2.5.3
