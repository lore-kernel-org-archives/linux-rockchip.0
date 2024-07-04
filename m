Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDC11C3814E
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 08:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpoOvMA/iOgRNbSB11pZqrVtj8f66S2zss4xGCe6KeQ=; b=AwaUBDwZaOHBiY
	Rf3oxhx8stwNgK/NCLoT1CV4nyW9561FyKnErd8Jb3C8pYewsn20Zqq0OKcvRhkH22Elr38b55DuA
	4mFX2hZxvvGbhlDjSwOcbc3+vBHJ8v+mkbQMXM2sV9sJUaoO5SF1eZZKr/CG/qZmNn51zvPzHlADA
	P5J4Nvg38LI2MpUpbfilAcVNT48ew0IXmu0ThBuQEMNu45l1sIUBf2cB6rzwgSl1dCFach/YQ9mgp
	y9b9K9k4rZWPpp27AVTjHK0wWqGJ/oTzCqPvu4yG8AN89vWHy6wynJBMgAuyRoxHnA8BR1MgySRAV
	2Y/lGKsbKR5brhw4K1XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPIAD-0000000CdrW-1nNh;
	Thu, 04 Jul 2024 08:50:01 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPIA8-0000000CdnG-16D5
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 08:50:00 +0000
Received: from ideasonboard.com (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 900E7541;
	Thu,  4 Jul 2024 10:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1720082965;
	bh=DXHAiAVeYsdYT60yCoC4x7/xUdVDCxQk5RVnWeB9hno=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fbZLZYOc3zSmTXZjTX9B64J3gtRVlCM1mCgNdOhDlUd0a/bN0gnFdRNvmXxqTH2ca
	 FicAu4OvbX6NgcSxxYWStBJvqoSQIEjN/88yEEdZ2M+tCgRKVLs43HCqMjn8w3oWrt
	 a7/R9bNdvn9qLqpH71suXGd4a9fnZ8K48E/cscIc=
Date: Thu, 4 Jul 2024 10:49:50 +0200
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, 
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Paul Elder <paul.elder@ideasonboard.com>, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 2/5] media: rkisp1: Add features mask to extensible
 block handlers
Message-ID: <3qr3in6vqjs6xgineym473nbk5q53m2c3jr5o47qosjug2vl3e@ao4be5nusmby>
References: <20240703222533.1662-1-laurent.pinchart@ideasonboard.com>
 <20240703222533.1662-3-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240703222533.1662-3-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_014956_514743_FBDBBCD4 
X-CRM114-Status: GOOD (  16.30  )
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

Hi Laurent

On Thu, Jul 04, 2024 at 01:25:30AM GMT, Laurent Pinchart wrote:
> Future ISP parameter blocks for i.MX8MP-specific features will not
> support on Rockchip platforms as they lack the corresponding hardware.
> Introduce a features mask in the extensible block handlers to indicate
> which device features a block require, and ignore blocks that require
> unavailable features.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index b10cc2701244..92312b4dabf6 100644
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
> @@ -1956,6 +1957,10 @@ static void rkisp1_ext_params_config(struct rkisp1_params *params,

Maybe exapand the comment to also specify the feature has to be
supported by the platform ?

		/*
                 * Make sure the block is supported by the platform and in the
                 * list of groups to configure.
                 */


>  		if (!(block_handler->group & block_group_mask))
>  			continue;
>
> +		if ((block_handler->features & params->rkisp1->info->features) !=
> +		    params->rkisp1->info->features)

This should probably be

		if ((block_handler->features & params->rkisp1->info->features) !=
		    block_handler->features)

Thanks
  j

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
