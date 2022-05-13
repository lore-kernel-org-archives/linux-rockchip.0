Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AF01C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 May 2022 06:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/jcJC9hn5JIes31aYf05f+F+NVF7vtNLVgxYoOYQWo=; b=m694Vvm+JiRX6Q
	19NIKz5sMSQBhYKO8WAM9DcsxJ6co8MPtCSxjs2CsDnWTbBebXZgGTkpu8rxwdrMCwK9yYF9EL9Bv
	sgoboWEcB4XVLAfhVJ36hNVKnYHHs3g/NSl2moKjUro1c8Bo8duE6N+6q3d88R8HWrwa0/Qs4og0g
	CyIVyyV3Qg8kCnIg/tWz+Xy9ss/nlv3IsqXWFbwmRjBatz8A791PoYwyzxogD0JzjdS3KTN4UQeaY
	ic+5oYobyCdMQ9w3z3hcuy1XozDagj6/4lIqHKMw8/pLMMie0QOLhQuadgat3qyQK45Aj/YhaU4+8
	2x6TZVdulYg5GRICeagg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npOhx-00Eeqo-Fa; Fri, 13 May 2022 06:23:25 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npOhk-00EeiD-6T; Fri, 13 May 2022 06:23:14 +0000
Received: by mail-ej1-x62e.google.com with SMTP id i19so14223264eja.11;
 Thu, 12 May 2022 23:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5USaAoV0cZbNnKwejzAgPgIJlpmm8nChkEFAuXFRt94=;
 b=EPB+GJGrHc5qFUcBtUNdHAswbuZTROzwPPAjjFcw8SS4QwSv68+2MwDBEoHKFMYO+0
 jD2zYEyDurr5vw2W+8d4e70KVpUNVgNgL12YA3/zdDK1SuZPs77g1mtJLwhRUX0P+FDH
 6kOj0JNfDkN2w6r939aNd898Ode16Nw1Z/hxue86ZvC9SdoKtSj7QnFBpsia78c5L4GZ
 4XHZSaldZY0mVSVXIL1gmT+MVceqHxdDhuTJ7cuhwwDDn8z9Sjb+9yndEf8wiQaiJTbM
 odaeL0jIlr9asiiRnqa6iWqhnk30BgP78/sJnkK2mj6IGhiBQRj0VX8y4HOa0/hkG5et
 npdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5USaAoV0cZbNnKwejzAgPgIJlpmm8nChkEFAuXFRt94=;
 b=BOerKX2JbuQu6n0+QuQhm1TF5N2eWrNDFX7eyG5+242uegY1MmDbNl4Aa4d9BBQvWz
 dqA63ru3zDQx0FIFgyTUsYNtz7Q96EOtNOVEf1+e/cTDf6WmRePnOvzl3idE2Zg3+BxX
 VDzy5bLGqDdqKRzn6NQibvbePOFh/4BNYx4Lhvdyi7Ucdi+k/Q7/pq2XpZ19RrWlIjgI
 ZyZ9DGicDggcauwanHXBoC4wuGjGmfTtXZYe3AQDM7s1mQS3x1jyJGMX6hak5liSR0Hk
 Sx/DnGe0EF3Pm8ZxHTNZg6vcp++B+8gL5YzGMnwdzyQNv6FxGWlERuJ+sMzp9tDQoZZa
 MzGw==
X-Gm-Message-State: AOAM532/Uj18PoCu0xQkH1U/6kx5puqIKLUU4nvd8pxu4Vz8kggvDvAF
 WdI/JMwcn+6B7jYD3dPCIh60lGtHIjiPgQ==
X-Google-Smtp-Source: ABdhPJwblEk23B0bapf7vgip5rO1YI7x5CeUch80IyU2MI2v1lyYlJrRgCGZhB9EX+mV8n+VBpkVHw==
X-Received: by 2002:a17:907:2146:b0:6f5:28b5:5f38 with SMTP id
 rk6-20020a170907214600b006f528b55f38mr2883994ejb.118.1652422986834; 
 Thu, 12 May 2022 23:23:06 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 d16-20020a056402145000b0041d893ed437sm547351edx.2.2022.05.12.23.23.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 May 2022 23:23:06 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Hantro encoder node to
 rk356x
Date: Fri, 13 May 2022 08:23:05 +0200
Message-ID: <2024120.v6J0oxdlOP@archbook>
In-Reply-To: <CAAEAJfBczhKTmRQfteacN4rYmJPRSuWZBs1LUuVnMKJ_z0EUwQ@mail.gmail.com>
References: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
 <14624530.8YKtBhKLIE@archbook>
 <CAAEAJfBczhKTmRQfteacN4rYmJPRSuWZBs1LUuVnMKJ_z0EUwQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_232312_294974_A66BC6DF 
X-CRM114-Status: GOOD (  70.27  )
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

