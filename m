From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: enable hdmi on rk3399-puma-haikou
Date: Mon, 30 Apr 2018 20:51:07 +0200
Message-ID: <20180430185107.3197-1-vicencb@gmail.com>
References: <20180424142459.3339-1-jakob.unterwurzacher@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180424142459.3339-1-jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jakob Unterwurzacher <jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello Jakob,

On 2018-04-24 16:24, Jakob Unterwurzacher wrote:
>Earlier kernels showed a corrupt image on hdmi, on v4.16 things
>work fine at resolutions up to 1920x1080.
>
>On v4.17-rc2 two fixes are pending for hdmi to work:
>
>1) "iommu/rockchip: make clock handling optional"
>   https://patchwork.kernel.org/patch/10344875/
>
>2) Add missing enable_irq in rockchip_drm_vop.c
>   http://lists.infradead.org/pipermail/linux-rockchip/2018-April/020427.html
>
>These should get merged soon, so I think it's time to enable
>the hdmi output in our dts.
>
>Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher at theobroma-systems.com>
>Cc: linux-rockchip at lists.infradead.org
>Cc: Heiko Stuebner <heiko at sntech.de>
>Cc: Klaus Goger <klaus.goger at theobroma-systems.com>
>---
> arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 21 +++++++++++++++++++++
> 1 file changed, 21 insertions(+)
>
>diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
>index 7d3e8bfd51dd..23c59c8f0775 100644
>--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
>+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
>@@ -143,6 +143,11 @@
> 	};
> };
> 
>+&hdmi {
>+	ddc-i2c-bus = <&i2c3>;
>+	status = "okay";
>+};
>+
> &i2c1 {
> 	status = "okay";
> 	clock-frequency = <400000>;
>@@ -281,3 +286,19 @@
> &usb_host0_ohci {
> 	status = "okay";
> };
>+
>+&vopb {
>+	status = "okay";
>+};
>+
>+&vopb_mmu {
>+	status = "okay";
>+};
>+
>+&vopl {
>+	status = "okay";
>+};
>+
>+&vopl_mmu {
>+	status = "okay";
>+};
>-- 
>2.11.0

Does HDMI audio work on rk3399-puma-haikou?

Regards,
  Vicente.
