Return-Path: <SRS0=HIU6=B7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1E64C433DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2020 21:41:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BA9B120724
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2020 21:41:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="o5F2JKws";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvL29v6r"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BA9B120724
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6sfGHF+1MvdWOFn7qMR30YecZiTN9iVvWPrrsNqaO6k=; b=o5F2JKwsUh0wFWWQ1K20tQuBX
	CFpWQi+mIuWyKSFbnEOsB58nxUcs0nkl6Pq01bijF+sov80v8I7QzFhezq0vsk2ARfsViG8uyHaNr
	Fpbq46wIUnL6xXCn5Tp+ZiNVXn4Ekc5AbG/b/qhYog2UqHdGMLtsDUvdTJOFtGYLRU90/Wlb4Kqol
	tadt+f/07BcS21Krqudgd++NE7YKgBJwFrzIkxycy/693UioSvjUNCoPAWoyGsS7lIuRsJZnndRb7
	kcJcEyiL/RPuSCgWtp/CruFrtulHhZPN2M7scsne8QPLgB29yqP4WK591d8L3pe9EcxE2KqD5Z7Tz
	usJy3O4Fg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k9EmQ-0001Bx-Fd; Fri, 21 Aug 2020 21:40:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k9EmL-0001At-4k; Fri, 21 Aug 2020 21:40:54 +0000
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0EB3A20838;
 Fri, 21 Aug 2020 21:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598046052;
 bh=Ck/LzTzWFmETFjzxh3JBpDpwx2LxGR6IhvTTBDIh81c=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=NvL29v6rlpKyyHKgEV0TDFS+IjI9k/WnhJHtBopEuq/5cJ6/kpcJ6Js/qbM6eTDOB
 DsFqlFDz/gXA32wGrQfVwCGTw+kOU3Gffvb653688vwUaACRZA7pqMQPz6k5tPpqhv
 auK+27rYLCt30cegfI4FrB3tV1Agc9Ovf+/C1xz4=
Received: by mail-oi1-f175.google.com with SMTP id u63so2766108oie.5;
 Fri, 21 Aug 2020 14:40:52 -0700 (PDT)
X-Gm-Message-State: AOAM532IQStFsMDEfiNfums6poSfQlxDS4y7/4Ayh5RCzZzRi9+9ecmC
 yf8kS1yq0hTsrP0ns0BTdtgBxksuW+rsF703yA==
X-Google-Smtp-Source: ABdhPJy0z9MynzW5jLiK2VG0mTSqos60+j46TRjFWO6E3SZdigIfDZsNRnQVmB4+wYaSSDJExNnjLXLhibPBsq15gxQ=
X-Received: by 2002:aca:190c:: with SMTP id l12mr3146352oii.147.1598046051274; 
 Fri, 21 Aug 2020 14:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200819221750.2055932-1-robh@kernel.org>
 <20200821011237.GA4527@lx2k>
 <CAL_JsqLfzDMJXDdqtVBYWrvuB8kBDHECWmNkS5EJStiwSFtp-g@mail.gmail.com>
 <CAOesGMhFGTZddCdusgfcUjfTP847am+F8jTAWrqYXjq1PLXxag@mail.gmail.com>
In-Reply-To: <CAOesGMhFGTZddCdusgfcUjfTP847am+F8jTAWrqYXjq1PLXxag@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 21 Aug 2020 15:40:40 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLqVdyKkVKJP0EG7s7m4A=r-+DjY+X4kVs9boFfPoHsfw@mail.gmail.com>
Message-ID: <CAL_JsqLqVdyKkVKJP0EG7s7m4A=r-+DjY+X4kVs9boFfPoHsfw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: Reformat PCI ranges/dma-ranges entries
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200821_174053_457811_627D466F 
X-CRM114-Status: GOOD (  37.71  )
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
List-Id: <soc.lore.kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Michal Simek <michal.simek@xilinx.com>, Wei Xu <xuwei5@hisilicon.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 DTML <devicetree@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, SoC Team <soc@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Li Yang <leoyang.li@nxp.com>,
 Tero Kristo <t-kristo@ti.com>, Robert Richter <rrichter@marvell.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Aug 21, 2020 at 11:14 AM Olof Johansson <olof@lixom.net> wrote:
>
> On Fri, Aug 21, 2020 at 9:14 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Thu, Aug 20, 2020 at 8:53 PM Olof Johansson <olof@lixom.net> wrote:
> > >
> > > On Wed, Aug 19, 2020 at 04:17:50PM -0600, Rob Herring wrote:
> > > > While bracketing doesn't matter for a DTB, the DT schema checks rely on
> > > > bracketing around each distinct entry. Reformat ranges and dma-ranges
> > > > entries to fix warnings such as:
> > > >
> > > > arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges: [[2197815296, 0, 4194304000, 0, 4194304000, 0, 31457280, 2164260864, 0, 4225761280, 0, 4225761280, 0, 1048576]] is not valid under any of the given schemas (Possible causes of the failure):
> > > >         arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges: True was expected
> > > >         arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges:0: [2197815296, 0, 4194304000, 0, 4194304000, 0, 31457280, 2164260864, 0, 4225761280, 0, 4225761280, 0, 1048576] is too long
> > > >         arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges:0:0: 2197815296 is not one of [16777216, 33554432, 50331648, 1107296256, 1124073472]
> > >
> > > Seems like a bug in your tool? Why would we bother with this churn?
> >
> > It's a feature. :)
>
> The feature is better linting of ranges, the new lack of being able to
> do that for the way we've always been allowed to write ranges is a
> bug.

You are free to write your dts files however you like. You can still
include all the errors, too. :)

> > In this case, with the entries bracketed, we can check the PCI top
> > address cell contents in the common PCI schema and check how many
> > ranges entries in the specific bridge schemas if they have some
> > constraints. The use of bracketing is useful to defining the number of
> > entries not just for ranges, but everywhere. A device binding defines
> > how many register regions or interrupts for example. It makes sense to
> > delineate entries in some way. While yes, we have #.*-cells, there's
> > not really any way to handle that in json-schema. And let's face it,
> > #.*-cells is an odd construct.
> >
> > Currently, the dtc dts->yaml output maintains all this formatting. I
> > suppose we could change that such that we parse #.*-cells and define
> > the boundaries based on them. But then dtc has to know about every
> > case of #.*-cells. That's not impossible to do, but doesn't keep the
> > tool and binding data separate.
>
> That's already the case, isn't it? Run that part of the check if you
> have a new enough dtc, otherwise warn that it's too old but do all the
> other checks.

Not really, I think. Not sure I follow though.

> It's also just a change in one place: the tool, instead of evolving
> the language by adding ad-hoc restrictions that the compiler doesn't
> even know about, and requiring old code to change.

Uh, it's 2 tools. There's no way to know if the dtc has the right
support in order to enable a schema or not. We'd need that on a per
property basis. For example, where we have:

properties:
  ranges:
    minItems: 2
    maxItems: 3

We'd have to process the schema to remove ranges if dtc version didn't
support formatting ranges.

I would like to have more granular warnings with either levels or
named checks, but there's not really any defined way to do that in
json-schema. The easiest would be something at the file level. We have
that somewhat in that we can run checks using a single schema file.

> This way DTC could even warn/recommend bracketing per cell, when you
> give it the ability to parse/handle it.
>
> > Looking at it another way, do we really want to just allow anything? A
> > device with 3 interrupts could be written as:
> >
> > interrupts = <1>, <2>, <3>;
> > interrupts = <1 2 3>;
> > interrupts = <1>, <2 3>;
> > interrupts = [ 00 00 00 01 00 00 00 02 00 00 00 03 ];
> >
> > Or can we have some coding standards that are no more onerous or
> > pedantic than what we have everywhere else?
>
> We're generally quite careful about applying new restrictions and
> expectations on coding standards all across the tree, and when we add
> new ones we usually don't require legacy code to change overnight,
> only when there are other relevant changes to those files.

But eventually we tend to make the changes. Can we at least agree the
first form of bracketing is preferred over the 2nd and is what new dts
files should use? If so, then most of the above is mute and it's a
question of how to enable checks per dts file with new ones enabled.
That was kind of what prompted this patch in the first place. I'm not
really trying to be in the business of fixing dts files. I was looking
at how to enable schema checks by default per platform (for 'make
dtbs') with Marc's complaint about not having checks enabled by
default[1]. There's a few platforms with a manageable number of
warnings to fix, and I started looking at some of the PCI related
warnings, fixed some false-positives in the schemas and did this patch
along the way.

In any case, we can enable schema checks with something like this:

extra-y += $(patsubst %.dtb,%.dt.yaml,$(dtb-y))

Or maybe "extra-$(CONFIG_HAS_DT_SCHEMA)" based on some check for the
tools, so I don't get yelled at for breaking everyone's make
allmodconfig. On the flip side, if I don't break allmodconfig for
missing schema tools, the warnings will just continue to be ignored.
And who will check and enforce all new platforms get enabled for
checks?

Rob

[1] https://lore.kernel.org/lkml/34ac2d7c0770f9aa450aaa3905c82f52@kernel.org/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