On Donnerstag, 12. Mai 2022 23:33:03 CEST Ezequiel Garcia wrote:
> On Thu, May 12, 2022 at 5:00 PM Nicolas Frattaroli
> <frattaroli.nicolas@gmail.com> wrote:
> >
> > On Donnerstag, 12. Mai 2022 16:16:52 CEST Ezequiel Garcia wrote:
> > > On Tue, May 10, 2022 at 12:28 PM Nicolas Frattaroli
> > > <frattaroli.nicolas@gmail.com> wrote:
> > > >
> > > > Hi Ezequiel,
> > > >
> > > > On Montag, 9. Mai 2022 16:17:03 CEST Ezequiel Garcia wrote:
> > > > > Hi Nicolas,
> > > > >
> > > > > On Sun, May 8, 2022 at 5:26 PM Nicolas Frattaroli
> > > > > <frattaroli.nicolas@gmail.com> wrote:
> > > > > >
> > > > > > The RK3566 and RK3568 come with a dedicated Hantro instance solely for
> > > > > > encoding. This patch adds a node for this to the device tree, along with
> > > > > > a node for its MMU.
> > > > > >
> > > > > > Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > > > > > ---
> > > > > >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 21 +++++++++++++++++++++
> > > > > >  1 file changed, 21 insertions(+)
> > > > > >
> > > > > > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > > > > index 7cdef800cb3c..2e3c9e1887e3 100644
> > > > > > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > > > > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > > > > @@ -508,6 +508,27 @@ gpu: gpu@fde60000 {
> > > > > >                 status = "disabled";
> > > > > >         };
> > > > > >
> > > > > > +       vepu: video-codec@fdee0000 {
> > > > > > +               compatible = "rockchip,rk3568-vepu";
> > > > > > +               reg = <0x0 0xfdee0000 0x0 0x800>;
> > > > > > +               interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> > > > > > +               interrupt-names = "vepu";
> > > > >
> > > > > It this block "encoder only" and if so, maybe we should remove the
> > > > > "interrupt-names" [1]?
> > > > >
> > > > > The driver is able to handle it. See:
> > > > >
> > > > > https://elixir.bootlin.com/linux/latest/source/drivers/staging/media/hantro/hantro_drv.c#L962
> > > > >
> > > > > You might have to adjust the dt-bindings for this.
> > > > >
> > > > > [1] https://lore.kernel.org/linux-media/20210324151715.GA3070006@robh.at.kernel.org/
> > > >
> > > > What the Linux driver can handle should not matter to the device tree;
> > > > device trees are independent of drivers and kernels.
> > > >
> > >
> > > I guess my message wasn't clear, no need to lecture me on Device
> > > Trees, although I appreciate
> > > your friendly reminder of what a Device Tree is.
> > >
> > > Having said that, the binding is designed to support both decoders and encoders
> > > for instance:
> > >
> > >         vpu: video-codec@ff9a0000 {
> > >                 compatible = "rockchip,rk3288-vpu";
> > >                 reg = <0x0 0xff9a0000 0x0 0x800>;
> > >                 interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
> > >                              <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> > >                 interrupt-names = "vepu", "vdpu";
> > >                 clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
> > >                 clock-names = "aclk", "hclk";
> > >                 iommus = <&vpu_mmu>;
> > >                 power-domains = <&power RK3288_PD_VIDEO>;
> > >         };
> > >
> > > Hence the question is why do you splitted the encoder to its own node?
> >
> > It has its own IOMMU and is in a different power domain than the decoder.
> > I think I have mentioned this multiple times before, including in the
> > cover letter.
> >
> > Assuming you do not believe me, feel free to check the TRM, of which I
> > am sure you also have a copy: page 475 of Part 1 shows the VPU being in
> > PD_VPU while the JPEG encoder is in PD_RGA. Pages 478 and 479 of Part 2,
> > Section 10.5, shows that the JPEG encoder (VEPU121)'s base is not the
> > same as the Hantro decoder (VDPU121)'s base, and their IOMMUs which are
> > based relative to their base offset are therefore also not at the same
> > address. If you think the TRM must be wrong then, consider the fact that
> > I have actually run this patch set, presumably being the only person to
> > do so, and found that it works, so no, the addresses and power domains
> > are correct.
> >
> > I do not see any way in which it would make sense to put this into the
> > same node as the decoder. It would not even be possible to do this in
> > your bindings, as they specify a maxItems for power-domains and iommus
> > of 1. Even if I modified them the driver wouldn't know which PD and
> > IOMMU belongs to decoder and encoder.
> >
> > I think if we put this encoder in the same node as the decoder, we
> > might as well take this to its natural conclusion and put the entire
> > device tree into a single very large node. It's not the same hardware,
> > it cannot be modelled as being the same hardware, just because the
> > bindings lets people model some separate hardware as the same hardware
> > doesn't mean this applies to this hardware.
> >
> > Long story short, why did I split the encoder to its own node? The
> > answer is that I didn't. I simply refused to combine it into a node
> > that it has nothing to do with.
> >
> 
> As I've mentioned:
> 
> """
> the current binding models the idea of decoder and encoder
> being the same device. This has never been really really accurate,
> as the encoder and decoders have always been more or less independent.
> 
> The reason for having them on a single device are mostly historical,
> some old devices shared some resource. I don't think this is the case anymore,
> but the binding was still modeled to support that.
> """
> 
> The PX30 and RK3399 VPUs are probably pretty independent as well,
> and in retrospective, we should have done separated Device Tree nodes.
> For historical reasons, we didn't, and we introduced those weird "enc_offset"
> and "dec_offset" fields:
> 
> const struct hantro_variant px30_vpu_variant = {
>         .enc_offset = 0x0,
>         .enc_fmts = rockchip_vpu_enc_fmts,
>         .num_enc_fmts = ARRAY_SIZE(rockchip_vpu_enc_fmts),
>         .dec_offset = 0x400,
>         .dec_fmts = rk3399_vpu_dec_fmts,
> 

As I've mentioned: that doesn't work for this hardware. It's not just the
memory addresses. You literally quoted the part where I explain this, and
then decided to completely ignore it. I will not explain it again, you
have the explanation once more right in this e-mail. Read it.

Not to mention that you've also ignored that I disagree with rob's
assessment about interrupt-names.

I'm actually done arguing with you, this is going in circles. v4 will not
address any of your concerns, because it's either literally impossible or
because I disagree with your concern and you did not actually address my
disagreement.

> 
> > > If we have good reasons to have separated Device Tree nodes,
> > > then having interrupt-names = "vepu" for its only interrupt line
> > > doesn't make sense.
> >
> > How does it not make sense? The bindings allow for a vdpu only
> > interrupt-names, which in my understanding makes the same amount
> > of sense.
> >
> 
> That applies for the binding for the previous existing compatible strings.
> 
> You are adding a new compatible string, so just change the binding
> so it no longer requires "interrupt-names", for its single interrupt line.
> 
> Quoting devicetree maintainer [1]:
> 
> """
>  *-names are used to distinguish multiple entries
> and don't add anything if only a single entry.
> """
> 
> [1] https://lore.kernel.org/linux-media/20210324151715.GA3070006@robh.at.kernel.org/
> 
> Thanks!
> Ezequiel
> 
> > Regards,
> > Nicolas Frattaroli
> >
> > >
> > > > What does matter though is to be consistent in the bindings.
> > > > interrupt-names is a required property even if there's only a vdpu
> > > > interrupt. I modelled my vepu-only binding after this case.
> > > >
> > >
> > > The current binding models the idea of decoder and encoder
> > > being the same device. This has never been really really accurate,
> > > as the encoder and decoders have always been more or less independent.
> > >
> > > The reason for having them on a single device are mostly historical,
> > > some old devices shared some resource. I don't think this is the case anymore,
> > > but the binding was still modeled to support that.
> > >
> > > Hopefully this makes sense!
> > > Thanks,
> > > Ezequiel
> > >
> > >
> > > > If robh thinks there is no value to having the interrupt show up
> > > > as anything other than "default" in /proc/interrupts, then I respectfully
> > > > disagree with that opinion and point out that this should have been brought
> > > > up when the vdpu-only case in the bindings was made to require
> > > > interrupt-names also.
> > > >
> > > > Changing the binding now that there theoretically could be drivers out
> > > > in the wild (though I doubt it) that do require interrupt-names, because
> > > > the binding told them that this is okay to do, seems unwise to me.
> > > >
> > > > Regards,
> > > > Nicolas Frattaroli
> > > >
> > > > >
> > > > > Thanks,
> > > > > Ezequiel
> > > > >
> > > > > > +               clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
> > > > > > +               clock-names = "aclk", "hclk";
> > > > > > +               iommus = <&vepu_mmu>;
> > > > > > +               power-domains = <&power RK3568_PD_RGA>;
> > > > > > +       };
> > > > > > +
> > > > > > +       vepu_mmu: iommu@fdee0800 {
> > > > > > +               compatible = "rockchip,rk3568-iommu";
> > > > > > +               reg = <0x0 0xfdee0800 0x0 0x40>;
> > > > > > +               interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
> > > > > > +               clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
> > > > > > +               clock-names = "aclk", "iface";
> > > > > > +               power-domains = <&power RK3568_PD_RGA>;
> > > > > > +               #iommu-cells = <0>;
> > > > > > +       };
> > > > > > +
> > > > > >         sdmmc2: mmc@fe000000 {
> > > > > >                 compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
> > > > > >                 reg = <0x0 0xfe000000 0x0 0x4000>;
> > > > > > --
> > > > > > 2.36.0
> > > > > >
> > > > > >
> > > > > > _______________________________________________
> > > > > > Linux-rockchip mailing list
> > > > > > Linux-rockchip@lists.infradead.org
> > > > > > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> > > > >
> > > >
> > > >
> > > >
> > > >
> > >
> >
> >
> >
> >
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
