Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A8E5C9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 15:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HICziQpDBfaUge3w4l3N4W0mWT6gtV0pKGOY5FxDV3Y=; b=DbnKaZn5pjeIAG
	2A2uzU1Bkfxdu1Q7RmKUk2S0CHHN8lSQdqMd4XlSH/HKXbriOV3EGw8J1Q9gRMny57Sf036X5Pmnp
	sXjXci0hBJTrdHtVP0tUaiouF33ZVST5Dyk3kXz5VtfVcMiQgIx8jcREkPxrU45q+tOqmIe/7qw6a
	NjCrvdc6SnnVgaMRhxveb9PTz9uk2B9+gaqT7Nsc24ccKWNT/1GXnbzTLqJMh4v2bBG5jETC5h3p5
	1uOXKKQsXRUgZsVChAUA1+DBfhe28sP0Gs3G3hysiGPbQwT0EljWoPBxrVHBIcshsOQI7oTELOaOI
	JTPT6LdxYaCWIh8NwR/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Oqu-00000008jVU-1Hvs;
	Wed, 23 Sep 2026 15:25:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Oqs-00000008jVN-212p
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 15:25:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E4207600AA;
	Wed, 23 Sep 2026 15:25:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BFEB1F000FF;
	Wed, 23 Sep 2026 15:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790177141;
	bh=qHMkX2s9Ge8svmrLSvkdu6SgikwO19QmNNhQJas/lcM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jfnB3VF2Mun/fQccSLUyRjXMpQYqNRFR9bCzxnBRJTM0GCVE44C3FNuDX9wKN37Ea
	 IjHrTxYdx13JjKOb2UCZMDetm3QS/dP2bCmRznn7ajMlyv+6TR0njobemwvn6HBHd8
	 gEUmatf55G6LPyMJGuU3548oI+fbglph9jv9ziGZXsOBvpwRWTXOfAyvbfrnb9Ejf+
	 EW+YPAIcrrPAB/qVHbXVEb5ADlVyeW5NPAABidsROf5dhrOjtOVc4/or0/svc1nRZL
	 HznuI/36pKVGs3fAFCl5oTv5rgeljn0TXYETqEUcqaxXT7HnYcflESPVJGmNboRwjr
	 tcvr77JtUivGw==
Date: Wed, 23 Sep 2026 17:25:37 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v3 0/3] Small INTx fixes for Rockchip's dwc based PCIe
 controller driver
Message-ID: <arPvcQIu46N_gTmB@ryzen>
References: <1790044622-164744-1-git-send-email-shawn.lin@rock-chips.com>
 <DLMKWV1AH8TZ.2R3JK2NPM4KZB@cknow-tech.com>
 <08329b2b-449a-4036-8e82-ad67d0d037ee@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08329b2b-449a-4036-8e82-ad67d0d037ee@rock-chips.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Hello Shawn, Diederik,

On Wed, Sep 23, 2026 at 05:21:59PM +0800, Shawn Lin wrote:
> >
> > I build a kernel with this patch set (7.3~rc4-2) and got several warnings
> > like this, shortly followed by a stack trace:
>
> Sashiko already reportted some valid concern around this, and I'll plan
> to rework this series a bit later. Thanks for reporting this.

Just thinking out loud:

Patch 1/3 in this series fixes a regression, so it should be picked up as
soon as possible.

Patch 2/3 is converting the resources to be device managed.
However, after patch 1/3 (if the moved code is called _before_
dw_pcie_host_init()) the only thing left after dw_pcie_host_init() is the
PCIE_CLIENT_INTR_MASK_MISC write.

I.e. there is no error return remains that would need a dw_pcie_host_deinit().

So there is no strict need to convert to devm_().
You can do so, but that should be in a separate series IMO.


In fact, Diederik's later warnings are a result of Patch 2/3 which replaced
irq_domain_create_linear() with devm_irq_domain_instantiate():

   error: hwirq 0x0 is too large for :pcie@fe150000:legacy-interrupt-controller
   WARNING: kernel/irq/irqdomain.c:676 at irq_domain_associate_locked+0x118/0x1a0


The fix seems to be to add .hwirq_max = PCI_NUM_INTX, to
rockchip_pcie_init_irq_domain():

The fix is one line in rockchip_pcie_init_irq_domain() :
				.size = PCI_NUM_INTX,
				.hwirq_max = PCI_NUM_INTX,



Patch 3/3 looks like a theoretical problem that Sashiko found.

Is the underlying problem real? It's plausible, but nobody has reproduced it.
For it to happen, the controller's legacy IRQ output has to be asserted while
clocks are gated. Two ways that could happen:

- The output was high when clk_bulk_disable_unprepare() froze the logic.
- A device was still asserting INTx when an AER- or sysfs-triggered reset
  stopped the link.

Patch 3/3 is not enough though:

disable_irq() never masks this chained IRQ in hardware, so
rockchip_pcie_intx_handler() can still run and read the unclocked APB.

This is the kind of case IRQ_DISABLE_UNLAZY exists for, according to the
comment above irq_disable().

Minimal amend of patch 3/3 as it currently looks:

turn off lazy disable for this line when the chained handler is installed:
	irq_set_status_flags(rockchip->intx_irq, IRQ_DISABLE_UNLAZY);
	irq_set_chained_handler_and_data(rockchip->intx_irq,
					 rockchip_pcie_intx_handler, rockchip);

Such that irq_disable() masks the chained IRQ.

Do we want patch 3/3? Probably.. but this race seems very small...
probably most imporent to get patch 1 (with the code move _before_
dw_pcie_host_init()) accepted ASAP, as it currently is causing problems
for Diederik.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
