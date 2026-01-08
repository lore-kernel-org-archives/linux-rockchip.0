Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07358D1D492
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 20:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvyHcy+u7yk48FpxLafppUXAWJRW/HHStULz1v7j480=; b=lbs8D7YD3dqX3p
	Xhh6HIAcw8EphPewKeysM0swZEkrnBEe6CgaWv3iCqZxmzSY+K881PBLZ/d/PU1m71foNTPfifuSY
	5VJQMybTP7gywxTjK04h5zxtvasX33ayRKjfewpiEcEmIojjOBMd5XdmrAVrIFGH3Oj+mXcKhzllk
	kgWARJ8UVbrnFHwcu0DS3RyjaF140obvyPGg9H+hr9r50tNrao68jDiZE7wzBcBhBxHQAClxo4zSf
	VS+NVlWWfyywKVV3jLkR/RO15n238LJ/XCWJdhOu11HgSmJIvbVpZtAz/0E26p7YQ63GlIlmgCaQ+
	+9C3GXhQeUYa012DzmWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdx2m-00000000r6n-05RK;
	Thu, 08 Jan 2026 20:55:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdx2j-00000000r6M-3iMM;
	Thu, 08 Jan 2026 20:55:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5F8A040989;
	Thu,  8 Jan 2026 20:55:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B290C116C6;
	Thu,  8 Jan 2026 20:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767905740;
	bh=xBJe/1TFcmT6ykWBd9m6VDk/sy5CDIe6A5UhmE5fQMc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SjSg9NeThhyh+++t7oDphRi9jrjfHMpyjFOTzaeh0gYoZ3izGVjS4O26bFUA1QUvm
	 J3SqsMuOQCewM7IKUQ96hK2KMq/kcHx9beh18yud/0R4cTYRVZLISqCM0zEThG8jQ+
	 h5AYr5uN46Rj5jEJLWP1pW79KbPjBYUs+2Un3MzTPCOu3AXqD7aNoNxS/PtrsiFlh/
	 hahC8p89QMUHjsXVrAsAGZl/GL0U9LcdaKzZNuS74lwloUO1xDsSnYzTWALX39Z9GL
	 rvyrOUOB/9IfhehMJlaoXTpriWA0L1IpI4LhNpjLMymvGJSP5UfbZz9Kzfuz+mPimt
	 U7lpSI5WgMQxg==
Date: Thu, 8 Jan 2026 21:55:27 +0100
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
Message-ID: <aWAZv3ZwdUmo4_wc@ryzen>
References: <20260108172403.2629671-1-den@valinux.co.jp>
 <20260108172403.2629671-4-den@valinux.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108172403.2629671-4-den@valinux.co.jp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_125541_989566_57393A5C 
X-CRM114-Status: GOOD (  18.53  )
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

On Fri, Jan 09, 2026 at 02:24:03AM +0900, Koichiro Den wrote:

(snip)

> +/* Address Match Mode inbound iATU mapping */
> +static int dw_pcie_ep_ib_atu_addr(struct dw_pcie_ep *ep, u8 func_no, int type,
> +				  const struct pci_epf_bar *epf_bar)
> +{
> +	const struct pci_epf_bar_submap *submap = epf_bar->submap;
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	enum pci_barno bar = epf_bar->barno;
> +	struct device *dev = pci->dev;
> +	u64 pci_addr, parent_bus_addr;
> +	struct dw_pcie_ib_map *new;
> +	u64 size, off, base;
> +	unsigned long flags;
> +	int free_win, ret;
> +	unsigned int i;
> +
> +	if (!epf_bar->num_submap || !submap || !epf_bar->size)
> +		return -EINVAL;
> +
> +	ret = dw_pcie_ep_validate_submap(ep, submap, epf_bar->num_submap,
> +					 epf_bar->size);
> +	if (ret)
> +		return ret;
> +
> +	base = dw_pcie_ep_read_bar_assigned(ep, func_no, bar, epf_bar->flags);
> +	if (!base) {
> +		dev_err(dev,
> +			"BAR%u not assigned, cannot set up sub-range mappings\n",
> +			bar);
> +		return -EINVAL;
> +	}

Sorry for giving additional review comments.

But there is one thing that I might not be so obvious for someone just
reading this source. How is this API supposed to be used in practice?

Most DWC-based controllers are not hotplug capable.

That means that we must boot the EP, create the EPF symlink in configfs,
and start link training by writing to configfs, before starting the host.

dw_pcie_ep_ib_atu_addr() reads the PCI address that the host has assigned
to the BAR, and returns an error if the host has not already assigned a
PCI addres to the BAR.

Does that mean that the usage of this API will be something like:

1) set_bar() ## using BAR match mode, since BAR match mode can write
   the BAR mask to define a BAR size, so that the host can assign a
   PCI address to the BAR.

2) start() ## start link

3) link up

4) wait for some special command, perhaps NTB_EPF_COMMAND
CMD_CONFIGURE_DOORBELL or NTB_EPF_COMMAND CMD_CONFIGURE_MW

5) set_bar() ## using Address match mode. Because address match mode
   requires that the host has assigned a PCI address to the BAR, we
   can only change the mapping for a BAR after the host has assigned
   PCI addresses for all bars.



Perhaps you should add some text to:
Documentation/PCI/endpoint/pci-endpoint.rst

Because right now the documentation for pci_epc_set_bar() says:

   The PCI endpoint function driver should use pci_epc_set_bar() to configure
   the Base Address Register in order for the host to assign PCI addr space.
   Register space of the function driver is usually configured
   using this API.

So it is obviously meant to be called *before* the host assigns a PCI
address for the BAR. Now with submap ranges, it appears that it has to
be called *after* the host assigned a PCI address for the BAR.

So I can only assume that you will call set_bar() twice.
Once with BAR match mode, and then a second time with address map mode.

It might be obvious to you, but I think it makes sense to also have some
kind of documentation for this feature.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
