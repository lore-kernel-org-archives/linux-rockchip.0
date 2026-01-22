Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1345FD3EE95
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+i1NQHiuDZTKfb5Z55AWmmCmPgB4erlpifHJV6lIG2w=; b=Ov6in9TCyP7p8h
	uQrL3rpNB0tTERUQb7KGVYeAqq6SnMMu2EO+6UfTOC9+Z44Ca8gBR1dUZI/xwjW3VuZ6UlzjSsDLM
	Ldr6Uh/3raTMAQLA84Meyy1Fhx0iBs7A/9Z/e4I/Moae2lUOeTCG6qUyNbc2XmSU3cNi35RIx+VLT
	Ov9+tH9s1aWW+Mm6kzDlHLECdohyrVxnsG4RW4B5CAoC9nT8+4RWTclszvK/Ckwxl/sy5S+5cDpbP
	9ZjtVTKvJgzS1KGyYzVTizjNIXacNcjrmEAW6cOqCfYHsnBRb6SEx2LIEp5NZ12BaW7ZVVCtxoRq3
	8lt1bhRcWqKF0sgkdsUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viy1q-00000007W6i-3wqx;
	Thu, 22 Jan 2026 16:59:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viy1p-00000007W6A-0hCX;
	Thu, 22 Jan 2026 16:59:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ctyaECZ1PTrRA7apezvO6HlUfCV+MlmRr+a4g56cUxU=; b=MXWLd1+5KIz+Qo4QPusytue3zN
	67ny5otb/UDkHJrw5yem3rA/+QO0/0pN1fcLvRaIEd4Y9xzknKj+Z7HnZq83cqQgcjiR0dk0P2OQf
	4pgkLooPjkFxrR6y7TjPj5fCXZMOlstVt5K74O1NkFwQ51+hmSdEEz0vWvAVg3IJJGyZVEa5KZmDe
	GKwsedP8cP8zlRWhQ+M1ShAnN4oyUxdAcaaHcER9hc5KWBYE3res80MnGmGVkkY3Y4yteDFrSfng1
	dV4aC/1HHsmC4/e0yrwn1D79rAw86CFr9ruW+lQGO0GJEj9FnBQpI+KKdSksCenBYSpzaMLIaUwyT
	6pTC5NEA==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viy1l-00000000pj8-1mZn;
	Thu, 22 Jan 2026 16:59:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D3DFE44229;
	Thu, 22 Jan 2026 16:59:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2E2BC116D0;
	Thu, 22 Jan 2026 16:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769101161;
	bh=J5VqdBfB3qJLKokwNzHgugj/xR5O2h1qw7xFVlfjZa4=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:From;
	b=WK8Qdiy+OYob7AaCGw51BnlD5QnCxxjuxB5EckU4dxg2pceWfpf2hxcKJkAGzgwFv
	 OYvOTfFdeWLftjTHM3KIMbaNG3YhhMm3cp18/6v/6az/gI/YGsh+WTX1ANIJxUNjYh
	 cl/mjuaSdgT3rWYuCgUTf6UHnlg/1tRcJrYbOBdEOp6sNTpKOEKcgzWV5UUBmJd0NX
	 F4SohSFUcSgon4U5tz/wv89xMjr8qloLQOeEn/d6QBDjT0SbWdWqo9mkOmFYG0Sf7l
	 MKr9b6ddz/dSiwuBXDx4us3AZ2sp9epXfvMoT66uX2n8zu/GB8+2jbN0aSSOs+eDIg
	 xXk9RSb1r82KA==
Date: Thu, 22 Jan 2026 17:59:18 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Koichiro Den <den@valinux.co.jp>
CC: jingoohan1@gmail.com, mani@kernel.org, lpieralisi@kernel.org,
 kwilczynski@kernel.org, robh@kernel.org, bhelgaas@google.com,
 vigneshr@ti.com, s-vadapalli@ti.com, hongxing.zhu@nxp.com,
 l.stach@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, minghuan.Lian@nxp.com,
 mingkai.hu@nxp.com, roy.zang@nxp.com, jesper.nilsson@axis.com,
 heiko@sntech.de, srikanth.thokala@intel.com, marek.vasut+renesas@gmail.com,
 yoshihiro.shimoda.uh@renesas.com, geert+renesas@glider.be,
 magnus.damm@gmail.com, christian.bruel@foss.st.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com,
 hayashi.kunihiko@socionext.com, mhiramat@kernel.org, kishon@kernel.org,
 jirislaby@kernel.org, rongqianfeng@vivo.com, 18255117159@163.com,
 shawn.lin@rock-chips.com, nicolas.frattaroli@collabora.com,
 linux.amoon@gmail.com, vidyas@nvidia.com, Frank.Li@nxp.com,
 linux-omap@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v9_4/5=5D_PCI=3A_dwc=3A_ep=3A_Support_BAR_sub?=
 =?US-ASCII?Q?range_inbound_mapping_via_Address_Match_Mode_iATU?=
User-Agent: Thunderbird for Android
In-Reply-To: <s6bnqkbuugi7oio7ybekdbk3dokpbe2bui2wjltdwajxix2app@wosgmhrfsriv>
References: <20260122084909.2390865-1-den@valinux.co.jp> <20260122084909.2390865-5-den@valinux.co.jp> <aXHsd7-WWAGyhy_w@ryzen> <s6bnqkbuugi7oio7ybekdbk3dokpbe2bui2wjltdwajxix2app@wosgmhrfsriv>
Message-ID: <19D609EC-F850-4B43-A83C-0B8C70E641B5@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_165925_806223_05284635 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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

On 22 January 2026 15:29:02 CET, Koichiro Den <den@valinux.co.jp> wrote:
>
>> To make sure that dw_pcie_ep_ib_atu_addr() cannot be called without already
>> having a BAR configured, to we perhaps want something like:
>
>Thanks for the review.
>Isn't the existing guard in dw_pcie_ep_ib_atu_addr sufficient?
>
>        [...]
>        base = dw_pcie_ep_read_bar_assigned(ep, func_no, bar, epf_bar->flags);
>        if (!base) {
>                dev_err(dev,
>                        "BAR%u not assigned, cannot set up sub-range mappings\n",
>                        bar);
>                return -EINVAL;
>        }
>

Well, for a driver that does not call dw_pcie_ep_reset_bar() in their .init() to disable all BARs that are enabled in the controller by default, the host side will assign an PCI address even if no EPF has called set_bar() on that BAR.

See e.g.
https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/commit/drivers/pci/controller/dwc/pcie-tegra194.c?h=controller/dwc&id=42f9c66a6d0cc45758dab77233c5460e1cf003df

There might be other EPC drivers that don't disable all BARs in their .init(), so I would say that simply checking if the BAR has an address is not sufficient to guarantee that an EPF driver has called set_bar().


I think the safest option is my second suggestion because then we know that we will only call
dw_pcie_ep_ib_atu_addr()

When:

1) If ep->epf_bar[bar] is set:
https://github.com/torvalds/linux/blob/v6.19-rc6/drivers/pci/controller/dwc/pcie-designware-ep.c#L363


2) All the other requirements to dynamically update a BAR is also met:

https://github.com/torvalds/linux/blob/v6.19-rc6/drivers/pci/controller/dwc/pcie-designware-ep.c#L368-L370



Kind regards,
Niklas


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
