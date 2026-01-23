Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64E42D72353
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 08:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNtT8m2XB0E1R/ZjooeJ88Mo62nLdmdYZeZhJCjpRmY=; b=a8k4a2f4Msjhek
	iMARFoP1MCuEVGbj4j9oBqbpX2IqnwMlNFfLfvQatQ8pMd0DchsH4sdplim2wNlVsNA/7isP2eKKG
	wrhn+PpHvz3jT2PuSux//eBAuasgrCqLfhjIEWezQNkaAf6w/QQF9bN4ysoBEiLWnG47AzJR0S9sr
	pZO0cLrqKj3fnKMxlI2tlX/oGDXPuYtJmXAjtncnhnb3u7Rrwl/YvS49KB3xDBR+s0BSNhz83b1Sh
	FxBrNw5hB4d4j9JAeBzLy6+oEOaRuRykGfD4yHQ+eob1jST80bOFyP2MtfF8oewdy6TgC8KcLPau3
	c9qUA0PP9Z10uLPTACDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCtE-00000008VQw-2R9n;
	Fri, 23 Jan 2026 08:51:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCtB-00000008VQW-2I1j;
	Fri, 23 Jan 2026 08:51:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4B7E143891;
	Fri, 23 Jan 2026 08:51:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F06FC4CEF1;
	Fri, 23 Jan 2026 08:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769158292;
	bh=uHLu75YU3d5LFuDqYhNdrTluLj4QmEkgMjijx82wFVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P2x/rDF+V1S8nsKTuKOnD9QTwc41mF+XW6CEW4Lczf+0Sd6Nq5HQYPZljIkT06Qsr
	 wIpsWwJl7SNWJGjLv6Eul2oOhcXM+uSeslFw7p/fqlD351FGaNP7tTEeORpdakVZ2x
	 TqvkKLgYvEcqDaF0pIhEqdOwsfBiNwfz73XPMMzNpH57FqZjOmS6Ef5yIk1U5pEv3/
	 sDhbSopJR642hfZEnALQcni3Jw5qQtapD3e7lk65oHsqDb0Bur+Ix0+UDcHnBGwPU1
	 //bi+O56i4qSkHisywxprWy1WySWG064VdIew5tpiaTSmeiHZoS4N3KNcwNWuzGqID
	 JclBA/sfEIjRQ==
Date: Fri, 23 Jan 2026 09:51:19 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Koichiro Den <den@valinux.co.jp>
Cc: jingoohan1@gmail.com, mani@kernel.org, lpieralisi@kernel.org,
	kwilczynski@kernel.org, robh@kernel.org, bhelgaas@google.com,
	vigneshr@ti.com, s-vadapalli@ti.com, hongxing.zhu@nxp.com,
	l.stach@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, minghuan.Lian@nxp.com,
	mingkai.hu@nxp.com, roy.zang@nxp.com, jesper.nilsson@axis.com,
	heiko@sntech.de, srikanth.thokala@intel.com,
	marek.vasut+renesas@gmail.com, yoshihiro.shimoda.uh@renesas.com,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	christian.bruel@foss.st.com, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, thierry.reding@gmail.com,
	jonathanh@nvidia.com, hayashi.kunihiko@socionext.com,
	mhiramat@kernel.org, kishon@kernel.org, jirislaby@kernel.org,
	rongqianfeng@vivo.com, 18255117159@163.com,
	shawn.lin@rock-chips.com, nicolas.frattaroli@collabora.com,
	linux.amoon@gmail.com, vidyas@nvidia.com, Frank.Li@nxp.com,
	linux-omap@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH v9 4/5] PCI: dwc: ep: Support BAR subrange inbound
 mapping via Address Match Mode iATU
Message-ID: <aXM2hwCrziK2I8OL@ryzen>
References: <20260122084909.2390865-1-den@valinux.co.jp>
 <20260122084909.2390865-5-den@valinux.co.jp>
 <aXHsd7-WWAGyhy_w@ryzen>
 <s6bnqkbuugi7oio7ybekdbk3dokpbe2bui2wjltdwajxix2app@wosgmhrfsriv>
 <19D609EC-F850-4B43-A83C-0B8C70E641B5@kernel.org>
 <l7wknbayighcczjkqfwhbaqrepjtbgxxstgkntoqvnrs7dnm6g@wvmy67ky37pv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <l7wknbayighcczjkqfwhbaqrepjtbgxxstgkntoqvnrs7dnm6g@wvmy67ky37pv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_005133_629079_61569720 
X-CRM114-Status: GOOD (  23.53  )
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

On Fri, Jan 23, 2026 at 10:16:21AM +0900, Koichiro Den wrote:
> >
> > There might be other EPC drivers that don't disable all BARs in their .init(), so I would say that simply checking if the BAR has an address is not sufficient to guarantee that an EPF driver has called set_bar().
> >
>
> Even if an EPC driver does not reset the BAR in their .init() and some
> default translation is left exposed, wouldn't it be safe as long as
> dw_pcie_ep_ib_atu_addr() succeeds in programming inbound mappings for the
> entire BAR?

For e.g. on RK3588, the default HW configuration of the DWC controller has
all 5 BARs as enabled, with a size of 1 GB.

There is no inbound address translation for these BARs by default.

So for it to be safe, the size of the set_bar() call would have to
match the current size of the BAR, but how should the EPF driver know
that when it has not called set_bar() yet?

dw_pcie_ep_read_bar_assigned() does not return the current size of the
BAR. So you can't verify that the set_bar() call has the same size as
the BARs "default size".


>
> That said, such usage apparently contradicts the documented usage (1st
> set_bar with no submap, then with submap) described in the docs and commit
> messages in this series, and allowing it would make things unnecessarily
> complicated. So I agree that adding such a safeguard is the right approach.
>
> >
> > I think the safest option is my second suggestion because then we know that we will only call
> > dw_pcie_ep_ib_atu_addr()
> >
> > When:
> >
> > 1) If ep->epf_bar[bar] is set:
> > https://github.com/torvalds/linux/blob/v6.19-rc6/drivers/pci/controller/dwc/pcie-designware-ep.c#L363
> >
> >
> > 2) All the other requirements to dynamically update a BAR is also met:
> >
> > https://github.com/torvalds/linux/blob/v6.19-rc6/drivers/pci/controller/dwc/pcie-designware-ep.c#L368-L370
> >
>
> That makes sense, and it ensures that the behavior always accords with the
> docs and commit messages in this series.

I think it makes most sense to put the "use_addr_translation = true"

after the check:

		/*
		 * We can only dynamically change a BAR if the new BAR size and
		 * BAR flags do not differ from the existing configuration.
		 */
		if (ep->epf_bar[bar]->barno != bar ||
		    ep->epf_bar[bar]->size != size ||
		    ep->epf_bar[bar]->flags != flags)
			return -EINVAL;


So we know that dw_pcie_ep_ib_atu_addr() is only called when the size is the
same.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
