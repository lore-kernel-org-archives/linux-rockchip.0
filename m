From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH v3 0/4] rk3328 and rock64 display support
Date: Mon, 10 Sep 2018 11:28:39 +0200
Message-ID: <20180910092843.1700-1-heiko@sntech.de>
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
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, robin.murphy-5wv7dgnIgG8@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, zhengyang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Companion series for the display modifications adding the necessary
devicetree stuff for display support on the rk3328-rock64.

changes in v3:
- drop reg from hdmi port - unneeded with a single vop
  as suggested by Robin

changes in v2:
- add defconfig addition for the phy driver
- adapt to changed reference clock names
- remove trailing 0 from vop irq

Heiko Stuebner (4):
  arm64: dts: rockchip: add Innosilicon hdmi phy node to rk3328
  arm64: dts: rockchip: add rk3328 display nodes
  arm64: dts: rockchip: enable display nodes on rk3328-rock64
  arm64: defconfig: enable Rockchip Innosilicon hdmiphy

 .../arm64/boot/dts/rockchip/rk3328-rock64.dts | 16 +++++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      | 67 +++++++++++++++++++
 arch/arm64/configs/defconfig                  |  1 +
 3 files changed, 84 insertions(+)

-- 
2.17.0
