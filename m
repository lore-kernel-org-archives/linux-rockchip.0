Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6476FD44C66
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 15:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkAeaETTN6F3eF+hByKWkFjqhJ3vKNRemtXTY6PXtOI=; b=WSeF4r66QQ6F/S
	cb3Cfoxi3xRwAGlr/cn++89pemPkEYoP00xi4I7AbUHai4rpxkwm6SxflXQ4LIy+9NuBter86ykit
	z54MopMnyZfFqfYEVppJtc6DJKXSXTnrHyWDCSRLHfg8vQi/isG8nX/LAsZgeEuh6em50OK8V777g
	86D2DJQfSjfOu6Do9kP5L5g5jC/YFMtYFGPpxzbNwxXAGrrH4s6sERFQMyaJ4qtcuwdrgzpCncKvi
	t3zRD2c7JPqGO53dDUCWHd/MJgcViVcYb5Khe1mPEid6y/QercCiFVnJs1z1Q/m4YWRvxeEjgI5lG
	yohspM6EXuVEqrl+aTxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgPAK-0000000CaDR-3L2m;
	Thu, 15 Jan 2026 15:21:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgPAJ-0000000CaD6-2ODe;
	Thu, 15 Jan 2026 15:21:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8F46F6001A;
	Thu, 15 Jan 2026 15:21:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17EBFC16AAE;
	Thu, 15 Jan 2026 15:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768490498;
	bh=Tt0EYm72yfv5arwvfEiESNjf8n0aJTfAVjQfOYQykeU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QI7srDK/FhDXgZgja3pcyeu8mCCZXuUfO0oaumMkvJLpDBbxgXYV0dL86YPgf3Z0s
	 JS5xTfYR/dI+NP0Ac+z8jTX+Sk/KoKgegd40WfIvfyr6itWJ7nlEgeQVHMtujECjAA
	 9sLrYvJuucxJeRjo3nRQzbbwEUvzk5zZVckQfEWAMZBWPinnu4Me7RXC0Nk18jOM4Q
	 V5xf/4JizZXKaU1UFVxvgUe241yU7L2jzNnBDn2MI9exJ8/7mF565LjjA5rAqffhq1
	 hA1PlVxKRt1vdrt4C8Y6ZwGZAVP2V/m7QsCY3GxHieqrNSmLUdYRDlFLKmnYwh5CLb
	 ijXqpgpnqqKoA==
Date: Thu, 15 Jan 2026 16:21:21 +0100
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
Subject: Re: [PATCH v8 2/5] PCI: endpoint: Add BAR subrange mapping support
Message-ID: <aWkF6rT0Du7iJwHh@ryzen>
References: <20260115084928.55701-1-den@valinux.co.jp>
 <20260115084928.55701-3-den@valinux.co.jp>
 <aWj/Sr63+hl7CBe/@lizhi-Precision-Tower-5810>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aWj/Sr63+hl7CBe/@lizhi-Precision-Tower-5810>
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

On Thu, Jan 15, 2026 at 09:52:58AM -0500, Frank Li wrote:
> > @@ -127,6 +150,10 @@ struct pci_epf_bar {
> >  	size_t		mem_size;
> >  	enum pci_barno	barno;
> >  	int		flags;
> > +
> > +	/* Optional sub-range mapping */
> > +	unsigned int	num_submap;
> > +	struct pci_epf_bar_submap	*submap;
> 
> struct pci_epf_bar_submap submap[] __counted_by(num_submap);
> 
> Not sure if use this simplify alloc/free.

Your suggestion changes the submap from a pointer to a flexible array
member.

A flexible array member must always be last in the struct,
and you can only have one flexible array member per struct.

Additionally, using a flexible array member requires the struct to
always be allocated on the heap. You can't allocate a struct with a
flexible array member on the stack.

So I'm not sure that if your suggestion is something we want.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
