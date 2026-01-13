Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A6A3C9EC97
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 10:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxSVBpDiRMMMFABSfFJrYjMMSSUsKBHc3oSlS3y5FfQ=; b=DXzj7MoaEQhgwi
	41/wP70eMPQzieF1p/ZRtIwz9YUcVPmKvxelRIlCyvdMjYm/JN+SmAU61phmMWV+LX68DP75AGn3K
	euBXR7jwoAiRnkXbE12jVQ3PPK61XKITvDUrEmw0h0sreWabOGtsEkatrj7q+5zpWBv7YuE8bnYVc
	PgUHaO2XhXiHVTMYSSGCBo+94cT95U0UNBF3neo8GXodvAalgAg6A7KGikzfwTKXxNDdus6eIBfUO
	m0bV7GkrvEmgaScl700yYyTH6DecUMlgTX7aWADgmGqSaBuay0yyfnh5LTLBWMzEJaBZ2XawVXnOD
	1FeftDj+e1y8h4vYeI3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbPj-00000006syA-0CEw;
	Tue, 13 Jan 2026 10:14:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbPh-00000006sxn-0TAj;
	Tue, 13 Jan 2026 10:14:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A81B142A60;
	Tue, 13 Jan 2026 10:14:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B8ABC116C6;
	Tue, 13 Jan 2026 10:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768299252;
	bh=TGUkh8Gval+loBUcY0wl9fpiuvXqEh3n7gDAud8tPZA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a4jHHzHOUVsgIY6iLEFwNqEhROfJX0HqEz2AgiMoJ905dpc27Ipl7uiQTzDuSkHGt
	 a4zqFmQddcjjIpU2Hk3SV+UnBl1MicSbvTR3yWKw7wp+MVL+NWLjFwKsS7xUA/1Ccb
	 kNVgZP8Lgvr//+yMpx/aw01IOJZlWqk/NM8uUKtlM5PbVbeOiN/MvtCR7FMhwZbUyT
	 mj1PV/ATKjO2Tcxn2J9SnCGVkgOlTlA04Cx64oDamNIXkqBH9smtxiiJSdrPOXnc45
	 8GojOC7O2PjYBb2RMI+Sa4E6tlzIl8RDdudZLPrZc8befQdJTEqeHc10imI5fCVeSk
	 g4bwybfGogERQ==
Date: Tue, 13 Jan 2026 11:13:59 +0100
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
Subject: Re: [PATCH v6 1/5] PCI: endpoint: Add BAR subrange mapping support
Message-ID: <aWYa59GgcB7jOfQq@ryzen>
References: <20260113023715.3463724-1-den@valinux.co.jp>
 <20260113023715.3463724-2-den@valinux.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260113023715.3463724-2-den@valinux.co.jp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_021413_192147_B8B19BD3 
X-CRM114-Status: GOOD (  21.80  )
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

On Tue, Jan 13, 2026 at 11:37:11AM +0900, Koichiro Den wrote:
> Extend the PCI endpoint core to support mapping subranges within a BAR.
> Introduce a new 'submap' field and a 'use_submap' flag in struct
> pci_epf_bar so an endpoint function driver can request inbound mappings
> that fully cover the BAR.
> 
> Add a subrange_mapping feature bit to struct pci_epc_features so EPC
> drivers can explicitly advertise support. Make pci_epc_set_bar() reject
> use_submap requests (-EINVAL) when the EPC does not advertise
> subrange_mapping, to avoid silently accepting a configuration that the
> controller cannot implement.
> 
> The submap array describes the complete BAR layout (no overlaps and no
> gaps are allowed to avoid exposing untranslated address ranges). This
> provides the generic infrastructure needed to map multiple logical
> regions into a single BAR at different offsets, without assuming a
> controller-specific inbound address translation mechanism. Also, the
> array must be sorted in ascending order by offset.
> 
> Signed-off-by: Koichiro Den <den@valinux.co.jp>
> ---

I think this patch should be after the:
"PCI: endpoint: Add dynamic_inbound_mapping EPC feature"
patch...


>  drivers/pci/endpoint/pci-epc-core.c |  3 +++
>  include/linux/pci-epc.h             |  3 +++
>  include/linux/pci-epf.h             | 31 +++++++++++++++++++++++++++++
>  3 files changed, 37 insertions(+)
> 
> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> index ca7f19cc973a..8d809a2c3ce9 100644
> --- a/drivers/pci/endpoint/pci-epc-core.c
> +++ b/drivers/pci/endpoint/pci-epc-core.c
> @@ -596,6 +596,9 @@ int pci_epc_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  	if (!epc_features)
>  		return -EINVAL;
>  
> +	if (epf_bar->use_submap && !epc_features->subrange_mapping)
> +		return -EINVAL;

...then you can change this condition to:

	if (epf_bar->use_submap &&
	    !(epc_features->dynamic_inbound_mapping &&
	      epc_features->subrange_mapping))
		return -EINVAL;


> +
>  	if (epc_features->bar[bar].type == BAR_RESIZABLE &&
>  	    (epf_bar->size < SZ_1M || (u64)epf_bar->size > (SZ_128G * 1024)))
>  		return -EINVAL;
> diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> index 4286bfdbfdfa..898a29e7d6f7 100644
> --- a/include/linux/pci-epc.h
> +++ b/include/linux/pci-epc.h
> @@ -223,6 +223,8 @@ struct pci_epc_bar_desc {
>  /**
>   * struct pci_epc_features - features supported by a EPC device per function
>   * @linkup_notifier: indicate if the EPC device can notify EPF driver on link up
> + * @subrange_mapping: indicate if the EPC device can map inbound subranges for a
> + *                    BAR

This text should probably also mention that this feature depends on the
dynamic_inbound_mapping feature.


With those comments fixed, looks good to me:
Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
