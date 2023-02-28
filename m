Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B43C64EC7
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 17:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0I+bJ+MOtJodnukfVvYldexYlXsCS53DKRR0MwOAOfQ=; b=S0MdexcA/H0lM1
	4UQ6NKImZiUryYQufFc91t35pogX9AXMAaO3cnd7vF+K2JjsF1fNwTq0Owm6FJpDnSDkhQQ0ZQVpH
	trdPdQuZsUagXEIK32RSm+LoJj2qFX9D3bBHlfmVYfKrcczDabU0Xbi4KXQ59mFbWjOeg8goFYRgi
	jHD+wceVavoZwhuitA4pseuI90OTzA9BkoKP3tT7SyHGNc3tlSHOnmsmJTvgeRhPZoRYeYb0jNcug
	V7Yp72WGCwiHsHvNJGrWeX/loEd6ErDnVa+0X58CWbnbP8T4sbc1K11hSs98ecQGXQDqAq8cImLQU
	luHHaH0viKvhAxOIJ7pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX3gE-00Dron-6H; Tue, 28 Feb 2023 17:22:22 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX3g2-00DrmT-8x; Tue, 28 Feb 2023 17:22:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 799B6C14;
	Tue, 28 Feb 2023 09:22:46 -0800 (PST)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BBB703F881;
	Tue, 28 Feb 2023 09:22:01 -0800 (PST)
Message-ID: <8df79b4a-c7fb-3483-0d95-a97876f92f1b@arm.com>
Date: Tue, 28 Feb 2023 17:21:57 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [RFC 1/1] irqchip/gic-v3: Add RK3588 GICR and GITS no share
 workaround
To: Lucas Tanure <lucas.tanure@collabora.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Thomas Gleixner <tglx@linutronix.de>,
 Marc Zyngier <maz@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230227151847.207922-1-lucas.tanure@collabora.com>
 <20230227151847.207922-2-lucas.tanure@collabora.com>
Content-Language: en-GB
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230227151847.207922-2-lucas.tanure@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_092210_455039_200B4A42 
X-CRM114-Status: GOOD (  26.47  )
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

On 27/02/2023 3:18 pm, Lucas Tanure wrote:
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
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 27b2592698b0..ad3f1742052b 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1150,6 +1150,19 @@ config NVIDIA_CARMEL_CNP_ERRATUM
>   
>   	  If unsure, say Y.
>   
> +config ROCKCHIP_NO_SHARE
> +	bool "Rockchip RK3588 GIC6000 No shareability or cacheability attributes"
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
> +	{
> +		.desc	= "ITS: Rockchip RK356X/RK3588 doesn't support shareability",
> +		.iidr	= 0x0201743b,

This represents the Arm Ltd. GIC-600 implementation. It is definitely 
not Rockchip-specific, and applying this quirk to the likes of Ampere 
Altra or AWS Graviton2 would be extremely unpopular.

TBH I think this whole thing would be reasonable to handle in a generic 
manner using the now-standard "dma-noncoherent" property to override the 
driver's expectations. Given the apparent lack of clear integration 
guidelines it's only likely to continue happening.

Thanks,
Robin.

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
> +	if (its->flags & ITS_FLAGS_WORKAROUND_ROCKCHIP_NOSHARE)
> +		tmp &= ~GITS_CBASER_SHAREABILITY_MASK;
> +#endif
>   	if ((tmp ^ baser) & GITS_CBASER_SHAREABILITY_MASK) {
>   		if (!(tmp & GITS_CBASER_SHAREABILITY_MASK)) {
>   			/*

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
