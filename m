Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFF4BC982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 09:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9eC8rffgQn01esESIMIHRC7zCiMXxuDXPRaXT0PHeU=; b=4Uz4OtHKu9q2Pd
	/UyASPkAV8kmrXeXAzvn/DcNXjD9rj5UUWdcf9ZgLaCYt/Cv5PfQp0uLiT0fsxXyd+Ye4yzu9lWJx
	jmuNw3wrL6j++QSzebY3YXNIwycM7y1t4MDsQj5Q563fZzC4w+SoCKExBjGo0wiOH3QsMP8zUgnVY
	XcaE4SjXjrtB0bPCpWPn7HkhWmm/fb9C7hq1PMpimRJg6CcUBu8szh6n4xHmL7h5Cyt+szXogU79W
	hzE7dVOGZ3+eYFAOU6ERRDi/wFXvJ/o7QTvykSSkRWdPFNX34Y/BYrN46fqni//LX8aSQ69fQ0T//
	C8KfWMVHRE+iFY4RCrfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8xGI-00000004zTG-2BiS;
	Tue, 22 Sep 2026 09:58:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8xGH-00000004zT9-1rbl
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 09:58:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D7A38411F2;
	Tue, 22 Sep 2026 09:58:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 655821F000FF;
	Tue, 22 Sep 2026 09:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790071084;
	bh=WQBS5R0whaJkYzuhh7NQd3CDih82U3WKGo1Y562Jqzk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Y6uGvOZ4yCZl/PLPOeanDDDwQBxVLj4TMH71KosAc5aUyPycFwXEfPHyJxBva2VIr
	 RV4GX2zpNvJezL2iA5hlLC+BpB2g8ZmRCbtQ6+N9z1GZu8LcMaAITH7IQLnEx9VgZW
	 KNqbtbf2k1mmkw8rssaFV+XiFsmnGZa0viWhbte0iJuhWBNYaWWjv7CYCboUGLfXaN
	 BRLYhrjRut02OeGfJQUP1gEHdPT/anEwfnaTKjsSEEXicaBJjMzx8vR9Z+VeX85aZr
	 064DoJAEDK8e0X5MXifNjY4nCiTcRCb/aDJfFcTUmDjbidbJm+CjegB+4lNRP6D3ZD
	 m6Anbey3No0LQ==
Date: Tue, 22 Sep 2026 11:58:00 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v3 2/3] PCI: dw-rockchip: Make the INTx irq setup
 devm-managed
Message-ID: <arJRKDwpZl_Cb1zP@ryzen>
References: <1790044622-164744-1-git-send-email-shawn.lin@rock-chips.com>
 <1790044622-164744-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1790044622-164744-3-git-send-email-shawn.lin@rock-chips.com>
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

On Tue, Sep 22, 2026 at 10:37:01AM +0800, Shawn Lin wrote:
> The irq domain and the chained handler set up by the previous commit
> are resources owned by the device, but nothing releases them if probing
> ever fails after they are set up, and they are not tied to the device
> lifetime in any other way either.
> 
> Tie their lifetime to the device with devres: create the irq domain
> with devm_irq_domain_instantiate() and uninstall the chained handler
> through the rockchip_pcie_intx_chained_release() devres action. The
> driver is builtin and cannot be unbound (suppress_bind_attrs), so probe
> failure is the only path that ever needs this cleanup, and devres takes
> care of it without sprinkling it over every error path.
> 
> Since the irq setup is the last step of rockchip_pcie_configure_rc(),
> the only failure point left after the chained handler is installed is
> devm_add_action_or_reset() itself, whose failure mode runs the action,
> so the handler can never run against the devm-freed rockchip structure.
> devres also unwinds in reverse registration order, so the handler is
> always uninstalled before the domain is removed. There is no devm API
> for chained handlers, hence the small devres action wrapper.
> 
> While at it, drop the now unused rockchip variable from
> rockchip_pcie_host_init().
> 
> Suggested-by: Niklas Cassel <cassel@kernel.org>

Thank you for giving me credit :)

Unfortunately, I don't think that I was the one who suggested this change.
I think you came up with the idea :)


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
