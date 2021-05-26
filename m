Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3C53C47088
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 16:59:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A17DB613E1
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 16:59:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A17DB613E1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HzaOZzeX7EtwgVq0ijUGWBWpraWPZMVxn9+nbQ8MBU=; b=eGbJ5blV+IVH0E
	GGOhWbM5sXr8yUMoOB3NuSwjoZlCIC22C0JWgVieqlTmL99J2zlA43UNrOlEj3wMXzbsqdyHdr/gI
	zbQKjO2YrEwQiRz9ykwEpN2TTTDWF+p/0xElDG2YT+bf7l/A3ypeu37WEEU9h3ZfoeweYR1+B0Pen
	7sZbWUbjN2YX3PhJGKnuG2DI53WLDnXCWxQXSNrk0ly2bmSBu6ZLYVclse4PKkuiTBEteIWBnMmtq
	5XVrt/Gk4Ch77TwFRJnlWPZDv0s3JEd9aXvXoyIOJDQUAzgTngvGqPOeAhcbjHUqyWAMbdO2SO26a
	zrsxEQ1oPaReb9OT7m/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llwsB-00FvVx-Pc; Wed, 26 May 2021 16:59:11 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llvbc-00FQmj-1X; Wed, 26 May 2021 15:38:02 +0000
Received: by mail-oi1-f178.google.com with SMTP id s19so1889552oic.7;
 Wed, 26 May 2021 08:37:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3V7OvaoqMXmN2vukgJxl15xdT6MPuq7Vv/XnykugDl0=;
 b=UCgBKtPwUJ/Ep3esQ/9e+rz3WmtNKsMCJAPJq/I87FNtQobeUYl5hZ6sIRLRrO8TvM
 qImL3wxT99o6zv5hFvfDquPQpNajHAHtRdcU5fQwwThpXJ8TmOsqmVV4D2QYBp5MUzAI
 w+B6SxSfcXWoq6T8x0FVb+t+TVVtQ1fEyZsj4SC+bzMMIzMjAzYQ8eb0hRA8uDf4YSf8
 gTF+fFHANN06U3GUmBFcDvc27BxJUUz+hcIjmMDUn1rdSdV3BDuWwyS0dQhQnuWMu+pH
 K7vownPexyHRWpH0zfdGJBshI9YFr9aBjSSq8zyAsx/wtTsiVzPB7Q2fd7+qEJbSS8d7
 BiYw==
X-Gm-Message-State: AOAM532uznL+F7NaUKWhK2Tx+ky2L4xHjed9qHQb6xMtZCHo9jZ2LMyv
 z7R3ZZVjlcu7Dkg7Yf8gng==
X-Google-Smtp-Source: ABdhPJw5rSamTwsWLcCBwAFrbj+IDR+9OhxFmsTMbUkCQ/CBncqAjYplNK5RkYmAlpnRkyX+oQljRA==
X-Received: by 2002:aca:a9c6:: with SMTP id s189mr2414457oie.92.1622043479017; 
 Wed, 26 May 2021 08:37:59 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n11sm3881657oom.1.2021.05.26.08.37.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 08:37:58 -0700 (PDT)
Received: (nullmailer pid 2611152 invoked by uid 1000);
 Wed, 26 May 2021 15:37:57 -0000
Date: Wed, 26 May 2021 10:37:57 -0500
From: Rob Herring <robh@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Punit Agrawal <punitagrawal@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, leobras.c@gmail.com,
 PCI <linux-pci@vger.kernel.org>
Subject: Re: [BUG] rockpro64: PCI BAR reassignment broken by commit
 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit
 memory addresses")
Message-ID: <20210526153757.GA2467427@robh.at.kernel.org>
References: <7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com>
 <01efd004-1c50-25ca-05e4-7e4ef96232e2@arm.com>
 <87eedxbtkn.fsf@stealth>
 <CAMj1kXE3U+16A6bO0UHG8=sx45DE6u0FtdSnoLDvfGnFJYTDrg@mail.gmail.com>
 <877djnaq11.fsf@stealth>
 <CAMj1kXFk2u=tbTYpa6Vqz5ihATFq61pCDiEbfRgXL_Rw+q_9Fg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXFk2u=tbTYpa6Vqz5ihATFq61pCDiEbfRgXL_Rw+q_9Fg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_083800_141426_BE19BC50 
X-CRM114-Status: GOOD (  48.13  )
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

