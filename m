Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC2E9C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Apr 2022 15:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SA47O8GMHDAiCaw0PrMYDzqxguNh//ZOWPbJpZ4JARk=; b=gP+8xa/pz5FH7t
	/TpZ7DKyusVHoebBSCC9nNw/as3Hmp0tgy3CCvBfXSnlELQ5L16/WfcNMb4STgG8Lat3zfD8vM9RJ
	WB7dEKEU3Bep7XWlm4tQ50iZH7RMRBXPEIMi5/LQmc2/+TCucSm44HqZWD/8wAkIDERO2WSAE9Ghb
	NcTLuLQP/f/oan44B8rg9SGKUaMyi8yTdrhHB/XqjMxxsww9A4Mq4N2KdgEqnwKRlIgNWVdpmMEhb
	teF/Wt686TAV/74fXuiAGL9AygEK4R/kYcZFu3DpweDq5LDo5pEv1Pm3pdaPdb9dKSI+rnfFHxrV2
	HcaZZ1J7iPu6k6vFvCoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngT4d-00HPuN-9Z; Mon, 18 Apr 2022 15:13:55 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngT4b-00HPtM-5W; Mon, 18 Apr 2022 15:13:54 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id j2so26122552ybu.0;
 Mon, 18 Apr 2022 08:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UD05IbcZ2rf5qvJ6A93X+/jr+vU3bRZx5RLWQDEGt1I=;
 b=Pjj9yRLO9dfTboleo6SJMPQgWC8TvkyB63hnmKy8gYvh0uGqQdx3aGD6CzWSQXEddN
 tPuhqFSulSxiwq996BZ9ztVVYJZQWGZ+HG7wT3kxTdHO+KCfMeVWxPnKJRPl67IKCggy
 sE6Ga1oTaw8UdJAxivjX1oDAcpjDoROMAbn+qVzTmEA2j4UIlSmPLr6p4xOHkapm7MDP
 mBPYUiDkuyOBPnGQqjpa2Vw5GBl/n2f0L6D3Lvn4vQ4G5acCVRe2KsR0uezYt02+MLyg
 f4SobePJdgLFuZMdRMTKguUTIxzt9zRSJPNx16UVjLkBzjnmkL5AJ6FUpJ1ZlAbdul8c
 Lp/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UD05IbcZ2rf5qvJ6A93X+/jr+vU3bRZx5RLWQDEGt1I=;
 b=zIjGID9DKRVBMQl7V2+4zY6ZmwZ8sR2cnAlFKfmiorgrPBNIP1X57r3a7vaI2yjkD9
 j4vOsmHpZFyqJduVu7tykN2dWm3tEBxl4mp0DvuKULG8agrgpSyshBMHcUpuabY0L039
 2+6T6Wbx54vjqeOvIS5VA/FwSHfjeXCcddxDKKbKvJNStCIz3v6XdsdZvrOgBfFEgttr
 RDFpUxiAaGbVRcsl6csXA6MPsCXmBkMv9Pnh46WNl7Op3HZ4QbX5cNfyL1q7gOh2itlP
 J0WhxF7ODpBdy4Faqm+2S0E9CbisMI4ioGh6k7pA92VByGdRx62zmZkJDlgTuAT9kdNp
 espg==
X-Gm-Message-State: AOAM5311Y/CXfF5lsn9ZCtYx+RysfetC/Zp9Vg3gS3796s5S3Vwsw7hz
 wrxclgXy5DWJjuZ/Mwsa1Cwpklha7a+eKSzK4pg=
X-Google-Smtp-Source: ABdhPJyglgnLuoSw1DyURkg6CGKqtEJL4ymjfUewdv/sJ/JuvH0Bue0GwV9LJ769SlOf0P2VWW9+SDrsMuiERFAhTZI=
X-Received: by 2002:a25:c54b:0:b0:641:cfe9:27e9 with SMTP id
 v72-20020a25c54b000000b00641cfe927e9mr9915958ybe.228.1650294830426; Mon, 18
 Apr 2022 08:13:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220416110507.642398-1-pgwipeout@gmail.com>
 <20220416110507.642398-3-pgwipeout@gmail.com>
 <308e9c47197d4f7ae5a31cfcb5a10886@kernel.org>
 <CAMdYzYo+YeAgT92baMOoWpra230wro_WynRcajL-__9RNkeE9Q@mail.gmail.com>
 <87zgkk9gtc.wl-maz@kernel.org>
 <CAMdYzYo_+7rakc=GCTueEZvH_F4Co6+=eKAUztJaafiDXSKKXQ@mail.gmail.com>
 <87sfqaa7uv.wl-maz@kernel.org>
