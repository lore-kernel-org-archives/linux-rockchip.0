Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9E03C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 15:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+md1+z1TQnFIZNNsJsO3/hEOVDc8lKpcU7laZynYpGc=; b=zJZj7eX5H8gW6v
	zsx5lDYTaHO/MqjK6yysDqXwIA+nVSBpVaHloabgkfezoD0S82m814P5BsHKfsF4jOs9wb6Ev+h1/
	X6otfu34BWKEXgj4KGYaxYaeJB0ghc88/nrx9wyMHEAqIHNTsm1LoTxgEKYGZ+5RTIu7ezmtDaGLx
	JIILTs7QBnJe4iBfEBOuYR6e5SZkNwb5rI2v7WfaO802vBYFb8CB8F5obtmUqAnRDGtcXjRCfBwLH
	8IR5N68j2T9PUDfBZFtRbM5uKK1EbAZ3BEcw8dOpgpeI3oEwpd/eCBvtwC0sThjDA7bBOb4vF7n4m
	kzZmXRfWaPQGZOHFLuhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj0vq-00AAII-Al; Mon, 25 Apr 2022 15:47:22 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj0vn-00AAGy-9K; Mon, 25 Apr 2022 15:47:20 +0000
Received: by mail-ej1-x635.google.com with SMTP id w16so9179825ejb.13;
 Mon, 25 Apr 2022 08:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5KITNKAeusqSJT+zGPV95UI61fvHf3AksSLlo//4H/Q=;
 b=d7uAgAim/QSjpWLL4BURUV2Si8I60jzsnYs2S3tONGckunmoXtdjA902DjChkWq72c
 rLwZOZmIce/HQITo2GaeS/xFbW4v2Tq6mkph1dTXANmave6YJy6TmWlJmHSxyN8MZ7qu
 XjhOwxiHG+LSZN3ygBiCtnD5Hv+YqIwvQenwihMzSBaumjllUhtO9S30C9hxEZMDQeiV
 Dq+7WIH01DSmv5R7svnr15yQW2D4Z9Ks5W6lh6rkbKFg+lXGaXUR3yWEdlaXlXAi8++I
 pwsg3w8TRb3MXeiBovxikYA02bC1yMObEFYkyRTJdqXO93mODKzGuHYYWTybG9zqxCIn
 TbDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5KITNKAeusqSJT+zGPV95UI61fvHf3AksSLlo//4H/Q=;
 b=tWNnm8Z6QRJTnofs+B9Xwua/VxGW9UYEhdq+TfPPrLtvdGCoW2Lq9Jvan+TfbL9AQ3
 ugjshvBpwxY0BbuHC2z/chFQcA5LydTq64Lto1pY2k7CJ0+hxuHKUTE604sgnzo/R4SH
 diaaGWRemb6BR557Zpk6wJeOsqDtpPdbFJf9PRz1q+vKE7t1/IONmWV6xK5boQ4R/B0M
 aiYAFp6smsVsG0Bdzsg6rIFxCC5fLkkE2HmZ/RHMjwEPf8unJKlOn3FNByOgOAQpgp8U
 jr8VB3xJ+bpzZu5QsTlcKXC4FqF/JAbq9CMDkRC4ZqC+S9wg8Zc9nHFGuWvzZObQ9p9s
 2Fxg==
X-Gm-Message-State: AOAM531ZdxoXizz9MzylLoXHaBDhNMAA4a5CBeqsfo/fCWkYmPuaeOxa
 T7fZYwlm4NyWAlVQ+sGT+yJZUJlJ8YOzxudqf/I=
X-Google-Smtp-Source: ABdhPJxnpP2VO5mNc14SXisGfERyPGY2gcFajNEbPhdVi7a7lKySSEX3vu6h8QfBzgmg3c6qhkbSumGBtJ0kug5rh48=
X-Received: by 2002:a17:907:7704:b0:6cf:48ac:b4a8 with SMTP id
 kw4-20020a170907770400b006cf48acb4a8mr16675736ejc.305.1650901636036; Mon, 25
 Apr 2022 08:47:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-8-aford173@gmail.com>
 <d6c5c5663f8ae904d409240063295cf516e17dd1.camel@puri.sm>
 <4b958892ba788a0e9e73a9135c305aacbe33294d.camel@pengutronix.de>
