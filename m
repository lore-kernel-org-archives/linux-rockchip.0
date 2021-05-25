Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 578D7C2B9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 13:56:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CCB2A610CE
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 13:56:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CCB2A610CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXllq98xa9fgLRJFRN57zP2qbdQmyeFz5QVECiWbQFI=; b=4lthDRzFLdM1lv
	5QA4vLicpjk1X5N3+I06TP5K+PJoJAKCM+Tb9CLL9mP2QqBo4pXUdzPSHf8hmUbbgRrvi69LYqtPG
	/cpMK3Fz8e5dX5j/n7ov8WCOvhLD396IpGt08fq0Qa7p61cbQ1lcsoKyC1m+jkaeD247vY63Ye1Xh
	GaI5mDFvQF/qh2nW0HOcSe6QLpi+KA5Yjm2pA3D82O/61tLiB1U3pciW6MI/U3hHy9zaW1Q0ze6S0
	08dKuKsnDfBQkUwWVx9xlieo+vnecmdfibTeiklrfyPnFqCeASHPNhdtBOYatsk1dv4PJ2w8BlnAi
	bW5SJuCrUKthadhe0nkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llXXg-005USJ-CK; Tue, 25 May 2021 13:56:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llXW7-005TwZ-7t; Tue, 25 May 2021 13:54:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 863366142C;
 Tue, 25 May 2021 13:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621950882;
 bh=6+OOCS9/FVUngfNrY9DQFsy33J0t64Gk5QDDkvoyc/k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Mukg6E0CnlUp7ZrKD84EhWpwgWdyxScssvs1Msm9G8BQ5bvuB28InjrO+YS+/s/qW
 u2MASZVHCA/Doh6T3iVaujsek5+KQJGgz0nHe/J3pAKQdL5YgoDmyg+6UoTMWEH6yn
 BtsWYHYoUHSB5pH3OE/UqY/g1qL7+TOwm94EUTIdsM0ukCaSfliYrUEjVf7MC1OZoS
 bN8rvaSsFea4B+j9c+mF4s9FcRm07MQOne+zbEZ2k81qsu9/OUZ9c65mszxua4HVkG
 Yzadj4M4MsFbEGDv4uX9PXaKFo1Q0myW1JziiVbqBntbA/kQewWoX3zrhA5rNkc2Ww
 X4PQxIQBKL+vQ==
Received: by mail-ot1-f52.google.com with SMTP id
 r26-20020a056830121ab02902a5ff1c9b81so28642635otp.11; 
 Tue, 25 May 2021 06:54:42 -0700 (PDT)
X-Gm-Message-State: AOAM530yy15drfoQ5luHlkgkfPgLfCVmkoqSz+/4oxCRhxUcm3qLhCTJ
 aFQQuYp6Pm0bvZfNy3lPlleGvum7nKHw0xq4s7E=
X-Google-Smtp-Source: ABdhPJxNQNHEVxXEnKV/+Q0uEZsr1aBEb4OZUGVwpST6TfxxtSNW2dO1sQ8H4CBWOV1b6vx9Ynlzwvg03MMcNf6Z43Q=
X-Received: by 2002:a9d:7cd8:: with SMTP id r24mr23409093otn.90.1621950881849; 
 Tue, 25 May 2021 06:54:41 -0700 (PDT)
MIME-Version: 1.0
References: <7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com>
 <01efd004-1c50-25ca-05e4-7e4ef96232e2@arm.com>
 <87eedxbtkn.fsf@stealth>
 <CAMj1kXE3U+16A6bO0UHG8=sx45DE6u0FtdSnoLDvfGnFJYTDrg@mail.gmail.com>
 <877djnaq11.fsf@stealth>
In-Reply-To: <877djnaq11.fsf@stealth>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 25 May 2021 15:54:30 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFk2u=tbTYpa6Vqz5ihATFq61pCDiEbfRgXL_Rw+q_9Fg@mail.gmail.com>
Message-ID: <CAMj1kXFk2u=tbTYpa6Vqz5ihATFq61pCDiEbfRgXL_Rw+q_9Fg@mail.gmail.com>
Subject: Re: [BUG] rockpro64: PCI BAR reassignment broken by commit
 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit
 memory addresses")
To: Punit Agrawal <punitagrawal@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, leobras.c@gmail.com, 
 Rob Herring <robh@kernel.org>, PCI <linux-pci@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_065443_372262_032A5007 
X-CRM114-Status: GOOD (  40.47  )
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

