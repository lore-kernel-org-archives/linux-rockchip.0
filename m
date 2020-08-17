Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4986FC433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 16:13:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D7D020657
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 16:13:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="R476DeeD";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLRATeCc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D7D020657
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=34AgPf0fjA5mg06BVSm47wSJl5wI9QmAVTaFoqgPne0=; b=R476DeeDHDRUVsPr+4sHZIm1X
	N5HZ31E9zbH84pSDnPeyk12ZWjQmm80ilDtp7hCAMYprcQtGZ0RiCp6zRjyITcdumiVn6jxynM40h
	pGeIfmgdBoDoQ6z0c/7uppOzzmenpSPUNlhJrNjdXWzWXIDbTBgwbVafNvKIo9m4CJkAZaWj2SdLo
	Cy2Ok0OicqUFSqSGLO7QRBXecC7ReiFV7DzS2WGRfNX0V8TTqNiN8rGsmfBE3HY17HWFagtvMxyn5
	SLNTnDSEsVGjTVUR6dmxu/XfORIY3CYWYd99NzXWAmCLEHnowD6mEGrGrv7vRjuKCNIXRRJStcGLu
	AnbavO96w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7hl6-0005px-TP; Mon, 17 Aug 2020 16:13:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7hl2-0005p4-KW; Mon, 17 Aug 2020 16:13:13 +0000
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
 [209.85.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE1D8207FF;
 Mon, 17 Aug 2020 16:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597680791;
 bh=gOa0eYxDEsJl2GQzrDLlhSJ5bJ/ZSXUtDonvSlh0ISI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vLRATeCcDCX/WCszaMIH4H6QE5Q8qaxo+6lOPhJY3rU/qC3/KnPHOgpGDtINee7Gq
 VcWIayKF3Q5vcKl+04xcwMH7/dbSBKTxAP7wJHZxqdCIaZTaY9H7oqkp8AkQMziwc8
 C466cFsSL7D9DSNpN4oisiuWqbgpp5MlAwUUJYj4=
Received: by mail-ot1-f53.google.com with SMTP id v6so13800908ota.13;
 Mon, 17 Aug 2020 09:13:10 -0700 (PDT)
X-Gm-Message-State: AOAM532Ut9eAVWvhtxrpbAQ6l894yofwrEB88AOjrUcO2GQFhwHNlhpu
 IE/g2NPvXHXnq4Zh0r8Avmt/t5eu17yacEVxPA==
X-Google-Smtp-Source: ABdhPJyXcxsLxb+WyZgDqUvX+ZXB5O5RvpOgmleI0+UY8O6F4IJdy3paAveojUJFPRMuv9DQhsNQTGig0iW3qRkFcQI=
X-Received: by 2002:a9d:7f84:: with SMTP id t4mr11916864otp.192.1597680790121; 
 Mon, 17 Aug 2020 09:13:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200815125112.462652-2-maz@kernel.org>
 <20200815232228.GA1325245@bjorn-Precision-5520>
 <87pn7qnabq.wl-maz@kernel.org>
In-Reply-To: <87pn7qnabq.wl-maz@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 17 Aug 2020 10:12:58 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+fDNa60+6+s9MwVjUFUPAuc43+uMx4Fm2nZhUgrV7LEg@mail.gmail.com>
Message-ID: <CAL_Jsq+fDNa60+6+s9MwVjUFUPAuc43+uMx4Fm2nZhUgrV7LEg@mail.gmail.com>
Subject: Re: [PATCH 1/2] PCI: rockchip: Work around missing device_type
 property in DT
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_121312_886821_34E84CC5 
X-CRM114-Status: GOOD (  34.28  )
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

On Sun, Aug 16, 2020 at 4:40 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On Sun, 16 Aug 2020 00:22:28 +0100,
> Bjorn Helgaas <helgaas@kernel.org> wrote:
> >
> > On Sat, Aug 15, 2020 at 01:51:11PM +0100, Marc Zyngier wrote:
> > > Recent changes to the DT PCI bus parsing made it mandatory for
> > > device tree nodes describing a PCI controller to have the
> > > 'device_type = "pci"' property for the node to be matched.
> > >
> > > Although this follows the letter of the specification, it
> > > breaks existing device-trees that have been working fine
> > > for years.  Rockchip rk3399-based systems are a prime example
> > > of such collateral damage, and have stopped discovering their
> > > PCI bus.
> > >
> > > In order to paper over the blunder, let's add a workaround
> > > to the pcie-rockchip driver, adding the missing property when
> > > none is found at boot time. A warning will hopefully nudge the
> > > user into updating their DT to a fixed version if they can, but
> > > the insentive is obviously pretty small.
> >
> > s/insentive/incentive/ (Lorenzo or I can fix this up)
> >
> > > Fixes: 2f96593ecc37 ("of_address: Add bus type match for pci ranges parser")
> > > Suggested-by: Roh Herring <robh+dt@kernel.org>
> >
> > s/Roh/Rob/ (similarly)
>
> Clearly not my day when it comes to proofreading commit messages.
> Thanks for pointing this out, and in advance for fixing it up.
>
> >
> > > Signed-off-by: Marc Zyngier <maz@kernel.org>
> >
> > This looks like a candidate for v5.9, since 2f96593ecc37 was merged
> > during the v5.9 merge window, right?
>
> Absolutely.
>
> > I wonder how many other DTs are similarly broken?  Maybe Rob's DT
> > checker has already looked?
>
> I've just managed to run the checker, which comes up with all kinds of
> goodies. Apart from the above, it also spots the following:
>
> - arch/arm64/boot/dts/mediatek/mt7622.dtsi: Has a device_type property
>   in its main PCIe node, but not in the child nodes. It isn't obvious
>   to me whether that's a violation or not (the spec doesn't say
>   whether the property should be set on a per-port basis). Rob?

The rule is bridge nodes should have 'device_type = "pci"'. But what's
needed to fix these cases is setting device_type where we are parsing
ranges or dma-ranges which we're not doing on the child ndes.
Otherwise, I don't think it matters in this case unless you have child
(grandchild here) nodes for PCI devices. If you did have child nodes,
the address translation was already broken before this change.

> - arch/arm64/boot/dts/qcom/msm8996.dtsi: Only one out of the three
>   PCIe nodes has the device_type property, probably broken similarly
>   to rk3399.

The only upstream board is DB820c, so probably not as wide an impact...

There are also 92 (lots of duplicates due to multiple boards) more
cases in arch/arm/. A log is here[1].

> I could move the workaround to drivers/pci/of.c, and have it called
> from the individual drivers. I don't have the HW to test those though.
>
> Thoughts?

I think we should go with my other suggestion of looking at the node
name. Looks like just checking 'pcie' is enough. We can skip 'pci' as
I don't see any cases.

Rob

[1] https://gitlab.com/robherring/linux-dt-bindings/-/jobs/688752562

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
