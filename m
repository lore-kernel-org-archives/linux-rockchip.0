Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73C37C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 19:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/Tmplxpdj7SJ4JsrgYoKe+2gqbXN4EKShQPuwYSc54=; b=4PB01E30IlLT1U
	tsH2VXOMQuxAaxTR1gBwTZQJgDz4hluxcj9affY1jcvOi3r3zXU2PGc9Ee0Va/FnYLbnY9dtPj5gA
	6UhgxSGQYX35a6emdaebezXcxlhMMWXXYX6Bt6nykVBN7EDqwnXGqg5/kq19uWowH5wb8n4eUdntq
	YTHBrJSamUGa0TwaFbMr955wKmPPE6NYH2fI4mKtZZPG0EZ6dwEAi8XiG72Q4hs8xXd4rBzJ6TwNJ
	KmxhBIkJb8K7o5nEhHrn49Zr5kC1NL6Jx0ClT5BOuUmjDgM3v8l61N9f+Z5JoD2lD4fc2l8MipJmE
	RhQzxcFrhkAhLs2Ol0BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPSUp-0000000EJj1-3XAG;
	Thu, 04 Jul 2024 19:51:59 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPSUn-0000000EJhz-1EHP
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 19:51:58 +0000
Received: from ideasonboard.com (mob-5-90-52-146.net.vodafone.it [5.90.52.146])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1402A63D;
	Thu,  4 Jul 2024 21:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1720122687;
	bh=aZf3CNzMGElIX0aMZ/4FEEdMWi82BaR9zhQJ3hhURsY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h54sBJvXdmkRS9RXSMzTlGUMRlUTfZy5X1cRnS9DMffGzXse1Mw6GfNAVw5/CcaXK
	 sOzdM/mtflDDX8r/CPU6wBBcdeOST/PbwGkmOfqQLnLopXGyCeb2a7DfBkURKdRJym
	 7rcVDxH5WG/8DWnwbqvAmJUY84JNdehX8P/f6NYs=
Date: Thu, 4 Jul 2024 21:51:52 +0200
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, 
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Paul Elder <paul.elder@ideasonboard.com>, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/5] media: rkisp1: Add features mask to extensible
 block handlers
Message-ID: <3pdirik7gkbmjilqjfon7m3clxay2466uimc3htke4mowhjtha@dx24q24f3o5r>
References: <20240704154932.6686-1-laurent.pinchart@ideasonboard.com>
 <20240704154932.6686-3-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240704154932.6686-3-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_125157_494890_22C2AD9D 
X-CRM114-Status: GOOD (  17.90  )
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

On Thu, Jul 04, 2024 at 06:49:29PM GMT, Laurent Pinchart wrote:
> Future ISP parameter blocks for i.MX8MP-specific features will not
> support on Rockchip platforms as they lack the corresponding hardware.
> Introduce a features mask in the extensible block handlers to indicate
> which device features a block require, and ignore blocks that require
> unavailable features.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

> ---
> Changes since v1:
>
> - Expand comment
> - Fix feature check test
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index c56365c7c51f..d3a7c7f55db0 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -1845,6 +1845,7 @@ static const struct rkisp1_ext_params_handler {
>  	size_t size;
>  	rkisp1_block_handler handler;
>  	unsigned int group;
> +	unsigned int features;
>  } rkisp1_ext_params_handlers[] = {
>  	[RKISP1_EXT_PARAMS_BLOCK_TYPE_BLS] = {
>  		.size		= sizeof(struct rkisp1_ext_params_bls_config),
> @@ -1951,11 +1952,18 @@ static void rkisp1_ext_params_config(struct rkisp1_params *params,
>  			&cfg->data[block_offset];
>  		block_offset += block->header.size;
>
> -		/* Make sure the block is in the list of groups to configure. */
> +		/*
> +		 * Make sure the block is supported by the platform and in the
> +		 * list of groups to configure.
> +		 */
>  		block_handler = &rkisp1_ext_params_handlers[block->header.type];
>  		if (!(block_handler->group & block_group_mask))
>  			continue;
>
> +		if ((params->rkisp1->info->features & block_handler->features) !=
> +		    block_handler->features)
> +			continue;
> +
>  		block_handler->handler(params, block);
>
>  		if (block->header.enable == RKISP1_EXT_PARAMS_BLOCK_DISABLE)
> --
> Regards,
>
> Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
