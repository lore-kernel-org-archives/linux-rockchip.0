Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DD15C11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 20:30:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9B6CF613D3
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 20:30:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9B6CF613D3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=twPT+28Bf1pfw51RmLDWO7s/O0wnfB/2z9tEcQKuUN0=; b=aHbgu0LLM4QSC1
	XuUv0KnlJiReX5HMTI05Wt7DewZLHDYFM3BJkwYdCjQMIN45djjSA7deptqbp8PBUUDicn58w8AUc
	pB4X41kXSRKmnYQ2y0ZNS8JBIHYh/+K/uYjaQh9XQxGg3yH1oGvwUJV/2mH5yt2NNa5Cn3oJuREGl
	zUC4h2OB7jBwTjJjGb57SCCkNtl6VPJ4jqmok0WB3NecMEvwGWzMFXTPbfJupcZEs8W8PtkjggCsT
	qjDO1pQ8DKxDc3OgTryUoVt2U+4NMH3AISdAJFuv/0KVeUjQUyZw+tM53iiCRyNCM1RTRKDPu+2qt
	6vKgNG7XV5QxXJ/3QdQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lygr8-00FCyj-QV; Wed, 30 Jun 2021 20:30:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lygqv-00FCxP-DG; Wed, 30 Jun 2021 20:30:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9CF55613D3;
 Wed, 30 Jun 2021 20:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625085032;
 bh=C7fRTeYDA+xvhe4oWh/Ia8vUpNmTjFr8ErXmCrxyWkU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=GiBrfa5bm9GsfYVC/nyNBmqxQfpAy4fDB2rJ6aUQ93pz9zOiVbFZV5GgxrGcHTsRA
 /PCtkYWIgip1hkPZUXqN0u6lBnmKGDw9ID16ry82Hg7K/MMj12UBIN903+79Dug8WD
 dBvXb0Qt/dnf1LViXZ6ijkjZ+6CpPi1YUvyGjj/+ksTR5gqnjCOKKRmcEM3XrtbXaK
 HyBQr527P9Yy1p1T2RiXB+LDhtvop8UaDhP4ci0pbnaJA55ArMJ1ETye/2O+pM3UHX
 GfQmrAXDo6Ej/UdrH3rPksKhBy1MPoH373Z2+mlusuKKYLsn8SQmiAsswumMIckFZ9
 5XvLsPfWBPVzA==
Date: Wed, 30 Jun 2021 15:30:30 -0500
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
Message-ID: <20210630203030.GA4178852@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e7f3bd28-8e5e-362d-11a9-43a60ff79dd2@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_133033_528698_80A8C1D0 
X-CRM114-Status: GOOD (  25.90  )
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

On Wed, Jun 30, 2021 at 09:59:58PM +0200, Javier Martinez Canillas wrote:
> On 6/30/21 8:59 PM, Bjorn Helgaas wrote:
> > [+cc Michal, Jingoo, Thierry, Jonathan]
> 
> [snip]
> 
> > 
> > I think the above commit log is perfectly accurate, but all the
> > details might suggest that this is something specific to rockchip or
> > CONFIG_DEBUG_SHIRQ, which it isn't, and they might obscure the
> > fundamental problem, which is actually very simple: we registered IRQ
> > handlers before we were ready for them to be called.
> > 
> > I propose the following commit log in the hope that it would help
> > other driver authors to make similar fixes:
> >
> >     PCI: rockchip: Register IRQ handlers after device and data are ready
> > 
> >     An IRQ handler may be called at any time after it is registered, so
> >     anything it relies on must be ready before registration.
> > 
> >     rockchip_pcie_subsys_irq_handler() and rockchip_pcie_client_irq_handler()
> >     read registers in the PCIe controller, but we registered them before
> >     turning on clocks to the controller.  If either is called before the clocks
> >     are turned on, the register reads fail and the machine hangs.
> > 
> >     Similarly, rockchip_pcie_legacy_int_handler() uses rockchip->irq_domain,
> >     but we installed it before initializing irq_domain.
> > 
> >     Register IRQ handlers after their data structures are initialized and
> >     clocks are enabled.
> > 
> > If this is inaccurate or omits something important, let me know.  I
> > can make any updates locally.
> >
> 
> I think your description is accurate and agree that the commit message may
> be misleading. As you said, this is a general problem and the fact that an
> IRQ is shared and CONFIG_DEBUG_SHIRQ fires a spurious interrupt just make
> the assumptions in the driver to fall apart.
> 
> But maybe you can also add a paragraph that mentions the CONFIG_DEBUG_SHIRQ
> option and shared interrupts? That way, other driver authors could know that
> by enabling this an underlying problem might be exposed for them to fix.

Good idea, thanks!  I added this; is it something like what you had in
mind?

    Found by enabling CONFIG_DEBUG_SHIRQ, which calls the IRQ handler when it
    is being unregistered.  An error during the probe path might cause this
    unregistration and IRQ handler execution before the device or data
    structure init has finished.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
