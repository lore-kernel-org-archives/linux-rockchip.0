Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E0B8CD54B5
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Sep 2023 11:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umeITUCiFzPB1FQLk2Dd9Nf79aYny/f1gVAhFHuKEzc=; b=N7eVwK0E9Pw0KI
	khZTTHhTOr3XwhzQKgzQNubBdpy3dtKPogZzz2mfFO/iI8bRJSKUusm5XxZaYvRAnYcy2jyy7vZyK
	MpWXEbxPifu9C3VFsoezaWQydUV2zWil45kIN7VZiiJ5qufzzdDFOQw36eFaZbEShAHdnz7DZL178
	/GQCCoWZp63rl4EUzv02AZ6+pheAuC6bBvuQITQmWIWDnR3LyTx7bGROtlre14Hof2Dso1nizXyHr
	fbEUf46N6jucrQw9INeMqE5g7aigCyr9uyb9AOFBaHxiCEbefcgPqgEJyEhlzBGdyTkjvH8Htg8N3
	7Z3m+A1OHz60uDBf+FLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiYiF-000GUK-0t;
	Tue, 19 Sep 2023 11:16:15 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiYiB-000GSk-1a;
	Tue, 19 Sep 2023 11:16:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F3019B815C3;
	Tue, 19 Sep 2023 11:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 544B8C433C8;
	Tue, 19 Sep 2023 11:16:05 +0000 (UTC)
Message-ID: <cbfef598-8faa-40e6-8dc2-a1efd03f9560@xs4all.nl>
Date: Tue, 19 Sep 2023 13:16:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 16/49] media: verisilicon: postproc: Fix down scale
 test
Content-Language: en-US, nl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
 <20230914133323.198857-17-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230914133323.198857-17-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_041611_682855_A8D988AB 
X-CRM114-Status: GOOD (  22.04  )
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

On 14/09/2023 15:32, Benjamin Gaignard wrote:
> Do not allow down scaling if the source buffer resolution is
> smaller  than destination one.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Fixes: fbb6c848dd89 ("media: destage Hantro VPU driver")

Is this really a fix? I gather that this relies on "VP9 resolution change without
doing stream off/on" support, and support for that is added by these patches.

Adding the Fixes tag would cause stable maintainers to queue this patch up for
older kernels, but I don't think that is needed here at all.

And related I also think that this really does not belong to this patch series.

As I understand it, patch 13/49 extends the verisilicon driver to support more
than 32 buffers, so that one makes sense in the context of this series.

But the other verisilicon patches appear to be unrelated and instead add a new
feature, and I don't believe it relates to this series at all.

If I am right, then please post this as a separate series, possibly mentioning
that it sits on top of this series.

Regards,

	Hans

> ---
>  drivers/media/platform/verisilicon/hantro_postproc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
> index e624cd98f41b..77d8ecfbe12f 100644
> --- a/drivers/media/platform/verisilicon/hantro_postproc.c
> +++ b/drivers/media/platform/verisilicon/hantro_postproc.c
> @@ -107,7 +107,7 @@ static void hantro_postproc_g1_enable(struct hantro_ctx *ctx)
>  
>  static int down_scale_factor(struct hantro_ctx *ctx)
>  {
> -	if (ctx->src_fmt.width == ctx->dst_fmt.width)
> +	if (ctx->src_fmt.width <= ctx->dst_fmt.width)
>  		return 0;
>  
>  	return DIV_ROUND_CLOSEST(ctx->src_fmt.width, ctx->dst_fmt.width);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
