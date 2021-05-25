Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 836B3C2B9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 19:34:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C0D2613F9
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 19:34:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C0D2613F9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Q8i5LA2TeeL9vaBr19Z+BUmiXG5GeP09OnFLWIegmfs=; b=4WgUJIm5ulgUPp
	Xd3lWx75lJ1xPZ4l+tAoGSrQ7v2MYCY7efYeItLaranOm6CLIyrifkCJa2SHCMwUrF0LRwD4334Dk
	QSMiruv/htQWGFhDMb+0yjrAc9s+jbyBj1oZaYLDgY65bqsgdxHlMPccYAiySHi8d3fdtlMeU7RmX
	NJ8pvhygwP+8anRPoQdBsSB5g4yq1tzKzwgnO+A8YWNAFg5nipgphYGJZZBKk/bN5lv5ecFseiza5
	y3bYiGtDqZjI2GyUrHAUVIkLhIsRTMxNUV34Bpn3HI6PG3/SoJUCj1/5IczRMDklI7HfHoMUUN0k8
	HN61qL4RVh376sbn2Vkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llcp9-007lmL-QC; Tue, 25 May 2021 19:34:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llcX1-007d8c-Bi; Tue, 25 May 2021 19:16:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E605F610A1;
 Tue, 25 May 2021 19:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621970158;
 bh=Ic/XP5SaZJAGzEAKMh9ZFFeMeUnuVLBZvSWO7z7/HQs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=hJ1NmT7JQFhl1mf6po8zwX3S8ONxUyN33ksA+WIB1wbQtc7JUq/4edPHhJjl8QDso
 Qn73DVaV7pQIW/eTgWte9ZdnqT1poUVzGDamaxarF7z+LTZKuqs6vkiDds9b1HVQFq
 jBsnCiiT67t6eJNWEc49tqWY/d6hNhFo+F0KeWbnbDT21nTOLNpcFLUlW3bkL6a1Vw
 bsYfAHhVhzDJrWvUmUrUZJvWSkuoXgVOhKKlTw6oRGhvKcYu8u3hZmHcjNAQDcA4jr
 KBBZzTDv1YaoGHIkIES3em7lIU2qNXbK+B/7wMQTohBppGMd/RKvGmw4uAe7G7/7wO
 OiYZdxyN4tF6Q==
Date: Tue, 25 May 2021 14:15:56 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Punit Agrawal <punitagrawal@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Leonardo Bras <leobras.c@gmail.com>, Rob Herring <robh@kernel.org>,
 PCI <linux-pci@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Subject: Re: [BUG] rockpro64: PCI BAR reassignment broken by commit
 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit
 memory addresses")
Message-ID: <20210525191556.GA1220872@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXEBePfKDOc6eo9yjZPnVeFimX-zxR+R3As+2pP9XnZkuQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_121559_462055_CFCC6EFE 
X-CRM114-Status: GOOD (  10.91  )
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

On Tue, May 25, 2021 at 05:54:56PM +0200, Ard Biesheuvel wrote:
> On Tue, 25 May 2021 at 17:34, Peter Geis <pgwipeout@gmail.com> wrote:

> > > > >> > On 2021-05-18 10:09, Alexandru Elisei wrote:
> > > > >> >> [..]
> > > > >> >> [    0.305183] rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
> > > > >> >> [    0.305248] rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbdfffff -> 0x00fa000000
> > > > >> >> [    0.305285] rockchip-pcie f8000000.pcie:       IO 0x00fbe00000..0x00fbefffff -> 0x00fbe00000
> > > > >> >> [    0.373705] rockchip-pcie f8000000.pcie: PCI host bridge to bus 0000:00
> > > > >> >> [    0.373730] pci_bus 0000:00: root bus resource [bus 00-1f]
> > > > >> >> [    0.373751] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff 64bit]
> > > > >> >> [    0.373777] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xfbe00000-0xfbefffff])

> ... For some reason, lspci translates the BAR values to CPU
> addresses, but the PCI side addresses are within 32-bits.

lspci shows BARs as CPU physical addresses by default.  These are the
same addresses you would see in pdev->resource[n] and the same as BAR
values you would see in dmesg.

A 64-bit CPU physical address can certainly be translated by the host
bridge to a 32-bit PCI address.  But that's not happening here because
this host bridge applies no translation (CPU physical 0xfa000000 maps
to bus address 0xfa000000).

"lspci -b" shows the PCI bus addresses.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
