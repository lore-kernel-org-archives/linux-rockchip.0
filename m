Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 536E7C30658
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 11:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWurFm3/fOxZxROJWukQKMazxuAza5aEPzHMvZMKRJ0=; b=BY5PeUvc6hkq7r
	ZKlNpPKl9hVmFZIBYMPSM0+X9oR0fNhH/R3019iZ6neclUtE6nditFZCkkfGnhKLOJ8AeDqaqe89F
	jZDZk4p/+qA9MsJC/bMzoVX0YHLfWinkNGPx1bpRYwhdjYlyN88JaUWdWGPDRa3idsMXIywgF+DYU
	aphGMOn3/48jz9kaviCS5i6QCKucwkElqdHQPDvqAnPuIu4E4SydaaIHRGnDhRB4FaZW2DJIaIi/z
	l1Cke1z7/OU8j7rCe/SOS/Di+PwnlU7WB4hraDehrun1HGnhtLklVw4KtwL60Hz9Mw9NcjMPWBV3H
	YCMkz8YacCOxVDQXOZGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPhAE-0000000Fnss-3K3D;
	Fri, 05 Jul 2024 11:31:42 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPhAC-0000000FnrC-2xmr
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jul 2024 11:31:42 +0000
Received: from pyrite.rasen.tech (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5BF6B541;
	Fri,  5 Jul 2024 13:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1720179070;
	bh=6nAZ56tZ8Xajf/zgxrvCuujmdT2G6Y15Yvof0kUsHJo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MYuWJaKyt5/GXdrDpgpQo68Do9LeImY0hJB1eKvvmbGnzqVydKY1bOzXI20P052xr
	 /juN1N0yk+K2a1fqul6GS/O8bDJTdsuCt2lGTWcWe5b4iFg7o+JnM52EVLdumV8fHQ
	 Cr/BEI4An4fK54of6LULAhJW/mMRc9fMoDTz2168=
Date: Fri, 5 Jul 2024 20:31:31 +0900
From: Paul Elder <paul.elder@ideasonboard.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/5] media: rkisp1: Add features mask to extensible
 block handlers
Message-ID: <ZofZk0yD40Hsgbrl@pyrite.rasen.tech>
References: <20240704154932.6686-1-laurent.pinchart@ideasonboard.com>
 <20240704154932.6686-3-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240704154932.6686-3-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_043140_905800_CB5BEE99 
X-CRM114-Status: GOOD (  18.42  )
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

On Thu, Jul 04, 2024 at 06:49:29PM +0300, Laurent Pinchart wrote:
> Future ISP parameter blocks for i.MX8MP-specific features will not
> support on Rockchip platforms as they lack the corresponding hardware.
> Introduce a features mask in the extensible block handlers to indicate
> which device features a block require, and ignore blocks that require
> unavailable features.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

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

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
