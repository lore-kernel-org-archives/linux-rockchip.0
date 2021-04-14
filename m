Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA907C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 11:41:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2F4A4611C9
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 11:41:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2F4A4611C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FU5y0NC2s7VHwiuPL16MGea3RBoxJ7vsYxSa3o7rscw=; b=OUvTn0h/0vr/gGA39RFdMWaNe
	X2JyNuXbBl4BueJnFYh//volJ6q/MJDRCM7gIgfNIt454pVo0isMeTgPoivakCX8CEM1Cdrt49JkG
	jPdwi4Hmp8L/5eWBnPWodx/oDj0KwTaMLQcyZYF+VT3oeGthQmH7kK/0ZIT1An5wKnzZk+Z0utfb9
	kXMiF0l2YSH/8iGUvBBJoh964bFCcH+U7pu0yYF6r+JN9lyCiiO854YnnYNRoRmP5Bbg/ac0MAxDs
	X4SJiOEbpfKCzpOuV4Bu4uPkBJPXg0XkgkTO8WqK9LDgElV762EXrTeqbqJ2krUnKv5iP19SopK1n
	XHZmyOYig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWdtv-00CTmW-G0; Wed, 14 Apr 2021 11:41:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWdto-00CTlm-QT
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 11:41:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=vuwN2tps+A9iGF/qWHJo0OKDNEJp6OUg5buE8ubsh+M=; b=pFOPZkqAelqtT56MmQNeOs3W9K
 IRhNcpqy3UAWFmfKVReU71Aj+TEJjk8k2Pp1WntvTyFSJORR/MnH3sBd+RLfIMOd84rNJzqiH2IZd
 F7ETMJYCBrVU43acxeD4sxRwTn5TYiT2IxjMQJwlTDJAZHIawMxzKiidEkegnoXD4TWUZHv6G/y2X
 5z76hLu8d7XalyN01wbUF8E+EjoaXHEMMmzPSm8p3k7TL2ReUXEqog/KBKGACOHBjKyhoBpabRRh9
 isra+hJMSP5oYD9l0kWnX9w2kChf9RPqFfIEC5XUOU0+5nIEXWaRFRGJsrph3a+/Zc/QSGzBFj80O
 ngP04xsg==;
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWdtm-007ilu-8z
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 11:41:35 +0000
Received: by mail-qt1-x830.google.com with SMTP id u8so15103563qtq.12
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Apr 2021 04:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vuwN2tps+A9iGF/qWHJo0OKDNEJp6OUg5buE8ubsh+M=;
 b=lOa2FIKMpFcGcgOps89l43t3sEAOetiZcbF6/1KxJDlnOmuEOwaRkcD7cjK1bDrKVN
 B1Y2gwmq0+eNEAE2/fYb3p8K5+P/gmzguNSWZOFlLYNMfIchgOyv5a/dBbgBEWQZnxRM
 SRh59l2LYd3uXf4FI+xMiDn/Hh5DB06DliKIVfqcOJmNaSLf1czsSB8cD9JE3Fr3vERq
 HPr8Vu3RMEu83moP+TTnH8KQymECCnSAND+vdd0g4rEzseJ69WeF+BffSb77smaP4inO
 sqonwy40eLCYwq4jo28jHsandWRYysbHo5Zfld3O/8mUdtsv+8HxtzyQo1ggNVH9MR8A
 ADKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vuwN2tps+A9iGF/qWHJo0OKDNEJp6OUg5buE8ubsh+M=;
 b=FUDJ0wqL8S+a4/hpQ/sqSBB56M/41VMyHSa+ilT++fuZ9RvhPhvT5dbzlYuAlEnUDj
 NQ8B3f551K1Ekkjl0DErZS5Gd+TOg9/lQpJNJ6Gx9PNntuAJDUk9w/egmhyFuIsvLSl+
 /V3WriwsbujtQokbp+ZPTGr5LkUp33RyTRGQ2Oww9eKjefOsbWbae4y55gtGm5q9gM9w
 P3w6OEcMoFn4qel4iyV7UzpUP/i9GWtiCO8ugb20AwK88Yy+iONYGnCBtGyCWHvb+BZ0
 UhYCOeX7awwr2wJXflzP2qEnIq+eix1IW65zIBDNZ3PxIEb5e+LBFHBVipDy5yZwRFBV
 1hDg==
