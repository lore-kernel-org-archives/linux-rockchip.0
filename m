Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85C11C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 13:07:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 241EB650BA
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 13:07:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 241EB650BA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HW+HhAT07Pzy5RxJ/AbSbxAYhZPnYDqdcfkSfi7qdL8=; b=nyErkV8sxisaXOyw9ObS1Enws
	QwryU/nViLWvP+9651q8WamEzW/6pODCeTQmUWSKSVyyonAua680QD0EXoS/Dz9Vhh7C5J8Ps34T2
	UbeHAA2SPcaFplfirDtL3n5U47hWuwptcMOnFKiss25maQlekxcHssaIWYsZ3kBdB7R+8vyWTwhi9
	INVqpZj3pOcLQr3hqzm97EZGqlS3DLeepTbU9ssvuMEyqCh2QDI9X1937i+PKdG1ympH/8B8C7lzr
	p0kw6NqfE+0ABa+zBiGnBnVqIfn/LwmIkGdct3hHkjqpyKQveLbwYJck+DQn6F7P5R8m6dnvZiukR
	329c0tGxg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJFc0-00HLDO-1c; Mon, 08 Mar 2021 13:07:52 +0000
Received: from mail-vs1-xe31.google.com ([2607:f8b0:4864:20::e31])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJFbv-00HL9o-IK
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 13:07:50 +0000
Received: by mail-vs1-xe31.google.com with SMTP id l27so4794016vsj.4
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Mar 2021 05:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=deq0yqA29vIrPB8WmXbuxApDbzkis5nTAdLSUP1pwOE=;
 b=KYoKxncZ18d+SXQpFuFZgYCdO/u18sJFykWVSj/yYQl4XRabLW/Sk2EoCE4MFEJ4A5
 MJx/H/fBfZbtlrrPfjrRlxw2Jt/XvxGSkq7nesT5OlF1ToAlUMBKwcqHpv57+KLc0zpp
 ltjZkFXIXDDy8BjtJPVsjxuKKFcwHYUl3ymSy3QQ3k7wZ/UTgzPPbf/PE9yp7HZOyBQD
 pQDRlJqJ2cz6jExuR8SzQxCrykETFwLv+vSx5PvRXyOe794tfU1CGxMsXDnnHX7XTb47
 TeFfX2BqqMR7xnk9aFoCDpMwNpBmPDyiv6I3+jsXvRxG5/UfszqXz6dp7b/utczpCgfC
 GzyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=deq0yqA29vIrPB8WmXbuxApDbzkis5nTAdLSUP1pwOE=;
 b=r6KL/y9/ipkelfDGfI1blqhyH+tNLEfxwjXerCoBMq7HTnuaBzFkVik4fwW8cKhp7E
 /Dv0OqSLex/wP0H57aLFymTtMSlflgbq3MO7x61ncAfY283iNe4yCZpVFlYcZyKZvsLx
 TwwrfETpBvtDmkBjpAEjv83COVL0fRMenkZPdU2elDK9OiytIwhYeKy1KIR8KVKZiKpU
 rVyfHBPEkTw0P8eNiALS45dn7NBhMWjItPxqroa2AiOKnfXtTZmKP4+m/TOmCoJEdMOg
 RDcaCt/LJNwKKqKokpXZrClk60ZjbfFM34pHKzt0bouRHhF5e71jJda04d0V6IvDhOgY
 BOgQ==
X-Gm-Message-State: AOAM5329ZpA/5EC3xWCaSOZJIko07BlSJAlwj5Ozc/KC81QiItVvkEpn
 RbVZO6mMU2s72aSj4m2PWBiQfnuhivphoPzSc0U=
X-Google-Smtp-Source: ABdhPJxkF5qkE2inEdZP+pPZPaTckLoHUSckdlWM0meoANY3bjnVcJIS42T0wDag4s4BJGpu0Oh/sxChTvSBsGmVwSw=
X-Received: by 2002:a67:f04f:: with SMTP id q15mr12595267vsm.22.1615208865673; 
 Mon, 08 Mar 2021 05:07:45 -0800 (PST)
MIME-Version: 1.0
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
 <20210305183924.1754026-8-emil.l.velikov@gmail.com>
 <915739c6fc01f17b00c4fac8b7fede1f25396286.camel@collabora.com>
In-Reply-To: <915739c6fc01f17b00c4fac8b7fede1f25396286.camel@collabora.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Mon, 8 Mar 2021 13:07:33 +0000
Message-ID: <CACvgo51peuKsuqx-NwZSWU4Ys1q5MuXb=BRx7GLo3tkWH+vb0w@mail.gmail.com>
Subject: Re: [PATCH 7/7] ARM: dts: at91: sama5d4: add vdec0 component
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>, kernel@collabora.com, 
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_130747_804177_74A1260B 
X-CRM114-Status: GOOD (  32.27  )
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

 Hi Ezequiel,

Thanks for the prompt reply

On Sat, 6 Mar 2021 at 11:25, Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> (adding another Nicolas)
>
> Hi Emil,
>
> Thanks a lot for the patch.
>
> On Fri, 2021-03-05 at 18:39 +0000, Emil Velikov wrote:
> > From: Emil Velikov <emil.velikov@collabora.com>
> >
> > The SoC features a Hantro G1 compatible video decoder.
> >
> > Cc: Ezequiel Garcia <ezequiel@collabora.com>
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Cc: linux-media@vger.kernel.org
> > Cc: linux-rockchip@lists.infradead.org
> > Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
> > ---
> >  arch/arm/boot/dts/sama5d4.dtsi                |   9 ++
>
> Usually device-tree changes go to their own patch.
>
> The new compatible string "atmel,sama5d4-vdec" needs
> an update to the DT bindings, see Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> for an example.
>
> DT bindings change should also go to a separate
> patch, see Documentation/devicetree/bindings/submitting-patches.rst.
>
Will do. Thanks

> >  arch/arm/configs/sama5_defconfig              |   3 +
>
> Better if config changes are a separate patch.
>
> But also, the driver is in staging and we haven't enabled
> in ARM64 defconfig. Let's leave that decision to the machine
> maintainer to decide.
>
Makes sense. Will keep it separate patch for completeness sake, with
explicit note.
ARM/Microchip (AT91) SoC maintainers will be in CC list and will defer
the decision to them.

> > +static const struct hantro_fmt sama5d4_vdec_postproc_fmts[] = {
> > +       {
> > +               .fourcc = V4L2_PIX_FMT_YUYV,
> > +               .codec_mode = HANTRO_MODE_NONE,
> > +       },
> > +};
> > +
>
> I haven't found information on how the series
> was tested in the cover letter, could you add that to the next
> iteration?
>
> Please test the YUYV post-processed output and MPEG-2 decoding as well.
>
Any recommendations for MPEG-2 and post-processing testing? For the
former I could use gstreamer on Big Buck Bunny or other media, yet not
sure about the latter.

> Also add the fluster score on this platform, and while here you could
> give a pass at v4l2-compliance, which should pass without failures.
> Note that you need to use v4l2-compliance HEAD from git.
>
> https://git.linuxtv.org/v4l-utils.git
>
Ack, will do. Fwiw I did not see any results in the i.MX8M series so I
followed suit :-P

> > +static int sama5d4_hw_init(struct hantro_dev *vpu)
> > +{
> > +       return 0;
>
> Ah, the hantro_variant.init ops is not optional, but
> if this VPU has no hw-specific init, then it should be.
>
> In any case, we might get rid of it soon: Benjamin's work
> will hopefully remove the i.MX8M need for ctrl_base.
>
> And then the static clk_set_rate() in Rockchip variants could
> be replaced with some dynamic rate using devfreq.
>
Neat looking forward to it.

Thanks
Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