In-Reply-To: <87sfqaa7uv.wl-maz@kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 18 Apr 2022 11:13:39 -0400
Message-ID: <CAMdYzYouLoYX89EWjQTRAjd-1bvJEJtfYQa2KrtFH22Kp-4Efw@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] PCI: dwc: rockchip: add legacy interrupt support
To: Marc Zyngier <maz@kernel.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, 
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_081353_263843_6C88C961 
X-CRM114-Status: GOOD (  38.87  )
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

On Mon, Apr 18, 2022 at 8:34 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On Mon, 18 Apr 2022 12:37:00 +0100,
> Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > On Sun, Apr 17, 2022 at 5:53 AM Marc Zyngier <maz@kernel.org> wrote:
> > >
> > > On Sat, 16 Apr 2022 14:24:26 +0100,
> > > Peter Geis <pgwipeout@gmail.com> wrote:
> > > >
> > > > Okay, that makes sense. I'm hitting the entire block when it should be
> > > > the individual IRQ.
> > > > I also notice some drivers protect this with a spinlock while others
> > > > do not, how should this be handled?
> > >
> > > It obviously depends on how the HW. works. If this is a shared
> > > register using a RMW sequence, then you need some form of mutual
> > > exclusion in order to preserve the atomicity of the update.
> > >
> > > If the HW supports updating the masks using a set of hot bits (with
> > > separate clear/set registers), than there is no need for locking.  In
> > > your case PCIE_CLIENT_INTR_MASK_LEGACY seems to support this odd
> > > "write-enable" feature which can probably be used to implement a
> > > lockless access, something like:
> > >
> > >         void mask(struct irq_data *d)
> > >         {
> > >                 u32 val = BIT(d->hwirq + 16) | BIT(d->hwirq);
> >
> > This is what HIWORD_UPDATE_BIT does, it's rather common in Rockchip code.
> > I believe I can safely drop the spinlock when enabling/disabling
> > individual interrupts.
>
> Yes.
>
> >
> > >                 writel_relaxed(val, ...);
> > >         }
> > >
> > >         void mask(struct irq_data *d)
> > >         {
> > >                 u32 val = BIT(d->hwirq + 16);
> > >                 writel_relaxed(val, ...);
> > >         }
> > >
> > > Another thing is that it is completely unclear to me what initialises
> > > these interrupts the first place (INTR_MASK_LEGACY, INTR_EN_LEGACY).
> > > Are you relying on the firmware to do that for you?
> >
> > There is no dedicated mask or enable/disable for the legacy interrupt
> > line (unless it's undocumented).
>
> I'm talking about the INTR_MASK_LEGACY and INTR_EN_LEGACY registers,
> which control the INTx (although the latter seems to default to some
> reserved values). I don't see where you initialise them to a state
> where they are enabled and masked, which should be the initial state
> once this driver has probed. The output interrupt itself is obviously
> controlled by the GIC driver.

PCIE_CLIENT_INTR_MASK_LEGACY is the register I use here to mask/unmask
the interrupts.
It defaults to all masked on reset.
The current rk3568 trm v1.1 does not reference an INTR_EN_LEGACY register.

>
> > It appears to be enabled via an "or" function with the emulated interrupts.
> > As far as I can tell this is common for dw-pcie, looking at the other drivers.
>
> I think we're talking past each other. I'm solely concerned with the
> initialisation of the input control registers, for which I see no code
> in this patch.

Downstream points to the mask/unmask functions for the enable/disable
functions, which would be superfluous here as mainline defaults to
that anyways if they are null.

I've double checked and downstream only uses the mask register, enable
and routing config appears to be left as is from reset.
I'm rather concerned about the lack of any obvious way to control
routing, nor an ack mechanism for the irq.
I see other implementations reference the core registers or vendor
defined registers for these functions.
Unfortunately the rk3568 trm does not include the core register
definitions, and the designware documentation appears to be behind a
paywall/nda.

I suspect most of the confusion here boils down to a lack of
documentation, but it's entirely possible I am simply not
understanding the question.
I'm already aware of other functions that I need documentation for
that is currently unavailable.

>
>         M.
>
> --
> Without deviation from the norm, progress is not possible.

Thank you for your time,
Peter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
