Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDB5EC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:17:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E05A610CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:17:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E05A610CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wTEb++YXoWrPGD3p2JmKT+uynlnAXRmAyKVxe+BDQBw=; b=TlvCyeMZlxpFff6Rm59AGtvLf
	D+bvdi8MxBTmYCenfAmOgI8TVP/WB3lcCIYJl2X5d8r5Xd1VczFUle5O4//ZceW1xYL8txKO7ad7G
	x+R2/koN7DEklLbevtrTmhxXLWQg7k+WKVGVApq9sy2qv/dDOFTppLUT7rzD5oHX2f97Ql8P2MCW/
	QdDPZP7wM1iSsAXsyxe+0hlqdWD+2WOco1/bqnJmHEtqW8jIyadnGxaoytCI9kRKRWFQFnVMRVujw
	4LvFySicKoTiyta9nTsPfgC1G83QAa7iVBMF7if+Jb7dCZ3fM/5vMkEsvUwMyEFF/NTlWrhAKRbBJ
	3xD5uzISw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljM4v-0045rp-TN; Wed, 19 May 2021 13:17:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljM4s-0045qB-K0; Wed, 19 May 2021 13:17:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=A6Jfch/p94re7yclpHhujTruAgxqnQLQ1mCUzKRd7q4=; b=CPHMznfs7Fm7SdHJf9QtOMiSMY
 2MX7E5viv0ciQJg7DZws1PkO2mqStxydFCwEs8UVPXXK9cnpCv4Sa6x/JpBWsTPUEyhoBt2JA9qtk
 5bo064Qk0cp4TwAtAsJq76fREjuc9aDG6ZJbZHdc4/Dgd0JPr0N82KnbJBNegngeKXLH43ksgMS7A
 bPoe1eaIC0e0BZflVQrWHkemFkAcvGWGBXjizUXivg1OqXdG+3P0mF8bh9jq0X27+Ef6htpit82Qt
 7skYq6Y5ZWZSY/XO+AO+hFvkCVhVbaHIZ5fwKkembUijHYMUHDQIzx+6qUe5wJK7CDNVoNwLLH2wq
 C6SnKwlg==;
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljM4m-00FUcS-FA; Wed, 19 May 2021 13:17:32 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id y2so17984044ybq.13;
 Wed, 19 May 2021 06:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A6Jfch/p94re7yclpHhujTruAgxqnQLQ1mCUzKRd7q4=;
 b=HhG/A45dQa4qIzMfTz89p780PIxvUCDkdamKN59vDz4tkA+G44oUzKWb2+QcYLJbg/
 YXgUbRkWR86EFKC85C1FiB2wZ+SAXAw+B91ZQT6UvbPpWGRVO929S+JWC1apqX4DhMv2
 WmkW4q0/OKhmvgv4cGBBpzmNZT93+9x06jr5K1DrKXNdYOgi9YQcvaI3KqfRJ5K2sp6B
 bDrwFliBuh8SHOmklFnX+0R9CVA4gDNoUG1YR0do25XTGiM/LpAxuPkm8Ygy9tL1h6GC
 Ltapb7DcGuenr+mgI5OPXK7f21C3XFyfNePcfPbFfiHChbQ5YqM2CCvmZDQNhN5nxBr/
 HoUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A6Jfch/p94re7yclpHhujTruAgxqnQLQ1mCUzKRd7q4=;
 b=Jr9rqWGjkra9hdVa+hXsQlRpS/kE4cpy2Xy1Z02brTN6xkeuNGpA+/GQpuBJHLh1nW
 UNTZyLxOqZeV/naQZgG9QYO/TEXnOOf1Q8eehp/pMg46ekp/YukgEtcVPKIg6fWOCjX6
 eWvL/jg3FHXlMI+EEmPzCckemsu4CnWscuO5Ws/Q3/TEHo/ehta6GGYFfmeBd3Vyk13f
 OBJKUnEU36tDRL+ggv9Z1I+0yz+mPiN7DnU+8DHsWTfOIqlD9GG5IvYOmzTAT/3+ZwB6
 gpMBHsQwRiY9S4/7kXmyZe2gZrGiKCh652MVLC1Yo2TeEXr6X/CzT+n9R0pleaG82ysp
 JMFg==
X-Gm-Message-State: AOAM533P2517x7E1ZeVIz09b+zCgKZto5UKLC7/KjVM4pcC4grFwPav8
 65QTwihSCXv4sKI5ebGoVkIsxa8nIKy+OUJsgMg=
X-Google-Smtp-Source: ABdhPJw8eM94VwtsxsUoGMX8et3EviMo7wG2qk+v7/vGsxDSGV2nDfyBFH2F4v7F6ZUCNeTy/TLZOQAMYVwIibchX0c=
X-Received: by 2002:a5b:303:: with SMTP id j3mr14122782ybp.433.1621430247082; 
 Wed, 19 May 2021 06:17:27 -0700 (PDT)
MIME-Version: 1.0
References: <7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com>
 <01efd004-1c50-25ca-05e4-7e4ef96232e2@arm.com>
