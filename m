Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540D7C11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 18:59:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 11C9561435
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 18:59:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 11C9561435
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=P+hnsRSsvaCd8WHzSGNEHsdeTnS39+6cn2w+dovoEVY=; b=FI5oFmtmmgzcEX
	X3GqDvgaDl7Z4n4x34/e4yHF7GHRzrcPXR2O5veKw3EM48J0YMrpo7FjMtmrr28pbts2JhfaxyAyR
	dKIYkkPPfBzWpzCj+OXI1iSM0cIqpUnfd0rmR15TOSAY9Xf8TpbWLXSTP6dwL/FvqPP4bwbXLb2Ck
	Bbfx02x+7Q5y4UyA+aqltVXeTp03VhTvLZ4vAXc2rUSGEKZpeN8oPthR9cN6RDCeYDJjfzKHDwoIQ
	kvhdPXW8pKfyImWmmy8HEPyLBrcOTMBf8+PZNmRqEYCzpXIWHhIkvkVXm4kKosQ5zIhW+VyKSvkQO
	LTugI2VkL6Sh9ONxIDCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyfQx-00F3tc-Oz; Wed, 30 Jun 2021 18:59:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyfQi-00F3qc-PU; Wed, 30 Jun 2021 18:59:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25CFF613DF;
 Wed, 30 Jun 2021 18:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625079564;
 bh=+Qoi6zaLjN1sx/hHLl2ILKRfVIWSzyopQklvN1Izyu4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Sw9/2/1gN72JQ0kM1tTNHVuDPXymLqQ65jUUva/SL4uRF4yovOUUAzz4MwF/ljksR
 O2Sb3P6Z4xg+KXbamWozGCqigXjTFa9QpMisIwSzyrNXyDO7o/l8TXDAlWeR3riihy
 AYdHn29UotCsQ6qXOtYLd070CWeCYLicc8Q+1pUJdQYgZMvPyAvavzAMiHOoAObOSk
 v3z6olvK+j2UVAzYLWfgqi3qonfnIurxMkvIDs+BrFnLPajetU8Jx91uA8kOHBpJDH
 1SaEh73Apjs61DGAmi+b7qESo6w8fE9E/mx3pgbQBAH5geEMnxm2sET/7dWqRiQiae
 nheBUdcbkhu8A==
Date: Wed, 30 Jun 2021 13:59:22 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>, Jingoo Han <jingoohan1@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
Message-ID: <20210630185922.GA4170992@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210608080409.1729276-1-javierm@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_115924_924475_9430C169 
X-CRM114-Status: GOOD (  37.45  )
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

[+cc Michal, Jingoo, Thierry, Jonathan]

On Tue, Jun 08, 2021 at 10:04:09AM +0200, Javier Martinez Canillas wrote:
> IRQ handlers that are registered for shared interrupts can be called at
> any time after have been registered using the request_irq() function.
> 
> It's up to drivers to ensure that's always safe for these to be called.
> 
> Both the "pcie-sys" and "pcie-client" interrupts are shared, but since
> their handlers are registered very early in the probe function, an error
> later can lead to these handlers being executed before all the required
> resources have been properly setup.
> 
> For example, the rockchip_pcie_read() function used by these IRQ handlers
> expects that some PCIe clocks will already be enabled, otherwise trying
> to access the PCIe registers causes the read to hang and never return.
> 
> The CONFIG_DEBUG_SHIRQ option tests if drivers are able to cope with their
> shared interrupt handlers being called, by generating a spurious interrupt
> just before a shared interrupt handler is unregistered.
> 
> But this means that if the option is enabled, any error in the probe path
> of this driver could lead to one of the IRQ handlers to be executed.
> 
> In a rockpro64 board, the following sequence of events happens:
> 
>   1) "pcie-sys" IRQ is requested and its handler registered.
>   2) "pcie-client" IRQ is requested and its handler registered.
>   3) probe later fails due readl_poll_timeout() returning a timeout.
>   4) the "pcie-sys" IRQ is unregistered.
>   5) CONFIG_DEBUG_SHIRQ triggers a spurious interrupt.
>   6) "pcie-client" IRQ handler is called for this spurious interrupt.
>   7) IRQ handler tries to read PCIE_CLIENT_INT_STATUS with clocks gated.
>   8) the machine hangs because rockchip_pcie_read() call never returns.
> 
> To avoid cases like this, the handlers don't have to be registered until
> very late in the probe function, once all the resources have been setup.
> 
> So let's just move all the IRQ init before the pci_host_probe() call, that
> will prevent issues like this and seems to be the correct thing to do too.
> 
> Reported-by: Peter Robinson <pbrobinson@gmail.com>
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> Acked-by: Shawn Lin <shawn.lin@rock-chips.com>

I think the above commit log is perfectly accurate, but all the
details might suggest that this is something specific to rockchip or
CONFIG_DEBUG_SHIRQ, which it isn't, and they might obscure the
fundamental problem, which is actually very simple: we registered IRQ
handlers before we were ready for them to be called.

I propose the following commit log in the hope that it would help
other driver authors to make similar fixes:

    PCI: rockchip: Register IRQ handlers after device and data are ready

    An IRQ handler may be called at any time after it is registered, so
    anything it relies on must be ready before registration.

    rockchip_pcie_subsys_irq_handler() and rockchip_pcie_client_irq_handler()
    read registers in the PCIe controller, but we registered them before
    turning on clocks to the controller.  If either is called before the clocks
    are turned on, the register reads fail and the machine hangs.

    Similarly, rockchip_pcie_legacy_int_handler() uses rockchip->irq_domain,
    but we installed it before initializing irq_domain.

    Register IRQ handlers after their data structures are initialized and
    clocks are enabled.

If this is inaccurate or omits something important, let me know.  I
can make any updates locally.

Bjorn

> ---
> 
> Changes in v2:
> - Add missing word in the commit message.
> - Include Shawn Lin's Acked-by tag.
> 
>  drivers/pci/controller/pcie-rockchip-host.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index f1d08a1b159..78d04ac29cd 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -592,10 +592,6 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
>  	if (err)
>  		return err;
>  
> -	err = rockchip_pcie_setup_irq(rockchip);
> -	if (err)
> -		return err;
> -
>  	rockchip->vpcie12v = devm_regulator_get_optional(dev, "vpcie12v");
>  	if (IS_ERR(rockchip->vpcie12v)) {
>  		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> @@ -973,8 +969,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  	if (err)
>  		goto err_vpcie;
>  
> -	rockchip_pcie_enable_interrupts(rockchip);
> -
>  	err = rockchip_pcie_init_irq_domain(rockchip);
>  	if (err < 0)
>  		goto err_deinit_port;
> @@ -992,6 +986,12 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  	bridge->sysdata = rockchip;
>  	bridge->ops = &rockchip_pcie_ops;
>  
> +	err = rockchip_pcie_setup_irq(rockchip);
> +	if (err)
> +		goto err_remove_irq_domain;
> +
> +	rockchip_pcie_enable_interrupts(rockchip);
> +
>  	err = pci_host_probe(bridge);
>  	if (err < 0)
>  		goto err_remove_irq_domain;
> -- 
> 2.31.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
