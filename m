Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFC66109C03C
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 16:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TZN12BDRLoxDB1gETGqc8o2ftlg+eWxjRxsBX3uIK4=; b=39B1c0+LMqUUpt
	AIJEhEba4SP9bziZNw5Tz4Lqfyw1vKM9Zcr7mbOyt2tf8uVOIpSc634gY1GYnbql+vy70+ZhEz28w
	QqJQayKFOVTn0O4ggFe3j5N/uQ4IgONNrgoV9Z7vc9FXq/HzqmOKUE7EF1dgm1PVnIRCR3REVhEEr
	bhfy21pPw4Tlrb+lcQM9vpVDH3rBPiAXprOZ3KexJXXKr7UH9FubNhOPnsTYvYcOcrcVl4TxwC6aG
	1rLIf1WmZ3If7Sg/meU9xUA0yf42+FVSgLAO73NhmHCe9ICpn33e7RQMipg8GXZ7xaMrKfye2sO77
	XCYvL0qXMttsso1yuDlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5RDl-00000003vAc-2f2k;
	Wed, 25 Mar 2026 16:36:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5RDj-00000003v9R-2cJk;
	Wed, 25 Mar 2026 16:36:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E9219600AC;
	Wed, 25 Mar 2026 16:36:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5BF4C4CEF7;
	Wed, 25 Mar 2026 16:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774456598;
	bh=VhIL6fLjtPzkfyMXrdTOmbzI3y+jzhOEWYMQaJHnKwg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mzux6vwXHaR7V7neOoTISKQBA9WjUFg4+kBM+feyhHy1v+yuYN5KFjg/2GNiFlhSP
	 AaRmAAC+/iA8V+IEwsULaogCp1gUs/03o0hmrCBYyh4R3UTN8uQ4MFCM8FdGrAsFFz
	 qs0KEYkRvuokQghLH2NFYzschFfHJ23Rp1UlJT2rSboD9oYrebRFLk/FwiQq4bCEbl
	 uBvVPQcc3CkWkKgGlKl1rE+cQu+vMXsTnusbKeqEb/c6H4je5yM9yZ4Bs+a22M/Ztt
	 wlYGRT8oOUxqMyydZ8l00FrsV694meBoOJ9pjwb78wvLVTmxWE9sNHJMT+P+6S1DN2
	 FHAkmOh4Fxslw==
Date: Wed, 25 Mar 2026 16:36:32 +0000
From: Will Deacon <will@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [PATCH v13 3/6] iommu: Add verisilicon IOMMU driver
Message-ID: <acQPEEd0hQrghGbw@willie-the-truck>
References: <20260216095144.107356-1-benjamin.gaignard@collabora.com>
 <20260216095144.107356-4-benjamin.gaignard@collabora.com>
 <acKxzGk1Z541yoZ4@willie-the-truck>
 <e083e933-2746-4b26-ac33-3b32d362b28e@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e083e933-2746-4b26-ac33-3b32d362b28e@collabora.com>
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

On Tue, Mar 24, 2026 at 05:28:44PM +0100, Benjamin Gaignard wrote:
> =

> Le 24/03/2026 =E0 16:46, Will Deacon a =E9crit=A0:
> > On Mon, Feb 16, 2026 at 10:51:35AM +0100, Benjamin Gaignard wrote:
> > > The Verisilicon IOMMU hardware block can be found in combination
> > > with Verisilicon hardware video codecs (encoders or decoders) on
> > > different SoCs.
> > > Enable it will allow us to use non contiguous memory allocators
> > > for Verisilicon video codecs.
> > > If both decoder and this iommu driver are compiled has modules
> > > there is undefined symboles issues so this iommu driver could
> > > only be compiled has built-in.
> > > =

> > > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > > ---
> > >   MAINTAINERS               |   8 +
> > >   drivers/iommu/Kconfig     |  11 +
> > >   drivers/iommu/Makefile    |   1 +
> > >   drivers/iommu/vsi-iommu.c | 794 +++++++++++++++++++++++++++++++++++=
+++
> > >   include/linux/vsi-iommu.h |  21 +
> > >   5 files changed, 835 insertions(+)
> > >   create mode 100644 drivers/iommu/vsi-iommu.c
> > >   create mode 100644 include/linux/vsi-iommu.h
> > [...]
> > =

> > > +static size_t vsi_iommu_unmap(struct iommu_domain *domain, unsigned =
long _iova,
> > > +			      size_t size, size_t count, struct iommu_iotlb_gather *gathe=
r)
> > > +{
> > > +	struct vsi_iommu_domain *vsi_domain =3D to_vsi_domain(domain);
> > > +	dma_addr_t pte_dma, iova =3D (dma_addr_t)_iova;
> > > +	unsigned long flags;
> > > +	phys_addr_t pt_phys;
> > > +	u32 dte;
> > > +	u32 *pte_addr;
> > > +	size_t unmap_size =3D 0;
> > > +
> > > +	spin_lock_irqsave(&vsi_domain->lock, flags);
> > > +
> > > +	dte =3D vsi_domain->dt[vsi_iova_dte_index(iova)];
> > > +	/* Just return 0 if iova is unmapped */
> > > +	if (!vsi_dte_is_pt_valid(dte))
> > > +		goto unlock;
> > > +
> > > +	pt_phys =3D vsi_dte_pt_address(dte);
> > > +	pte_addr =3D (u32 *)phys_to_virt(pt_phys) + vsi_iova_pte_index(iova=
);
> > > +	pte_dma =3D pt_phys + vsi_iova_pte_index(iova) * sizeof(u32);
> > > +	unmap_size =3D vsi_iommu_unmap_iova(vsi_domain, pte_addr, pte_dma, =
size);
> > > +
> > > +unlock:
> > > +	spin_unlock_irqrestore(&vsi_domain->lock, flags);
> > > +
> > > +	return unmap_size;
> > > +}
> > I still think you need TLB invalidation here.
> > =

> > I looked at the downstream code that you linked to and it litters the
> > invalidation in the callers via mpp_iommu_flush_tlb(), which tend to
> > invalidate _before_ starting an operation. That's very likely buggy and
> > certainly not something we want upstream.
> > =

> > The unmap routine should do the invalidation so that, when it returns,
> > the pages really are unmapped from the device (assuming strict mode).
> > =

> > I know you said that you tried to add invalidation here and it "didn't
> > work", but that's not something I can really help you with.
> =

> I know you expect the hardware to work like that but that isn't not the
> case.

The hardware appears to have a register to invalidate the entire TLB.
We can use that if there's nothing else.

> I spend quite long to try to found hidden bit(s) or an other way to do li=
ke
> you want but I can't find any solution.

Then we can invalidate the entire TLB.

> As you mention the downstream code suggest that the iommu can't invalidate
> TLB in unmap routine so I don't see how to progress.

The downstream code is a tangled mess; I don't think it suggests anything
about what the IOMMU hardware is capable of.

> Maybe we should just admit that is how the hardware work.

No.

The upstream kernel isn't a dumping ground for vendor crap. The hardware
has TLB invalidation functionality and so we should use it. If we don't,
then we're not giving the IOMMU API what it expects and any callers
outside of the video codecs will be landed with problems when unmap
doesn't work as expected.

> This v13 has fixed the documentation so I don't plan to spend more time o=
n this driver.

That's a shame, I'm really not asking for much.

Will

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
