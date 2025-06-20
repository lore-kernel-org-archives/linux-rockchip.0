Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DB87C7115B
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 20:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWT20bhWkl+1L0qRbOAqNtxStFbZBv3YUjO2oEK4VHI=; b=i/QBehl0pQJm0n
	eyStJ2nWFvBy3hQ0XoY4WWM3fssFNTjdTwwHXDlsZx5NuhRTLVLXI6P+6zQWuzsQxygdyRtTrdwDR
	gO7wzCcu2glIM20XsJuvqc/K+mYWE1yF3RdxddhzidG+pPBAXBzysZrBCPfvvu6VxBB3DF56DKKZu
	TqVhk3QYcE21rOuuXsGWsNieHwuuK4halLeCaA44/OHwwkpJ2t7ZzajwuFT96XfgQ2Wi9UQEgnfZs
	G+eXk49Q+C1g0RNYhYmXVPoLxKF7MyZGaZlUHw69n/da53XyO1nOKHiZYqGP2tXSn0TmnI6ByC0Ld
	Tp93lJUXqvGGF0KmDKog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSigv-0000000GZkg-3wyZ;
	Fri, 20 Jun 2025 20:50:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSici-0000000GZED-2Kg9
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Jun 2025 20:46:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1uSicJ-0008Gr-KZ; Fri, 20 Jun 2025 22:45:43 +0200
Message-ID: <c7dd8ac53170cafab5489f98d3da13f65cd67a1a.camel@pengutronix.de>
Subject: Re: [PATCH v3 3/5] iommu: Add verisilicon IOMMU driver
From: Lucas Stach <l.stach@pengutronix.de>
To: Robin Murphy <robin.murphy@arm.com>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>, joro@8bytes.org, will@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	nicolas.dufresne@collabora.com, jgg@ziepe.ca
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Date: Fri, 20 Jun 2025 22:45:41 +0200
In-Reply-To: <43276c9a-5434-467c-abb2-dd2806ab81d0@arm.com>
References: <20250619131232.69208-1-benjamin.gaignard@collabora.com>
	 <20250619131232.69208-4-benjamin.gaignard@collabora.com>
	 <43276c9a-5434-467c-abb2-dd2806ab81d0@arm.com>
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_134608_586070_F3E4C30E 
X-CRM114-Status: GOOD (  17.74  )
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

Am Freitag, dem 20.06.2025 um 20:37 +0100 schrieb Robin Murphy:
> On 19/06/2025 2:12 pm, Benjamin Gaignard wrote:
> > The Verisilicon IOMMU hardware block can be found in combination
> > with Verisilicon hardware video codecs (encoders or decoders) on
> > different SoCs.
> > Enable it will allow us to use non contiguous memory allocators
> > for Verisilicon video codecs.
> > 
> > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > ---
> 
[...]
> I'm especially curious what this "pta" really is - is the comment above 
> just wrong, and you've actually got a 3-level pagetable supporting 
> somewhere between 33 and 42 bits of VA? If not, then the additional 
> level of indirection would very much seem to imply some kind of 
> mechanism for accommodating multiple pagetables at once, and in that 
> case, is it like a PASID table where the client device gets to choose 
> which entry to use, or a StreamID table to disambiguate multiple client 
> devices? (Where in the latter case it should most likely belong to the 
> IOMMU rather than the domain, and you probably want nonzero #iommu-cells 
> in the DT binding for the client IDs).
> 
PTA is short for page table array and it's another level of indirection
to select the page tables to be used for the specific translation. On
the Vivante GPU, where this MMU IP originated, the GPU can select the
index into this array to be used for a specific command stream to
implement GPU client isolation, so it's much like a PASID table.

I have no idea if and how the integration with the video codecs can
select the PTA index.

Regards,
Lucas


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
