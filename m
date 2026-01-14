Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D894D39014
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 20:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lnli6h5osaNRxUEV7t7lTnkUeFhv280GLkkUJ/SQRKM=; b=Q3CCeHa9BVkjIL
	FiSNUoKeXIQn7I3XtZ5r04mAmouRWyycwaKs+ibCsNKHcqTdCSQVOjLQOTPY8DmDTZaNhk6Mzwo3L
	EiC6kYbFd35JydAKFRBmcLVvU2DjUOv7EqQKTJV7Ty4wjh0w7j1RQmgPFwv+TpsGTBGYIy1va2jmK
	GMb1PQqLFLHSP3HxzcDK+HKidTcpqfhmEI/UFzgY5C2J+aQBhlnRNxoU5mBoTIOIQFTD3ODWRUG9m
	jtfkPPOLBAJciBMSiCp5CV9HMhxQghkLAn2NYyFmwkYpD+4A9KVv0qPt4rTK0sWjxNfjBCQkGoK8R
	+i1tIg46Fzx+8uM+8EMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg7FY-0000000AajK-2YTu;
	Wed, 14 Jan 2026 20:13:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg7FW-0000000Aaim-37cz;
	Wed, 14 Jan 2026 20:13:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 915826001D;
	Wed, 14 Jan 2026 20:13:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D89CC4CEF7;
	Wed, 14 Jan 2026 20:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768421629;
	bh=MMH8BxTdLCMG6H0k3fKrVpip0aGLgha/EOhPfRlgxMQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c5mIULR/ygIzxL+Pxuty2E8BhuVMHRvwCUrYsJBWxe4NzUKKOvLAHR7O5T55F/bwX
	 8Sao0YehpAnrOtH3Cv93t6hj77ccJbds7h9behm5sB/bF4j1EXJT+XINv2x1ke5C+i
	 nBTDVTjP+ljthpD5TzWKEMWc32UsTKRs+aTvOb3d3kUOm1miZ8lNpyqikqvMgP3BDW
	 WLIgmTjHA+HTTrPt2NMj093kfu2BQb33BcNhJChO49A8CRrFYcvFATIckjUkyHgWo8
	 duYni3PcbrLxP3ol8/+Vqc3h2JQtvSwo/amvWEl164C/evEW3b51EsRId7Yoax4GR6
	 0YROdUiZQvKJA==
Date: Wed, 14 Jan 2026 21:13:34 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Koichiro Den <den@valinux.co.jp>, jingoohan1@gmail.com, mani@kernel.org,
	lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org,
	bhelgaas@google.com, vigneshr@ti.com, s-vadapalli@ti.com,
	hongxing.zhu@nxp.com, l.stach@pengutronix.de, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	minghuan.Lian@nxp.com, mingkai.hu@nxp.com, roy.zang@nxp.com,
	jesper.nilsson@axis.com, heiko@sntech.de,
	srikanth.thokala@intel.com, marek.vasut+renesas@gmail.com,
	yoshihiro.shimoda.uh@renesas.com, geert+renesas@glider.be,
	magnus.damm@gmail.com, christian.bruel@foss.st.com,
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
	thierry.reding@gmail.com, jonathanh@nvidia.com,
	hayashi.kunihiko@socionext.com, mhiramat@kernel.org,
	kishon@kernel.org, jirislaby@kernel.org, rongqianfeng@vivo.com,
	18255117159@163.com, shawn.lin@rock-chips.com,
	nicolas.frattaroli@collabora.com, linux.amoon@gmail.com,
	vidyas@nvidia.com, linux-omap@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@axis.com,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH v7 3/6] PCI: dwc: Allow glue drivers to return mutable
 EPC features
Message-ID: <aWf47s1oY-bjCDSA@fedora>
References: <20260113162719.3710268-1-den@valinux.co.jp>
 <20260113162719.3710268-4-den@valinux.co.jp>
 <aWatVUFdyYz+JaMI@lizhi-Precision-Tower-5810>
 <mz3ahnech7yn66hcv7hqllir6rz6qpjd6m2aj3feh2gqfsvpwk@oobwtkb6o2jx>
 <aWe0KJnZNHqSUAKg@lizhi-Precision-Tower-5810>
 <m47oybaq4u2noqqd77czzgwwnmmquhvarjnxgijlhb5neulznt@dts3icronu6u>
 <aWfyDHZCoh1t6/vP@lizhi-Precision-Tower-5810>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aWfyDHZCoh1t6/vP@lizhi-Precision-Tower-5810>
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

On Wed, Jan 14, 2026 at 02:44:12PM -0500, Frank Li wrote:
> > > > > Add
> > > > > 	DWC_EPC_DEFAULT, into every epc_features.
> > > >
> > > > One corner case is that pci-layerscape-ep.c builds the pci_epc_features
> > >
> > > It is our old platform. I checked code, it should be wrong. features should
> > > report EPC hardware capibility.
> >
> > I'm not really sure whether commit cc255eb0bfbe ("PCI: layerscape: Modify
> > the way of getting capability with different PEX") was wrong.
> > Do you have a patch in mind?
> 
> I think it's wrong. And it doesn't impact your patch. Just leave it as it.
> we can add submap support later if need.

Adding a macro:
#define DWC_EPC_COMMON_FEATURES .dynamic_inbound_mapping = true

And including it in all the DWC glue drivers' epc_features sounds
fine to me.

Frank does have a point that if some glue driver ever has some random
errata or bad integration, it will be simpler for a single glue driver
to override the defaults.


The commit that adds subrange mapping support would then just
change the macro to something like:

#define DWC_EPC_COMMON_FEATURES .dynamic_inbound_mapping = true, \
				.subrange_mapping = true


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
