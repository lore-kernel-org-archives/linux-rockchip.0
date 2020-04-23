From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399 pcie speed
Date: Thu, 23 Apr 2020 11:09:26 -0400
Message-ID: <CAMdYzYoFvaVXoYo0-vZnEmXK4GKsO_i8Cdggr7AJ8U6uS_ZW8Q@mail.gmail.com>
References: <20200423150510.6216-1-pgwipeout@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200423150510.6216-1-pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Apr 23, 2020 at 11:05 AM Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
> The rk3399 is capable of operating at PCIe gen 2 as per the TRM.
> The device-tree incorrectly limits us to gen 1.
>
> Correctly set the maximum link speed to <2>.
>
> Tested on the rockpro64.

Note, this was tested on the rockpro64 after I performed the hardware
fixes as delineated at
https://forum.pine64.org/showthread.php?tid=8374

We probably will have to drop this back to <1> on board specific dts
files if issues are discovered.

>
> Signed-off-by: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 74f2c3d49095..e9efd330810b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -248,7 +248,7 @@
>                                 <0 0 0 3 &pcie0_intc 2>,
>                                 <0 0 0 4 &pcie0_intc 3>;
>                 linux,pci-domain = <0>;
> -               max-link-speed = <1>;
> +               max-link-speed = <2>;
>                 msi-map = <0x0 &its 0x0 0x1000>;
>                 phys = <&pcie_phy 0>, <&pcie_phy 1>,
>                        <&pcie_phy 2>, <&pcie_phy 3>;
> --
> 2.20.1
>
