Return-Path: <SRS0=3Wd+=LX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEDDC11F67
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 23:14:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0535560FEE
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 23:14:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0535560FEE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=KWyPPMLPk4AcAb0k+YyhzrKXfA6pubBOwM1CUBDpljk=; b=ppM/RxcZNhNE9U
	kCoLXJziMnmyQEJ/lzOpWAwbdov84WKBc3Ky0GC5Vc8WGd/aLAMWp7bXzSkoiFOb9in3dScmUjkwh
	QGGOEoe80VvZ1ar+Y4sXGeOGRZywbTuKH7g3Usv83SBF+ChVhrAnIehZ6SPTRLVpkZCF0g7hjchTR
	NLWevty7XWn11z+FBAFjYe2JRBxlOPHT/Kg1VxQtfNIGEfam34+JGTw22EEWV2XM2KE0ubjGdwp03
	A/cKJ+qpspTDdpzYeaGIKdivxrN7efEOHV+vmnIbUrd+md5lJi81qlMWUCqyZOiJI6OiGxUhCD9Rs
	rNU1+GV6uuIKav8t4Qeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyMvx-00CCvH-EY; Tue, 29 Jun 2021 23:14:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyMvl-00CCuK-0Y; Tue, 29 Jun 2021 23:14:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 890A061D16;
 Tue, 29 Jun 2021 23:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625008451;
 bh=B9niwO40e9W9wr3Oqskh655dcl5dlMNvAjpZ/8BRQaE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=WKUu6rfYtfCck0isLyJxRq53hVBBHIe9UPk83ec+yu81yY0P1LjgQ4pm51qmoNI7m
 O2GDQ9/0MNb21bfDfrQzUo7TzG29mohPNwdYxoy5ZW385X+dWsEO/u68aXTphVSmHp
 LhqzUNqKofRqPONUNzBsHoH8cpB3DEBIW58R/fKRnMR9ebymoCe9vkrGUZE7Qm2fQV
 +La8XXcOObtRLcgqdDVIOvde+PjxFhOSyyHklgSTUp8wH/oPabZ7C/HDobWhdLsNEI
 IwX5wl09+G2kodABsPjHtSCH432NRzKSWyZXfCS0KUu9FqiBgaBWgfoqz/H0INYtz2
 S2mwHscZmOjHg==
Date: Tue, 29 Jun 2021 18:14:10 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>,
 Ley Foon Tan <ley.foon.tan@intel.com>, rfi@lists.rocketboards.org,
 Jingoo Han <jingoohan1@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
Message-ID: <20210629231410.GA4097899@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d5a983f-bfdd-d79b-4ec9-357ea26dd2c8@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_161413_134018_D8DEAB76 
X-CRM114-Status: GOOD (  35.38  )
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

On Tue, Jun 29, 2021 at 11:52:44AM +0100, Robin Murphy wrote:
> On 2021-06-29 07:17, Javier Martinez Canillas wrote:
> > On 6/29/21 2:38 AM, Bjorn Helgaas wrote:
> > > On Thu, Jun 24, 2021 at 05:40:40PM -0500, Bjorn Helgaas wrote:
> > 
> > [snip]
> > 
> > > > > 
> > > > > So let's just move all the IRQ init before the pci_host_probe() call, that
> > > > > will prevent issues like this and seems to be the correct thing to do too.
> > > > 
> > > > Previously we registered rockchip_pcie_subsys_irq_handler() and
> > > > rockchip_pcie_client_irq_handler() before the PCIe clocks were
> > > > enabled.  That's a problem because they depend on those clocks being
> > > > enabled, and your patch fixes that.
> > > > 
> > > > rockchip_pcie_legacy_int_handler() depends on rockchip->irq_domain,
> > > > which isn't initialized until rockchip_pcie_init_irq_domain().
> > > > Previously we registered rockchip_pcie_legacy_int_handler() as the
> > > > handler for the "legacy" IRQ before rockchip_pcie_init_irq_domain().
> > > > 
> > > > I think your patch *also* fixes that problem, right?
> > > 
> > > The lack of consistency in how we use
> > > irq_set_chained_handler_and_data() really bugs me.
> > > 
> > > Your patch fixes the ordering issue where we installed
> > > rockchip_pcie_legacy_int_handler() before initializing data
> > > (rockchip->irq_domain) that it depends on.
> > > 
> > > But AFAICT, rockchip still has the problem that we don't *unregister*
> > > rockchip_pcie_legacy_int_handler() when the rockchip-pcie module is
> > > removed.  Doesn't this mean that if we unload the module, then receive
> > > an interrupt from the device, we'll try to call a function that is no
> > > longer present?
> > 
> > Good question, I don't to be honest. I'll have to dig deeper on this but
> > my experience is that the module removal (and device unbind) is not that
> > well tested on ARM device drivers in general.
> 
> Well, it does use devm_request_irq() so the handler should be unregistered
> by devres *after* ->remove has finished, however that does still leave a
> potential race window in which a pending IRQ could be taken during the later
> part of rockchip_pcie_remove() after it has started turning off critical
> things. Unless the clocks and regulators can also be delegated to devres, it
> might be more robust to explicitly manage the IRQs as well. Mixing the two
> schemes can be problematic when the exact order of both setup and teardown
> matters.

I don't understand the devm_request_irq() connection.  I'm looking at
this irq_set_chained_handler_and_data() call [1]:

  static int rockchip_pcie_setup_irq(struct rockchip_pcie *rockchip)
  {
    ...
    irq = platform_get_irq_byname(pdev, "legacy");
    irq_set_chained_handler_and_data(irq,
				     rockchip_pcie_legacy_int_handler,
				     rockchip);

    irq = platform_get_irq_byname(pdev, "client");
    ...

We look up "irq", pass it to irq_set_chained_handler_and_data(), and
throw it away without saving it anywhere.  How would anything know how
to unregister rockchip_pcie_legacy_int_handler()?

I could imagine irq_set_chained_handler_and_data() saving what's
needed for unregistration, but I would think that would require a
device pointer, which we don't give it.

I'm IRQ-illiterate, so please educate me!

Bjorn

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/pci/controller/pcie-rockchip-host.c?id=v5.13#n562

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
