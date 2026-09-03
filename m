Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16191C624A4
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 08:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LwtT1O3SLDY5i4RXBno2Uoticm+KCdSXs242pPogsY=; b=lFw2GQ9NYEBr+D
	nbYK2uHebaJqeXB0tOln3pi9fDN7lvYams2ewYg0P2QyGB0XPdVyLPigHMU/XdyVE6PAFu4VIH/og
	aGVVBMyuqhNgTOF7BQg+THxk7I4bOy1LWL3SaRtlrPGxppkIFk1l8SBgEhSF/tLMkKo8ihIMuAuJV
	I4xdnAZM1qYkkQiu+aV39caaQd5beLBoOakTSs9DzQTG+/Q8zUkYgn8Xfo8fxhsedbfOdX2Xecqvv
	Sd2uasEEaBAdpgU1+JTuG0yMQDeEP+NsR8WOc31CfrjXQkeX9B/CGkr5dz8JYz+/KxLLy7zeMAAZM
	I6e4ajzXz/utIfbCB2Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22xP-0000000GoZk-2Fdp;
	Thu, 03 Sep 2026 08:38:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22xN-0000000GoZb-45Bj
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 08:38:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7185243AF8;
	Thu,  3 Sep 2026 08:38:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE6741F000E9;
	Thu,  3 Sep 2026 08:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788424681;
	bh=SEdKLGY8Dx0KycnlUSJA/O5HwJ6iu4wVyfrZkU/ciM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kU4/dqMkg7o/QwADyTl7D0EuG3Ijp9hna0lRJouj950+zmLnYfoj+3v8bFmD4b98d
	 +SoQaNCKhGaPuri126PjM/3o/PTe8gxFC1BBJa1H57WmVYxsq6jJDQ4r643V/XdY5b
	 579kNA0O1S7TURCMiA1a1hiqdnzzr/lQgQr0QsQV2d5/ySXkY4lVYunQBaKd/uydP9
	 t8VQ6T6tmCwzEmeonT3H6ljrgFp+JPMPD5WU7pigFqe9fMHIcFH5qlMAUNO3vtQDyg
	 fnWeDUC7JI96HVYqE3JpNpySeOeDyzFZ/oAvDNNmsDFrafqJegtk2FpZDYUUUiBUel
	 kBB9gFDrBQURQ==
Date: Thu, 3 Sep 2026 10:37:57 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 2/2] PCI: dw-rockchip: Do not recreate the INTx irq
 domain on root port reset
Message-ID: <apkx5X83hrHIPOZN@ryzen>
References: <1788403477-71491-1-git-send-email-shawn.lin@rock-chips.com>
 <1788403477-71491-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1788403477-71491-3-git-send-email-shawn.lin@rock-chips.com>
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

On Thu, Sep 03, 2026 at 10:44:37AM +0800, Shawn Lin wrote:
> .reset_root_port() re-runs the host ops .init() callback to reprogram
> the Root Complex after the controller reset. However, .init() also
> creates a new INTx irq domain on every root port reset, so that:
> 
>   - the previous irq domain is leaked, as it is never removed, and two
>     irq domains end up registered for the same fwnode;
> 
>   - the INTx virqs of the downstream PCI devices were allocated in the
>     previous irq domain and are never re-mapped, while the chained
>     handler now looks up virqs in the new, empty domain. Hence, after a
>     link down recovery, INTx interrupts are silently lost.
> 
> Split the (re)programming of the Root Complex registers out of .init()
> into rockchip_pcie_host_hw_init() and call that from .reset_root_port()
> instead. The INTx irq domain and the chained handler are now only set up
> once, at probe time, which keeps the already mapped virqs valid across
> root port resets.
> 
> Fixes: b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port() and use for link down")
> Cc: Niklas Cassel <cassel@kernel.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---

If I compare to pcie-qcom.c, the difference is that they do
e.g.:
irq = platform_get_irq_byname_optional(pdev, "global");

after calling dw_pcie_host_init() in qcom_pcie_probe().


I guess pcie-dw-rockchip.c could do the same:
Call of_irq_get_byname() and rockchip_pcie_init_irq_domain() in
rockchip_pcie_configure_rc(), after calling dw_pcie_host_init().

That way, you don't need to introduce another rockchip_pcie_host_hw_init().

pci->pp.ops->init() is called by both dw_pcie_host_init() and
dw_pcie_resume_noirq(). So calling of_irq_get_byname() in .init()
does seem slightly wrong, as we would get the irq on each resume.

Perhaps pcie-dw-rockchip.c does not have support for resume, so it
does not matter right now, but still seems a bit weird to call
of_irq_get_byname() in init().

I did not look if rockchip_pcie_init_irq_domain() should be called
on each resume, but I since we don't tear down the irq_domain in
pci->pp.ops->deinit(), in fact we don't even have a ->deinit(),
so calling rockchip_pcie_init_irq_domain() in ->init() does seem
wrong as well.

So my vote is to move both to rockchip_pcie_configure_rc(), after
calling dw_pcie_host_init().


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
