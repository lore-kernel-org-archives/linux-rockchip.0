Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 058F2C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 22:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=RugmGKgRo3nFHV6wUY9KyyTk3ZTA8+DmrrrltEPbiOc=; b=uWIoVoeD6LG/YH
	GwiYBazZfVIYQuy4wet02fSp5MOFpiUwg/3/m0rm51Q4Qq5bEdlIqxHYmEjGbAD1FV+VAMELbI/OE
	A8VNtIGcfR+jh7mXyGS1FZ/ZF4K5JTyQInrNvufCnesc63Pa6EiFnKhafQILtn4loO3qgBqfCz/HX
	bfRX7IuT8uLTmLx8aiwG1d01UVv0HyhJ7jmFYNlf8JWIfW9c/Ls5Vn3b7VjWXqNKeneF1VrpN8HW7
	nEQ+civ6ZCQhf4OQkN92qTULSFcDfGFSAm+iqml24oeYP90jzV2e+nB60Uf2VliFnH3SfpbwZESnb
	1b5Ufi04m5HJ8rMRm2bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOx1-00000001Tf0-0d3u;
	Fri, 12 Apr 2024 22:00:51 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOwx-00000001TeH-38BA;
	Fri, 12 Apr 2024 22:00:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id DFBDECE2399;
	Fri, 12 Apr 2024 22:00:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D22F1C2BD11;
	Fri, 12 Apr 2024 22:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712959244;
	bh=ZKH3KzVTUFLwzZCC+c/nh0ruTG6gvkEa8ggu7OQagqA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=RZQ9gV1LUSC/cxhceFmKioUlqU7p9ousMNjktpWfRQZ9A1KU72H2y0Nz43XOgFXfN
	 Lz5BiqapFj8BEe3KP3+3eEL7hKGvFrftnsHWlNcAzd5M7D7uNHE0W2xYcraD/76958
	 P2JV2GIgH9gMqT5fym21tg6xyMUgWmYLGufpN+ESzw/Kw0Ftw9//wov3BL/nZbIHt+
	 XYoc481BPKSs5mNhpWjBBdHT35OhsbIGyq4qfcXk9bqZc2bLvJn+hTT8CcDEKrnqlH
	 qolq62p8JcApggYM2JjE4zluaRK2arn+RyWi4S7YIVEDeWPvRpAA4tPZlzg/6B2izR
	 VCnBkrhBiMLEw==
Date: Fri, 12 Apr 2024 17:00:42 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shradha Todi <shradha.t@samsung.com>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 8/9] PCI: rockchip-ep: Set a 64-bit BAR if requested
Message-ID: <20240412220042.GA21397@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZhmqG6avmX8ZOtIX@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_150048_174486_1EAF6B12 
X-CRM114-Status: GOOD (  38.68  )
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

On Fri, Apr 12, 2024 at 11:39:39PM +0200, Niklas Cassel wrote:
> On Fri, Apr 12, 2024 at 12:51:27PM -0500, Bjorn Helgaas wrote:
> > On Wed, Mar 13, 2024 at 11:58:00AM +0100, Niklas Cassel wrote:
> > > Ever since commit f25b5fae29d4 ("PCI: endpoint: Setting a BAR size > 4 GB
> > > is invalid if 64-bit flag is not set") it has been impossible to get the
> > > .set_bar() callback with a BAR size > 4 GB, if the BAR was also not
> > > requested to be configured as a 64-bit BAR.
> > > 
> > > It is however possible that an EPF driver configures a BAR as 64-bit,
> > > even if the requested size is < 4 GB.
> > > 
> > > Respect the requested BAR configuration, just like how it is already
> > > repected with regards to the prefetchable bit.
> > 
> > Does this (and the similar cadence patch) need a Fixes: tag for
> > f25b5fae29d4?
> 
> I don't think so.
> 
> Both patches are about respecting the configuration requested by an EPF
> driver.
> 
> So if an EPF driver requests a 64-bit BAR, the EPC driver should configure
> that. (Regardless of the size that the EPF driver requests for the BAR.)
> 
> If we really want a Fixes-tag, I would imagine that it will be the respective
> initial commits that added these drivers (pcie-cadence-ep.c and
> pcie-rockchip-ep.c), as it has been this way since then.
> 
> If you look at the EPF drivers we currently have, they will currently only
> request a 64-bit BAR if any of the BARs can only be configured as a 64-bit
> BAR because of hardware limitiations.
> 
> $ git grep only_64bit
> 
> Neither of these two drivers have any such hardware limitiations,
> so these commits are currently a bit pointless.
> 
> However, the drivers should of course do the right thing, because other
> EPC drivers might look at them and copy their code.
> 
> And who knows, maybe sometime in the future there will be an EPF driver
> that will explicitly request a 64-bit BAR, regardless of size.
> 
> TL;DR: I don't think these two commits are worth backporting.

OK, thanks!

> > > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > > ---
> > >  drivers/pci/controller/pcie-rockchip-ep.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> > > index c9046e97a1d2..57472cf48997 100644
> > > --- a/drivers/pci/controller/pcie-rockchip-ep.c
> > > +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> > > @@ -153,7 +153,7 @@ static int rockchip_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
> > >  		ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_IO_32BITS;
> > >  	} else {
> > >  		bool is_prefetch = !!(flags & PCI_BASE_ADDRESS_MEM_PREFETCH);
> > > -		bool is_64bits = sz > SZ_2G;
> > > +		bool is_64bits = !!(flags & PCI_BASE_ADDRESS_MEM_TYPE_64);
> > >  
> > >  		if (is_64bits && (bar & 1))
> > >  			return -EINVAL;
> > > -- 
> > > 2.44.0
> > > 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
