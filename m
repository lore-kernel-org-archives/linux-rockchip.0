From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328 rgmii high tx error rate
Date: Tue, 12 Mar 2019 01:21:24 +0000
Message-ID: <f1237429-bef6-44e1-b777-fed078571541@arm.com>
References: <20190309182013.22162-1-pgwipeout@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190309182013.22162-1-pgwipeout@gmail.com>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Mark Rutland <mark.rutland@arm.com>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2019-03-09 6:20 pm, Peter Geis wrote:
> Several rk3328 based boards experience high rgmii tx error rates.
> This is due to several pins in the rk3328.dtsi rgmii pinmux that are
> missing a pull level setting.
> This causes the pinmux driver to default to 0ma.

Hmm, according to the TRM, there is no 0ma setting; only 2, 4, 8, or 12...

> Fix this by setting those pins to 12ma, consistent with the other tx pins.
> This allows much higher data rates with much fewer retries and no recorded
> tx errors.
> 
> Tested on the rk3328-roc-cc board.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3328.dtsi | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 84f14b132e8f..48a4477ebe58 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -1673,19 +1673,19 @@
>   					<1 RK_PC1 2 &pcfg_pull_none_12ma>,
>   
>   					/* mac_txclk */
> -					<0 RK_PB0 1 &pcfg_pull_none>,
> +					<0 RK_PB0 1 &pcfg_pull_none_12ma>,
>   					/* mac_txen */
> -					<0 RK_PB4 1 &pcfg_pull_none>,
> +					<0 RK_PB4 1 &pcfg_pull_none_12ma>,
>   					/* mac_clk */
> -					<0 RK_PD0 1 &pcfg_pull_none>,
> +					<0 RK_PD0 1 &pcfg_pull_none_12ma>,
>   					/* mac_txd1 */
> -					<0 RK_PC0 1 &pcfg_pull_none>,
> +					<0 RK_PC0 1 &pcfg_pull_none_12ma>,
>   					/* mac_txd0 */
> -					<0 RK_PC1 1 &pcfg_pull_none>,
> +					<0 RK_PC1 1 &pcfg_pull_none_12ma>,
>   					/* mac_txd3 */
> -					<0 RK_PC7 1 &pcfg_pull_none>,
> +					<0 RK_PC7 1 &pcfg_pull_none_12ma>,
>   					/* mac_txd2 */
> -					<0 RK_PC6 1 &pcfg_pull_none>;
> +					<0 RK_PC6 1 &pcfg_pull_none_12ma>;

...but weirder than that, according to the datasheet none of these are 
actual pins anyway - those are the GPIO1B/C/D entries listed above this 
set - so it's not really clear what might be going on here, but it 
doesn't seem as straightforward as the commit message implies.

The TRM lists the entire IOMUX registers for GPIO0B and GPOIO0C as 
reserved, and doesn't even list drive strength registers corresponding 
to these banks at all. What's interesting is that Rockchip's 4.4 BSP 
kernel implies that these pins might have actually existed at some point 
during the chip's development[1], and digging right back into the 3.10 
BSP suggests there is some non-obvious interaction between the two 
configs[2][3]. So I guess there's a question of whether this patch is 
really doing what we think it's doing, and whether what it does do is 
truly appropriate to apply as the SoC-level default.

Robin.

[1] 
https://github.com/rockchip-linux/kernel/commit/8aceffc885c7d4f3f35d09d56d22ba47e64aad5b
[2] 
https://github.com/rockchip-linux/kernel/commit/727de6da39ee62bb5b1252141a53ed027d5609f8
[3] 
https://github.com/rockchip-linux/kernel/commit/8e6b7f85dd5b451e57f220922a0ca1caecd71a94

>   			};
>   
>   			rmiim1_pins: rmiim1-pins {
> 