In-Reply-To: <4b958892ba788a0e9e73a9135c305aacbe33294d.camel@pengutronix.de>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 25 Apr 2022 10:47:04 -0500
Message-ID: <CAHCN7xKEWT=-ujUD0KC9O=VUyCDSGzwbB1_dC51_k=Hx3i6+bg@mail.gmail.com>
Subject: Re: [PATCH V4 07/11] arm64: dts: imx8mq: Enable both G1 and G2 VPU's
 with vpu-blk-ctrl
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Martin Kepplinger <martin.kepplinger@puri.sm>,
 linux-media <linux-media@vger.kernel.org>, 
 Adam Ford-BE <aford@beaconembedded.com>, Chris Healy <cphealy@gmail.com>, 
 kernel test robot <lkp@intel.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_084719_390382_78A4E71B 
X-CRM114-Status: GOOD (  30.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Apr 25, 2022 at 10:34 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Martin,
>
> Am Montag, dem 25.04.2022 um 17:22 +0200 schrieb Martin Kepplinger:
> > Am Dienstag, dem 25.01.2022 um 11:11 -0600 schrieb Adam Ford:
> > > With the Hantro G1 and G2 now setup to run independently, update
> > > the device tree to allow both to operate.  This requires the
> > > vpu-blk-ctrl node to be configured.  Since vpu-blk-ctrl needs
> > > certain clock enabled to handle the gating of the G1 and G2
> > > fuses, the clock-parents and clock-rates for the various VPU's
> > > to be moved into the pgc_vpu because they cannot get re-parented
> > > once enabled, and the pgc_vpu is the highest in the chain.
> > >
> > > Signed-off-by: Adam Ford <aford173@gmail.com>
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > > b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > > index 2df2510d0118..549b2440f55d 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > > @@ -737,7 +737,21 @@ pgc_gpu: power-domain@5 {
> > >                                         pgc_vpu: power-domain@6 {
> > >                                                 #power-domain-cells =
> > > <0>;
> > >                                                 reg =
> > > <IMX8M_POWER_DOMAIN_VPU>;
> > > -                                               clocks = <&clk
> > > IMX8MQ_CLK_VPU_DEC_ROOT>;
> > > +                                               clocks = <&clk
> > > IMX8MQ_CLK_VPU_DEC_ROOT>,
> > > +                                                        <&clk
> > > IMX8MQ_CLK_VPU_G1_ROOT>,
> > > +                                                        <&clk
> > > IMX8MQ_CLK_VPU_G2_ROOT>;
> > > +                                               assigned-clocks =
> > > <&clk IMX8MQ_CLK_VPU_G1>,
> > > +
> > > <&clk IMX8MQ_CLK_VPU_G2>,
> > > +
> > > <&clk IMX8MQ_CLK_VPU_BUS>,
> > > +
> > > <&clk IMX8MQ_VPU_PLL_BYPASS>;
> > > +                                               assigned-clock-
> > > parents = <&clk IMX8MQ_VPU_PLL_OUT>,
> > > +
> > >     <&clk IMX8MQ_VPU_PLL_OUT>,
> > > +
> > >     <&clk IMX8MQ_SYS1_PLL_800M>,
> > > +
> > >     <&clk IMX8MQ_VPU_PLL>;
> > > +                                               assigned-clock-rates
> > > = <600000000>,
> > > +
> > >   <600000000>,
> > > +
> > >   <800000000>,
> > > +
> > >   <0>;
> > >                                         };
> > >
> > >                                         pgc_disp: power-domain@7 {
> > > @@ -1457,30 +1471,31 @@ usb3_phy1: usb-phy@382f0040 {
> > >                         status = "disabled";
> > >                 };
> > >
> > > -               vpu: video-codec@38300000 {
> > > -                       compatible = "nxp,imx8mq-vpu";
> > > -                       reg = <0x38300000 0x10000>,
> > > -                             <0x38310000 0x10000>,
> > > -                             <0x38320000 0x10000>;
> > > -                       reg-names = "g1", "g2", "ctrl";
> > > -                       interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
> > > -                                    <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> > > -                       interrupt-names = "g1", "g2";
> > > +               vpu_g1: video-codec@38300000 {
> > > +                       compatible = "nxp,imx8mq-vpu-g1";
> > > +                       reg = <0x38300000 0x10000>;
> > > +                       interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> > > +                       clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
> > > +                       power-domains = <&vpu_blk_ctrl
> > > IMX8MQ_VPUBLK_PD_G1>;
> > > +               };
> > > +
> > > +               vpu_g2: video-codec@38310000 {
> > > +                       compatible = "nxp,imx8mq-vpu-g2";
> > > +                       reg = <0x38310000 0x10000>;
> > > +                       interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> > > +                       clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> > > +                       power-domains = <&vpu_blk_ctrl
> > > IMX8MQ_VPUBLK_PD_G2>;
> > > +               };
> > > +
> > > +               vpu_blk_ctrl: blk-ctrl@38320000 {
> > > +                       compatible = "fsl,imx8mq-vpu-blk-ctrl";
> > > +                       reg = <0x38320000 0x100>;
> > > +                       power-domains = <&pgc_vpu>, <&pgc_vpu>,
> > > <&pgc_vpu>;
> > > +                       power-domain-names = "bus", "g1", "g2";
> > >                         clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> > > -                                <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> > > -                                <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> > > -                       clock-names = "g1", "g2", "bus";
> > > -                       assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,
> > > -                                         <&clk IMX8MQ_CLK_VPU_G2>,
> > > -                                         <&clk IMX8MQ_CLK_VPU_BUS>,
> > > -                                         <&clk
> > > IMX8MQ_VPU_PLL_BYPASS>;
> > > -                       assigned-clock-parents = <&clk
> > > IMX8MQ_VPU_PLL_OUT>,
> > > -                                                <&clk
> > > IMX8MQ_VPU_PLL_OUT>,
> > > -                                                <&clk
> > > IMX8MQ_SYS1_PLL_800M>,
> > > -                                                <&clk
> > > IMX8MQ_VPU_PLL>;
> > > -                       assigned-clock-rates = <600000000>,
> > > <600000000>,
> > > -                                              <800000000>, <0>;
> > > -                       power-domains = <&pgc_vpu>;
> > > +                                <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> > > +                       clock-names = "g1", "g2";
> > > +                       #power-domain-cells = <1>;
> > >                 };
> > >
> > >                 pcie0: pcie@33800000 {
> >
> > With this update, when testing suspend to ram on imx8mq, I get:
> >
> > buck4: failed to disable: -ETIMEDOUT
> >
> > where buck4 is power-supply of pgc_vpu. And thus the transition to
> > suspend (and resuming) fails.
> >
> > Have you tested system suspend after the imx8m-blk-ctrl update on
> > imx8mq?
>
> I haven't tested system suspend, don't know if anyone else did. However
> I guess that this is just uncovering a preexisting issue in the system
> suspend sequencing, which you would also hit if the video decoders were
> active at system suspend time.

I have not tested it either.

>
> My guess is that the regulator disable fails, due to the power domains
> being disabled quite late in the suspend sequence, where i2c
> communication with the PMIC is no longer possible due to i2c being
> suspended already or something like that. Maybe you can dig in a bit on
> the actual sequence on your system and we can see how we can rework
> things to suspend the power domains at a time where communication with
> the PMIC is still possible?

In the meantime, should we mark the regulator with regulator-always-on
so it doesn't attempt to power it down?  It might not be ideal,but it
might be enough to let it suspend.

adam
>
> Regards,
> Lucas
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
