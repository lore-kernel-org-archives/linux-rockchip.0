From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add bus-width properties to mmc nodes for rk3328.dtsi
Date: Tue, 21 Apr 2020 10:23:43 +0200
Message-ID: <2710874.PL6qFFFsBp@diego>
References: <20200416181944.5879-1-jbx6244@gmail.com> <CAGb2v67N6t+C8dVKdjuOv1NzD9=3-n0GZQkshy1Pm6PFPJ87dQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAGb2v67N6t+C8dVKdjuOv1NzD9=3-n0GZQkshy1Pm6PFPJ87dQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Chen-Yu Tsai <wens-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi ChenYu,

Am Dienstag, 21. April 2020, 05:48:52 CEST schrieb Chen-Yu Tsai:
> On Fri, Apr 17, 2020 at 2:19 AM Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> >
> > 'bus-width' and pinctrl containing the bus-pins
> > should be in the same file, so add them to
> > all mmc nodes in 'rk3328.dtsi'.
> 
> Nope. First of all, pinctrl usage is with pinctrl-N properties, not the
> pinctrl device, and there are no defaults set for any of the mmc nodes.
> Second, these are board design specific. For example, boards are free to
> use just 4 bits for the eMMC if they so desire. So this should be in each
> board dts file. If a board is missing this property, fix the board.

you are correct that the pinctrl entries are missing from the patches,
bus-width and pinctrl should be defined in the same file each time,
but for the whole idea I tend to disagree. 

So far every board with a Rockchip socs follows Rockchip's reference design
for a lot of parts - for example I only see sdmmc nodes with bus-width=4
etc.

So the basic idea is to have default pinctrl settings for the settings
everybody uses predefined ... if a board comes along that needs different
settings it is free to redefine that.


Heiko


> 
> This applies to all three patches in the series.
> 
> ChenYu
> 
> > Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > index 175060695..db2c3085e 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > @@ -861,6 +861,7 @@
> >                 clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
> >                          <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
> >                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> > +               bus-width = <4>;
> >                 fifo-depth = <0x100>;
> >                 max-frequency = <150000000>;
> >                 status = "disabled";
> > @@ -873,6 +874,7 @@
> >                 clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
> >                          <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
> >                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> > +               bus-width = <4>;
> >                 fifo-depth = <0x100>;
> >                 max-frequency = <150000000>;
> >                 status = "disabled";
> > @@ -885,6 +887,7 @@
> >                 clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
> >                          <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
> >                 clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> > +               bus-width = <8>;
> >                 fifo-depth = <0x100>;
> >                 max-frequency = <150000000>;
> >                 status = "disabled";
> > --
> > 2.11.0
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
