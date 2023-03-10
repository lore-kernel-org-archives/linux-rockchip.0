Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E667C64EC4
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 11:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EX3qWyTWXu4Z3KPWrPIVf4LL9ZOZRNsvEop4xEgePpk=; b=zbpKKC7pBpN07C
	oCNLY+XCLnRjPCzLaz92hv3/VzRVSGd4cYXRuBZ5wbhZyqsCBPtNgpsIG/iHM9NsEdkMcX0NXFPf9
	4K/uusG1BCUdU4ePzK4Tw15LjVMN3O5mBIW1jR9o6hMbSFKITL9k8qr2UagcZDfqDZgc9fshRW3B3
	TB2etbksLIubCmopMaogGvmsrVf5dSvB1ouXJy0vn8pCEcjOC2q0jzCMV2yLTsLIasDuaKPENkNEc
	RYYORnEMSncTfDj+ynzgG/dtY92/7bIvZluVuw23DFXJJRg9T7+LTcum0sVzySicC4JHxFDNU5QmE
	rtdzvjAwEmb5ulql477w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pab8V-00EP9g-PO; Fri, 10 Mar 2023 11:42:11 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pab8L-00EP7p-4B; Fri, 10 Mar 2023 11:42:02 +0000
Received: by mail-ed1-x52b.google.com with SMTP id i34so19239099eda.7;
        Fri, 10 Mar 2023 03:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678448519;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DOPcC/2QksUl/n+7no9y2cjpF4ZKKO4ov/Ft85Eli70=;
        b=KK3MTstlBvwQJp3hkC+WWq7Q8LsLEA86B9IO7jTrSArp1MMzXDu+jUwwEQc7hd+Jqi
         MxXm1s0mWYmLo0SfTccmPzkspQHxBEW6V36oPTIm5vuAdV6BqOSXsPvdsV5eVNlz3EQ3
         ZPs+4YjHWB2O5155xrbCsYJCEDjQOdcaJGWexLVsaQe8HhivXObhMxJZHINQ9jpwdjQW
         w41A0XAje2m17Dg6yG6f9t7Khevv6eeaAMaN4h2tJGfCWF0gG3WsQjAz/gnxD6X6wWma
         gYrBUvhcR8oWbD3OGHchHzhCOvQgMP3XA4Zi0NpGn0MFnuQTiSt7dQTXvePQEYwXTlbm
         vXbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678448519;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DOPcC/2QksUl/n+7no9y2cjpF4ZKKO4ov/Ft85Eli70=;
        b=gm2wPnYan9P2D+8ww8zOy7sYxOYWQKONuaV2fbp1LSYZV6lBs+vobookuyCLlvvG33
         8JKNbicTO5bZOSiXi6CW8cKk1Ah9N2hBs1yq6YYTWYwIF4TNifOoqB8+Hf5WM3eJ47hk
         mPK/Cqy7U8MwciFPeLo8tlxLdjMqbistawxgIhPbz9G6eIxUOhFLMiuNPUzolPZxdEAL
         K7W6i1+8hnWuO12oWPM7mnm/xsb6u/yVGo4vte1vJWORZqJodCd+77XanJapKE62QCKJ
         H18T9L5TlYX/vKHCiz3ZTquKINKe0UqfTJ59oiWjZ9sfF6IXppVG/7s8rY0lLVzkEHco
         fdZA==
X-Gm-Message-State: AO0yUKUzuwkwbvnHD/LfCsaUWAtIoNjQ4/YMtJyQ6WBXY0XmzoRhI8gG
	oSoBWSq+pwtVBB0wttA8yYcOKRbWQ9KmxsXzB8M=
X-Google-Smtp-Source: AK7set/XQR6yt41xZ570LX5BYhbDlEkXTOEyVF2u4VCGa7EDXGSRMJeaZ7RnJuZBW0EOTgORjUsm7+YhLxfOkIg/vWo=
X-Received: by 2002:a50:bae1:0:b0:4ad:7439:cec7 with SMTP id
 x88-20020a50bae1000000b004ad7439cec7mr13785284ede.7.1678448518643; Fri, 10
 Mar 2023 03:41:58 -0800 (PST)
MIME-Version: 1.0
References: <20230310080518.78054-1-lucas.tanure@collabora.com> <20230310080518.78054-2-lucas.tanure@collabora.com>
In-Reply-To: <20230310080518.78054-2-lucas.tanure@collabora.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 10 Mar 2023 06:41:46 -0500
Message-ID: <CAMdYzYpL7V6udw=T7ZChTFi0xOj1tb-5CVHb84u1pL4kj3eDZA@mail.gmail.com>
Subject: Re: [PATCH 1/7] irqchip/gic-v3: Add a DMA Non-Coherent flag
To: Lucas Tanure <lucas.tanure@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof Wilczynski <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Qu Wenruo <wqu@suse.com>, 
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, kernel@collabora.com, 
	Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_034201_211907_48264325 
X-CRM114-Status: GOOD (  23.38  )
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

On Fri, Mar 10, 2023 at 3:05 AM Lucas Tanure <lucas.tanure@collabora.com> wrote:
>
> The GIC600 integration in RK356x, used in rk3588, doesn't support
> any of the shareability or cacheability attributes, and requires
> both values to be set to 0b00 for all the ITS and Redistributor
> tables.
>
> This is loosely based on prior work from XiaoDong Huang and
> Peter Geis fixing this issue specifically for Rockchip 356x.

