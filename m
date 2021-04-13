Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10654C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 15:04:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A3BA613B7
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 15:04:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4A3BA613B7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zddaqt0PfK2GypKt2MuBRvSAMkmep7MiXJRFgFFsoaA=; b=UOS/Rm5qC7ZSZDkXKfxa6xInV
	f1PWGSBQKXrpGfGEzdX6JYF9zHzdn6Bds2g6V2d3Awy8KEfmU8JthKNWsFqUJEVlIMsl9UOVIf6hX
	BGFm0PBRjuzuTpDnA6TF7EKnuoSabDp4vgmL0I33oqOt6dwRqfdRD6jSjRcB1+e3Sux1ba9RGsuqa
	zd81+GggG7LYtX73atlMdrHznCFtGD/CxYT0ER4bwehQKJXvh5PWn8jk/8valgBEGPlYekyFS/fI/
	KFCrhTUc08ehNb33WeNO/BxU0sX8dOwnqsc9Zc/KAb9iajV80dPBy6n2jZsRItXlGa5Ua1+cbsBy6
	Gxml3jKhQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWKaJ-009aVZ-P8; Tue, 13 Apr 2021 15:04:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKaF-009aTw-Ht
 for linux-rockchip@desiato.infradead.org; Tue, 13 Apr 2021 15:04:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/TLwBQQFfeHujJCVC9CoZDIA8rdiR/FNqPCcKRj30eU=; b=UnGpvYkcnWEeWjIMQ1lHFcURMQ
 03ZAGTcreqtmY7ByffZ3cdUlTF7I+OvI/ocIHuEwx2xpVMGSTjQz/pvUAe6vXOVyWKhrrOXUjvyCl
 TrYARY/dkYCG8iduvnSoL2VLgx+snVOL3ywqXFwwD7J9+QctfClvQJUdMhVVng91WCRhMOynn+GQ7
 4bo+G8pShWhxmDKNop4AYsuQSw0OHZI+ha9yrLqvs4UNY+6QOC8cQBgZM4qjJohZNOxFKVNqfT3sQ
 kXOHgg3GcUnYEPZq1G7ibCsOwoHiid2d6DfvdPqwgYYD7//ZSpREsoD+B5zm5XgF9G5baewLwCcEV
 tAznUsKQ==;
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKaC-0077so-Gu
 for linux-rockchip@lists.infradead.org; Tue, 13 Apr 2021 15:04:06 +0000
Received: by mail-qk1-x733.google.com with SMTP id o17so9662110qkl.13
 for <linux-rockchip@lists.infradead.org>; Tue, 13 Apr 2021 08:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/TLwBQQFfeHujJCVC9CoZDIA8rdiR/FNqPCcKRj30eU=;
 b=nwHH9PQy6gKYtDgtPm8PHn4Pti4QVXhZeSb3IlcY1/wkRpZB+qqQ8nvXhvkCr2oi95
 E/pah/J4deR7TGvI/UZQYB2GGIkcE+jWPdFeLci0dqTxZU7TsLmHDQlfIxSKFnkcoBkX
 Cc8qeP+MDJ98LsTpFbSbEvHM8jCNFHuDtSxO5AWJxh0xOL8JQeQeSrGKMdmEi/u0vNcx
 zZMbkc1Zx1WzfgrBH7LsELCbr/exio/cKU84/Ff3sQ8QhXbZzP2ioi5s5BUj60RDg1nP
 YnWOEcKQSke7pRdRbHXLsuAKrsoGTQHutQWuvX1soLJh9dnLceFJyPleku/52tITwDIe
 4z3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/TLwBQQFfeHujJCVC9CoZDIA8rdiR/FNqPCcKRj30eU=;
 b=tMlyPINASL/RhuhUSzhAu1yq3msbmsSyu8W48eM6N0JxRczOQf3qJ1N7EZJNHhq4l/
 1pGI+PKwuM2suR+QHBL7RD5tqg4ypkV9y7bc/RxiAU2OORf9WasG0q1+KXH3rYRr+x2W
 J5T5qMgC3MfPCTIK1GB7lTE5p6Xs8EM00zfreo+vdkkW4McwVYb6HYVVTHealwnLSCYC
 VJwZczpSC9n8vXa82oPlXgjtDcbVjUJoqYBvm+Tctxj6E+NJPiSp+pRP2kAP7yUtYvSV
 ku6485jfCcy+w13pndcdhsniisfqxYyVSyDFmA5SfmRC1cP7C7Rlnj0HZJ+NUfGggC4d
 IcDw==
