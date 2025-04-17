Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B815EC369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 09:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKnbCccK6lZe2jYjydu/KiPfm9mWU0SaV4xnkzc8sXs=; b=oImwY9rAzKLn8H
	j5o0+M6aXOcXlUKAvWnHu9SRGNqmfetr4FU0qKEMDpM298bxaw7BrIxR6caY8kHlaHXuvtNJmhGnB
	Pg9pJ9tp5EjiZg2kFPoM8b1mB0Z4y9m1iiwHs+QMBUsAhzkPlxTPF5GOMp8YlYFXwDasgWaxLLHcG
	oAOiYxBe6GtxC8nsfDDhEMFtP672F4VQfux5jpioSY2FZkqBnhCuC519qh6vKrKH5VEePp65GIG+x
	zWB775almyPNB9WUyhzni8b0p2vpGNG28wp22kkHBQKTLbdaAjuTnTKL3l/HuD4JG0nhlTk5L+otj
	eRccFcs3cnmkDvIqVqMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5M0O-0000000CXVI-1BxT;
	Thu, 17 Apr 2025 09:58:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5LxG-0000000CWue-2CC1;
	Thu, 17 Apr 2025 09:54:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DB4E349D9C;
	Thu, 17 Apr 2025 09:54:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15D29C4CEE4;
	Thu, 17 Apr 2025 09:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744883685;
	bh=vAhYR0DxNYTjOSzwAc2fvxm9d0b4bcwj8L5gWZR5QS8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UcHcbGbBno1NM6VGd/kWkWEc0O9+cEg0+k7nrMTYrN1TpBGrPb3u5LPztWhYLn5bp
	 dvJ+8Hy4Gyz1nLpiyNAYO3nzeGmMYRBZtBTVQRfFJMwCPuphKiQg7KAIEwHBbmycdU
	 Z1DdujIfnC+zCPPj51MMTdviv8BNdzYeuqZPPydCdHj0QGRtJEptj+KUQjqWt4ZmCl
	 JK18Dwqr9xGceHLH5jI1GjPC2PvOLtfZ7vakGOgS/opSpbp764yjIyUuUSZ5TjRjHM
	 1L81SKYKL0QkGQ2UUbNyyJy1Sq4cIZXhBg5FG8UwUWGFI5n57GeD9wcmUDsXO2bdHW
	 rUP9UGK6Sl1WQ==
Date: Thu, 17 Apr 2025 11:54:40 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, lpieralisi@kernel.org,
	kw@linux.com, bhelgaas@google.com, heiko@sntech.de,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, thomas.richard@bootlin.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Configure max payload size on host init
Message-ID: <aADP4JZmSVACXKwd@ryzen>
References: <20250416151926.140202-1-18255117159@163.com>
 <aACoEpueUHBLjgbb@ryzen>
 <85643fe4-c7df-4d64-e852-60b66892470a@rock-chips.com>
 <aACsJPkSDOHbRAJM@ryzen>
 <ca283065-a48c-3b39-e70d-03d4c6c8a956@rock-chips.com>
 <aACyRp8S9c8azlw9@ryzen>
 <52a2f6dc-1e13-4473-80f2-989379df4e95@163.com>
 <aAC-VTqJpCqcz6NK@ryzen>
 <4c2a94b4-e483-426f-b7d8-ed98ac474c63@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c2a94b4-e483-426f-b7d8-ed98ac474c63@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_025446_583428_8D250D4F 
X-CRM114-Status: GOOD (  20.19  )
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

On Thu, Apr 17, 2025 at 05:48:04PM +0800, Hans Zhang wrote:
> 
> 
> On 2025/4/17 16:39, Niklas Cassel wrote:
> > On Thu, Apr 17, 2025 at 04:07:51PM +0800, Hans Zhang wrote:
> > > On 2025/4/17 15:48, Niklas Cassel wrote:
> > > 
> > > Hi Niklas and Shawn,
> > > 
> > > Thank you very much for your discussion and reply.
> > > 
> > > I tested it on RK3588 and our platform. By setting pci=pcie_bus_safe, the
> > > maximum MPS will be automatically matched in the end.
> > > 
> > > So is my patch no longer needed? For RK3588, does the customer have to
> > > configure CONFIG_PCIE_BUS_SAFE or pci=pcie_bus_safe?
> > > 
> > > Also, for pci-meson.c, can the meson_set_max_payload be deleted?
> > 
> > I think the only reason why this works is because
> > pcie_bus_configure_settings(), in the case of
> > pcie_bus_config == PCIE_BUS_SAFE, will walk the bus and set MPS in
> > the bridge to the lowest of the downstream devices:
> > https://github.com/torvalds/linux/blob/v6.15-rc2/drivers/pci/probe.c#L2994-L2999
> > 
> > 
> > So Hans, if you look at lspci for the other RCs/bridges that don't
> > have any downstream devices connected, do they also show DevCtl.MPS 256B
> > or do they still show 128B ?
> > 
> 
> Hi Niklas,
> 
> It will show DevCtl.MPS 256B.

Ok.

I guess that just means that the bridge itself is included in pci_walk_bus().

Let's wait and see what people think about my proposal earlier in the thread,
or if someone can think of something better.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