On Tue, May 25, 2021 at 03:54:30PM +0200, Ard Biesheuvel wrote:
> On Tue, 25 May 2021 at 15:42, Punit Agrawal <punitagrawal@gmail.com> wrote:
> >
> > Hi Ard,
> >
> > Ard Biesheuvel <ardb@kernel.org> writes:
> >
> > > On Sun, 23 May 2021 at 13:06, Punit Agrawal <punitagrawal@gmail.com> wrote:
> > >>
> > >> Robin Murphy <robin.murphy@arm.com> writes:
> > >>
> > >> > [ +linux-pci for visibility ]
> > >> >
> > >> > On 2021-05-18 10:09, Alexandru Elisei wrote:
> > >> >> After doing a git bisect I was able to trace the following error when booting my
> > >> >> rockpro64 v2 (rk3399 SoC) with a PCIE NVME expansion card:
> > >> >> [..]
> > >> >> [    0.305183] rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
> > >> >> [    0.305248] rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff ->
> > >> >> 0x00fa000000
> > >> >> [    0.305285] rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff ->
> > >> >> 0x00fbe00000
> > >> >> [    0.306201] rockchip-pcie f8000000.pcie: supply vpcie1v8 not found, using dummy
> > >> >> regulator
> > >> >> [    0.306334] rockchip-pcie f8000000.pcie: supply vpcie0v9 not found, using dummy
> > >> >> regulator
> > >> >> [    0.373705] rockchip-pcie f8000000.pcie: PCI host bridge to bus 0000:00
> > >> >> [    0.373730] pci_bus 0000:00: root bus resource [bus 00-1f]
> > >> >> [    0.373751] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff 64bit]
> > >> >> [    0.373777] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus
> > >> >> address [0xfbe00000-0xfbefffff])
> > >> >> [    0.373839] pci 0000:00:00.0: [1d87:0100] type 01 class 0x060400
> > >> >> [    0.373973] pci 0000:00:00.0: supports D1
> > >> >> [    0.373992] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > >> >> [    0.378518] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]),
> > >> >> reconfiguring
> > >> >> [    0.378765] pci 0000:01:00.0: [144d:a808] type 00 class 0x010802
> > >> >> [    0.378869] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
> > >> >> [    0.379051] pci 0000:01:00.0: Max Payload Size set to 256 (was 128, max 256)
> > >> >> [    0.379661] pci 0000:01:00.0: 8.000 Gb/s available PCIe bandwidth, limited by
> > >> >> 2.5 GT/s PCIe x4 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe
> > >> >> x4 link)
> > >> >> [    0.393269] pci_bus 0000:01: busn_res: [bus 01-1f] end is updated to 01
> > >> >> [    0.393311] pci 0000:00:00.0: BAR 14: no space for [mem size 0x00100000]
> > >> >> [    0.393333] pci 0000:00:00.0: BAR 14: failed to assign [mem size 0x00100000]
> > >> >> [    0.393356] pci 0000:01:00.0: BAR 0: no space for [mem size 0x00004000 64bit]
> > >> >> [    0.393375] pci 0000:01:00.0: BAR 0: failed to assign [mem size 0x00004000 64bit]
> > >> >> [    0.393397] pci 0000:00:00.0: PCI bridge to [bus 01]
> > >> >> [    0.393839] pcieport 0000:00:00.0: PME: Signaling with IRQ 78
> > >> >> [    0.394165] pcieport 0000:00:00.0: AER: enabled with IRQ 78
> > >> >> [..]
> > >> >> to the commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to
> > >> >> resource flags for
> > >> >> 64-bit memory addresses").
> > >> >
> > >> > FWFW, my hunch is that the host bridge advertising no 32-bit memory
> > >> > resource, only only a single 64-bit non-prefetchable one (even though
> > >> > it's entirely below 4GB) might be a bit weird and tripping something
> > >> > up in the resource assignment code. It certainly seems like the thing
> > >> > most directly related to the offending commit.
> > >> >
> > >> > I'd be tempted to try fiddling with that in the DT (i.e. changing
> > >> > 0x83000000 to 0x82000000 in the PCIe node's "ranges" property) to see
> > >> > if it makes any difference. Note that even if it helps, though, I
> > >> > don't know whether that's the correct fix or just a bodge around a
> > >> > corner-case bug somewhere in the resource code.
> > >>
> > >> From digging into this further the failure seems to be due to a mismatch
> > >> of flags when allocating resources in pci_bus_alloc_from_region() -
> > >>
> > >>     if ((res->flags ^ r->flags) & type_mask)
> > >>             continue;
> > >>
> > >> Though I am also not sure why the failure is only being reported on
> > >> RK3399 - does a single 64-bit window have anything to do with it?
> > >>
> > >
> > > The NVMe in the example exposes a single 64-bit non-prefetchable BAR.
> > > Such BARs can not be allocated in a prefetchable host bridge window
> > > (unlike the converse, i.e., allocating a prefetchable BAR in a
> > > non-prefetchable host bridge window is fine)
> > >
> > > 64-bit non-prefetchable host bridge windows cannot be forwarded by PCI
> > > to PCI bridges, they simply lack the BAR registers to describe them.
> > > Therefore, non-prefetchable endpoint BARs (even 64-bit ones) need to
> > > be carved out of a host bridge's non-prefetchable 32-bit window if
> > > they need to pass through a bridge.
> >
> > Thank you for the explanation. I also looked at the PCI-to-PCI Bridge
> > spec to understand where some of the limitations are coming from.
> >
> > > So the error seems to be here that the host bridge's 32-bit
> > > non-prefetchable window has the 64-bit attribute set, even though it
> > > resides below 4 GB entirely. I suppose that the resource allocation
> > > could be made more forgiving (and it was in the past, before commit
> > > 9d57e61bf723 was applied). However, I would strongly recommend not
> > > deviating from common practice, and just describe the 32-bit
> > > addressable non-prefetchable resource window as such.
> >
> > IIUC, the host bridge's configuration (64-bit on non-prefetchable
> > window) is based on what the hardware advertises.
> >
> 
> What do you mean by 'what the hardware advertises'? The host bridge is
> apparently configured to decode a 32-bit addressable window as MMIO,
> and the question is why this window has the 64-bit attribute set in
> the DT description.
> 
> > Can you elaborate on what you have in mind to correct the
> > non-prefetchable resource window? Are you thinking of adding a quirk
> > somewhere to address this?
> >
> 
> No. Just fix the DT.

