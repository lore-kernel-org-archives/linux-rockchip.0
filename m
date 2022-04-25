Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE808C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 19:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbmuqpiJp4a7NkKavotEDGGYP1yam2a9jD1njE/Sqco=; b=SzFzrfGUf2qpDC
	yPMZWE8O+Rx+NIDBV2B881CVzi3unY1zS/1tRQHIs5bbQw03XQhA6yA5nTkJz9NDW16eeyo0LF0jD
	rwMOXHpofMw88BmjrqXQr19bZfB5IKZMXiewlbIRmrk3sctp2L6s0D6gImXw0+GrFYP4wfZdC2HeO
	e9vJAIWISNB7XJ+I6EJrxOPps1Z5KNlckFqlD+kj9RoPN+kFfZx67NmOWa55GHRB+HxFnJUm5tiOT
	/luzsc2+3CEDawCEBuxlFTLcp/CM1JuDdp6GfZklP60SggRZBpMzpdSk8PdHMbE+wYMKCSrw/p/cy
	UhFU/0vuZ10PMwGXz34g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj4X8-00B58m-3F; Mon, 25 Apr 2022 19:38:06 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj4Wv-00B54P-Tj; Mon, 25 Apr 2022 19:37:55 +0000
Received: by mail-yb1-xb32.google.com with SMTP id d12so9753990ybc.4;
 Mon, 25 Apr 2022 12:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sv8hAStxtYZLA7ttjMHDmBWNkg9R0he6yilL9E/on7U=;
 b=Rm3XivQgs/+qfHTgBRxz6EnqsR5YnGqXNq6SpUmHifFzrPauwn6vlgLyAEZRxGkVne
 NUaFb6Sw7lnrNY59Nk0EjE1hAHqwuQPTmDo19XR5IhO9RnkLG4gEUzH50njFyZm9sc/f
 jvwRM/jT2L4tq7uFD9+qrAOKMFp1CSeZaenkXELOGulEVO6y8F3JIEPpR/CxTkQAkYQC
 Bn8QW/c2vyY6sgOjIsJil8UIhvRGlwr0XIW0Eh+tA2qHxqrdyFdT0uTnK1X2ShxEq2zh
 le/736GlWszQIlmHgbntrvfmZVq9ZvbRkwcHcQlj4cvpTv5jCIiCYxxyl4ELBG6OhXzW
 jxdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sv8hAStxtYZLA7ttjMHDmBWNkg9R0he6yilL9E/on7U=;
 b=IapvQ6KgykokB68vB8u9l1kVSdF8zU9Dv9aNSbJIP6YFQhshnrPB3x109Z5/b1h1R/
 +r21uUaphELvi24tFeWdRAgNq0bYYwYbnRLqRyK2cxtFh43GHot0Bir7L7XM8mCtuur0
 OP2DQROYxULgQMzkVeu4FF6IiMxDSkENFD7NsAlkKX2iIPfhESH4JecvCg73Z2dNHTvR
 BZUmUdcLLdUCrkVF23hcPmKQzrsloZSsG9hxgAbP5wBkhJySrm9RoYqIcLRAHAeth06K
 sbfoOXQuYiz/JuLxcZfYxaxELH0q4o9Mo2XIJosDRqqpJ90v2iypGA4F7SjNMYL4MBey
 ysPA==
X-Gm-Message-State: AOAM533ufFtyFiXVF0shP6FkAb0E8ksbiIbfTtWZ6O3H1SQyHq1AaAfZ
 JpWXdaG6Nv0U7vp52SXsfqB1kV71WnwU8IAhgoA=
X-Google-Smtp-Source: ABdhPJx+MAl3lvFKD1Qba4L7n1K5/ljEL1sT3HVJgvt1iDEvua5oqXeT4ma4s6OJVaASqyJ8hlGCcxr5ZDsfp4axFO8=
X-Received: by 2002:a25:af14:0:b0:645:36f1:c584 with SMTP id
 a20-20020a25af14000000b0064536f1c584mr17794206ybh.366.1650915472252; Mon, 25
 Apr 2022 12:37:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-19-sebastian.reichel@collabora.com>
 <36551341-60f5-8b61-59d1-176ece8204d6@arm.com>
 <20220425181407.lknemxqooz7yidcz@mercury.elektranox.org>
In-Reply-To: <20220425181407.lknemxqooz7yidcz@mercury.elektranox.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 25 Apr 2022 15:37:41 -0400
Message-ID: <CAMdYzYr4ZNDzLGn-ArT4dW+F5c598rsWpACNMpuJRMY7a0yb=A@mail.gmail.com>
Subject: Re: [PATCHv1 18/19] arm64: dts: rockchip: Add base DT for rk3588 SoC
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kernel@lists.collabora.co.uk, 
 Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, 
 Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_123754_016273_3FA48C6C 
X-CRM114-Status: GOOD (  23.33  )
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

On Mon, Apr 25, 2022 at 2:14 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> Thanks for having a look.
>
> On Fri, Apr 22, 2022 at 07:16:13PM +0100, Robin Murphy wrote:
> > On 2022-04-22 18:09, Sebastian Reichel wrote:
> > > ...
> > > +           cpu_l0: cpu@0 {
> > > +                   device_type = "cpu";
> > > +                   compatible = "arm,cortex-a55";
> > > +                   reg = <0x0>;
> > > +                   enable-method = "psci";
> > > +                   capacity-dmips-mhz = <530>;
> > > +                   clocks = <&scmi_clk SCMI_CLK_CPUL>;
> > > +                   i-cache-size = <32768>;
> > > +                   i-cache-line-size = <64>;
> > > +                   i-cache-sets = <128>;
> > > +                   d-cache-size = <32768>;
> > > +                   d-cache-line-size = <64>;
> > > +                   d-cache-sets = <128>;
> > > +                   next-level-cache = <&l2_cache_l0>;
> > > +                   #cooling-cells = <2>;
> > > +                   dynamic-power-coefficient = <228>;
> > > +           };
> >
> > Is there any particular reason for not including more of the CPUs?
>
> Yes, see below.
>
> > > +           its: interrupt-controller@fe640000 {
> > > +                   compatible = "arm,gic-v3-its";
> > > +                   msi-controller;
> > > +                   #msi-cells = <1>;
> > > +                   reg = <0x0 0xfe640000 0x0 0x20000>;
> > > +           };
> > > +   };
> >
> > Does the ITS (and other bits related to GIC memory accesses) actually work,
> > or will we have more of the same issues as RK356x?
>
> The GIC in RK3588 is has the same shareability limitation as the RK356x,
> but fixed the 32bit limitation. That's why I just added the boot cpu core
> for now; adding any other cpu core breaks the boot without the downstream
> shareability patch and I'm still investigating.

There's no way to avoid this issue unfortunately.
See my awful hacked together patch:
https://gitlab.com/pine64-org/quartz-bsp/linux-next/-/commit/8b34fd2a74321f8f5d7731b63eee0f9e03d1393b

Considering the ITS exists pretty much just for MSIs, and my PCIe
series introduces support for legacy interrupts, you may get away with
doing the mbi-alias currently implemented in rk356x.
Note, there are *some* compatibility issues with mbi-alias MSIs,
particularly with high IRQ cards like the Intel x520.

>
> -- Sebastian
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
