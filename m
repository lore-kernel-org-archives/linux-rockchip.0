Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D51C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 19:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKdX4E5Nrjunl5T9QfVH7RD9UjUH40V5TxNIrzjPCnI=; b=zALW8iSiGCeSW8
	u94y1f1PzgqIaGqFqKVU8BfWzlNlgOVfqtQmEdDu3IMSs4NvHrzpOCGWTJGiEPrHeKt/4VcCNxAGn
	wMWjdxIoUyO8FD+VfVou+ooyAGzkqC8sCpj/vYHA9evd1IddW8LKsFOotOE+sQYqe1eTKoNGglHw2
	MhKPjqYrByq1D1ZmVX9bXnuCrCfFbo7tdc83pf56OTX0FFnuSMZvcEJhOj1Oj0iZSmD4L6syMqiHG
	khKD6mcblR6YJaq44+LjtrqkZpL9xW2pF3j9hmsyR/lNyqzggfwqxUMApW26+D/IHn3J4bkE2ndHx
	kLruVf6/TTuTkMzKtNCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCRBX-009ImB-TU; Tue, 25 Jan 2022 19:08:55 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCRBU-009IkW-Hy; Tue, 25 Jan 2022 19:08:54 +0000
Received: by mail-ed1-x536.google.com with SMTP id j23so59976072edp.5;
 Tue, 25 Jan 2022 11:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2KHYuO9BIb/dJb7fY+KxNNxhyGeTxeET42tjQ6h3Wb8=;
 b=PErttFt/Al+rGnJ4DLDMNiS9Bze6yfOzYGODufHp62yyztZZkWj4PIVOYGWYHnan1T
 RGENBNcXptSl3gN9P7z6h9NVeXjj0etWWXfDw6+ZnBYM3XJy8dTJI58ZQz+Z2T7aGH4V
 +Wf8KIPfakDj7RWHkRnl4XhDvdwt+RnNHfUaRdLQfiPCVV5ihAl8WXwPXbDiAodMExl/
 t1QcUZPwW8hQ6IQAlHRWc4RxnxCuWZADQUpS02Qvt1D2DxNS59zlRB+d2j/kHqPlMEGC
 zq3Wp6WUBBzYefo03eGVqgIEQKWYHhiCw3u3fb86naoZyXBbU0s5GlIDafVZR3oPyHpS
 d/nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2KHYuO9BIb/dJb7fY+KxNNxhyGeTxeET42tjQ6h3Wb8=;
 b=WXta8WM9WBtogYeGtMK4m6e0QawbgaCZjltXNElKFqCM2ZhMT6/deWTeqCVS5M9Pl+
 5wgd0FBsog4d8PIdt/UOnjyIOfHf1PN1iW7e0Zsok9R8A5JhTDoJ+pFaQUPw/rzUultY
 ojczBwx/bE1ncIh30hXAIGKNhqy+BMdcHbDIJRRosmnVBuim/AYl6BRM5q9+02vjk8Bl
 EhCrzi5ZccqSdUsthwU5rc7KwYcsyOXsF/GDzkNExoOPdeiMuOAfIeKLWdoFkN0zoSvt
 TC2cawOyoYbOzgKKCx05aHmsRKaoLU3oofZfm38fNWjFB7jCaW/J8hfkEBwepmDq2Op7
 yrQw==
X-Gm-Message-State: AOAM530UijI4SRkShAjRWuC5WTabuYRsENAymcp6f1e814+eV34OEoGO
 dG0dhaPVfuz5jM6ohb+lsOQRbH/z2yORMMJg5gUmI22d
X-Google-Smtp-Source: ABdhPJzYHpFJlqDny6UdInSzsBm83WymJLGUWmYMSCU/OrIsUErfJZw2nBNbbNX7o16vjFmSwnoDr7q+9M1Wx8ARXyQ=
X-Received: by 2002:a05:6402:1119:: with SMTP id
 u25mr21599441edv.367.1643137719736; 
 Tue, 25 Jan 2022 11:08:39 -0800 (PST)
MIME-Version: 1.0
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-8-aford173@gmail.com>
 <YfBJxmgwLGbVqGba@eze-laptop>
In-Reply-To: <YfBJxmgwLGbVqGba@eze-laptop>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 25 Jan 2022 13:08:28 -0600
Message-ID: <CAHCN7xL-c4rXFW3cO4c0QmnqtaRpU_HfPb46UQFzPzb2RojChw@mail.gmail.com>
Subject: Re: [PATCH V4 07/11] arm64: dts: imx8mq: Enable both G1 and G2 VPU's
 with vpu-blk-ctrl
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media <linux-media@vger.kernel.org>,
 Adam Ford-BE <aford@beaconembedded.com>, 
 Chris Healy <cphealy@gmail.com>, kernel test robot <lkp@intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_110852_623660_DD01B007 
X-CRM114-Status: GOOD (  24.22  )
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

