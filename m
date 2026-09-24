Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 368FAC9830E
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 08:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRcFKECjYfFNwVi8T2QCTA9uG7st7s7bsci9khtN7ZA=; b=QTuaTqUPYyIcF0
	YZF+EPRc8eX2nU+oGXDQ03HeOfhX6vXW9hxhdktEieDdeqwu3j7S7wavwJwVxdVOypIRgYcVzu22p
	bkHs1s6qZoAoG2dFozzHUlPvwFdeaQmOPZfstpfIi+FV9XGraUQOvS4aDTwCK15WPx6p1o7dKZJuX
	mrWSkpxUXGrX0VCBfcTw1RYBXizCwo1eoTO+MMfSPqPAHrQT6cX88Wc6lsYAdPFkFCviEW7jPcZUe
	f/pmPb/jgxX+qV7re7px7vPc2TBg6MY8c6s0pgd+kTWgE1CqAz1bPKCIovzoiwsG9WuP8r8FFoDXW
	fxYAmWOAGT32Fd35ANNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9fB6-0000000AUvk-3THQ;
	Thu, 24 Sep 2026 08:51:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9fB5-0000000AUvL-0ptg
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 08:51:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D06C34070A;
	Thu, 24 Sep 2026 08:51:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 503591F00893;
	Thu, 24 Sep 2026 08:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790239898;
	bh=XEJJKZqaP8xjYZaVzZlwuqVJrOreSz0de3WYYv+5tUA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UHH0nGsPJkpekPqs1QTIDu/AYhURtamo8RQoRiM7LNLjMyjGJlFnj8IZ9CPYKMaqC
	 v8n1Eu2AqNm0HqxO8LPw+lzI4i/9FAL5HtZm06RA5Z3VDO9YsZ6QBVvW2nvOlVoL1e
	 6fHHkW1OA9VJNGPMe2jbQpTnVFoYHSaPD9xGZlOeee87YGbOnMqj3q7l2dGS7J0615
	 G95WoHSvJm9mBVHLgowvAyI5jYuANpqeoW1WiaHMlnY5TlnKJ1Ok7ahLyKfzz827GE
	 xNBSsNjY20bpQqsil8/vv9U/2deOmFCy3ywVB+1Pxg7F3BAGV0g/gBR/7aEMoIRmTs
	 1lZmv4Klg5y+Q==
Date: Thu, 24 Sep 2026 10:51:34 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: Re: [PATCH v4] PCI: dw-rockchip: Move the INTx irq setup to probe
Message-ID: <arTklmgPsyKzQf93@ryzen>
References: <1790222793-77182-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1790222793-77182-1-git-send-email-shawn.lin@rock-chips.com>
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

On Thu, Sep 24, 2026 at 12:06:33PM +0800, Shawn Lin wrote:
> Since commit b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port()
> and use for link down"), .reset_root_port() re-runs the host ops .init()
> callback to reprogram the Root Complex after a controller reset. That
> works for the register programming, but .init() is not re-entrant: it
> also creates the INTx irq domain and installs the chained INTx handler.
> Every root port reset therefore ends up with a second irq domain
> registered for the same fwnode: the previous one is leaked, as it is
> never removed, and worse, the INTx virqs of the downstream PCI devices
> were allocated in the previous irq domain and are never re-mapped, while
> the chained handler now looks up virqs in the new, empty domain. After a
> link down recovery, INTx interrupts are silently lost.
> 
> Fix it by moving the of_irq_get_byname() lookup, the INTx irq domain
> creation and the chained handler installation out of .init() and into
> rockchip_pcie_configure_rc(), just before dw_pcie_host_init(). The
> lookup has to happen before the host is initialized, because
> dw_pcie_host_init() enumerates the bus and probes the downstream
> devices, and pci_assign_irq() maps their INTx interrupts at that point:
> if the domain does not exist yet, the mapping fails and the devices end
> up without a usable INTx. This also mirrors how the qcom driver requests
> its global IRQ, and leaves .init() with nothing but idempotent register
> programming, so both .reset_root_port() and dw_pcie_resume_noirq() can
> safely re-run it. Re-running of_irq_get_byname() on every resume is also
> gone.
> 
> Fixes: b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port() and use for link down")
> Suggested-by: Niklas Cassel <cassel@kernel.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
