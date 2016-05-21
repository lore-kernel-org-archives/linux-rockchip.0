From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 0/3] arm64: dts: rockchip: add io-domain support for rk3368
 and rk3399
Date: Sat, 21 May 2016 23:23:45 +0200
Message-ID: <1463865828-14583-1-git-send-email-heiko@sntech.de>
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

This adds the core io-domain nodes for both the rk3368 and rk3399
as well as the actual supplies on the rk3368-r88 board.

This of course needs
    PM / AVS: rockchip-io: make io-domains a child of the GRF
that went into mainline during the 4.7 merge window.

Heiko Stuebner (3):
  arm64: dts: rockchip: add rk3368 io-domain core nodes
  arm64: dts: rockchip: add rk3368-r88 iodomains
  arm64: dts: rockchip: add rk3399 io-domain core nodes

 arch/arm64/boot/dts/rockchip/rk3368-r88.dts | 16 ++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3368.dtsi    | 10 ++++++++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi    | 10 ++++++++++
 3 files changed, 36 insertions(+)

-- 
2.6.4