Good Morning,

Since the gic is using dma, would it be reasonable to have all memory
allocations be requested with the GFP_DMA flag? Otherwise this doesn't
fully solve the problem for rk356x, where only the lower 4GB range is
DMA capable, but this tends to get allocated in the upper 4GB on 8GB
boards.

Very Respectfully,
Peter Geis

>
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
> ---
>  drivers/irqchip/irq-gic-v3-its.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index 973ede0197e3..1c334dfeb647 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -42,6 +42,7 @@
>  #define ITS_FLAGS_CMDQ_NEEDS_FLUSHING          (1ULL << 0)
>  #define ITS_FLAGS_WORKAROUND_CAVIUM_22375      (1ULL << 1)
>  #define ITS_FLAGS_WORKAROUND_CAVIUM_23144      (1ULL << 2)
> +#define ITS_FLAGS_DMA_NON_COHERENT             (1ULL << 3)
>
>  #define RDIST_FLAGS_PROPBASE_NEEDS_FLUSHING    (1 << 0)
>  #define RDIST_FLAGS_RD_TABLES_PREALLOCATED     (1 << 1)
> @@ -2359,6 +2360,13 @@ static int its_setup_baser(struct its_node *its, struct its_baser *baser,
>         its_write_baser(its, baser, val);
>         tmp = baser->val;
>
> +       if (its->flags & ITS_FLAGS_DMA_NON_COHERENT) {
> +               if (tmp & GITS_BASER_SHAREABILITY_MASK)
> +                       tmp &= ~GITS_BASER_SHAREABILITY_MASK;
> +               else
> +                       gic_flush_dcache_to_poc(base, PAGE_ORDER_TO_SIZE(order));
> +       }
> +
>         if ((val ^ tmp) & GITS_BASER_SHAREABILITY_MASK) {
>                 /*
>                  * Shareability didn't stick. Just use
> @@ -3055,6 +3063,7 @@ static u64 its_clear_vpend_valid(void __iomem *vlpi_base, u64 clr, u64 set)
>
>  static void its_cpu_init_lpis(void)
>  {
> +       struct its_node *its = list_first_entry(&its_nodes, struct its_node, entry);
>         void __iomem *rbase = gic_data_rdist_rd_base();
>         struct page *pend_page;
>         phys_addr_t paddr;
> @@ -3096,6 +3105,9 @@ static void its_cpu_init_lpis(void)
>         gicr_write_propbaser(val, rbase + GICR_PROPBASER);
>         tmp = gicr_read_propbaser(rbase + GICR_PROPBASER);
>
> +       if (its->flags & ITS_FLAGS_DMA_NON_COHERENT)
> +               tmp &= ~GICR_PROPBASER_SHAREABILITY_MASK;
> +
>         if ((tmp ^ val) & GICR_PROPBASER_SHAREABILITY_MASK) {
>                 if (!(tmp & GICR_PROPBASER_SHAREABILITY_MASK)) {
>                         /*
> @@ -3120,6 +3132,9 @@ static void its_cpu_init_lpis(void)
>         gicr_write_pendbaser(val, rbase + GICR_PENDBASER);
>         tmp = gicr_read_pendbaser(rbase + GICR_PENDBASER);
>
> +       if (its->flags & ITS_FLAGS_DMA_NON_COHERENT)
> +               tmp &= ~GICR_PENDBASER_SHAREABILITY_MASK;
> +
>         if (!(tmp & GICR_PENDBASER_SHAREABILITY_MASK)) {
>                 /*
>                  * The HW reports non-shareable, we must remove the
> @@ -5005,6 +5020,7 @@ static int __init its_compute_its_list_map(struct resource *res,
>  static int __init its_probe_one(struct resource *res,
>                                 struct fwnode_handle *handle, int numa_node)
>  {
> +       struct device_node *np = to_of_node(handle);
>         struct its_node *its;
>         void __iomem *its_base;
>         u64 baser, tmp, typer;
> @@ -5076,6 +5092,9 @@ static int __init its_probe_one(struct resource *res,
>         its->get_msi_base = its_irq_get_msi_base;
>         its->msi_domain_flags = IRQ_DOMAIN_FLAG_MSI_REMAP;
>
> +       if (np && !of_dma_is_coherent(np))
> +               its->flags |= ITS_FLAGS_DMA_NON_COHERENT;
> +
>         its_enable_quirks(its);
>
>         err = its_alloc_tables(its);
> @@ -5095,6 +5114,9 @@ static int __init its_probe_one(struct resource *res,
>         gits_write_cbaser(baser, its->base + GITS_CBASER);
>         tmp = gits_read_cbaser(its->base + GITS_CBASER);
>
> +       if (its->flags & ITS_FLAGS_DMA_NON_COHERENT)
> +               tmp &= ~GITS_CBASER_SHAREABILITY_MASK;
> +
>         if ((tmp ^ baser) & GITS_CBASER_SHAREABILITY_MASK) {
>                 if (!(tmp & GITS_CBASER_SHAREABILITY_MASK)) {
>                         /*
> --
> 2.39.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
