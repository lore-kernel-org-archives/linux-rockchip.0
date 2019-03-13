From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328 rgmii high tx error rate
Date: Tue, 12 Mar 2019 21:53:09 -0400
Message-ID: <982e53d0-4e44-90f1-5396-2869644e66c5@gmail.com>
References: <20190309182013.22162-1-pgwipeout@gmail.com>
 <20190310004722.5140-1-papadakospan@gmail.com> <1552356332.2607.1@gmail.com>
 <1552356823.2607.2@gmail.com>
 <CAMdYzYrn2eEr=JzNFe3wp-VjoVHwxcQkf98zc0MSMh4j=0ZDvg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAMdYzYrn2eEr=JzNFe3wp-VjoVHwxcQkf98zc0MSMh4j=0ZDvg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org



On 3/12/2019 8:23 AM, Peter Geis wrote:
> On Mon, Mar 11, 2019 at 10:13 PM Leonidas P. Papadakos
> <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>>
>>
>>
>>> I do have to say, This patch does fix my Link Reset issue reliably
>>> enough, so it does *something*
>>
>> Well, I just tried the same things I did yesterday (iperf3 testts, GbE)
>> and it seems to work even without the patch. (?)
>> Using the defailt tx/rx delays though. (0x25,0x11)
>>
> 
> Good Morning,
> 
> So after getting Robin's response and the follow on responses, I've
> dug further into the RK3328 TRM, Specifications, and the rk3328-roc-cc
> schematics.
> 
> I've made the following discoveries:
> The labels in the rk3328.dtsi for those pins are inaccurate.
> For instance the first of the pins missing a drive setting RK_PB0 is
> labeled "mac_txclk", but it is in fact "gmac_txd1".
> 
> What I thought was 0 ma is in fact 2 ma, which is the result of both
> bits being 0, apologies for the incorrect information.
> This is the resulting state following the pinmux driver initialization.
> This is still very low for the function performed, and is what is
> causing our tx issues.
> Essentially what we have is some of the tx lines are running at 12ma
> and some running at 2ma, which can cause imbalance issues.
> 
> This also calls into question if 12ma is the correct drive strength,
> or if we are driving too hard, leading to ringing on the interface.
> The highest default drive strength is the sd interfaces at 8ma.
> I've actually been running the sd interface at this level for a while,
> since the 4ma setting in the current dtsi was causing data corruption.
> 
> I will conduct further tests, and resubmit the patch with the labels
> corrected, as well as other fixes.
> This may become a patch series, since I will be going through all of
> the pins and their expected values in the TRM.
> 

I need to apologize again, I was incorrect about the pins missing drive 
controls.
I misread them as gpio1 and not gpio0, but now I am even more confused.
The whole group of pins on gpio0, B0, B4, C0, C1, C6, C7, and D0, as far 
as the rk3328 TRM V1.1, Datasheet Rev 1.2, and the rk3328-roc-cc 
schematics are concerned do not exist.
That whole block of gpio config registers in the TRM are simply 
"reserved", and they are referenced nowhere else.

So here's the kicker, if you get rid of them, the rgmii interface fails 
to work. It enumerates, and the mac is detected, but no data passes 
successfully.

I've also conducted some testing with the following patch, and I now get 
almost full speed with absolutely zero retries or packet errors.
I think it's safe to say that the interface was likely ringing, but I'd 
like some more tests to be sure.

Please give me your feedback, one and all!


diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi 
b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 84f14b132e8f..c55a3f1a87ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1642,50 +1642,50 @@
  			rgmiim1_pins: rgmiim1-pins {
  				rockchip,pins =
  					/* mac_txclk */
-					<1 RK_PB4 2 &pcfg_pull_none_12ma>,
+					<1 RK_PB4 2 &pcfg_pull_none_8ma>,
  					/* mac_rxclk */
-					<1 RK_PB5 2 &pcfg_pull_none_2ma>,
+					<1 RK_PB5 2 &pcfg_pull_none_4ma>,
  					/* mac_mdio */
-					<1 RK_PC3 2 &pcfg_pull_none_2ma>,
+					<1 RK_PC3 2 &pcfg_pull_none_4ma>,
  					/* mac_txen */
-					<1 RK_PD1 2 &pcfg_pull_none_12ma>,
+					<1 RK_PD1 2 &pcfg_pull_none_8ma>,
  					/* mac_clk */
-					<1 RK_PC5 2 &pcfg_pull_none_2ma>,
+					<1 RK_PC5 2 &pcfg_pull_none_4ma>,
  					/* mac_rxdv */
-					<1 RK_PC6 2 &pcfg_pull_none_2ma>,
+					<1 RK_PC6 2 &pcfg_pull_none_4ma>,
  					/* mac_mdc */
-					<1 RK_PC7 2 &pcfg_pull_none_2ma>,
+					<1 RK_PC7 2 &pcfg_pull_none_4ma>,
  					/* mac_rxd1 */
-					<1 RK_PB2 2 &pcfg_pull_none_2ma>,
+					<1 RK_PB2 2 &pcfg_pull_none_4ma>,
  					/* mac_rxd0 */
-					<1 RK_PB3 2 &pcfg_pull_none_2ma>,
+					<1 RK_PB3 2 &pcfg_pull_none_4ma>,
  					/* mac_txd1 */
-					<1 RK_PB0 2 &pcfg_pull_none_12ma>,
+					<1 RK_PB0 2 &pcfg_pull_none_8ma>,
  					/* mac_txd0 */
-					<1 RK_PB1 2 &pcfg_pull_none_12ma>,
+					<1 RK_PB1 2 &pcfg_pull_none_8ma>,
  					/* mac_rxd3 */
-					<1 RK_PB6 2 &pcfg_pull_none_2ma>,
+					<1 RK_PB6 2 &pcfg_pull_none_4ma>,
  					/* mac_rxd2 */
-					<1 RK_PB7 2 &pcfg_pull_none_2ma>,
+					<1 RK_PB7 2 &pcfg_pull_none_4ma>,
  					/* mac_txd3 */
-					<1 RK_PC0 2 &pcfg_pull_none_12ma>,
+					<1 RK_PC0 2 &pcfg_pull_none_8ma>,
  					/* mac_txd2 */
-					<1 RK_PC1 2 &pcfg_pull_none_12ma>,
+					<1 RK_PC1 2 &pcfg_pull_none_8ma>,

  					/* mac_txclk */
-					<0 RK_PB0 1 &pcfg_pull_none>,
+					<0 RK_PB0 1 &pcfg_pull_none_8ma>,
  					/* mac_txen */
-					<0 RK_PB4 1 &pcfg_pull_none>,
+					<0 RK_PB4 1 &pcfg_pull_none_8ma>,
  					/* mac_clk */
-					<0 RK_PD0 1 &pcfg_pull_none>,
+					<0 RK_PD0 1 &pcfg_pull_none_4ma>,
  					/* mac_txd1 */
-					<0 RK_PC0 1 &pcfg_pull_none>,
+					<0 RK_PC0 1 &pcfg_pull_none_8ma>,
  					/* mac_txd0 */
-					<0 RK_PC1 1 &pcfg_pull_none>,
+					<0 RK_PC1 1 &pcfg_pull_none_8ma>,
  					/* mac_txd3 */
-					<0 RK_PC7 1 &pcfg_pull_none>,
+					<0 RK_PC7 1 &pcfg_pull_none_8ma>,
  					/* mac_txd2 */
-					<0 RK_PC6 1 &pcfg_pull_none>;
+					<0 RK_PC6 1 &pcfg_pull_none_8ma>;
  			};

  			rmiim1_pins: rmiim1-pins {