X-Gm-Message-State: AOAM531GjQgacrV+L67BRVZcFL6DFZHylapkpqvpmpBEQBeoPK8NM4Jv
 irQQE7hXsR//Q0+4zOK2oEkEUZ347CvysCSx8U8=
X-Google-Smtp-Source: ABdhPJwPl8i36Umu1G4a9Ow3HV4gVUZJJGNOLDjrXEAQWNZwCO9VlfZ0EiUu+OSe/wt+8nBBntLmteq+qo7uX83CN7o=
X-Received: by 2002:a05:622a:216:: with SMTP id
 b22mr35132063qtx.263.1618400492664; 
 Wed, 14 Apr 2021 04:41:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAMdYzYrQ5f-mv_VmTq_CRf9tR=j3mwRpKHNLmPFgCF9whsGFRw@mail.gmail.com>
 <871rbeo7wf.wl-maz@kernel.org>
 <CAMdYzYruPyiT89FrbJhuV=c36PyRwZ7sT45abnv8rTv85AKRow@mail.gmail.com>
 <87y2dmmggt.wl-maz@kernel.org>
 <CAMdYzYrNa_wJa9mvBkhDrvdNaDugR9Y=LEnbcVHxjxJS0UFcMg@mail.gmail.com>
 <87tuoambdb.wl-maz@kernel.org>
In-Reply-To: <87tuoambdb.wl-maz@kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 14 Apr 2021 07:41:20 -0400
Message-ID: <CAMdYzYo2+h+=39cw1t=11HUih-O+NUs4hhNaPbrU6si-AbqNiA@mail.gmail.com>
Subject: Re: [RFC] ITS fails to allocate on rk3568/rk3566
To: Marc Zyngier <maz@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_044134_354063_75B58B67 
X-CRM114-Status: GOOD (  23.86  )
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

On Tue, Apr 13, 2021 at 11:51 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On Tue, 13 Apr 2021 16:03:51 +0100,
> Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > On Tue, Apr 13, 2021 at 10:01 AM Marc Zyngier <maz@kernel.org> wrote:
>
> [...]
>
> > > What happens if you hack all the allocations to happen in the low 4GB
> > > of the PA space?
> >
> > It seems to work correctly.
> > The downstream hacks used GFP_DMA32 which gets discarded by
> > kmalloc_fix_flags on certain allocations.
> > Switching to GFP_DMA seems to have satisfied it, but it feels wrong
> > using this code.
> > Need to check the corner cases to make sure I'm not missing something.
>
> The problem is that GFP_DMA doesn't always mean the same thing.
> Overall, we need to hear from Rockchip about the exact nature of the
> problem, and then we *may* be able to work something out.

From what I've read, GFP_DMA allocates as low as possible, while
GFP_DMA32 ensures it's in the 32 bit address range, am I understanding
this correctly?
Is there a reason GFP_DMA is permitted while GFP_DMA32 is not, aside
from backwards compatibility?
(I saw the notes about how we aren't really supposed to rely on these flags)

I've also confirmed that their disabling shareability and caching is necessary.

>
> I'd also like to understand whether it is broken because you happen to
> have pre-release silicon that will never make it into the wild, or if
> this is the real thing that is going to ship on millions of devices.

My understanding is these chips are samples prior to the full
production run, but we are waiting on official comment from Rockchip
about this particular errata.

>
> Thanks,
>
>         M.
>
> --
> Without deviation from the norm, progress is not possible.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
