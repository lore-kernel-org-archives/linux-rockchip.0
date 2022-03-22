Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3C5FC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 05:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaAh0p0a05lbTt1JrNIkzkmqQMMeDaWH4y1k+KS9FF0=; b=fMgEie/CZamv1v
	+almOZ0A68NQK+JZTkYdEecOEtFoiItTq1vsrSJH6YsPoqDO2zJSwOmbNCHbqdsliQPMq/7b4frXt
	SCN1/WfWYBcWKKXK7v8g6eD+w21Za1N/M5R97efhLKpdX1j9KUAom9JJd9zohbR0UMQQlWJtsYkVC
	yiEPeuprROyW47C1ydCgUYJDc3JMN8pyyDM/5FeYkPhdbfy1rR7NWbvZ2j+nsqQUFwdmmLT3ceguD
	my6ETu3x47ghP9wIQUaOsdmCzkCIHIyPhOIus9gILy8whDMCrM27PYUxyh8ZlHkGBK7rYqorUKgTX
	cH75eZ7LNWLhuEDTYD6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWX1M-00A2Tq-9b; Tue, 22 Mar 2022 05:25:28 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWX1J-00A2Sm-9Y
 for linux-rockchip@lists.infradead.org; Tue, 22 Mar 2022 05:25:27 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 9619E5C00FE;
 Tue, 22 Mar 2022 01:25:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Tue, 22 Mar 2022 01:25:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
 cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm3; bh=J5NcGo6wG6k1ELKa3Cmi8WR8NnWnqSWEW/5Wru
 00YJ8=; b=QhLmR0b4c04UmKwQ39Lh1yIBaQLrpuVwFQSCf1omVogpB+rrjO8PMP
 HN81y0UsB3Qa9OraKn2uuCCo+vkvDWotnfNIEUEn4aztP+y8rOw/C2aaeGQgbNDD
 scNpf4akX45e0eoNywdvdjlVgaXqpi5PP26PoXFmRAPkI6RRLXT8MLrdlluszlgP
 Q+U4EclTk76IDP7WFF+tOkq4WJrdmW5V0pBY0yGmAGjRiCFZeCo4fRYwuLhAxOu0
 DmLBgIBQwxXOKkG8uGjpZNwImd9p5MbSPPJhcT1fO4gP5rgwEc7gkT9oFMlmZi0Y
 R8A0051bNAXZqmg6AUjnnlZxFT3kAQZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=J5NcGo6wG6k1ELKa3
 Cmi8WR8NnWnqSWEW/5Wru00YJ8=; b=OxUp+F1IDFj8F7x5ddKMae893T3UY8TtV
 Tbyefc7d/rpfs04KdSB2Kr6cox/eqSeGXphbLyUv5RojqZW6dDZcrBJsJS2gXCW9
 9uUQTVelCN/Ax1Re9qq8/vGxN7E917XRy9scTX21uz3Rwpz9uS1Ut2aB7BkkuW+T
 8SeuiMaNe08Cf9fzxMOl3tZFAY0KRf17uSsUwkhOSR7ct3H5u4+S6Ygj5wAk5nz0
 KR+DaO8qeqhvZ7eiJqrzTLwqWTtdc04RcUfSA8Ha4oak10dAWNMrjt5vw4E9AO1S
 E4IeCkQrrdWmzX2+qn3TZsjovLTe/vZkfri99fm2b/wrxOMFTdh9Q==
X-ME-Sender: <xms:xF05Yjp-FhDRA-CeUzm9myJZy36EazxNAp13zOM40TUTcXt71j3Obg>
 <xme:xF05Ytr2aQChW6jsodd6ilC2hajgaqeHkGhmwTFyEoJ3vB52t_JxbsykUQMS-Wkk1
 EYF1iMjcPIeih3KfjE>
X-ME-Received: <xmr:xF05YgNPPvXiezB6n5tRP4UZ07UbVa4nE_rgWq1VnJBBBIHxMNFl83utBqwnGbLJhqFvuMr6zgvi5VSHTCyIJ_Nu>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeggedgkedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghfnhgr
 ucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqnecugg
 ftrfgrthhtvghrnhepffelvddujefgieetvdelveetudeukeektdejvdegvdfgudelteff
 ueejvdevkeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:xF05Ym7CKxyUwvVfPam-8Je8zT8EOBxph7hmt4h9Tm7LEw6DLn0ryQ>
 <xmx:xF05Yi5h_CzsWnVUDYGwaj1aOgDYjE6aXZrt9YMJ2GG1SfnKk9TIqg>
 <xmx:xF05YuhQE-Jg40QvwLby63fcGcZpF8OaA11behJtOgpEu2PQmMTn-w>
 <xmx:xF05Yt3-yVkmiy5H2z74Ou50lkF1XXPLwbyfWTYwND_fRFprehfGBw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 22 Mar 2022 01:25:22 -0400 (EDT)
