Return-Path: <SRS0=qhcO=LK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C549FC48BE5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 23:20:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 74C79611BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 23:20:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 74C79611BE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=DpkvX4ZfLXNWkgf9kFKRTUJwEGRL3EAlPy0BTMbaSsw=; b=N6HkTK+MG9oAXA
	hvhxLWjqwpqbmNhHR4JpIVt2n6hO52RyRFGvJU61PZatqjGZfz9wWPaux+/Y77XAkqHDdFLX5gK0h
	WAUZz5iFN23esPS5ZLF65mwGVWPdc56fzzAPzNmiftGqfEhVbRo4G7+F5nfx256r/OdXUYC70vKGl
	5mTVEbwDdnnD+Au6lybikhNXpf8g0HBr8RToALlZn8fpAgNiiHhGMB77zQHiDJV75OHKb6LsqY3WP
	28MQA1aZtDYhyvWFb6GnPMjlMwd1gVEYgNqnF94XPZcTGBfde8J9eN3u7OHMGAnO4DWWwRMTBhrEH
	WzvUAmA51+rX0p3X7h8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltepI-0086fh-1c; Wed, 16 Jun 2021 23:20:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltei4-0083GT-Ec; Wed, 16 Jun 2021 23:12:38 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id ADE6660FD9;
 Wed, 16 Jun 2021 23:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623885156;
 bh=OVbXkTYPJYSvlb2ydGcDGL2dM5WRqImNo6pxfwfoU38=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Ekx6S2OTdtZxtF+IMx3PykQtRIAqidsmXP7oh5Kq/1cZPdYal3EkpifBZNyIbcN9I
 qH+4on2osOt7fJ82CkAXwT0kBa3tZLKUMvFq+9+jBtPnO5WtS1rfkpPf2SYiLKeEpz
 QvppmUUxxDCVEe6uTkXzSe8TyiH1ZMWa3Dgu8R72QycCN2/ol+6u/+Vck+sqyeMqwc
 HVg5LthcLFYPEdNQh8bmhLQiUbWvyIyIHgN7g6aI7VE16I0mCokZ/zXthy8t4g2w1r
 bcBokip2xSumuHGL6gOMGB8wSq8F4SBsGibz+FhIoWny27cWl4P4UZ8RtVlJ+GrVWe
 QsbEs1vWVbx3w==
Date: Wed, 16 Jun 2021 18:12:34 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Punit Agrawal <punitagrawal@gmail.com>
Cc: robh+dt@kernel.org, maz@kernel.org, leobras.c@gmail.com,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, alexandru.elisei@arm.com, wqu@suse.com,
 robin.murphy@arm.com, pgwipeout@gmail.com, ardb@kernel.org,
 briannorris@chromium.org, shawn.lin@rock-chips.com,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v4] PCI: of: Clear 64-bit flag for non-prefetchable
 memory below 4GB
Message-ID: <20210616231234.GA3018015@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210614230457.752811-1-punitagrawal@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_161236_625946_FE22E396 
X-CRM114-Status: GOOD (  33.99  )
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

On Tue, Jun 15, 2021 at 08:04:57AM +0900, Punit Agrawal wrote:
> Alexandru and Qu reported this resource allocation failure on
> ROCKPro64 v2 and ROCK Pi 4B, both based on the RK3399:
> 
>   pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff 64bit]
>   pci 0000:00:00.0: PCI bridge to [bus 01]
>   pci 0000:00:00.0: BAR 14: no space for [mem size 0x00100000]
>   pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
> 
> "BAR 14" is the PCI bridge's 32-bit non-prefetchable window, and our
> PCI allocation code isn't smart enough to allocate it in a host
> bridge window marked as 64-bit, even though this should work fine.
> 
> A DT host bridge description includes the windows from the CPU
> address space to the PCI bus space.  On a few architectures
> (microblaze, powerpc, sparc), the DT may also describe PCI devices
> themselves, including their BARs.
> 
> Before 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource
> flags for 64-bit memory addresses"), of_bus_pci_get_flags() ignored
> the fact that some DT addresses described 64-bit windows and BARs.
> That was a problem because the virtio virtual NIC has a 32-bit BAR
> and a 64-bit BAR, and the driver couldn't distinguish them.
> 
> 9d57e61bf723 set IORESOURCE_MEM_64 for those 64-bit DT ranges, which
> fixed the virtio driver.  But it also set IORESOURCE_MEM_64 for host
> bridge windows, which exposed the fact that the PCI allocator isn't
> smart enough to put 32-bit resources in those 64-bit windows.
> 
> Clear IORESOURCE_MEM_64 from host bridge windows since we don't need
> that information.
> 
> Fixes: 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit memory addresses")
> Reported-at: https://lore.kernel.org/lkml/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com/
> Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
> Reported-by: Qu Wenruo <wqu@suse.com>
> Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Rob Herring <robh+dt@kernel.org>

Applied with:

    Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
    Reviewed-by: Rob Herring <robh@kernel.org>
    Acked-by: Ard Biesheuvel <ardb@kernel.org>

to for-linus for v5.13, thanks a lot!

> ---
> Hi,
> 
> The patch is an updated version to fix the PCI allocation issues on
> RK3399 based platforms. Previous postings can be found at [0][1][2].
> 
> The updated patch instead of clearing the 64-bit flag for
> non-prefetchable memory below 4GB does it unconditionally on the basis
> that PCI allocation logic cannot deal with the 64-bit flag (although
> it should be able to). The result is a simpler patch that restores the
> input to the allocation logic to be identical to before 9d57e61bf723.
> 
> Tested locally on a RockPro64 on top of v5.13-rc6. Please consider
> merging.
> 
> Thanks,
> Punit
> 
> Changes:
> v4:
> 
> * Updated Patch 1 based on Bjorn's suggestion. Also dropped the
>   Tested-by tags due to the change of logic
> * Dropped patch 2 and 3 from the series as it's not critical to the
>   series
> * Dropped the device tree changes (Patch 4) as they are already queued
>   in the soc tree
> 
> v3:
> * Improved commit log for clarity (Patch 1)
> * Added Tested-by tags
> 
> v2:
> * Check ranges PCI / bus addresses rather than CPU addresses
> * (new) Restrict 32-bit size warnings on ranges that don't have the 64-bit attribute set
> * Refactor the 32-bit size warning to the range parsing loop. This
>   change also prints the warnings right after the window mappings are
>   logged.
> 
> [0] https://lore.kernel.org/linux-arm-kernel/20210527150541.3130505-1-punitagrawal@gmail.com/
> [1] https://lore.kernel.org/linux-pci/20210531221057.3406958-1-punitagrawal@gmail.com/
> [2] https://lore.kernel.org/linux-pci/20210607112856.3499682-1-punitagrawal@gmail.com/
> 
>  drivers/pci/of.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index 85dcb7097da4..a143b02b2dcd 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -353,6 +353,8 @@ static int devm_of_pci_get_host_bridge_resources(struct device *dev,
>  				dev_warn(dev, "More than one I/O resource converted for %pOF. CPU base address for old range lost!\n",
>  					 dev_node);
>  			*io_base = range.cpu_addr;
> +		} else if (resource_type(res) == IORESOURCE_MEM) {
> +			res->flags &= ~IORESOURCE_MEM_64;
>  		}
>  
>  		pci_add_resource_offset(resources, res,	res->start - range.pci_addr);
> -- 
> 2.30.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
