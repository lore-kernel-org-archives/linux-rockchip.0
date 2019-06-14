From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH 1/4] clk: rockchip: add clock id for hdmi_phy special
 clock
Date: Fri, 14 Jun 2019 22:38:15 +0200
Message-ID: <382c742ddf06f45279dfef7caab75a5a@risingedge.co.za>
References: <20190614165454.13743-1-heiko@sntech.de>
 <20190614165454.13743-2-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190614165454.13743-2-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, mturquette@baylibre.com, sboyd@kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 2019-06-14 18:54, Heiko Stuebner wrote:

> Add the needed clock id to enable clock settings from devicetree.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> include/dt-bindings/clock/rk3228-cru.h | 1 +
> 1 file changed, 1 insertion(+)
> 
> diff --git a/include/dt-bindings/clock/rk3228-cru.h 
> b/include/dt-bindings/clock/rk3228-cru.h
> index 3b245e3df8da..de550ea56eeb 100644
> --- a/include/dt-bindings/clock/rk3228-cru.h
> +++ b/include/dt-bindings/clock/rk3228-cru.h
> @@ -64,6 +64,7 @@
> #define SCLK_WIFI        141
> #define SCLK_OTGPHY0        142
> #define SCLK_OTGPHY1        143
> +#define SCLK_HDMI_PHY        144
> 
> /* dclk gates */
> #define DCLK_VOP        190

Tested-by: Justin Swartz <justin.swartz@risingedge.co.za>
