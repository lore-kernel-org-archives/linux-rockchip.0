Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29EEFC64ED6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 08:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+0wEf/AoG9VED3zk8Yrm6VSw1owCkda4MTpRi22NGs=; b=bhvSUSV11lc2Af
	SQkVb4jVQgg4ASzNpXCJR8DBIZ3p6NVMnMWppgns9Sl4YGI242u8GtGJapq+OaaoE03fgt8v2neqH
	usokaK89r34a3e6Srtx3OUBCY8DpAStlAHgA2x+t5J5APWk/Xp50oERWswucfTYpQbzEHWnxSaDy0
	IUZIz7T5lXceJpsYGpCqKVaK3qO43eQtQudrdI266l16xCXXvIbnou+SDYcLetTO+CoFEotYcWutC
	3Wf/xuQj8e9oCl25wXcXLsW+AOODPfFkX4Nkqdq0qXOtoqQq4xoP1ycPJPJIOUabwah34hbqXyqJi
	X6il/wxNyQrTjxRlbddg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWvT8-00CNoz-GD; Tue, 28 Feb 2023 08:36:18 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWvSw-00CNlo-N5; Tue, 28 Feb 2023 08:36:09 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C97536602E18;
	Tue, 28 Feb 2023 08:36:01 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1677573362;
	bh=sSCSNcAqqjG5p1vyPrPF5laJlyrHjAnoYyrkzT0wCBw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XHL41QU1m5Z4BwJXQIyYlnOOwEx/7A9c153+Idri0aMSGntkahLFPF3DYvkCGX20D
	 P+I5OlLsTyhGBusUPopLSfCGZgb2DVJI9Rn+Mt4wiqersYQr4aaWhQpFpajX5yAI1K
	 F9Yo5cxeMAhC9rmlDnzD4Hw7SSLP/uuBpbSzh8GMt80yLSm8MOkmAYz+BeCBelhTis
	 C4q+FAWUEnHMYxbRVFQYzkWGL0oJbxDSuo43ihRTG/0rUw5JhKqBJ+6ORyOXJPTk2i
	 zdcjgoMF4+Fo899Qq3U32VFjrVPBOwtbqUGw/YBziFrz7uKP1v2ISyZMqTdiHf98jd
	 YclbNjOLfMntA==
Message-ID: <d86908b8-20b1-418e-d266-6532c012c8ea@collabora.com>
Date: Tue, 28 Feb 2023 09:35:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC 1/1] irqchip/gic-v3: Add RK3588 GICR and GITS no share
 workaround
Content-Language: en-US
To: Lucas Tanure <lucas.tanure@collabora.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Thomas Gleixner <tglx@linutronix.de>,
 Marc Zyngier <maz@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230227151847.207922-1-lucas.tanure@collabora.com>
 <20230227151847.207922-2-lucas.tanure@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230227151847.207922-2-lucas.tanure@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_003607_128976_1464C90F 
X-CRM114-Status: GOOD (  29.88  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Il 27/02/23 16:18, Lucas Tanure ha scritto:
> The GIC600 integration in RK356x, used in rk3588, doesn't support
> any of the shareability or cacheability attributes, and requires
> both values to be set to 0b00 for all the ITS and Redistributor
> tables.
> 
> Based on work of Peter Geis for the Quartz64 board.
> 
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
> ---
>   Documentation/arm64/silicon-errata.rst |  4 +++
>   arch/arm64/Kconfig                     | 13 ++++++++
>   drivers/irqchip/irq-gic-v3-its.c       | 42 ++++++++++++++++++++++++++
>   3 files changed, 59 insertions(+)
> 
> diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
> index ec5f889d7681..b26cf8ca7d5c 100644
> --- a/Documentation/arm64/silicon-errata.rst
> +++ b/Documentation/arm64/silicon-errata.rst
> @@ -209,3 +209,7 @@ stable kernels.
>   +----------------+-----------------+-----------------+-----------------------------+
>   | Fujitsu        | A64FX           | E#010001        | FUJITSU_ERRATUM_010001      |
>   +----------------+-----------------+-----------------+-----------------------------+
> +
> ++----------------+-----------------+-----------------+-----------------------------+
> +| RockChip       | RK3588          | N/A             | ROCKCHIP_NO_SHARE           |
> ++----------------+-----------------+-----------------+-----------------------------+

This should go after Qualcomm, as it looks like this file is ordered by name but
for some reason Fujitsu got at the bottom.
Just keep your new addition ordered.

Besides, I propose the following:

| RockChip       | RK3588          | N/A             | ROCKCHIP_ITS_ERRATUM       |

> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 27b2592698b0..ad3f1742052b 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1150,6 +1150,19 @@ config NVIDIA_CARMEL_CNP_ERRATUM
>   
>   	  If unsure, say Y.
>   
> +config ROCKCHIP_NO_SHARE

config ROCKCHIP_ITS_ERRATUM ?? :-)

> +	bool "Rockchip RK3588 GIC6000 No shareability or cacheability attributes"

You've got a typo here: GIC6000.

