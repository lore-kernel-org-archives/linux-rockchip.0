Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38289C624D3
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 13:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HSV3rS23uOtwH19QGw/VN0Ig4W2wAnjSvqOFCDZXFoI=; b=UaxbMh3yszgSd+
	UYDyLnhqjcHMedfduiF3OeOYZrcPlrp+I8nAp4xDZ/I8Q9Ab0CnXjkrjreHw27JLVoVz+lJTjI3z5
	yK5ab23t7Z5w41eNpRfAvecI90qB+LDuzLOWZLaPkMvTzaD+4dnxms8xrB5p63lldfW+PFZ+wC2ZQ
	bMITJzRRzdhSvpvXpZIUhXR+RdhWfk1I0E6mgGD4q2EwOQNYRpkemCIuAthzobdn+iPvHGLLOh+S0
	ZADl7NvPv361BhuLbNjelmDi6rtD0nVVaQQ1U10Tqt8R/ZQ91f4aRxz1CZgqR43oO1VGFpi8JQ5af
	Lp8v3KvoVgrujaQ+T1ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TdU-000000026G8-3aJP;
	Fri, 04 Sep 2026 13:07:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TdS-000000026G2-2dhP
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 13:07:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 13638600C8;
	Fri,  4 Sep 2026 13:07:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D0581F00A3D;
	Fri,  4 Sep 2026 13:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788527233;
	bh=gGkHkZzkVW6DGI/musisUQVSQ3nO7MJaOAJUcl+rmIQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OF7/7GuZqjBa3t9j0zbucx1Cp4NHp2XVzcUd0a/nqMTYPlz5ft58IO5evUwy8KtjB
	 HuFJACgXPmH193rRZWkngSqtiE/SXtEZ4SilCZFW/M64l9TT54YNz2WIrJpLO+ParR
	 pvS6VbH8t90JwHhXe1whCD3rGQgh9yWWIFCzlgHbwgIvcfOCxur5kcTXddPHLh0Yjr
	 1P3GXYpK1KlGl69kWrNGqHLZMyKrWnyx7N8Rembpc2+r+rEurJWZJEtZ8TCH4lF9Dk
	 UoH5CsXsegCw85ezo6HLXa8LSjR38oexVeIZd2nOyHCJwrnbL9+vFaFPQFX4LmCI8s
	 W6IvIzgOKEyhA==
Date: Fri, 4 Sep 2026 15:07:09 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>
Subject: Re: [PATCH v2 1/2] PCI: dw-rockchip: Move the INTx irq setup to
 probe and make it devm-managed
Message-ID: <aprCfVgc1dl_h24T@ryzen>
References: <1788484709-139123-1-git-send-email-shawn.lin@rock-chips.com>
 <1788484709-139123-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1788484709-139123-2-git-send-email-shawn.lin@rock-chips.com>
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

On Fri, Sep 04, 2026 at 09:18:28AM +0800, Shawn Lin wrote:
> Since commit b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port()
> and use for link down"), .reset_root_port() re-runs the host ops
> .init() callback to reprogram the Root Complex after a controller
> reset. That works for the register programming, but .init() is not
> re-entrant: it also creates the INTx irq domain and installs the
> chained INTx handler. Every root port reset therefore ends up with a
> second irq domain registered for the same fwnode: the previous one is
> leaked, as it is never removed, and worse, the INTx virqs of the
> downstream PCI devices were allocated in the previous irq domain and
> are never re-mapped, while the chained handler now looks up virqs in
> the new, empty domain. After a link down recovery, INTx interrupts
> are silently lost.
> 
> Fix it by moving the of_irq_get_byname() lookup, the INTx irq domain
> creation and the chained handler installation out of .init() and into
> rockchip_pcie_configure_rc(), right after dw_pcie_host_init(). This
> mirrors how the qcom driver requests its global IRQ, and leaves
> .init() with nothing but idempotent register programming, so both
> .reset_root_port() and dw_pcie_resume_noirq() can safely re-run it.
> Re-running of_irq_get_byname() on every resume is also gone.
> 
> With the irq setup now living in probe, tie its lifetime to the device
> with devres: create the irq domain with devm_irq_domain_instantiate()
> and uninstall the chained handler through the
> rockchip_pcie_intx_chained_release() devres action. The driver is
> builtin and cannot be unbound (suppress_bind_attrs), so probe failure
> is the only path that ever needs this cleanup, and devres takes care
> of it without sprinkling it over every error path. Since the irq setup
> is the last step of rockchip_pcie_configure_rc(), the only failure
> point left after the chained handler is installed is
> devm_add_action_or_reset() itself, whose failure mode runs the action,
> so the handler can never run against the devm-freed rockchip
> structure. devres also unwinds in reverse registration order, so the
> handler is always uninstalled before the domain is removed. There is
> no devm API for chained handlers, hence the small devres action
> wrapper.
> 
> Fixes: b376b3ff9cb0 ("PCI: dw-rockchip: Implement .reset_root_port() and use for link down")
> Suggested-by: Niklas Cassel <cassel@kernel.org>
> Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

I would have written it in two commits:
1/3 that moves the of_irq_get_byname() lookup, the INTx irq domain creation,
    and chained handler installation.
2/3 that makes the irq doman device managed, to not leak the resources, as
    flagged by Sashiko
(3/3 that masks the INTx IRQ during .reset_root_port())


Since fixing the resource leak seems like a separate issue.

The commit message for this patch does seem quite long, mostly because
it is fixing two separate issues.


Sorry that we did not detect this INTx issue when sending the
.reset_root_port() patch. Since RK3588 does not support INTx in EP mode,
it is unfortunately not tested when running the pci_endpoint_test selftest.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