On Tue, Jan 25, 2022 at 1:04 PM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> On Tue, Jan 25, 2022 at 11:11:24AM -0600, Adam Ford wrote:
> > With the Hantro G1 and G2 now setup to run independently, update
> > the device tree to allow both to operate.  This requires the
> > vpu-blk-ctrl node to be configured.  Since vpu-blk-ctrl needs
> > certain clock enabled to handle the gating of the G1 and G2
> > fuses, the clock-parents and clock-rates for the various VPU's
> > to be moved into the pgc_vpu because they cannot get re-parented
> > once enabled, and the pgc_vpu is the highest in the chain.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> > Reported-by: kernel test robot <lkp@intel.com>
>
> It doesn't seem correct to have the Reported-by on this commit.

I didn't put it here, because I fixed it in a whole different patch
(Patch 1/11).  This patch remains unchanged.  I probably should have
put in the other patch, but I didn't think it was essential.  Sorry
about that. Do I need to resend to just add the r-b tag?

adam

>
> Thanks,
> Ezequiel
>
> > Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > index 2df2510d0118..549b2440f55d 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -737,7 +737,21 @@ pgc_gpu: power-domain@5 {
> >                                       pgc_vpu: power-domain@6 {
> >                                               #power-domain-cells = <0>;
> >                                               reg = <IMX8M_POWER_DOMAIN_VPU>;
> > -                                             clocks = <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> > +                                             clocks = <&clk IMX8MQ_CLK_VPU_DEC_ROOT>,
> > +                                                      <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> > +                                                      <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> > +                                             assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,
> > +                                                               <&clk IMX8MQ_CLK_VPU_G2>,
> > +                                                               <&clk IMX8MQ_CLK_VPU_BUS>,
> > +                                                               <&clk IMX8MQ_VPU_PLL_BYPASS>;
> > +                                             assigned-clock-parents = <&clk IMX8MQ_VPU_PLL_OUT>,
> > +                                                                      <&clk IMX8MQ_VPU_PLL_OUT>,
> > +                                                                      <&clk IMX8MQ_SYS1_PLL_800M>,
> > +                                                                      <&clk IMX8MQ_VPU_PLL>;
> > +                                             assigned-clock-rates = <600000000>,
> > +                                                                    <600000000>,
> > +                                                                    <800000000>,
> > +                                                                    <0>;
> >                                       };
> >
> >                                       pgc_disp: power-domain@7 {
> > @@ -1457,30 +1471,31 @@ usb3_phy1: usb-phy@382f0040 {
> >                       status = "disabled";
> >               };
> >
> > -             vpu: video-codec@38300000 {
> > -                     compatible = "nxp,imx8mq-vpu";
> > -                     reg = <0x38300000 0x10000>,
> > -                           <0x38310000 0x10000>,
> > -                           <0x38320000 0x10000>;
> > -                     reg-names = "g1", "g2", "ctrl";
> > -                     interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
> > -                                  <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> > -                     interrupt-names = "g1", "g2";
> > +             vpu_g1: video-codec@38300000 {
> > +                     compatible = "nxp,imx8mq-vpu-g1";
> > +                     reg = <0x38300000 0x10000>;
> > +                     interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>;
> > +                     power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G1>;
> > +             };
> > +
> > +             vpu_g2: video-codec@38310000 {
> > +                     compatible = "nxp,imx8mq-vpu-g2";
> > +                     reg = <0x38310000 0x10000>;
> > +                     interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks = <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> > +                     power-domains = <&vpu_blk_ctrl IMX8MQ_VPUBLK_PD_G2>;
> > +             };
> > +
> > +             vpu_blk_ctrl: blk-ctrl@38320000 {
> > +                     compatible = "fsl,imx8mq-vpu-blk-ctrl";
> > +                     reg = <0x38320000 0x100>;
> > +                     power-domains = <&pgc_vpu>, <&pgc_vpu>, <&pgc_vpu>;
> > +                     power-domain-names = "bus", "g1", "g2";
> >                       clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> > -                              <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> > -                              <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> > -                     clock-names = "g1", "g2", "bus";
> > -                     assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,
> > -                                       <&clk IMX8MQ_CLK_VPU_G2>,
> > -                                       <&clk IMX8MQ_CLK_VPU_BUS>,
> > -                                       <&clk IMX8MQ_VPU_PLL_BYPASS>;
> > -                     assigned-clock-parents = <&clk IMX8MQ_VPU_PLL_OUT>,
> > -                                              <&clk IMX8MQ_VPU_PLL_OUT>,
> > -                                              <&clk IMX8MQ_SYS1_PLL_800M>,
> > -                                              <&clk IMX8MQ_VPU_PLL>;
> > -                     assigned-clock-rates = <600000000>, <600000000>,
> > -                                            <800000000>, <0>;
> > -                     power-domains = <&pgc_vpu>;
> > +                              <&clk IMX8MQ_CLK_VPU_G2_ROOT>;
> > +                     clock-names = "g1", "g2";
> > +                     #power-domain-cells = <1>;
> >               };
> >
> >               pcie0: pcie@33800000 {
> > --
> > 2.32.0
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
