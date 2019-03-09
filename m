From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix rk3328-roc-cc gmac2io
 tx/rx_delay
Date: Fri, 8 Mar 2019 21:39:06 -0500
Message-ID: <ec810aad-dd04-84e4-bfb0-98b005cf3f03@gmail.com>
References: <20190306223454.2959-1-papadakospan@gmail.com>
 <24c5ffaa-644d-4623-a635-6842f67efe8a@gmail.com>
 <1552008447.3271.0@gmail.com> <1552087603.1401.0@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1552087603.1401.0-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Thomas McKahan <tonymckahan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 3/8/2019 6:26 PM, Leonidas P. Papadakos wrote:
> 
> 
>>> When I submitted the patch to fix the TX stability issue, I 
>>> intended to follow up with another patch for delay updates.
>>> Unfortunately, I was unable to locate a delay that was acceptable, 
>>> as I was never able to get below ~700 retry attempts on the TX 
>>> side in testing.
>>>
>>> I am unsure if this is due to manufacturing defects or if I'm 
>>> missing something else.
>>> It may be worth considering implementing some sort of delay auto 
>>> tuning, similar to the mmc driver.
>>> Thoughts?
>>
>> I feared as much. The delays on the tx side do seem to be more of a 
>> mitigation.
>> I you have the know-how for it, it would be pretty cool
> Interesting approach to this by ayufan:
> https://github.com/ayufan-rock64/linux-mainline-kernel/commit/41eeb7cd789ea7cac0cbf4b35b53055f354da757 
> 
> 
> I hope he sends it upstream as well
> 

So I discovered the cause of my TX issues, at least on my rk3328-roc-cc.
The rk3328.dtsi is missing several rgmii tx pull strength values.
This is causing them to default to 0ma.

I've pushed them to 12ma, same as the other tx values, and I'm getting 
600 mbps tx, with no TX failures.

I am also going to test his adaptive patch once it's done building.

Thoughts?


diff --git a/arch/arm65/boot/dts/rockchip/rk3328-roc-cc.dts 
b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index c0519bc5884e..696627bf3331 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -280,6 +280,26 @@
  			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
  		};
  	};
+
+	gmac-1 {
+		rgmiim1_pins: rgmiim1-pins {
+			rockchip,pins =
+				/* mac_txclk */
+				<0 RK_PB0 1 &pcfg_pull_none_12ma>,
+				/* mac_txen */
+				<0 RK_PB4 1 &pcfg_pull_none_12ma>,
+				/* mac_clk */
+				<0 RK_PD0 1 &pcfg_pull_none_12ma>,
+				/* mac_txd1 */
+				<0 RK_PC0 1 &pcfg_pull_none_12ma>,
+				/* mac_txd0 */
+				<0 RK_PC1 1 &pcfg_pull_none_12ma>,
+				/* mac_txd3 */
+				<0 RK_PC7 1 &pcfg_pull_none_12ma>,
+				/* mac_txd2 */
+				<0 RK_PC6 1 &pcfg_pull_none_12ma>;
+		};
+	};
  };

  &sdmmc {
