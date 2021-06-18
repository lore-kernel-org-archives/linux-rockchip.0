Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DA98C48BDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 15:33:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4EDB861205
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 15:33:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4EDB861205
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=IbjsrAubAInO8kgeMv+/qJFOubLwO0k8AIzVTdZYXuI=; b=icpuEi41XlvNbs
	PM+ZZCnFlGS+QjXQFCBR/0u2BBgqeV+ErZhqNzps7kLrsaKcwKDDkHHFpspwgNKv6wT+zKrK+T6C1
	YvSGGrMpJ4x/KJ2Dwn2Ez4qVR1LEUioRLHalCXx5FHp8Wqm7NVF9mgcFL5aql4L8PcJPUXZPNMHyA
	blnmKt0TawSoD10GsSaGYS2uLxPRRZjhEct/RgK16kfzlphl4Iq2XE3rtp+z72nooD9LpryKzV+0U
	PbuKUfAEK+Bp5R388mURmUzLVcre6xulAPkUsmCDbcolK/c9UKgj/p2H+7iu2U1Z7YVBel8HOInpf
	lN6H3nD3GWvD6ovh9J3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luGUt-00ElGd-KB; Fri, 18 Jun 2021 15:33:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luGUL-00Ekyv-20; Fri, 18 Jun 2021 15:32:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 00BEB6120A;
 Fri, 18 Jun 2021 15:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624030376;
 bh=+FFSC0zj5RwLkGI3nedO+OdvNVE7P5xcolwUD5+csdM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=a91Z9QyM5lf3pO3gumqpUQpzlBcimPsoRvNl9xcT/OkC/UwBLxXD1c2HHJxzwS6xY
 oyhw7cWJm5svXcpzDDP7gB8cd4Z1XkW1yFeBwK2lRKnqhYGuW6yC4ShbtIqwHNv78k
 NIqH09prr5+xFH1y2bEE86cnH+yhGXsQjbmauGK/zGjq1HGc/HznLjRKpGs+01bk2n
 ZHYA40H5k3Fbt+2IDg9Zx0Na1cyUJoBKIqfhtaGu4lPDIzzVnX6brbvkHd8o95WcID
 9m00zajpridHKyryJhnyqyDcXMgM3bolfInXjD7PR2zcQgEPf4AeW3Onlur4/KDV/d
 bPC6DHtn3Fxag==
Date: Fri, 18 Jun 2021 10:32:54 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Domenico Andreoli <domenico.andreoli@linux.com>
Cc: Punit Agrawal <punitagrawal@gmail.com>, robh+dt@kernel.org,
 maz@kernel.org, leobras.c@gmail.com, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, alexandru.elisei@arm.com, wqu@suse.com,
 robin.murphy@arm.com, pgwipeout@gmail.com, ardb@kernel.org,
 briannorris@chromium.org, shawn.lin@rock-chips.com,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v4] PCI: of: Clear 64-bit flag for non-prefetchable
 memory below 4GB
Message-ID: <20210618153254.GA3191723@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMyl31ERhGDE1yGh@m4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_083257_169138_453325BC 
X-CRM114-Status: GOOD (  21.95  )
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

On Fri, Jun 18, 2021 at 03:55:43PM +0200, Domenico Andreoli wrote:
> On Wed, Jun 16, 2021 at 06:12:34PM -0500, Bjorn Helgaas wrote:
> > On Tue, Jun 15, 2021 at 08:04:57AM +0900, Punit Agrawal wrote:
> > > Alexandru and Qu reported this resource allocation failure on
> > > ROCKPro64 v2 and ROCK Pi 4B, both based on the RK3399:
> > > 
> > >   pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff 64bit]
> > >   pci 0000:00:00.0: PCI bridge to [bus 01]
> > >   pci 0000:00:00.0: BAR 14: no space for [mem size 0x00100000]
> > >   pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
> > > 
> > > "BAR 14" is the PCI bridge's 32-bit non-prefetchable window, and our
> > > PCI allocation code isn't smart enough to allocate it in a host
> > > bridge window marked as 64-bit, even though this should work fine.
> > > 
> > > A DT host bridge description includes the windows from the CPU
> > > address space to the PCI bus space.  On a few architectures
> > > (microblaze, powerpc, sparc), the DT may also describe PCI devices
> > > themselves, including their BARs.
> > > 
> > > Before 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
> > > flags for 64-bit memory addresses"), of_bus_pci_get_flags() ignored
> > > the fact that some DT addresses described 64-bit windows and BARs.
> > > That was a problem because the virtio virtual NIC has a 32-bit BAR
> > > and a 64-bit BAR, and the driver couldn't distinguish them.
> > > 
> > > 9d57e61bf723 set IORESOURCE_MEM_64 for those 64-bit DT ranges, which
> > > fixed the virtio driver.  But it also set IORESOURCE_MEM_64 for host
> > > bridge windows, which exposed the fact that the PCI allocator isn't
> > > smart enough to put 32-bit resources in those 64-bit windows.
> > > 
> > > Clear IORESOURCE_MEM_64 from host bridge windows since we don't need
> > > that information.
> > > 
> > > Fixes: 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit memory addresses")
> > > Reported-at: https://lore.kernel.org/lkml/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com/
> > > Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
> > > Reported-by: Qu Wenruo <wqu@suse.com>
> > > Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
> > > Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> > > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > 
> > Applied with:
> > 
> >     Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
> >     Reviewed-by: Rob Herring <robh@kernel.org>
> >     Acked-by: Ard Biesheuvel <ardb@kernel.org>
> > 
> > to for-linus for v5.13, thanks a lot!
> 
> Late-tested-by: Domenico Andreoli <domenico.andreoli@linux.com>
> 
> See https://lore.kernel.org/lkml/YMyTUv7Jsd89PGci@m4/T/#u

I updated the commit to add your report and tested-by, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
