From: Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: Firefly wifi mainline patches
Date: Sun, 2 Aug 2015 11:08:26 +0200
Message-ID: <CAOf5uwnBN3HmWk9=O3pC0Ff7gesDyNFHhsXJBFsc-YiOa+mjew@mail.gmail.com>
References: <20150721125133.GA4102@panicking>
 <CAOf5uw=cvu9ST+QexgMQP06xQVAz6th_EepfxQOAXNDrWopf6Q@mail.gmail.com>
 <CAD=FV=U6DmLr_VC3XKs+ALKKhwsg+JXmo+52aEoWOkvkXr3UGw@mail.gmail.com>
 <20150723195011.GA5620@panicking>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20150723195011.GA5620@panicking>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Alexandru Stan <amstan-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi all


On Thu, Jul 23, 2015 at 9:50 PM, Michael Trimarchi
<michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
> Hi
>
> On Wed, Jul 22, 2015 at 06:36:39AM -0700, Doug Anderson wrote:
>> Hi,
>>
>> On Tue, Jul 21, 2015 at 10:58 PM, Michael Trimarchi
>> <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
>> > Hi
>> >
>> >
>> > On Tue, Jul 21, 2015 at 2:51 PM, Michael Trimarchi
>> > <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
>> >> Hi
>> >>
>> >> I have managed to let my wifi working using mainline but I have
>> >> problem on clocking. Right now I can not rise the clock more the 5Mhz
>> >> even it's suppose to work up to 50Mhz. Anyone is working on it right
>> >> now?
>> >>
>> >
>> > I put in attach two patches that I need on my version. Another problem
>> > is that execute_tuning is not defined in the dw_mmc-rockchip so
>> > ENOSYS is returned. I think that we have two way:
>> >
>> > 1) put a stub
>> > 2) define 0 as default error
>>
>> I don't think you should be trying to tune until the tuning patches
>> are landed.  Alexandru sent them up a while ago but they need to be
>> respun.  I seem to remember Alexandru saying that it decided your
>> controller was UHS capable if you didn't specify any capabilities, so
>> maybe that's it.
>>
>> Try adding this to your SDIO port in the dts:
>>
>> cap-sd-highspeed;
>

+       io_domains: io-domains {
+               compatible = "rockchip,rk3288-io-voltage-domain";
+               rockchip,grf = <&grf>;
+
+               wifi-supply = <&vcc_18>;

I finally manage to have it running at 50Mhz in high speed mode. I
need to do more testing but could be a problem
on invalid setting on logic. I will try to send up patches

Michael



> I have rebase on https://github.com/mmind/linux-rockchip
> mainline/devel/upstream. Need to do some more test here and not
> yet ready for mainline
>
> From f076b38f6056404cea11b1c5f4595dfe5b7e5aef Mon Sep 17 00:00:00 2001
> From: Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> Date: Thu, 23 Jul 2015 21:39:44 +0200
> Subject: [PATCH] ARM: dts: rockchip: add wifi support to firefly board
>
> This patch add the wifi support to firefly. In order to use
> the user need the ap6535 specific wifi firmware. vcc_wifi
> regulator is set to 2V in order to workaround the fact
> that the card answer to not support 1.8V power.
>
> Signed-off-by: Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> ---
>  arch/arm/boot/dts/rk3288-firefly.dtsi | 35 +++++++++++++++++++++++++++++++++--
>  1 file changed, 33 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
> index 20fa0ef..2958cd2 100644
> --- a/arch/arm/boot/dts/rk3288-firefly.dtsi
> +++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
> @@ -117,6 +117,21 @@
>                 vin-supply = <&vcc_io>;
>         };
>
> +       vcc_wifi: wifi-regulator {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpio = <&gpio4 28 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&sdio0_pwr>;
> +               regulator-name = "vcc_wifi";
> +               regulator-min-microvolt = <2000000>;
> +               regulator-max-microvolt = <2000000>;
> +               startup-delay-us = <100000>;
> +               regulator-always-on;
> +               vin-supply = <&vcc_io>;
> +       };
> +
> +
>         vcc_flash: flash-regulator {
>                 compatible = "regulator-fixed";
>                 regulator-name = "vcc_flash";
> @@ -440,13 +455,29 @@
>  &sdio0 {
>         broken-cd;
>         bus-width = <4>;
> +       clock-freq-min-max = <400000 20000000>;
>         disable-wp;
>         non-removable;
> +       cap-sd-highspeed;
>         num-slots = <1>;
>         pinctrl-names = "default";
> -       pinctrl-0 = <&sdio0_bus4>, <&sdio0_cmd>, <&sdio0_clk>;
> -       vmmc-supply = <&vcc_18>;
> +       pinctrl-0 = <&sdio0_bus4>, <&sdio0_cmd>, <&sdio0_clk>, <&sdio0_int>;
> +
> +       sd-uhs-sdr12;
> +       sd-uhs-sdr25;
> +       cap-sdio-irq;
> +
> +       vmmc-supply = <&vcc_wifi>;
>         status = "okay";
> +
> +       brcmf: bcrmf@1 {
> +               compatible = "brcm,bcm4329-fmac";
> +               interrupt-parent = <&gpio4>;
> +               reg = <0>;
> +               interrupts = <30 IRQ_TYPE_EDGE_FALLING>;
> +               interrupt-names = "host-wake";
> +               status = "okay";
> +       };
>  };
>
>  &sdmmc {
> --
> 1.9.1
>
> --
> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> | COO  -  Founder                                      Cruquiuskade 47 |
> | +31(0)851119172                                 Amsterdam 1018 AM NL |
> |                  [`as] http://www.amarulasolutions.com               |



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |
