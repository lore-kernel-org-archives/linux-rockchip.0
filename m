Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD526C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 08:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBLAtXjoJ2+yuCIZgrqZZMnqrHPD3jGMeAoZ5m1b/Gg=; b=eFr9ZYpOmFglWW
	ev1CxwsN7MYWUz62ZERie+23Vc0EUrWoeF+GfJ/eCvz08vhCiRIhl8wrB3pgz+BxVfefQK0uBHUby
	UXtFaYUsId0kS/wGeJivZ4UKj8e0RG6FuMZUH0wUpRFBG2XVZ8+AgArADj2VoPrTwb6PMYCvWGIKO
	OZooEAeFOKqAiJwqJQLBbAO9sgTJiQ9y5bAoQS63GghW30H8pRw2C/+PT1JgVzbQHOxPRVZNqZetv
	Ulq9+1l4eAKsluIzTQ4vLh3eNdN6v3P6anpGuK0v7rECWSkRuHZFxWML8cHs2/jjZrpL4A/OUo6Nv
	fbpF+r5I36sdJNy3Ykaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o274S-006Eym-IO; Fri, 17 Jun 2022 08:11:12 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o274P-006ExA-Ca
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 08:11:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E527C12FC;
	Fri, 17 Jun 2022 01:11:04 -0700 (PDT)
Received: from [10.57.84.65] (unknown [10.57.84.65])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 49FC63F792;
	Fri, 17 Jun 2022 01:11:03 -0700 (PDT)
Message-ID: <107f5083-3545-770d-4d63-57c6829ef95a@arm.com>
Date: Fri, 17 Jun 2022 09:10:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH -next] media: rkvdec: Fix memset size error
Content-Language: en-GB
To: Zhang Zekun <zhangzekun11@huawei.com>, ezequiel@vanguardiasur.com.ar,
 mchehab@kernel.org, gregkh@linuxfoundation.org, andrzej.p@collabora.com,
 hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20220617073101.101234-1-zhangzekun11@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220617073101.101234-1-zhangzekun11@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_011109_526727_FCF46905 
X-CRM114-Status: GOOD (  12.74  )
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

On 2022-06-17 08:31, Zhang Zekun wrote:
> 'dma_alloc_coherent()' alloc a 'RKVDEC_VP9_COUNT_SIZE' size area to
> 'unsigned char *count_tbl', however, the memset() bellow only set
> 'sizeof(*count_tbl)', which equals to 1, bytes to zero. This can
>   cause unexpected error.

Have you observed an error in practice? Given that it's been part of the 
dma_alloc_coherent() API to return a zeroed buffer for several years now 
- see 750afb08ca71 ("cross-tree: phase out dma_zalloc_coherent()") - 
this memset shouldn't be needed either way.

Robin.

> Fixes: f25709c4ff15 ("media: rkvdec: Add the VP9 backend")
> Signed-off-by: Zhang Zekun <zhangzekun11@huawei.com>
> ---
>   drivers/staging/media/rkvdec/rkvdec-vp9.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> index 311a12656072..3ad303a3de48 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-vp9.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> @@ -1026,7 +1026,7 @@ static int rkvdec_vp9_start(struct rkvdec_ctx *ctx)
>   
>   	vp9_ctx->count_tbl.size = RKVDEC_VP9_COUNT_SIZE;
>   	vp9_ctx->count_tbl.cpu = count_tbl;
> -	memset(count_tbl, 0, sizeof(*count_tbl));
> +	memset(count_tbl, 0, RKVDEC_VP9_COUNT_SIZE);
>   	rkvdec_init_v4l2_vp9_count_tbl(ctx);
>   
>   	return 0;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
