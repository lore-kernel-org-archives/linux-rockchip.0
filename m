Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C612C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 13:52:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C8C76120C
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 13:52:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1C8C76120C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=El0K+gjIOf/dPjuWZ1yWRl7Vzqtf4EJ0Cr0xb7+Ayb8=; b=i/xCSjIXLiIfUZ
	40sKCpcuAcYdSo9rOVsGHg1lWw0TQdgb4NTNwlgxC5GdUp5g/k4yAeNi5dXGq0DWIinHak+ts4LnA
	+O0NAZGl6RaYxaFA9rUP4z+HVrbSPacP3EsfiRYoQyxbdCUy2Xy052bLxW8D7felB9EzjSmwP+zZO
	vg5Qwy6FGUw+RVaT0QUqW3XiijxqOKrmaw8U/1lo/J4fMV1Zr1CEieUa8RJEq0Di/s5Uqib3jUKmH
	DQh0y+A6nkRQU40DOr5JRqUMPzh9beDKotSlccwkNPT4v9o33WkREEPoKwt64rfcIUQ0O+yayR2xw
	KQyamCRm0eB058Tenv+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIAMt-00H8ec-Nk; Mon, 23 Aug 2021 13:52:03 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIAMe-00H8bt-DH; Mon, 23 Aug 2021 13:51:52 +0000
Received: by mail-yb1-xb33.google.com with SMTP id k65so34160995yba.13;
 Mon, 23 Aug 2021 06:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mZhYHB4tMEpT9nyCy2lajgzuO2mjD/4shd9z7TFVbm0=;
 b=ZcFUmc3krThb/6+EZprLAxDJPxfSuCJuDHRqbaab5n2HQ50E48YSWYz/EFcz1Apmur
 N82y2uo+LA1R98xD/OFsoO/QBCDNLNrc9H1X+GR+UfeXxW4VLqKjFA1XDaNB5ECymcLJ
 R0Is/oNQiaBl6Lw9hk/GhE5TQE5AEo8rNw3UnnYA8cDZBaLFPP3jf3L3ba5O+D4/BJMC
 wv1zE3JRmTxBbeA9akqFWE4oG/y3wa5h53LtWRrU/pRDMhkNmGI5SR0VakktpidNZ9SK
 NuFNO6c7Ub/KF63S13lyXz5ou0yYhHkgl+RlWx28+/4sOr0P3WHazEJ1ICsGFAqwiXEU
 hmHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mZhYHB4tMEpT9nyCy2lajgzuO2mjD/4shd9z7TFVbm0=;
 b=KoMktJZEsckys2goKSxOVpcuP0gPLb7Xdq2arYVu8NJkV+KYa7BTkfjBHSiYT6v+b+
 Pr3ciQH3myLRUOLvxmSaeNrcmzbJ6wY6Cb6xyf21JY0gJAxSPCBNNRNxfSPaDNd6py9Z
 9V6kvnGYb4MdjTNe7xZTwKO4IJ8KB+zxN8zVB+U7vrOOP8hzoKbaSvixfmiltVDJGDPm
 K4tuVHYwRwRH9LutSvTFyPXJMmVddrLEYlJ/S6f/069/37I1uXR24GkwrfxJ1sy0ycH2
 Ll5eJI+FzUTnMUlZGsKc+UQ48TmVau2CPTyGAg/OIsYUK9ECFP4q9Avf9RKWTmVnwvLN
 BP0A==
X-Gm-Message-State: AOAM5308Tro3JCWGtUen64YqVBunE0rRkw+IxFZgqqFjsxFFRdy9lPWF
 6KIwrzkg3Vm9vfivYVmAYmSC61C+E5COZnacB6E=
X-Google-Smtp-Source: ABdhPJwbzYAlgqaeXjpyad5IkypuCMCkEkvHVUknY0I2lNuGumSfPJXTFYPPvxOUHgEGc9R2DeEcqMk808EK5AJYsNU=
X-Received: by 2002:a25:1f46:: with SMTP id f67mr44609679ybf.259.1629726704890; 
 Mon, 23 Aug 2021 06:51:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210823123911.12095-1-michael.riesch@wolfvision.net>
 <20210823123911.12095-2-michael.riesch@wolfvision.net>
 <CAMdYzYr4ZTXvfJaeMejuRHBkBAVKcEUseskhEVqLMSYR+Dv4uw@mail.gmail.com>
 <426f77fb-f0ca-9431-45e4-66b885516c76@wolfvision.net>
In-Reply-To: <426f77fb-f0ca-9431-45e4-66b885516c76@wolfvision.net>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 23 Aug 2021 09:51:33 -0400
Message-ID: <CAMdYzYpSHkW3NDztmw=CUbYbqQFP+qYdavr6AQZfxwmWJ4eYAw@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: add missing rockchip,grf
 property to rk356x
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Simon Xue <xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_065148_494273_6F382D35 
X-CRM114-Status: GOOD (  27.99  )
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

On Mon, Aug 23, 2021 at 9:39 AM Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> Hi Peter,
>
> On 8/23/21 3:12 PM, Peter Geis wrote:
> > On Mon, Aug 23, 2021 at 8:39 AM Michael Riesch
> > <michael.riesch@wolfvision.net> wrote:
> >>
> >> This commit fixes the error messages
> >>
> >>   rockchip_clk_register_muxgrf: regmap not available
> >>   rockchip_clk_register_branches: failed to register clock clk_ddr1x: -524
> >>
> >> during boot by providing the missing rockchip,grf property.
> >
> > Good Morning,
> >
> > This was fixed by commit: 6fffe52fb336 clk: rockchip: drop GRF
> > dependency for rk3328/rk3036 pll types
> > which was merged in -next. I don't believe it's going to be backported
> > to 5.14 due to 5.14 not being able to fully boot.
>
> Unfortunately not, I am afraid. I am working on Heiko's current -next
> and the commit you mentioned is present. Nevertheless I got these error
> messages.
>
> They can be traced down to "rockchip_clk_register_muxgrf", which fails
> as the passed argument regmap is invalid due to the missing device tree
> property. The clock "clk_ddr1x" is added in clk-rk3568.c as "MUXGRF",
> which leads me to believe that the grf property is actually required.

Ah, yes it seems you are correct.
I had inadvertently fixed this a while ago in my own tree.
Confirmed without the GRF ddr1x clk doesn't register.

Tested-by: Peter Geis <pgwipeout@gmail.com>

On a related note, are you planning on working on the DVFS driver,
since it will be the only consumer of this clock?

>
> Best regards,
> Michael
>
> >
> > Very Respectfully,
> > Peter Geis
> >
> >>
> >> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> index 23949e79d8ce..0a1d07c96b2e 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> @@ -233,6 +233,7 @@
> >>                 #reset-cells = <1>;
> >>                 assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>;
> >>                 assigned-clock-rates = <1200000000>, <200000000>;
> >> +               rockchip,grf = <&grf>;
> >>         };
> >>
> >>         i2c0: i2c@fdd40000 {
> >> --
> >> 2.17.1
> >>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