On Tue, 25 May 2021 at 15:42, Punit Agrawal <punitagrawal@gmail.com> wrote:
>
> Hi Ard,
>
> Ard Biesheuvel <ardb@kernel.org> writes:
>
> > On Sun, 23 May 2021 at 13:06, Punit Agrawal <punitagrawal@gmail.com> wrote:
> >>
> >> Robin Murphy <robin.murphy@arm.com> writes:
> >>
> >> > [ +linux-pci for visibility ]
> >> >
> >> > On 2021-05-18 10:09, Alexandru Elisei wrote:
> >> >> After doing a git bisect I was able to trace the following error when booting my
> >> >> rockpro64 v2 (rk3399 SoC) with a PCIE NVME expansion card:
> >> >> [..]
> >> >> [    0.305183] rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
> >> >> [    0.305248] rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff ->
> >> >> 0x00fa000000
> >> >> [    0.305285] rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff ->
> >> >> 0x00fbe00000
> >> >> [    0.306201] rockchip-pcie f8000000.pcie: supply vpcie1v8 not found, using dummy
> >> >> regulator
> >> >> [    0.306334] rockchip-pcie f8000000.pcie: supply vpcie0v9 not found, using dummy
> >> >> regulator
> >> >> [    0.373705] rockchip-pcie f8000000.pcie: PCI host bridge to bus 0000:00
> >> >> [    0.373730] pci_bus 0000:00: root bus resource [bus 00-1f]
> >> >> [    0.373751] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff 64bit]
> >> >> [    0.373777] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus
> >> >> address [0xfbe00000-0xfbefffff])
> >> >> [    0.373839] pci 0000:00:00.0: [1d87:0100] type 01 class 0x060400
> >> >> [    0.373973] pci 0000:00:00.0: supports D1
> >> >> [    0.373992] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> >> >> [    0.378518] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]),
> >> >> reconfiguring
> >> >> [    0.378765] pci 0000:01:00.0: [144d:a808] type 00 class 0x010802
> >> >> [    0.378869] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
> >> >> [    0.379051] pci 0000:01:00.0: Max Payload Size set to 256 (was 128, max 256)
> >> >> [    0.379661] pci 0000:01:00.0: 8.000 Gb/s available PCIe bandwidth, limited by
> >> >> 2.5 GT/s PCIe x4 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe
> >> >> x4 link)
> >> >> [    0.393269] pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
> >> >> [    0.393311] pci 0000:00:00.0: BAR 14: no space for [mem size 0x00100000]
> >> >> [    0.393333] pci 0000:00:00.0: BAR 14: failed to assign [mem size 0x00100000]
> >> >> [    0.393356] pci 0000:01:00.0: BAR 0: no space for [mem size 0x00004000 64bit]
> >> >> [    0.393375] pci 0000:01:00.0: BAR 0: failed to assign [mem size 0x00004000 64bit]
> >> >> [    0.393397] pci 0000:00:00.0: PCI bridge to [bus 01]
> >> >> [    0.393839] pcieport 0000:00:00.0: PME: Signaling with IRQ 78
> >> >> [    0.394165] pcieport 0000:00:00.0: AER: enabled with IRQ 78
> >> >> [..]
> >> >> to the commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to
> >> >> resource flags for
> >> >> 64-bit memory addresses").
> >> >
> >> > FWFW, my hunch is that the host bridge advertising no 32-bit memory
> >> > resource, only only a single 64-bit non-prefetchable one (even though
> >> > it's entirely below 4GB) might be a bit weird and tripping something
> >> > up in the resource assignment code. It certainly seems like the thing
> >> > most directly related to the offending commit.
> >> >
> >> > I'd be tempted to try fiddling with that in the DT (i.e. changing
> >> > 0x83000000 to 0x82000000 in the PCIe node's "ranges" property) to see
> >> > if it makes any difference. Note that even if it helps, though, I
> >> > don't know whether that's the correct fix or just a bodge around a
> >> > corner-case bug somewhere in the resource code.
> >>
> >> From digging into this further the failure seems to be due to a mismatch
> >> of flags when allocating resources in pci_bus_alloc_from_region() -
> >>
> >>     if ((res->flags ^ r->flags) & type_mask)
> >>             continue;
> >>
> >> Though I am also not sure why the failure is only being reported on
> >> RK3399 - does a single 64-bit window have anything to do with it?
> >>
> >
> > The NVMe in the example exposes a single 64-bit non-prefetchable BAR.
> > Such BARs can not be allocated in a prefetchable host bridge window
> > (unlike the converse, i.e., allocating a prefetchable BAR in a
> > non-prefetchable host bridge window is fine)
> >
> > 64-bit non-prefetchable host bridge windows cannot be forwarded by PCI
> > to PCI bridges, they simply lack the BAR registers to describe them.
> > Therefore, non-prefetchable endpoint BARs (even 64-bit ones) need to
> > be carved out of a host bridge's non-prefetchable 32-bit window if
> > they need to pass through a bridge.
>
> Thank you for the explanation. I also looked at the PCI-to-PCI Bridge
> spec to understand where some of the limitations are coming from.
>
> > So the error seems to be here that the host bridge's 32-bit
> > non-prefetchable window has the 64-bit attribute set, even though it
> > resides below 4 GB entirely. I suppose that the resource allocation
> > could be made more forgiving (and it was in the past, before commit
> > 9d57e61bf723 was applied). However, I would strongly recommend not
> > deviating from common practice, and just describe the 32-bit
> > addressable non-prefetchable resource window as such.
>
> IIUC, the host bridge's configuration (64-bit on non-prefetchable
> window) is based on what the hardware advertises.
>

What do you mean by 'what the hardware advertises'? The host bridge is
apparently configured to decode a 32-bit addressable window as MMIO,
and the question is why this window has the 64-bit attribute set in
the DT description.

> Can you elaborate on what you have in mind to correct the
> non-prefetchable resource window? Are you thinking of adding a quirk
> somewhere to address this?
>

No. Just fix the DT.

> I am happy to put something together once I understand the preferred way
> to go about it.
>
> Thanks,
> Punit
>
> [...]
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
