Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3E38C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 12:43:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C21161155
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 12:43:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5C21161155
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Subject:Cc:To:
	From:Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xwir7cRvLrCLwebso/chrjHWtuc0xIKDCF0h9oYE/mM=; b=hFkN0H8yIfFQAeqY6GuJub2Rw
	2yu0yJTyCwlDh4XW8NEuSJYkhWXHc20Jb2+b4SgVROc3FdpfW8m4s4UrhrvYUVynIPLvOrJJMVQ/R
	s2EvBzNzKbMgkKbD6iQvlXkh2PICumV0sPYVZWONf+JuBAy3nY/x7FX2kPPVxd7rN7GzyxiZb5V+j
	7aMpH4G9IH9AmtIKC84PQFNdUk5nv+vwEmf+ls+bXrnBYztEDVbPF73Wp6co92Xw+x/mGz5lFWhak
	GuS6ZUmDbf7LI7rF4h1dKyzw/eKBK3Tpioaum3CQamaM/EGiisiR1O+EGwyYstMiPdGxHtSCV/TJ1
	H7fTfzcAw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWerL-00CcPG-TZ; Wed, 14 Apr 2021 12:43:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWerI-00CcOr-Qn
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 12:43:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Subject:Cc:To:From:Message-ID:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ZNdF7Y8yTCiw97m1mPcGvQ+A6OfE57Y/Avpo0sHMYms=; b=3BGmUlEbijJZTh314aTSLltNcu
 2FoJ0a+LuCeFEWOtnyOkRM05cA2lwXob+1O9YR3+qPikVMrUsLjVtLR5D8DMU5v1kUs8JEnzAFNmL
 4dEmspSigKt0dOxPW78wdGV1UqQp7eEb4VTgCa10f0ON8MSSw4+eO4B3Y0hLYnJryxSwl3Ix6kTHY
 zTeABQBhcPsSGNOZHpPV0UaM7pJFn093F0ZykefMYTjpsc5JAgzeS4ia3RmIr1yMVP27m6mTG3EgC
 D5YPPBdpAn0/dl+DZHpQosE/zGLY4+MgV9taZcEFf2TlpUjzxLV2X9zX6oBG38VMAyyMVbhOb9HLL
 PWv4+5EA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWerG-007lMc-6h
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 12:43:03 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2FBE61155;
 Wed, 14 Apr 2021 12:43:01 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=wait-a-minute.misterjones.org)
 by disco-boy.misterjones.org with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94)
 (envelope-from <maz@kernel.org>)
 id 1lWerD-007QuU-MK; Wed, 14 Apr 2021 13:42:59 +0100
Date: Wed, 14 Apr 2021 13:42:53 +0100
Message-ID: <871rbdt4tu.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [RFC] ITS fails to allocate on rk3568/rk3566
In-Reply-To: <CAMdYzYo2+h+=39cw1t=11HUih-O+NUs4hhNaPbrU6si-AbqNiA@mail.gmail.com>
References: <CAMdYzYrQ5f-mv_VmTq_CRf9tR=j3mwRpKHNLmPFgCF9whsGFRw@mail.gmail.com>
 <871rbeo7wf.wl-maz@kernel.org>
 <CAMdYzYruPyiT89FrbJhuV=c36PyRwZ7sT45abnv8rTv85AKRow@mail.gmail.com>
 <87y2dmmggt.wl-maz@kernel.org>
 <CAMdYzYrNa_wJa9mvBkhDrvdNaDugR9Y=LEnbcVHxjxJS0UFcMg@mail.gmail.com>
 <87tuoambdb.wl-maz@kernel.org>
 <CAMdYzYo2+h+=39cw1t=11HUih-O+NUs4hhNaPbrU6si-AbqNiA@mail.gmail.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/27.1
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pgwipeout@gmail.com, tglx@linutronix.de,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_054302_308224_D4DDA9BE 
X-CRM114-Status: GOOD (  34.83  )
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

On Wed, 14 Apr 2021 12:41:20 +0100,
Peter Geis <pgwipeout@gmail.com> wrote:
> 
> On Tue, Apr 13, 2021 at 11:51 AM Marc Zyngier <maz@kernel.org> wrote:
> >
> > On Tue, 13 Apr 2021 16:03:51 +0100,
> > Peter Geis <pgwipeout@gmail.com> wrote:
> > >
> > > On Tue, Apr 13, 2021 at 10:01 AM Marc Zyngier <maz@kernel.org> wrote:
> >
> > [...]
> >
> > > > What happens if you hack all the allocations to happen in the low 4GB
> > > > of the PA space?
> > >
> > > It seems to work correctly.
> > > The downstream hacks used GFP_DMA32 which gets discarded by
> > > kmalloc_fix_flags on certain allocations.
> > > Switching to GFP_DMA seems to have satisfied it, but it feels wrong
> > > using this code.
> > > Need to check the corner cases to make sure I'm not missing something.
> >
> > The problem is that GFP_DMA doesn't always mean the same thing.
> > Overall, we need to hear from Rockchip about the exact nature of the
> > problem, and then we *may* be able to work something out.
> 
> From what I've read, GFP_DMA allocates as low as possible, while
> GFP_DMA32 ensures it's in the 32 bit address range, am I understanding
> this correctly?

ZONE_DMA{,32} aren't necessarily selected, and can vary in size (some
equally broken systems can only DMA over 30bits...).

> Is there a reason GFP_DMA is permitted while GFP_DMA32 is not, aside
> from backwards compatibility?  (I saw the notes about how we aren't
> really supposed to rely on these flags)

They are completely independent, and they can either be selected or
not. And plenty of systems do not have any memory in the low
4GB. FWIW, one of my main machines has its first byte of RAM at 1TB.

Which means that supporting this system is going to require some very
specific handling.

> I've also confirmed that their disabling shareability and caching is
> necessary.

Confirmed how? For which tables? We really cannot guess this kind of
thing.

> > I'd also like to understand whether it is broken because you happen to
> > have pre-release silicon that will never make it into the wild, or if
> > this is the real thing that is going to ship on millions of devices.
> 
> My understanding is these chips are samples prior to the full
> production run, but we are waiting on official comment from Rockchip
> about this particular errata.

OK. Please let me know once you get a full description of the problem
from Rockchip. We will also need an official erratum number for this
if this is to be worked around in mainline.

	M.

-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