X-Gm-Message-State: AOAM532boj94U8k5hT+wb+ost1hatTpsjabpZ08hsbsOXQhaydNuAYtj
 UbwBRNEmDgFlvnPY/VvRVF+QL3dZ8Glq3VMLYqY=
X-Google-Smtp-Source: ABdhPJw5txlIXyl+a8sJG/0PWAdadj0CKlbitlzGuU2ODhbhAyXXUeUc+TOGR4RU9tfPPfohScX68AwLbcCkstO6jME=
X-Received: by 2002:a05:620a:20ca:: with SMTP id
 f10mr25997481qka.426.1618326242871; 
 Tue, 13 Apr 2021 08:04:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAMdYzYrQ5f-mv_VmTq_CRf9tR=j3mwRpKHNLmPFgCF9whsGFRw@mail.gmail.com>
 <871rbeo7wf.wl-maz@kernel.org>
 <CAMdYzYruPyiT89FrbJhuV=c36PyRwZ7sT45abnv8rTv85AKRow@mail.gmail.com>
 <87y2dmmggt.wl-maz@kernel.org>
In-Reply-To: <87y2dmmggt.wl-maz@kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 13 Apr 2021 11:03:51 -0400
Message-ID: <CAMdYzYrNa_wJa9mvBkhDrvdNaDugR9Y=LEnbcVHxjxJS0UFcMg@mail.gmail.com>
Subject: Re: [RFC] ITS fails to allocate on rk3568/rk3566
To: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_080404_606585_6AF09087 
X-CRM114-Status: GOOD (  51.37  )
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