> +	default y
> +	help
> +	  The GIC600 integration in RK356x doesn't support any of the shareability or
> +	  cacheability attributes, and requires both values to be set to 0b00 for all
> +	  the ITS and Redistributor tables.
> +
> +	  Work around the issue by clearing the GICR_PROPBASER_SHAREABILITY_MASK from
> +	  register reads at GICR and GITS.
> +
> +	  If unsure, say Y.
> +
>   config SOCIONEXT_SYNQUACER_PREITS
>   	bool "Socionext Synquacer: Workaround for GICv3 pre-ITS"
>   	default y
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index 586271b8aa39..637e2e2a1ab1 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -42,6 +42,7 @@
>   #define ITS_FLAGS_CMDQ_NEEDS_FLUSHING		(1ULL << 0)
>   #define ITS_FLAGS_WORKAROUND_CAVIUM_22375	(1ULL << 1)
>   #define ITS_FLAGS_WORKAROUND_CAVIUM_23144	(1ULL << 2)
> +#define ITS_FLAGS_WORKAROUND_ROCKCHIP_NOSHARE	(1ULL << 3)
>   
>   #define RDIST_FLAGS_PROPBASE_NEEDS_FLUSHING	(1 << 0)
>   #define RDIST_FLAGS_RD_TABLES_PREALLOCATED	(1 << 1)
> @@ -2359,6 +2360,15 @@ static int its_setup_baser(struct its_node *its, struct its_baser *baser,
>   	its_write_baser(its, baser, val);
>   	tmp = baser->val;
>   
> +#if CONFIG_ROCKCHIP_NO_SHARE

None of the other workarounds have an ifdef in parsing the flags, so I think
that you can avoid enclosing this in a preprocessor `if` block.

> +	if (its->flags & ITS_FLAGS_WORKAROUND_ROCKCHIP_NOSHARE) {
> +		if (tmp & GITS_BASER_SHAREABILITY_MASK)
> +			tmp &= ~GITS_BASER_SHAREABILITY_MASK;
> +		else
> +			gic_flush_dcache_to_poc(base, PAGE_ORDER_TO_SIZE(order));
> +	}
> +#endif
> +
>   	if ((val ^ tmp) & GITS_BASER_SHAREABILITY_MASK) {
>   		/*
>   		 * Shareability didn't stick. Just use
> @@ -3057,6 +3067,7 @@ static void its_cpu_init_lpis(void)
>   {
>   	void __iomem *rbase = gic_data_rdist_rd_base();
>   	struct page *pend_page;
> +	struct its_node *its;
>   	phys_addr_t paddr;
>   	u64 val, tmp;
>   
> @@ -3096,6 +3107,12 @@ static void its_cpu_init_lpis(void)
>   	gicr_write_propbaser(val, rbase + GICR_PROPBASER);
>   	tmp = gicr_read_propbaser(rbase + GICR_PROPBASER);
>   
> +#if CONFIG_ROCKCHIP_NO_SHARE

ditto.

> +	its = list_first_entry(&its_nodes, struct its_node, entry);
> +	if (its->flags & ITS_FLAGS_WORKAROUND_ROCKCHIP_NOSHARE)
> +		tmp &= ~GICR_PROPBASER_SHAREABILITY_MASK;
> +#endif
> +
>   	if ((tmp ^ val) & GICR_PROPBASER_SHAREABILITY_MASK) {
>   		if (!(tmp & GICR_PROPBASER_SHAREABILITY_MASK)) {
>   			/*
> @@ -3120,6 +3137,11 @@ static void its_cpu_init_lpis(void)
>   	gicr_write_pendbaser(val, rbase + GICR_PENDBASER);
>   	tmp = gicr_read_pendbaser(rbase + GICR_PENDBASER);
>   
> +#if CONFIG_ROCKCHIP_NO_SHARE
> +	if (its->flags & ITS_FLAGS_WORKAROUND_ROCKCHIP_NOSHARE)
> +		tmp &= ~GICR_PENDBASER_SHAREABILITY_MASK;
> +#endif
> +
>   	if (!(tmp & GICR_PENDBASER_SHAREABILITY_MASK)) {
>   		/*
>   		 * The HW reports non-shareable, we must remove the
> @@ -4710,6 +4732,14 @@ static bool __maybe_unused its_enable_quirk_hip07_161600802(void *data)
>   	return true;
>   }
>   
> +static bool __maybe_unused its_enable_quirk_rk356x(void *data)
> +{
> +	struct its_node *its = data;
> +
> +	its->flags |= ITS_FLAGS_WORKAROUND_ROCKCHIP_NOSHARE;
> +	return true;
> +}
> +
>   static const struct gic_quirk its_quirks[] = {
>   #ifdef CONFIG_CAVIUM_ERRATUM_22375
>   	{
> @@ -4755,6 +4785,14 @@ static const struct gic_quirk its_quirks[] = {
>   		.mask	= 0xffffffff,
>   		.init	= its_enable_quirk_hip07_161600802,
>   	},
> +#endif
> +#ifdef CONFIG_ROCKCHIP_NO_SHARE

here it's fine.

> +	{
> +		.desc	= "ITS: Rockchip RK356X/RK3588 doesn't support shareability",
> +		.iidr	= 0x0201743b,
> +		.mask	= 0xffffffff,
> +		.init	= its_enable_quirk_rk356x,
> +	},
>   #endif
>   	{
>   	}
> @@ -5096,6 +5134,10 @@ static int __init its_probe_one(struct resource *res,
>   	gits_write_cbaser(baser, its->base + GITS_CBASER);
>   	tmp = gits_read_cbaser(its->base + GITS_CBASER);
>   
> +#if CONFIG_ROCKCHIP_NO_SHARE

...here it's not, again.

> +	if (its->flags & ITS_FLAGS_WORKAROUND_ROCKCHIP_NOSHARE)
> +		tmp &= ~GITS_CBASER_SHAREABILITY_MASK;
> +#endif
>   	if ((tmp ^ baser) & GITS_CBASER_SHAREABILITY_MASK) {
>   		if (!(tmp & GITS_CBASER_SHAREABILITY_MASK)) {
>   			/*


Regards,
Angelo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