Date: Tue, 22 Mar 2022 07:25:20 +0200
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 15/17] media: rkisp1: debug: Add debugfs files to dump
 core and ISP registers
Message-ID: <20220322052520.qiyf23lo4zuyuxfw@guri>
References: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
 <20220319163100.3083-16-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220319163100.3083-16-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_222525_440523_B3CD08C3 
X-CRM114-Status: GOOD (  19.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 19.03.2022 18:30, Laurent Pinchart wrote:
> It's useful to dumb the value of registers for debugging purpose. Add
> two debugfs files to dump key core and ISP registers.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> index da3ed0ab697a..97be529a74e8 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -17,6 +17,70 @@
>  #include "rkisp1-common.h"
>  #include "rkisp1-regs.h"
>  
> +struct rkisp1_debug_register {
> +	u32 offset;

I'd call it 'reg' or 'address' instead of 'offset' since it is really what we call reg

> +	const char * const name;
> +};
> +
> +#define RKISP1_DEBUG_REG(name)	{ RKISP1_CIF_##name, #name }
> +
> +static int rkisp1_debug_dump_regs(struct seq_file *m,
> +				  const struct rkisp1_debug_register *regs)
> +{
> +	struct rkisp1_device *rkisp1 = m->private;
> +	u32 val;
> +	int ret;
> +
> +	ret = pm_runtime_get_if_in_use(rkisp1->dev);
> +	if (ret)
> +		return ret;

Same comment as in the data collection patch, should it be
if (ret <= 0)
	return ret;
?

Thanks,
Dafna

> +
> +	for ( ; regs->name; ++regs) {
> +		val = rkisp1_read(rkisp1, regs->offset);
> +		seq_printf(m, "%14s: 0x%08x\n", regs->name, val);
> +	}
> +
> +	pm_runtime_put(rkisp1->dev);
> +
> +	return 0;
> +}
> +
> +static int rkisp1_debug_dump_core_regs_show(struct seq_file *m, void *p)
> +{
> +	static const struct rkisp1_debug_register registers[] = {
> +		RKISP1_DEBUG_REG(VI_CCL),
> +		RKISP1_DEBUG_REG(VI_ICCL),
> +		RKISP1_DEBUG_REG(VI_IRCL),
> +		RKISP1_DEBUG_REG(VI_DPCL),
> +		RKISP1_DEBUG_REG(MI_CTRL),
> +		RKISP1_DEBUG_REG(MI_BYTE_CNT),
> +		RKISP1_DEBUG_REG(MI_CTRL_SHD),
> +		RKISP1_DEBUG_REG(MI_RIS),
> +		RKISP1_DEBUG_REG(MI_STATUS),
> +		RKISP1_DEBUG_REG(MI_DMA_CTRL),
> +		RKISP1_DEBUG_REG(MI_DMA_STATUS),
> +		{ /* Sentinel */ },
> +	};
> +
> +	return rkisp1_debug_dump_regs(m, registers);
> +}
> +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_core_regs);
> +
> +static int rkisp1_debug_dump_isp_regs_show(struct seq_file *m, void *p)
> +{
> +	static const struct rkisp1_debug_register registers[] = {
> +		RKISP1_DEBUG_REG(ISP_CTRL),
> +		RKISP1_DEBUG_REG(ISP_ACQ_PROP),
> +		RKISP1_DEBUG_REG(ISP_FLAGS_SHD),
> +		RKISP1_DEBUG_REG(ISP_RIS),
> +		RKISP1_DEBUG_REG(ISP_ERR),
> +		{ /* Sentinel */ },
> +	};
> +
> +	return rkisp1_debug_dump_regs(m, registers);
> +}
> +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_isp_regs);
> +
>  #define RKISP1_DEBUG_DATA_COUNT_BINS	32
>  #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
>  
> @@ -68,6 +132,7 @@ DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_input_status);
>  void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  {
>  	struct rkisp1_debug *debug = &rkisp1->debug;
> +	struct dentry *regs_dir;
>  
>  	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
>  
> @@ -96,6 +161,13 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  			     &debug->frame_drop[RKISP1_SELFPATH]);
>  	debugfs_create_file("input_status", 0444, debug->debugfs_dir, rkisp1,
>  			    &rkisp1_debug_input_status_fops);
> +
> +	regs_dir = debugfs_create_dir("regs", debug->debugfs_dir);
> +
> +	debugfs_create_file("core", 0444, regs_dir, rkisp1,
> +			    &rkisp1_debug_dump_core_regs_fops);
> +	debugfs_create_file("isp", 0444, regs_dir, rkisp1,
> +			    &rkisp1_debug_dump_isp_regs_fops);
>  }
>  
>  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
> -- 
> Regards,
> 
> Laurent Pinchart
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