On Tue, Apr 13, 2021 at 10:01 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On Tue, 13 Apr 2021 14:29:32 +0100,
> Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > On Tue, Apr 13, 2021 at 5:23 AM Marc Zyngier <maz@kernel.org> wrote:
> > >
> > > Hi Peter,
> > >
> > > On Mon, 12 Apr 2021 21:49:59 +0100,
> > > Peter Geis <pgwipeout@gmail.com> wrote:
> > > >
> > > > Good Afternoon,
> > > >
> > > > I am assisting with early bringup of the rk3566 based quartz64
> > > > development board for mainline linux.
> > > > I've encountered a few issues with allocating ITS on their version of
> > > > the GIC-V3.
> > > > The first issue is the ITS controller can only use 32bit addresses.
> > > > This leads to the following error:
> > > > [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> > > > [    0.000000] GICv3: GIC: Using split EOI/Deactivate mode
> > > > [    0.000000] GICv3: 320 SPIs implemented
> > > > [    0.000000] GICv3: 0 Extended SPIs implemented
> > > > [    0.000000] GICv3: Distributor has no Range Selector support
> > > > [    0.000000] Root IRQ handler: gic_handle_irq
> > > > [    0.000000] GICv3: 16 PPIs implemented
> > > > [    0.000000] GICv3: CPU0: found redistributor 0 region 0:0x00000000fd460000
> > > > [    0.000000] ITS [mem 0xfd440000-0xfd45ffff]
> > > > [    0.000000] ITS@0x00000000fd440000: Devices doesn't stick:
> > > > f907000100190600 f907000000190600
> > >
> > > Ouch. That looks pretty bad. Bit 32 of the register doesn't stick, and
> > > that's right in the middle of the address. The register should be
> > > fully writable as far as the address field is concerned.
> > >
> > > Please dump the distributor and ITS IIDR registers so that I can find
> > > the TRM for the exact IP.
> >
> > Yeah, I'm getting a crash course in how GIC-V3 sets up, so this is a
> > learning experience too.
> >
> > The GICD_IIDR, GICR_IIDR, and GITS_IIDR are all 0x0201743B
>
> Looks like our mate GIC600 r1p6, which is the most recent revision,
> and reasonably bug free AFAIK. Other examples of this GIC integrated
> on HW have access to seem to work rather well, and that's with (a lot)
> more than 4GB of RAM.
>
> >
> > >
> > > > [    0.000000] ITS@0x00000000fd440000: failed probing (-6)
> > > > [    0.000000] ITS: No ITS available, not enabling LPIs
> > > >
> > > > Downstream fixed this by adding the GFP_DMA32 flag to the memory
> > > > allocations.
> > >
> > > Urgh... this really looks like broken silicon to me.
> >
> > I was afraid of that.
> >
> > >
> > > > They also force clear the GITS_BASER_SHAREABILITY_MASK.
> > >
> > > Why? Does this also apply to the command queue? Are they forcing cache
> > > flushing?
> >
> > The patch doesn't have a description, but the name of the function is
> > "force_inner_cache mode".
> > It disables shareability and caching, but I've experimented with
> > removing this part and it doesn't make a difference in upstream setup.
> > (Things are still broken in the same way). It ends up setting
> > ITS_FLAGS_CMDQ_NEEDS_FLUSHING as well.
> >
> > >
> > > > Unfortunately while this allowed ITS to allocate on downstream, as
> > > > soon as MSIs attempted to use it all interrupts would time out.
> > > >
> > > > On upstream, we observe this during allocation:
> > > > [    0.000000] ITS [mem 0xfd440000-0xfd45ffff]
> > > > [    0.000000] ITS@0x00000000fd440000: allocated 8192 Devices @3810000
> > > > (indirect, esz 8, psz 64K, shr 1)
> > > > [    0.000000] ITS@0x00000000fd440000: allocated 32768 Interrupt
> > > > Collections @3820000 (flat, esz 2, psz 64K, shr 1)
> > > > [    0.000000] GICv3: using LPI property table @0x0000000003830000
> > > > [    0.000000] GICv3: CPU0: using allocated LPI pending table
> > > > @0x0000000003840000
> > > > [    0.000000] ITS queue timeout (64 1)
> > > > [    0.000000] ITS cmd its_build_mapc_cmd failed
> > > > [    0.000000] ITS queue timeout (96 1)
> > > > [    0.000000] ITS cmd its_build_invall_cmd failed
> > > > <snip>
> > >
> > > So the command queue is not making forward progress. Either because
> > > the ITS cannot access the commands, or because it cannot use the
> > > memory it has been allocated. Please dump GITS_CBASER (and the value
> > > that has been written to it), just in case it shows the same
> > > brokenness as the GITS_BASER registers...
> >
> > It seems yes, CBASER is broken in the same way:
> > Value written: b8000001001b040f
> > Value read:    b8000000001b040f
>
> Here you go. They haven't only half broken it. Please also check the
> GICR_PENDBASER/GICR_PROPBASER values on each RD to see if they have
> similar behaviours.

Yes, it seems all accesses are limited to 32bit.

>
> What happens if you hack all the allocations to happen in the low 4GB
> of the PA space?

It seems to work correctly.
The downstream hacks used GFP_DMA32 which gets discarded by
kmalloc_fix_flags on certain allocations.
Switching to GFP_DMA seems to have satisfied it, but it feels wrong
using this code.
Need to check the corner cases to make sure I'm not missing something.

>
> > >
> > > [...]
> > >
> > > > Any assistance you can provide would be greatly appreciated.
> > >
> > > I'm not sure there is much we can do without a lot more details about
> > > the HW. We need to know the exact GIC implementation they are using
> > > (ARM has two versions of the GICv3 IP), and we also need to find out
> > > *how* this has been integrated. Only Rockchip can tell you that.
> >
> > The rk3568 TRM says to reference the
> > "ARM_GIC-600_r1p6-00rel0_Technical_Reference_Manual.pdf" for
> > information on the GIC, if that helps narrow it down too.
>
> Here you go:
>
> https://documentation-service.arm.com/static/5e7ddddacbfe76649ba53034
>
> That doesn't tell us what they did to it though, and whether only the
> ITS is affected or the RDs are similarly brain-damaged. I guess that's
> yet another piece of HW I will not have to spend any money on...
>
>         M.
>
> --
> Without deviation from the norm, progress is not possible.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
