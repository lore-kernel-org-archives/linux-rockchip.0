Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD7BC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 10:48:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BDCD22D01
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 10:48:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5BDCD22D01
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4oPvDKoHsz7vvIuJfjJKiUUkuUV8oZqsnzJv8VRFNDU=; b=bdWifzIdktRSkwxrSpPeZ9rGd
	+5sSyj6QqaXwWWrB5RkR1Pkgm7mZ61vaUQVBKEiN9dCUs4zT3THSIMxKTUYD6mqRbZN3OjIImOnwi
	Hkt1MUmfnCvINNxrPl8pyLIoZYPpL9GAXmsjZwcoVaWzymatqUQ/5/91NgRKVINLHpzP7VIg5D879
	CxlxA0eaQqxD1KBrSRO9LwM0EXdZa2JQ9Tl2FpbliZwZoPNrFJF8jKZn6PqiAHorJJz+06aPjD5hk
	ZAdAPgwzkijMIIe//BsNmBx0DTwnh9mfbkh+1j3rsZzCG9ZAZiv0YgLJfjrkjBgMH/PWoZCv0JM7/
	lDP7RgDrw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxpK5-0005dJ-Kw; Fri, 08 Jan 2021 10:48:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxpJw-0005Xm-Rn; Fri, 08 Jan 2021 10:48:42 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kxpJl-0002Jc-KQ; Fri, 08 Jan 2021 11:48:29 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 5/5] media: hantro: Add support for the Rockchip PX30
Date: Fri, 08 Jan 2021 11:48:26 +0100
Message-ID: <11669141.O9o76ZdvQC@diego>
In-Reply-To: <X/ggTOOTBhGoFDpW@aptenodytes>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
 <f7291b83fe39d71c3192ea58ebf71e3909bd38af.camel@collabora.com>
 <X/ggTOOTBhGoFDpW@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_054840_999224_D4B5B0BA 
X-CRM114-Status: GOOD (  39.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Freitag, 8. Januar 2021, 10:05:16 CET schrieb Paul Kocialkowski:
> Hi Ezequiel,
> 
> On Thu 07 Jan 21, 16:08, Ezequiel Garcia wrote:
> > Happy to see this patch. It was on my TODO list,
> > but I hadn't had time to bringup my rk3326 device.
> 
> Same here, I just had an occasion to use it again these days so I jumped
> on it!
> 
> > A few comments.
> > 
> > On Thu, 2021-01-07 at 14:41 +0100, Paul Kocialkowski wrote:
> > > The PX30 SoC includes both the VDPU2 and VEPU2 blocks which are similar
> > > to the RK3399 (Hantro G1/H1 with shuffled registers).
> > > 
> > > Besides taking an extra clock, it also shares an interrupt with the IOMMU
> > > so it's necessary to request the interrupt shared.
> > > 
> > 
> > Could you clarify on the commit description which iommu device interrupt
> > line is being shared?
> 
> Sure! It's IRQ 79 of the GIC that's shared with vopl_mmu.
> It's not very obvious in the dt commit.

Having looked through the docs again, I think that the vopl_mmu using
irq 79 is just a mistake:

(1) in general vop and vop-mmu use the same irq (78 in that case)
(2) Rockchip does seem to have fixed that in their 4.19 tree as well:
https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/px30.dtsi#L1598

So to me it looks like this doesn't need to be shared and instead
"simply" the px30 dtsi fixed ;-)


Heiko


> > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > ---
> > >  drivers/staging/media/hantro/hantro_drv.c    |  5 +++--
> > >  drivers/staging/media/hantro/hantro_hw.h     |  1 +
> > >  drivers/staging/media/hantro/rk3399_vpu_hw.c | 21 ++++++++++++++++++++
> > >  3 files changed, 25 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> > > index e5f200e64993..076a7782b476 100644
> > > --- a/drivers/staging/media/hantro/hantro_drv.c
> > > +++ b/drivers/staging/media/hantro/hantro_drv.c
> > > @@ -472,6 +472,7 @@ static const struct v4l2_file_operations hantro_fops = {
> > >  
> > >  static const struct of_device_id of_hantro_match[] = {
> > >  #ifdef CONFIG_VIDEO_HANTRO_ROCKCHIP
> > > +       { .compatible = "rockchip,px30-vpu", .data = &px30_vpu_variant, },
> > >         { .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
> > >         { .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
> > >         { .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
> > > @@ -796,8 +797,8 @@ static int hantro_probe(struct platform_device *pdev)
> > >                         return -ENXIO;
> > >  
> > >                 ret = devm_request_irq(vpu->dev, irq,
> > > -                                      vpu->variant->irqs[i].handler, 0,
> > > -                                      dev_name(vpu->dev), vpu);
> > > +                                      vpu->variant->irqs[i].handler,
> > > +                                      IRQF_SHARED, dev_name(vpu->dev), vpu);
> > 
> > Maybe this irq flag should be part of vpu->variant? It sounds like an IP block
> > integration specific thing.
> 
> Ah right, I agree that it would be justified. But it would also be simple to
> just fix the irq handlers and assume this can generally be the case, because it
> feels like a bit of a detail to justify a flag.
> 
> Do you think this could be a safe/workable assumption?
> 
> > Also, you will need a px30-specific interrupt handler now,
> > since the rk3399 one is not shared-friendly.
> 
> Yeah I realize I haven't been very careful there and didn't really check that
> the IOMMU driver is really safe to handle shared interrupts either. I'll take
> a look a that when crafting v2.
> 
> > >                 if (ret) {
> > >                         dev_err(vpu->dev, "Could not request %s IRQ.\n",
> > >                                 irq_name);
> > > diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> > > index 34c9e4649a25..07f516fd7a2e 100644
> > > --- a/drivers/staging/media/hantro/hantro_hw.h
> > > +++ b/drivers/staging/media/hantro/hantro_hw.h
> > > @@ -148,6 +148,7 @@ enum hantro_enc_fmt {
> > >         RK3288_VPU_ENC_FMT_UYVY422 = 3,
> > >  };
> > >  
> > > +extern const struct hantro_variant px30_vpu_variant;
> > >  extern const struct hantro_variant rk3399_vpu_variant;
> > >  extern const struct hantro_variant rk3328_vpu_variant;
> > >  extern const struct hantro_variant rk3288_vpu_variant;
> > > diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw.c b/drivers/staging/media/hantro/rk3399_vpu_hw.c
> > > index 7a7962cf771e..4112f98baa60 100644
> > > --- a/drivers/staging/media/hantro/rk3399_vpu_hw.c
> > > +++ b/drivers/staging/media/hantro/rk3399_vpu_hw.c
> > 
> > Perhaps it's time to rename this to rockchip_vpu_hw.c,
> > and merge rk3288 and rk3399? It's a nitpick, though.
> 
> Haha, I was thinking the exact same thing but wasn't sure it would be welcome!
> 
> I was thinking of rockchip_vpu2_hw.c or rockchip_vdpu2_hw.c since that's
> apparently how it's called in Rockchip terminology: VDPU2 and VEPU2 for the
> Hantro G1 and H1 with the shuffled register layout. The rk3288 stuff is
> probably VDPU1/VEPU1 and we might want to rename it accordingly as well.
> 
> Cheers and thanks for the review!
> 
> Paul
> 
> > > @@ -220,3 +220,24 @@ const struct hantro_variant rk3328_vpu_variant = {
> > >         .clk_names = rk3399_clk_names,
> > >         .num_clocks = ARRAY_SIZE(rk3399_clk_names),
> > >  };
> > > +
> > > +static const char * const px30_clk_names[] = {
> > > +       "aclk", "hclk", "sclk"
> > > +};
> > > +
> > > +const struct hantro_variant px30_vpu_variant = {
> > > +       .enc_offset = 0x0,
> > > +       .enc_fmts = rk3399_vpu_enc_fmts,
> > > +       .num_enc_fmts = ARRAY_SIZE(rk3399_vpu_enc_fmts),
> > > +       .dec_offset = 0x400,
> > > +       .dec_fmts = rk3399_vpu_dec_fmts,
> > > +       .num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
> > > +       .codec = HANTRO_JPEG_ENCODER | HANTRO_MPEG2_DECODER |
> > > +                HANTRO_VP8_DECODER,
> > > +       .codec_ops = rk3399_vpu_codec_ops,
> > > +       .irqs = rk3399_irqs,
> > > +       .num_irqs = ARRAY_SIZE(rk3399_irqs),
> > > +       .init = rk3399_vpu_hw_init,
> > > +       .clk_names = px30_clk_names,
> > > +       .num_clocks = ARRAY_SIZE(px30_clk_names)
> > > +};
> > 
> > Thanks,
> > Ezequiel
> > 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
