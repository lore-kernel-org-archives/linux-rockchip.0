Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AB58C49EA5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 23:28:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DCD896137D
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 23:28:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DCD896137D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=9n4HgKOpzfSuZkuZwzpTfjch89zdmGs7Y1VxD0MSolU=; b=mFD61jLXfcuFE9
	WJ7SHOYLaag/5rEomcWJeCgk5pcquqgU8o6bWbPa9yuRS+E/byGpoANPsI6Snl4Wte15JVplDmsEn
	vYE5AAyHNFEZYufTEv5dTuFX8h8rCOQegKhJoI2upp4Z1uJl8t27kT1X19uBMGv1L7aGE9OPPV/MG
	lLbNxaUEkC0eJD8VUIjHcKZtmJR4xvli4ytz/7SCLX+gl7Jo8EPQTabIZj9CBH8Tx5vuYU/vRSm5M
	c5T0pzC11tSVA+fQo4vA4MC/KVRIXp6dqzOC7JoOzBQgaipZ62Wo3mvMjFRrRcN4r3Lo3Ocnzhjtl
	4gO9M+4xsoD+cbczTEGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwYmF-00GjTv-De; Thu, 24 Jun 2021 23:28:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwYm3-00GjSp-7r; Thu, 24 Jun 2021 23:28:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7F6726109D;
 Thu, 24 Jun 2021 23:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624577322;
 bh=ldX9RoquT9Rh15kfP3FoVZ10xacgMSNt/9jIwP+BvEY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=SsYrM7WMbzNsbAGWMcs0kcP8ECXwziLWX8RgMfJCnKWub1yrt5UXYJL9w3VUEykjL
 3uxLK5T/08vZg1d34q7VgSuXohvkB3WpNf7zjH7ZZrPSzQxvzY7pYfO+BDG6Q+S2BK
 HdtYhARYSiPn3GDJDU/7ZOZEdrDCNlVqWIIxeow45bKDtxQw/6g5dz7h5EFZMYEVLD
 kOE3Gr9bm2E30hnODihqtIAvU98kS7Fzdb0V6Q8DGPF56D3k3+bMdbOZbtOZk+6m/p
 dACxFFLrh0nqm8nIrNNU9GDxmkQ9iBe2ZK1eI4SxocJCnEZ13pPkBFluQ3h8I3I8yD
 esQ/F6WP/heoA==
Date: Thu, 24 Jun 2021 18:28:41 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
Message-ID: <20210624232841.GA3579021@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44c551d7-fee4-13cf-2929-6d2383dd5497@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_162843_369078_3AB9CF63 
X-CRM114-Status: GOOD (  26.75  )
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

On Fri, Jun 25, 2021 at 12:18:48AM +0100, Robin Murphy wrote:
> On 2021-06-24 22:57, Bjorn Helgaas wrote:
> > On Tue, Jun 08, 2021 at 10:04:09AM +0200, Javier Martinez Canillas wrote:
> > > IRQ handlers that are registered for shared interrupts can be called at
> > > any time after have been registered using the request_irq() function.
> > > 
> > > It's up to drivers to ensure that's always safe for these to be called.
> > > 
> > > Both the "pcie-sys" and "pcie-client" interrupts are shared, but since
> > > their handlers are registered very early in the probe function, an error
> > > later can lead to these handlers being executed before all the required
> > > resources have been properly setup.
> > > 
> > > For example, the rockchip_pcie_read() function used by these IRQ handlers
> > > expects that some PCIe clocks will already be enabled, otherwise trying
> > > to access the PCIe registers causes the read to hang and never return.
> > 
> > The read *never* completes?  That might be a bit problematic because
> > it implies that we may not be able to recover from PCIe errors.  Most
> > controllers will timeout eventually, log an error, and either
> > fabricate some data (typically ~0) to complete the CPU's read or cause
> > some kind of abort or machine check.
> > 
> > Just asking in case there's some controller configuration that should
> > be tweaked.
> 
> If I'm following correctly, that'll be a read transaction to the native side
> of the controller itself; it can't complete that read, or do anything else
> either, because it's clock-gated, and thus completely oblivious (it might be
> that if another CPU was able to enable the clocks then everything would
> carry on as normal, or it might end up totally deadlocking the SoC
> interconnect). I think it's safe to assume that in that state nothing of
> importance would be happening on the PCIe side, and even if it was we'd
> never get to know about it.

Oh, right, that makes sense.  I was thinking about the PCIe side, but
if the controller itself isn't working, of course we wouldn't get that
far.

I would expect that the CPU itself would have some kind of timeout for
the read, but that's far outside of the PCI world.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