We can't only fix the DT as we shouldn't require a DT update due to a 
kernel change. Especially for RK3399 which is pretty stable and widely 
used.

Do I understand correctly that 64-bit non-prefetchable never correct? We 
recently gained a warning for this in commit fede8526cc48 ("PCI: of: 
Warn if non-prefetchable memory aperture size is > 32-bit"), but that 
only looks at addresses, not the 64-bit flag. Can't we just not set 
the 64-bit flag if non-prefetchable?

BTW, the DT schema is checking ranges hi cell:

                - 0x01000000
                - 0x02000000
                - 0x03000000
                - 0x42000000
                - 0x43000000
                - 0x81000000
                - 0x82000000
                - 0x83000000
                - 0xc2000000
                - 0xc3000000

I just went with what I found in dts files. Sounds like 03 and 83 should 
be removed. (Really, bit 31 or relocatable should probably not be set 
either.)

There's a number of other cases:

Documentation/devicetree/bindings/numa.txt:             ranges = <0x03000000 0x8010 0x00000000 0x8010 0x00000000 0x70 0x00000000>;
Documentation/devicetree/bindings/numa.txt:             ranges = <0x03000000 0x9010 0x00000000 0x9010 0x00000000 0x70 0x00000000>;
Documentation/devicetree/bindings/pci/mediatek-pcie.txt-                          0x83000000 0 0x60000000 0 0x60000000 0 0x10000000>;   /* memory space */
Documentation/devicetree/bindings/pci/microchip,pcie-host.yaml:                    ranges = <0x03000000 0x0 0x78000000 0x0 0x78000000 0x0 0x04000000>;
Documentation/devicetree/bindings/pci/mobiveil-pcie.txt:                ranges = < 0x83000000 0 0x00000000 0xa8000000 0 0x8000000>;
Documentation/devicetree/bindings/pci/rockchip-pcie-host.txt:   ranges = <0x83000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x600000
arch/arm/boot/dts/mt7623.dtsi-                    0x83000000 0 0x60000000 0 0x60000000 0 0x10000000>;
arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi:               ranges = <0x83000000 0 0x00000000 0 0x00000000 0 0x20000000>;
arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi:               ranges = <0x83000000 0 0x00000000 0 0x30000000 0 0x20000000>;
arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi:               ranges = <0x83000000 0 0x00000000 0 0x60000000 0 0x00c00000>;
arch/arm64/boot/dts/broadcom/stingray/stingray-pcie.dtsi:       ranges = <0x83000000 0 0x10000000 0 0x10000000 0 0x20000000>;
arch/arm64/boot/dts/rockchip/rk3399.dtsi:               ranges = <0x83000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x1e00000>,

Rob


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
