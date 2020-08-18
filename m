Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55084C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 14:23:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 22EBF20786
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 14:23:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FWpiT+cl";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="URvpGZeB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 22EBF20786
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dPsURATiQQRmP3iKDhR0xNMeHGKY6JyZrUWV8dxSMhU=; b=FWpiT+cl8Ym1roZHAC41SXAn7
	suWJvqZOY4N4w1OOB0TVZ+mW/nKmAaa+QMu0bZj4N4okdL61vrH80q0PpLzVGzSQiimBc2XKaEyBM
	gSyIuBn+M7kyrfL1qI61lWV7Oxe13D4PYoll+EZi+U/AFmJzOdSqhvt3dHOliYTp8Txnh8Z9SZjMr
	dFjIT1BQWmiXDxxyjRYvsfXVyy6sTJcoQs/jL30rJHc1Nlj4bL8JlDASd+O3qbb7aCzhM9cjS930j
	CEOrWYrPWhyUcI1Hppdf4jNCAK7m4gwAyu7w3nT2jE5KvWJwS/kEg9CJrp5IvUAfJK3galM7dKgfP
	+VMqKUoDg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k82We-00042V-GZ; Tue, 18 Aug 2020 14:23:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k82WX-00040I-Gg; Tue, 18 Aug 2020 14:23:38 +0000
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com
 [209.85.161.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 07BA1207D3;
 Tue, 18 Aug 2020 14:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597760616;
 bh=+GOujhHAY+gAEigj74Monf6Mzd+lgkl+g0F3Tv3WS8o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=URvpGZeB90KNMmrakNX0199Z+p6eJK53RHlpKE8iE+cnXzL6kGjr0FV70wFlRDu0b
 +4iIc5cxrXz4PPqUbVLnwGreeJ9OPV2INoNFJYHssg+lFDduRK2D990Zji5oSQG8mm
 r73S8S0ktI7fb8elJGj03MMRXYlceUxXz4PW8kQw=
Received: by mail-oo1-f49.google.com with SMTP id y30so4177476ooj.3;
 Tue, 18 Aug 2020 07:23:36 -0700 (PDT)
X-Gm-Message-State: AOAM531dv64kIpqOlBhK7HsL33zqMriCqI62OJyIcdnFkBd3RAgPppR8
 LICLJyZkxHWJMGgvLawkco0fb7xeUTEYav6cfw==
X-Google-Smtp-Source: ABdhPJx/OxIxzT0i2pOqWVTEd+J0VZRhMCUcmr0cGzPYOXpagNM4BQrXXTT1e4HT0/tDAhSgVCFIOUZ0yyBT/uxJqAc=
X-Received: by 2002:a4a:a60a:: with SMTP id e10mr15069228oom.25.1597760615266; 
 Tue, 18 Aug 2020 07:23:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200815125112.462652-2-maz@kernel.org>
 <20200815232228.GA1325245@bjorn-Precision-5520>
 <87pn7qnabq.wl-maz@kernel.org>
 <CAL_Jsq+fDNa60+6+s9MwVjUFUPAuc43+uMx4Fm2nZhUgrV7LEg@mail.gmail.com>
 <e2cde177e82fbdf158732ad73ccdc6c5@kernel.org>
In-Reply-To: <e2cde177e82fbdf158732ad73ccdc6c5@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Tue, 18 Aug 2020 08:23:23 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL1_d2grS3Pz6NNeVAOMPbx_hAe+MrseQeQp=bHRQ7rfQ@mail.gmail.com>
Message-ID: <CAL_JsqL1_d2grS3Pz6NNeVAOMPbx_hAe+MrseQeQp=bHRQ7rfQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] PCI: rockchip: Work around missing device_type
 property in DT
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_102337_727592_AFC7BAA0 
X-CRM114-Status: GOOD (  45.48  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Aug 18, 2020 at 1:35 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-08-17 17:12, Rob Herring wrote:
> > On Sun, Aug 16, 2020 at 4:40 AM Marc Zyngier <maz@kernel.org> wrote:
> >>
> >> On Sun, 16 Aug 2020 00:22:28 +0100,
> >> Bjorn Helgaas <helgaas@kernel.org> wrote:
> >> >
> >> > On Sat, Aug 15, 2020 at 01:51:11PM +0100, Marc Zyngier wrote:
> >> > > Recent changes to the DT PCI bus parsing made it mandatory for
> >> > > device tree nodes describing a PCI controller to have the
> >> > > 'device_type = "pci"' property for the node to be matched.
> >> > >
> >> > > Although this follows the letter of the specification, it
> >> > > breaks existing device-trees that have been working fine
> >> > > for years.  Rockchip rk3399-based systems are a prime example
> >> > > of such collateral damage, and have stopped discovering their
> >> > > PCI bus.
> >> > >
> >> > > In order to paper over the blunder, let's add a workaround
> >> > > to the pcie-rockchip driver, adding the missing property when
> >> > > none is found at boot time. A warning will hopefully nudge the
> >> > > user into updating their DT to a fixed version if they can, but
> >> > > the insentive is obviously pretty small.
> >> >
> >> > s/insentive/incentive/ (Lorenzo or I can fix this up)
> >> >
> >> > > Fixes: 2f96593ecc37 ("of_address: Add bus type match for pci ranges parser")
> >> > > Suggested-by: Roh Herring <robh+dt@kernel.org>
> >> >
> >> > s/Roh/Rob/ (similarly)
> >>
> >> Clearly not my day when it comes to proofreading commit messages.
> >> Thanks for pointing this out, and in advance for fixing it up.
> >>
> >> >
> >> > > Signed-off-by: Marc Zyngier <maz@kernel.org>
> >> >
> >> > This looks like a candidate for v5.9, since 2f96593ecc37 was merged
> >> > during the v5.9 merge window, right?
> >>
> >> Absolutely.
> >>
> >> > I wonder how many other DTs are similarly broken?  Maybe Rob's DT
> >> > checker has already looked?
> >>
> >> I've just managed to run the checker, which comes up with all kinds of
> >> goodies. Apart from the above, it also spots the following:
> >>
> >> - arch/arm64/boot/dts/mediatek/mt7622.dtsi: Has a device_type property
> >>   in its main PCIe node, but not in the child nodes. It isn't obvious
> >>   to me whether that's a violation or not (the spec doesn't say
> >>   whether the property should be set on a per-port basis). Rob?
> >
> > The rule is bridge nodes should have 'device_type = "pci"'. But what's
> > needed to fix these cases is setting device_type where we are parsing
> > ranges or dma-ranges which we're not doing on the child ndes.
> > Otherwise, I don't think it matters in this case unless you have child
> > (grandchild here) nodes for PCI devices. If you did have child nodes,
> > the address translation was already broken before this change.
>
> Fair enough.
>
> >> - arch/arm64/boot/dts/qcom/msm8996.dtsi: Only one out of the three
> >>   PCIe nodes has the device_type property, probably broken similarly
> >>   to rk3399.
> >
> > The only upstream board is DB820c, so probably not as wide an impact...
> >
> > There are also 92 (lots of duplicates due to multiple boards) more
> > cases in arch/arm/. A log is here[1].
>
> Mostly Broadcom stuff, apparently. I'll see if I can have a stab
> at it (although someone will have to test it).
>
> >
> >> I could move the workaround to drivers/pci/of.c, and have it called
> >> from the individual drivers. I don't have the HW to test those though.
> >>
> >> Thoughts?
> >
> > I think we should go with my other suggestion of looking at the node
> > name. Looks like just checking 'pcie' is enough. We can skip 'pci' as
> > I don't see any cases.
>
> I really dislike it.
>
> Once we put this node name matching in, there is no incentive for
> people to write their DT correctly at all. It also sound pretty
> fragile (what if the PCIe node is named something else?).

That would require 2 wrongs. Both missing device_type and wrong node
name. You could still warn if we matched on node name.

This is just one possible error out of thousands. It's not the
kernel's job to validate DTs (if it is, we're doing a horrible job).
We have a solution for this with schema. The question is how to get to
the point the schema checks are part of the main build flow. The
primary issue is just getting to some platforms being warning free,
and then they could opt in. There's effort around some platforms
(Rockchip is not one), but I think we have a ways to go. The other
aspect is what's the coverage with the schema. There's 2900 remaining
bindings to convert to schema. We're doing about 100-200 a cycle, so
that's what the next ~5 years looks like for me. :(

> My preference goes towards having point fixes in the affected drivers,
> clearly showing that this is addressing a firmware bug.

I didn't filter down how many drivers all the failures equates to in
terms of drivers. I guess all of Broadcom is just one. If you want to
fixup all the drivers, then I'm fine with that.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