In-Reply-To: <01efd004-1c50-25ca-05e4-7e4ef96232e2@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 19 May 2021 09:17:16 -0400
Message-ID: <CAMdYzYpc4JeGEu6uJt5OnPRBGFzYhZB3UAQf4+TZuDGgA7OaAg@mail.gmail.com>
Subject: Re: [BUG] rockpro64: PCI BAR reassignment broken by commit
 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit
 memory addresses")
To: Robin Murphy <robin.murphy@arm.com>
Cc: Alexandru Elisei <alexandru.elisei@arm.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 heiko.stuebner@theobroma-systems.com, 
 Leonardo Bras <leobras.c@gmail.com>, Rob Herring <robh@kernel.org>,
 linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_061728_541627_EA888035 
X-CRM114-Status: GOOD (  33.85  )
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

On Wed, May 19, 2021 at 9:04 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> [ +linux-pci for visibility ]
>
> On 2021-05-18 10:09, Alexandru Elisei wrote:
> > After doing a git bisect I was able to trace the following error when booting my
> > rockpro64 v2 (rk3399 SoC) with a PCIE NVME expansion card:
> >
> > [..]
> > [    0.305183] rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
> > [    0.305248] rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff ->
> > 0x00fa000000
> > [    0.305285] rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff ->
> > 0x00fbe00000
> > [    0.306201] rockchip-pcie f8000000.pcie: supply vpcie1v8 not found, using dummy
> > regulator
> > [    0.306334] rockchip-pcie f8000000.pcie: supply vpcie0v9 not found, using dummy
> > regulator
> > [    0.373705] rockchip-pcie f8000000.pcie: PCI host bridge to bus 0000:00
> > [    0.373730] pci_bus 0000:00: root bus resource [bus 00-1f]
> > [    0.373751] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff 64bit]
> > [    0.373777] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus
> > address [0xfbe00000-0xfbefffff])
> > [    0.373839] pci 0000:00:00.0: [1d87:0100] type 01 class 0x060400
> > [    0.373973] pci 0000:00:00.0: supports D1
> > [    0.373992] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > [    0.378518] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]),
> > reconfiguring
> > [    0.378765] pci 0000:01:00.0: [144d:a808] type 00 class 0x010802
> > [    0.378869] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
> > [    0.379051] pci 0000:01:00.0: Max Payload Size set to 256 (was 128, max 256)
> > [    0.379661] pci 0000:01:00.0: 8.000 Gb/s available PCIe bandwidth, limited by
> > 2.5 GT/s PCIe x4 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe
> > x4 link)
> > [    0.393269] pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
> > [    0.393311] pci 0000:00:00.0: BAR 14: no space for [mem size 0x00100000]
> > [    0.393333] pci 0000:00:00.0: BAR 14: failed to assign [mem size 0x00100000]
> > [    0.393356] pci 0000:01:00.0: BAR 0: no space for [mem size 0x00004000 64bit]
> > [    0.393375] pci 0000:01:00.0: BAR 0: failed to assign [mem size 0x00004000 64bit]
> > [    0.393397] pci 0000:00:00.0: PCI bridge to [bus 01]
> > [    0.393839] pcieport 0000:00:00.0: PME: Signaling with IRQ 78
> > [    0.394165] pcieport 0000:00:00.0: AER: enabled with IRQ 78
> > [..]
> >
> > to the commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for
> > 64-bit memory addresses").
>
> FWFW, my hunch is that the host bridge advertising no 32-bit memory
> resource, only only a single 64-bit non-prefetchable one (even though
> it's entirely below 4GB) might be a bit weird and tripping something up
> in the resource assignment code. It certainly seems like the thing most
> directly related to the offending commit.
>
> I'd be tempted to try fiddling with that in the DT (i.e. changing
> 0x83000000 to 0x82000000 in the PCIe node's "ranges" property) to see if
> it makes any difference. Note that even if it helps, though, I don't
> know whether that's the correct fix or just a bodge around a corner-case
> bug somewhere in the resource code.
>
> Robin.

Good Morning Robin,

It seems we meet again for PCIe issues.
I think you might be onto something about the resource assignment code
doing weird things.
I'm doing early bringup on the rk3566, which has a 1GB address space
at 0x3 0x00000000 for the PCIe controller.
I started with the recent linux-next, so this patch was already applied.
Since it has a large enough address space, I decided to try and get a
DGPU to work with it.
I kept hitting strange issues such as it wouldn't allocate 32bit BARs
in the 64bit space randomly.
I tried messing with the ranges to force it as 32bit, but it would
still be flagged as a 64bit space when finally allocated (I thought
this might be due to the location of the memory).

Here are the ranges that I eventually got to allocate correctly (once).

ranges = <0x01000000 0x0 0x00800000 0x3 0x00800000 0x0 0x00100000
  0x02000000 0x0 0x00900000 0x3 0x00900000 0x0 0x30000000
  0x43000000 0x0 0x30900000 0x3 0x30900000 0x0 0x0f700000>;

It did weird things when I'd change that 0x02000000 to a 0x03000000,
even though the final allocation was flagged as 64bit.

Thanks for everything!
Peter

>
> > For reference, here is the dmesg output when BAR
> > reassignment works:
> >
> > [..]
> > [    0.307381] rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
> > [    0.307445] rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff ->
> > 0x00fa000000
> > [    0.307481] rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff ->
> > 0x00fbe00000
> > [    0.308406] rockchip-pcie f8000000.pcie: supply vpcie1v8 not found, using dummy
> > regulator
> > [    0.308534] rockchip-pcie f8000000.pcie: supply vpcie0v9 not found, using dummy
> > regulator
> > [    0.374676] rockchip-pcie f8000000.pcie: PCI host bridge to bus 0000:00
> > [    0.374701] pci_bus 0000:00: root bus resource [bus 00-1f]
> > [    0.374723] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff]
> > [    0.374746] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus
> > address [0xfbe00000-0xfbefffff])
> > [    0.374808] pci 0000:00:00.0: [1d87:0100] type 01 class 0x060400
> > [    0.374943] pci 0000:00:00.0: supports D1
> > [    0.374961] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > [    0.379473] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]),
> > reconfiguring
> > [    0.379712] pci 0000:01:00.0: [144d:a808] type 00 class 0x010802
> > [    0.379815] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
> > [    0.379997] pci 0000:01:00.0: Max Payload Size set to 256 (was 128, max 256)
> > [    0.380607] pci 0000:01:00.0: 8.000 Gb/s available PCIe bandwidth, limited by
> > 2.5 GT/s PCIe x4 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe
> > x4 link)
> > [    0.394239] pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
> > [    0.394285] pci 0000:00:00.0: BAR 14: assigned [mem 0xfa000000-0xfa0fffff]
> > [    0.394312] pci 0000:01:00.0: BAR 0: assigned [mem 0xfa000000-0xfa003fff 64bit]
> > [    0.394374] pci 0000:00:00.0: PCI bridge to [bus 01]
> > [    0.394395] pci 0000:00:00.0:   bridge window [mem 0xfa000000-0xfa0fffff]
> > [    0.394569] pcieport 0000:00:00.0: enabling device (0000 -> 0002)
> > [    0.394845] pcieport 0000:00:00.0: PME: Signaling with IRQ 78
> > [    0.395153] pcieport 0000:00:00.0: AER: enabled with IRQ 78
> > [..]
> >
> > And here is the output of lspci when BAR reassignment works:
> >
> > # lspci -v
> > 00:00.0 PCI bridge: Fuzhou Rockchip Electronics Co., Ltd RK3399 PCI Express Root
> > Port (prog-if 00 [Normal decode])
> >      Flags: bus master, fast devsel, latency 0, IRQ 78
> >      Bus: primary=00, secondary=01, subordinate=01, sec-latency=0
> >      I/O behind bridge: 00000000-00000fff [size=4K]
> >      Memory behind bridge: fa000000-fa0fffff [size=1M]
> >      Prefetchable memory behind bridge: 00000000-000fffff [size=1M]
> >      Capabilities: [80] Power Management version 3
> >      Capabilities: [90] MSI: Enable+ Count=1/1 Maskable+ 64bit+
> >      Capabilities: [b0] MSI-X: Enable- Count=1 Masked-
> >      Capabilities: [c0] Express Root Port (Slot+), MSI 00
> >      Capabilities: [100] Advanced Error Reporting
> >      Capabilities: [274] Transaction Processing Hints
> >      Kernel driver in use: pcieport
> > lspci: Unable to load libkmod resources: error -2
> >
> > 01:00.0 Non-Volatile memory controller: Samsung Electronics Co Ltd NVMe SSD
> > Controller SM981/PM981/PM983 (prog-if 02 [NVM Express])
> >      Subsystem: Samsung Electronics Co Ltd NVMe SSD Controller SM981/PM981/PM983
> >      Flags: bus master, fast devsel, latency 0, IRQ 77, NUMA node 0
> >      Memory at fa000000 (64-bit, non-prefetchable) [size=16K]
> >      Capabilities: [40] Power Management version 3
> >      Capabilities: [50] MSI: Enable- Count=1/1 Maskable- 64bit+
> >      Capabilities: [70] Express Endpoint, MSI 00
> >      Capabilities: [b0] MSI-X: Enable+ Count=33 Masked-
> >      Capabilities: [100] Advanced Error Reporting
> >      Capabilities: [148] Device Serial Number 00-00-00-00-00-00-00-00
> >      Capabilities: [158] Power Budgeting <?>
> >      Capabilities: [168] Secondary PCI Express
> >      Capabilities: [188] Latency Tolerance Reporting
> >      Capabilities: [190] L1 PM Substates
> >      Kernel driver in use: nvme
> >
> > I can provide more information if needed (the board is sitting on my desk) and I
> > can help with testing the fix.
> >
> > Thanks,
> >
> > Alex
> >
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
