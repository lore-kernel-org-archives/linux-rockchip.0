Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C01BBC83F17
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 14:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQEmTZLgZ3IzHeD+mYZ9/eXUn6x+eTzVTSeoZ8YK5VI=; b=C/saU+FbwiNxIh
	aIZmccwGu8JAW61CEh8rr9z2r2wYR+TNhF485UOnwF12Ph1kGj22ZkDIrgqFLmF+2KGirlQ4Qzylw
	RXlr/DmDeLpNr//KA/b1gViQKCotSE4ZgSye8jnsoZGo2ouHDk5U9z0trZDE1zmDHsbTTUoF5whq9
	gaYw+m3JQPhposzx+G9UuGIHxv/sjDAFNgIzdJhxiWDl4RMLHEm9IwtIQHMq1YEJWL4vNqJdlaUlf
	Jfxf13puyF9T9nT5b4UFZ8CrFymlZlrXfAMRFMwutDczIDH24hg7WY28YsN2ZpW9Y7oB9sF2Sxxj0
	/fWt8C7y5ifILrXHOfSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucld3-0000000CkP4-1MiH;
	Fri, 18 Jul 2025 14:00:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uclQk-0000000CjEO-0R4w;
	Fri, 18 Jul 2025 13:47:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6E2D343216;
	Fri, 18 Jul 2025 13:47:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5CF5C4CEEB;
	Fri, 18 Jul 2025 13:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752846437;
	bh=K6o8NjASe6wViaJFuQvujWx90lgkkbUDOmivtCh4DGE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GuMujI5MdT3wUu7nvneI1RfXlSTj33sW2FjkeunKBiTQoNqX2wy0ZMN8W+zpa0A04
	 cAfoBMuY+pbDGD6nlHuOpIzsldvyDYteuO5x88S21dq/mjFFDStHZtJg+8jeX5Lih2
	 VMkJheWun1cyftQ95JSuJOO+HTzatbMGo9p1I3bAQ0W7Z2edLGWY4V8vRf+7qnqgE+
	 BHilpQkZpY/5QFQucdIx3olXahXNWn2h8bq7LRMFt8au37GV8wddcuXxSzSB2ghxLb
	 Yvqig3q2DYn8Sr0r0EMCUD5Ff89YRE2SNLX4mTJMc0pu4RVMexqAUzcuslCZVH6cHS
	 3BPjFbPKFRAZQ==
Date: Fri, 18 Jul 2025 14:47:11 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, nicolas.dufresne@collabora.com, jgg@ziepe.ca,
	iommu@lists.linux.dev, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v6 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <aHpQXy-bnwW56rCn@willie-the-truck>
References: <20250710082450.125585-1-benjamin.gaignard@collabora.com>
 <20250710082450.125585-4-benjamin.gaignard@collabora.com>
 <aHTzPwTob8_5rtBS@willie-the-truck>
 <baa1fcde-f167-4a1b-afca-0a2957a688cc@collabora.com>
 <aHozv0NG1OBlAH6c@willie-the-truck>
 <b4169471-fcd0-4415-8281-c5bd722e5f2b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4169471-fcd0-4415-8281-c5bd722e5f2b@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_064718_190391_6BE5FE60 
X-CRM114-Status: GOOD (  30.86  )
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

On Fri, Jul 18, 2025 at 01:56:36PM +0100, Robin Murphy wrote:
> On 2025-07-18 12:45 pm, Will Deacon wrote:
> > On Mon, Jul 14, 2025 at 04:56:53PM +0200, Benjamin Gaignard wrote:
> > > Le 14/07/2025 =E0 14:08, Will Deacon a =E9crit=A0:
> > > > On Thu, Jul 10, 2025 at 10:24:44AM +0200, Benjamin Gaignard wrote:
> > > > > +/* vsi iommu regs address */
> > > > > +#define VSI_MMU_CONFIG1_BASE			0x1ac
> > > > > +#define VSI_MMU_AHB_EXCEPTION_BASE		0x380
> > > > > +#define VSI_MMU_AHB_CONTROL_BASE		0x388
> > > > > +#define VSI_MMU_AHB_TLB_ARRAY_BASE_L_BASE	0x38C
> > > > > +
> > > > > +/* MMU register offsets */
> > > > > +#define VSI_MMU_FLUSH_BASE		0x184
> > > > > +#define VSI_MMU_BIT_FLUSH		BIT(4)
> > > > > +
> > > > > +#define VSI_MMU_PAGE_FAULT_ADDR		0x380
> > > > > +#define VSI_MMU_STATUS_BASE		0x384	/* IRQ status */
> > > > > +
> > > > > +#define VSI_MMU_BIT_ENABLE		BIT(0)
> > > > > +
> > > > > +#define VSI_MMU_OUT_OF_BOUND		BIT(28)
> > > > > +/* Irq mask */
> > > > > +#define VSI_MMU_IRQ_MASK		0x7
> > > > > +
> > > > > +#define VSI_DTE_PT_ADDRESS_MASK		0xffffffc0
> > > > > +#define VSI_DTE_PT_VALID		BIT(0)
> > > > > +
> > > > > +#define VSI_PAGE_DESC_LO_MASK		0xfffff000
> > > > > +#define VSI_PAGE_DESC_HI_MASK		GENMASK_ULL(39, 32)
> > > > > +#define VSI_PAGE_DESC_HI_SHIFT		(32 - 4)
> > > > How does this page-table format relate to the one supported already=
 by
> > > > rockchip-iommu.c? From a quick glance, I suspect this is a derivati=
ve
> > > > and so ideally we'd be able to have a common implementation of the
> > > > page-table code which can be used by both of the drivers.
> > > > =

> > > > Similarly:
> > > =

> > > No they comes from different IP providers, this one is from Verisilic=
on.
> > > I agree they looks very similar and my first attempt was to add it in=
to
> > > rockchip-iommu code but when doing it I realize that registers addres=
ses
> > > where all different so I had to code all the functions twice.
> > =

> > Understood, and I'm not suggesting to merge the drivers or try to
> > consolidate the register layouts. What I _am_ saying is that the
> > in-memory page-table format should be factored out in a way that can
> > be reused by the two drivers and also that some of the logic (as highli=
ghted
> > by vsi_iommu_domain_free()) is practically identical between the drivers
> > and should also be shared.
> =

> All they really have in common is that they're 2-level formats with 32-bit
> PTEs and 10 bits per level (as is tegra-smmu too). The permission encodin=
gs
> have some overlap but are not fully equivalent. Crucially, the schemes for
> packing >32-bit PAs into PTEs are incompatibly different, so if you're
> really keen to genericise things to *that* extent, that's what Jason's
> already working on.
> =

> As for domain_free, you could argue that it also looks basically the same=
 as
> exynos_iommu_domain_free(), because at the end of the day, there's only so
> many ways to free a 2-level pagetable, and it's at least better than what,
> say, sun50i, omap or tegra are doing (or rather, not doing...)

Just because the existing drivers are a mess doesn't mean we should
proliferate it!

Will

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
