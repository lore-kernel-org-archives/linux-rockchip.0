Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BAFBC83F34
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 12:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBzxrmpoutNidepm7juE02hT+AH5TBJpFQZRXFPVzXc=; b=2SbEkv20eux67g
	YC1GHojY+bqEXGYzdGyjN3/vBDFipmZzGYzrL4xE1IRPq0CrXV/6zmaO9ErOOY9CHC3CqTAXL1HUR
	YRs4sUUuvNvHXnVT/PkHMdIgmYlNP0bw9jTvsV3lZn5bTH0a7j/Va9gtvbjIg4JovFYcqAq7V1BhZ
	tnny9QU5oFrGegANq+HJi3vXcRP6rg5HwjaY6U8Nq/obxqmFVueRKAAi04bWzyUH6M7NYrLmfYji0
	7WJRWUr6wvutlrsGN+b+rRgaYJH1bfIzy7QKSbJe/GBSsHpmwViKz6+KLn5mzdgJErMeArFj6mCsi
	jr6gs4pbxYOQ9lqNXhcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uck7I-0000000CZZm-2vrK;
	Fri, 18 Jul 2025 12:23:08 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucjWY-0000000CUpT-3HDU;
	Fri, 18 Jul 2025 11:45:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1118EA570AA;
	Fri, 18 Jul 2025 11:45:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EFE5C4CEEB;
	Fri, 18 Jul 2025 11:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752839109;
	bh=HbxsrY6f+PgZxKEKxckwhH+ILsDOG7Ptpr1hT4rRhik=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u7c14dnPqFzEHprwuqRuqBH4A31YK/vjPD7bg/OgG//kFji0cP6j8P7cMAKbndDRF
	 rKsWOgE2CfDrLtQzTg9Tqqos4qKLP4KHp+l2i6KDmrO8WOEDsr24ZXCsleC0qc1HET
	 knrWhdx+ShuOrfaAN8nP0tV+cc11BduoFFOf1gd/nFT4eR1Rs/cR3Jru23P5g6gzZX
	 lc+rDf4K7Z86NG2LZ5LjBIs1Pv4IzC9cOC5SIL8PswY0FDgm3nOMYK+iKOjuIRvH7R
	 V0dC2kC+lfW2D2JfJthyTEEuwFcYXw8oyqAqWrViF0bK9rjv86EgfM6yQLYTUjTLLG
	 82pD9rTZr27Eg==
Date: Fri, 18 Jul 2025 12:45:03 +0100
From: Will Deacon <will@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, jgg@ziepe.ca, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v6 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <aHozv0NG1OBlAH6c@willie-the-truck>
References: <20250710082450.125585-1-benjamin.gaignard@collabora.com>
 <20250710082450.125585-4-benjamin.gaignard@collabora.com>
 <aHTzPwTob8_5rtBS@willie-the-truck>
 <baa1fcde-f167-4a1b-afca-0a2957a688cc@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <baa1fcde-f167-4a1b-afca-0a2957a688cc@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_044510_902915_1D24F18A 
X-CRM114-Status: GOOD (  20.03  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jul 14, 2025 at 04:56:53PM +0200, Benjamin Gaignard wrote:
> Le 14/07/2025 =E0 14:08, Will Deacon a =E9crit=A0:
> > On Thu, Jul 10, 2025 at 10:24:44AM +0200, Benjamin Gaignard wrote:
> > > +/* vsi iommu regs address */
> > > +#define VSI_MMU_CONFIG1_BASE			0x1ac
> > > +#define VSI_MMU_AHB_EXCEPTION_BASE		0x380
> > > +#define VSI_MMU_AHB_CONTROL_BASE		0x388
> > > +#define VSI_MMU_AHB_TLB_ARRAY_BASE_L_BASE	0x38C
> > > +
> > > +/* MMU register offsets */
> > > +#define VSI_MMU_FLUSH_BASE		0x184
> > > +#define VSI_MMU_BIT_FLUSH		BIT(4)
> > > +
> > > +#define VSI_MMU_PAGE_FAULT_ADDR		0x380
> > > +#define VSI_MMU_STATUS_BASE		0x384	/* IRQ status */
> > > +
> > > +#define VSI_MMU_BIT_ENABLE		BIT(0)
> > > +
> > > +#define VSI_MMU_OUT_OF_BOUND		BIT(28)
> > > +/* Irq mask */
> > > +#define VSI_MMU_IRQ_MASK		0x7
> > > +
> > > +#define VSI_DTE_PT_ADDRESS_MASK		0xffffffc0
> > > +#define VSI_DTE_PT_VALID		BIT(0)
> > > +
> > > +#define VSI_PAGE_DESC_LO_MASK		0xfffff000
> > > +#define VSI_PAGE_DESC_HI_MASK		GENMASK_ULL(39, 32)
> > > +#define VSI_PAGE_DESC_HI_SHIFT		(32 - 4)
> > How does this page-table format relate to the one supported already by
> > rockchip-iommu.c? From a quick glance, I suspect this is a derivative
> > and so ideally we'd be able to have a common implementation of the
> > page-table code which can be used by both of the drivers.
> > =

> > Similarly:
> =

> No they comes from different IP providers, this one is from Verisilicon.
> I agree they looks very similar and my first attempt was to add it into
> rockchip-iommu code but when doing it I realize that registers addresses
> where all different so I had to code all the functions twice.

Understood, and I'm not suggesting to merge the drivers or try to
consolidate the register layouts. What I _am_ saying is that the
in-memory page-table format should be factored out in a way that can
be reused by the two drivers and also that some of the logic (as highlighted
by vsi_iommu_domain_free()) is practically identical between the drivers
and should also be shared.

Will

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
