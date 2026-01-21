Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8268C44528
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 12:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/UARJz4uDEYPdnw9KE/4eaTaCVxOrb5aoGP2lcHjSQ=; b=r9tGfFWAKQHC5A
	eOjTLfT9WYtgQyM2IqIdbk4v7Occvv0of4acL3fb7+Kve+/URlTp2tGiyiAweBV389wfuOy8SDC5w
	uxkOApsR6d1XJledx9ShJOsF1m9KleVbB0IXUYBrkXAAobVnUuYt6DOzt8ytBhAAw7L9+QIrR3mgW
	XVB90Nm0Mew8IlYD8LUJ+lS70BnjUAxlXwCHslwRnz7csuq+QzWjHxzIhTF9k7F4HS31H2pNCkYRg
	vLknq+2vF4Zulo9+gNLQArTGEsvnZiICu4FaH2C5lin1/H8uy/dqiMVfrQLURKHU0kSt77EjD1hRq
	BzCR7nwUnHtGX70dPFUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viXgY-00000005SFB-2ovG;
	Wed, 21 Jan 2026 12:51:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viXgW-00000005SEK-2Sde;
	Wed, 21 Jan 2026 12:51:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4C1444017A;
	Wed, 21 Jan 2026 12:51:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAC07C19421;
	Wed, 21 Jan 2026 12:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768999903;
	bh=brbeUf/uHaUwIvWYg3FBssw/lRpSOlGRll71yV5ZVq4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DL94ys3MfP15mHhCxt/gWnaL3hYzfGSS458Wm3B3oFfMNSwhEvzoMizLJCYhS7Dt+
	 sAyLDZEAoC8kFGwSXZbp4a4bAQBgBC7Uc7yy47ONTEn/ZMJvlnrcloLsfKZ0f0ijDx
	 62ABgJ6K0ymEb72d0BjWPwEfKI1bxfQX0Kt1H50UqicrqokcexIze+E9nLMoIAU9yP
	 VpmwA5Wt4lt5q+m79eyJRYkUE4cQGVIPxgm61liIll3OtfqjM+Z8UrkdvUo8MsnQXh
	 /uym0TGMQOG4u9zMoCH0OpjLN7mkG/6VtNK0T4r1Il7nNyJXY3NQpn4P0Y1CUoRVGW
	 vA+kHJKGdBE8g==
Date: Wed, 21 Jan 2026 12:51:36 +0000
From: Will Deacon <will@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v11 3/7] iommu: Add verisilicon IOMMU driver
Message-ID: <aXDL2JH_4RCDmAJv@willie-the-truck>
References: <20260107101005.84039-1-benjamin.gaignard@collabora.com>
 <20260107101005.84039-4-benjamin.gaignard@collabora.com>
 <aWZui-rn5RDPwpEO@willie-the-truck>
 <68a49f8b-178c-4fa2-b4a9-315ad602271d@collabora.com>
 <aWeTQ50DOtntcniN@willie-the-truck>
 <db0950f1-b357-47c2-9829-e33262ab456d@collabora.com>
 <aW4kb5EbxbrhTOxK@willie-the-truck>
 <b8f43fe8-3e07-4d98-a50d-817c31370710@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8f43fe8-3e07-4d98-a50d-817c31370710@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_045144_685517_6AA71552 
X-CRM114-Status: GOOD (  29.17  )
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

On Mon, Jan 19, 2026 at 03:03:44PM +0100, Benjamin Gaignard wrote:
> > > > > > > +static const struct iommu_ops vsi_iommu_ops = {
> > > > > > > +	.identity_domain = &vsi_identity_domain,
> > > > > > > +	.release_domain = &vsi_identity_domain,
> > > > > > > +	.domain_alloc_paging = vsi_iommu_domain_alloc_paging,
> > > > > > > +	.of_xlate = vsi_iommu_of_xlate,
> > > > > > > +	.probe_device = vsi_iommu_probe_device,
> > > > > > > +	.release_device = vsi_iommu_release_device,
> > > > > > > +	.device_group = generic_single_device_group,
> > > > > > > +	.owner = THIS_MODULE,
> > > > > > > +	.default_domain_ops = &(const struct iommu_domain_ops) {
> > > > > > > +		.attach_dev		= vsi_iommu_attach_device,
> > > > > > > +		.map_pages		= vsi_iommu_map,
> > > > > > > +		.unmap_pages		= vsi_iommu_unmap,
> > > > > > > +		.flush_iotlb_all	= vsi_iommu_flush_tlb_all,
> > > > > > This has no callers and so your unmap routine appears to be broken.
> > > > > It is a leftover of previous attempt to allow video decoder to clean/flush
> > > > > the iommu by using a function from the API.
> > > > > Now it is using vsi_iommu_restore_ctx().
> > > > > I while remove it in version 12.
> > > > Don't you still need some invalidation on the unmap path?
> > > In vsi_iommu_unmap_iova() page is invalided by calling vsi_mk_pte_invalid().
> > But that just writes an invalid descriptor and doesn't appear to invalidate
> > the TLB at all.
> > 
> > > That clear BIT(0) so the hardware knows the page is invalid.
> > > Do I have miss something here ?
> > Yes, the TLB structure needs to be invalidated so that the page-table
> > walker sees the new value that you have written in memory.
> > 
> > The rockchip driver gets this correct...
> 
> Rockchip hardware have a ZAP_ONE_LINE register which didn't exist on Verisilicon
> hardware.

Presumably you have some sort of Verisilicon datasheet or downstream driver
from which you can infer the TLB invalidation runes?

> I have tried to use VSI_MMU_BIT_FLUSH on VSI driver after unmapping iova
> but it doesn't work.

What do you mean by "doesn't work"? If it works without doing any
invalidation at all, then it's very peculiar that adding the invalidation
would introduce issues.

> So far calling dma_sync_single_for_device() seems to be enough to make iommu
> and video decoder work together.

I don't think we should settle for "seems to enough"! If we can reason
about the operation of the hardware then the driver will be undebuggable
when it eventually goes wrong.

Will

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
