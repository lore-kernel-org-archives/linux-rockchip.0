Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1BBDC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 07:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xk2nrVx3l3imDxOlAs5+SQCg3ZWh29maTc36CZJgFuc=; b=bGrgY+waDvr7jAQ8O7Gtcspbm4
	P0/0p+Qf81Hj2sx28PSF9Kn4QIAs0VXRV+42McTtnuKt6hsnhzt8RT0Lsb+5tsyns+rV9JYF30aEr
	dP1AysY5ZS9oZAwI3BoyzAJoeYcg7oDNVIN8NGcgIuZW5C3aWAbraBMcHJwl7zfaTsbbs/P4dySG5
	heC1xn6CcHsQWI7o1LC2ihkhxNYBmMNd+vmoNvc8JxNGU9zJD/wNE2LceEEFrUoU72JaCbuVQgHHj
	EM007p+tUftTolq3wRYEIwzLjM3oCcSIaGHeiYFM5yCZen77ESW3HbT9Gq1+xssFQG8z31ntPu9kh
	sbpkjhsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZTEf-00EfTy-Ld; Wed, 30 Mar 2022 07:59:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZTEc-00EfSt-P7
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 07:59:20 +0000
Received: from localhost (unknown [IPv6:2a02:3030:d:7e3f:91e1:4be5:4001:fd80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1F7C31F443D2;
 Wed, 30 Mar 2022 08:59:17 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648627157;
 bh=h3tnoZejbOLZjyN2atSaobYGn8o799H2KiEzYAFUa98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hcrLXVqpL/wTu+500y0aqOOpvuc4BCADPVrYxLySFJsZ2Jr5zJeMc6SZi8MJG5Eql
 8EImGRlYtfL7z2Q6Se/E+tthQ8yYdJiPEynqsTdEnkXU2oOt5APJAldERtFqfWoo5o
 dpk6hIZtJfyRXBitCTgkr7KYTuQ97FCu/QwRJ9bnpsu2NVP9nHUZrafiz5UT5GLH3A
 Kf3SPwrQx/FjQm+1d2BKt7z8sHCAOC6s1m+j8mNZIBDTyJytj5s2gPD/B0Y97dVzbI
 rJP9wMYd6KjG7wCai96RwEJu8goepdIHgGnmWuZusOVFSAz8Radw7OOIP5Awdd0/Ro
 cL/SmHo9GVmVA==
Date: Wed, 30 Mar 2022 09:59:13 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 22/24] media: hantro: h264: Make dpb entry management
 more robust
Message-ID: <20220330075913.wfl3prsyw5fvsv4t@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-23-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-23-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_005919_017807_5FAF1009 
X-CRM114-Status: GOOD (  17.81  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Nicolas,

On 28.03.2022 15:59, Nicolas Dufresne wrote:
>From: Jonas Karlman <jonas@kwiboo.se>
>
>The driver maintains stable slot location for reference pictures. This

s/slot location/slot locations/

>change makes the code more robust by using the reference_ts as key and
>by marking all entries invalid right from the start.
>
>Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
>---
> drivers/staging/media/hantro/hantro_h264.c | 10 ++++------
> 1 file changed, 4 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
>index 228629fb3cdf..7377fc26f780 100644
>--- a/drivers/staging/media/hantro/hantro_h264.c
>+++ b/drivers/staging/media/hantro/hantro_h264.c
>@@ -258,8 +258,7 @@ static void prepare_table(struct hantro_ctx *ctx)
> static bool dpb_entry_match(const struct v4l2_h264_dpb_entry *a,
> 			    const struct v4l2_h264_dpb_entry *b)
> {
>-	return a->top_field_order_cnt == b->top_field_order_cnt &&
>-	       a->bottom_field_order_cnt == b->bottom_field_order_cnt;
>+	return a->reference_ts == b->reference_ts;
> }
>
> static void update_dpb(struct hantro_ctx *ctx)
>@@ -273,13 +272,13 @@ static void update_dpb(struct hantro_ctx *ctx)
>
> 	/* Disable all entries by default. */
> 	for (i = 0; i < ARRAY_SIZE(ctx->h264_dec.dpb); i++)
>-		ctx->h264_dec.dpb[i].flags &= ~V4L2_H264_DPB_ENTRY_FLAG_ACTIVE;
>+		ctx->h264_dec.dpb[i].flags = 0;

Ehm ... we just remove all flags? Can't this have any unwanted side
effects like removing a flag that we actually wanted to keep?
(Like long term or the field flags?)
If we just want to set the DPB entry inactive, then removing the ACTIVE
flag seems like the correct approach to me.
If we want to get rid of the VALID flag as well, then we could just do:
		ctx->h264_dec.dpb[i].flags &=
       ~(V4L2_H264_DPB_ENTRY_FLAG_ACTIVE | V4L2_H264_DPB_ENTRY_FLAG_VALID);

In case we really want to reset all flags, I'd say adjust the comment
above it:
```
- 	/* Disable all entries by default. */
+ 	/* Reset the flags for all entries by default. */
```

Greetings,
Sebastian

>
> 	/* Try to match new DPB entries with existing ones by their POCs. */
> 	for (i = 0; i < ARRAY_SIZE(dec_param->dpb); i++) {
> 		const struct v4l2_h264_dpb_entry *ndpb = &dec_param->dpb[i];
>
>-		if (!(ndpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
>+		if (!(ndpb->flags & V4L2_H264_DPB_ENTRY_FLAG_VALID))
> 			continue;
>
> 		/*
>@@ -290,8 +289,7 @@ static void update_dpb(struct hantro_ctx *ctx)
> 			struct v4l2_h264_dpb_entry *cdpb;
>
> 			cdpb = &ctx->h264_dec.dpb[j];
>-			if (cdpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE ||
>-			    !dpb_entry_match(cdpb, ndpb))
>+			if (!dpb_entry_match(cdpb, ndpb))
> 				continue;
>
> 			*cdpb = *ndpb;
>-- 
>2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
