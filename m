Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A50F6C9EC7B
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 11:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVyNoNIPsVIXmKPGDRZv0ubj/WyZIhwsJuwRZUZP/pg=; b=gmiQRT52gb/E++
	mxhE8whFl8lpQqzKgI/ysXzRubTvDIRSEux14nwRlsxXvy1E8i1yy7NKcSNdmCKp+iw7kvOhv3zex
	mM+Hu/WwdJYG7QmG84WC1AICnhaFnvcnVlLKbCBOlioU5nU1t+gKq5fGap7M3e2EVkmVovv/UiPRL
	Ngy6c6pCwaLXOiyzEAa4vnOeUht6j9WMeIOF5tx10tXcI5D1bCKEpcA5dr5SxDtENg6ZIOm2t5uvh
	0YpS6kaYbkICLMlHK0sK4SrR73FSMw8iVe/vMcj62r2eQPEYpbRXDHY0vEYoCLqKwEvyX2HeCmKj1
	n7sJKCODyf4Psl35Gv2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfGLA-00000005Glw-2mSp;
	Mon, 12 Jan 2026 11:44:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfGL7-00000005GlX-2oDz;
	Mon, 12 Jan 2026 11:44:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E82E243E75;
	Mon, 12 Jan 2026 11:44:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02848C16AAE;
	Mon, 12 Jan 2026 11:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768218242;
	bh=wYxzqaucRGuoMNi3CMgj0x5c6RoysJv8GcSjGMutuIM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BDSFaEjhcr82fZbuOnjBsIysguMmvESRnrY4Tpsv9UGf02g8W7lpkhwWzD3ZIsLOR
	 7AeG2s+ycAlQNjCw8YvdfZWEU6xGElMYLW6io9YkNrIvlGIPar1iQI7aij9znZaI/6
	 BxJ/wIFz6DdmbdPiZHbOoiwkZUJv3hQjpiOuavR/2Ua7mkrI3qhF0BRjXMU8U5mBPo
	 2HMuNGiN0xFNsBs0I4Q2tw3Cwl1R6aWTYi3pXz6xaXjzyFoGuIH7U0OtYGZv4JnSKY
	 y+AXIMFWSkAK5y7yHajqyXFoHhHBAtAJssYs+UufUpqaqMQPxX/X1j7u9ik4vwXeRY
	 +s9LbpjkC3sow==
Date: Mon, 12 Jan 2026 12:43:50 +0100
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
Subject: Re: [PATCH v5 3/3] PCI: dwc: ep: Support BAR subrange inbound
 mapping via Address Match Mode iATU
Message-ID: <aWTedhkOclAVvktO@ryzen>
References: <20260108172403.2629671-1-den@valinux.co.jp>
 <20260108172403.2629671-4-den@valinux.co.jp>
 <aWAZv3ZwdUmo4_wc@ryzen>
 <nqpwi6ewen4kf7jqgon4ljerceqjeaule25dzb6ytas3wslqhp@ddkr3jum6eac>
 <aWC8jGTtKIzVuG-X@ryzen>
 <wvb42kyfcpyii3jql2gm75dd6hqpcd32yat2yb7cg7sl3raw4l@d4mfxk47l6md>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <wvb42kyfcpyii3jql2gm75dd6hqpcd32yat2yb7cg7sl3raw4l@d4mfxk47l6md>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_034405_750980_E4C6BB2F 
X-CRM114-Status: GOOD (  20.79  )
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

Hello Koichiro,

On Sat, Jan 10, 2026 at 11:29:06PM +0900, Koichiro Den wrote:

(snip)

> > Your new feature (epc_features->subrange_mapping) in epc_features appears
> > to depend on epc_features->dynamic_inbound_mapping, so it is a shame that
> > we don't have a epc_features->dynamic_inbound_mapping bit, so that this new
> > feature could have depended on that bit.
> > 
> > 	if (epf_bar->use_submap &&
> > 	    !(epc_features->dynamic_inbound_mapping &&
> > 	      epc_features->subrange_mapping))
> > 		return -EINVAL;
> > 
> > 
> > I think adding some documentation is a good step.
> > 
> > Perhaps we should also introduce a epc_features->dynamic_inbound_mapping bit?
> > Since you are making DWC glue drivers return a mutable EPC features, we could
> > set this bit in the DWC driver after that commit. What do you think?
> 
> As you pointed out, support for dynamic_inbound_mapping is needed
> independently of my series. Given that, it would make sense to handle it
> either before this series, or to fold it into the next iteration (=v6) of
> the series if that is preferred.

Please fold it into the next iteration (=v6).

It should be a one liner patch in the DWC driver, at least if you put it
after your "PCI: dwc: Allow glue drivers to return mutable EPC features"
patch.

Thank you for all your efforts on improving the endpoint framework.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
