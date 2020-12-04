Return-Path: <SRS0=Y7pG=FI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 501B3C4361A
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 23:38:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D492F22CA0
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 23:37:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D492F22CA0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tx2XfOgWTH0hj5lf7GUCaVwgcrDJHnKl96D4h/dOhEE=; b=i9RAMpa0rk2QQ3jFWngaTCJjcZ
	UkHNaGfBr9lAb/RkX3eRb0dtwH4dOVH1bazv0JOXSuleCBZkStDVsJcHiVfZn0eh1lqVO7A63TCrN
	8rgMmTVTZVGSLV1LYsMQwRSK7Am+53AoX+rrZW+fXTVoGhtT+vU0GQta45hds8EvfTtM0CJ+bANW9
	nuvcWhS8dDk37IPDp80g0lJfu3qZUAffnd9c/006MYCd/7FC1HZVzDQte9spyuv+AtSHiATKPbWdV
	MNArbu2YmQNIYDNoz7z6jDQJ25vhVj3S8JvcwYDpBm66mg2/XGjkNcNjGzpdmNVx5dWONd97AQDHG
	7QMG7cBw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klKe9-000699-D4; Fri, 04 Dec 2020 23:37:53 +0000
Received: from mail-oo1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klKe6-000680-LW
 for linux-rockchip@lists.infradead.org; Fri, 04 Dec 2020 23:37:51 +0000
Received: by mail-oo1-xc41.google.com with SMTP id w9so1793342ooh.13
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Dec 2020 15:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Hu+wkWbpBPezTyvSb2of+Vm89E29WSOkpzM3YXzuj38=;
 b=s53gSZHTQH7cvBh/vdbdcsZagopkO0fpu0/tXRVjv8ut6GBOgL1RMR7uIa4erod7Cb
 ZTetW+yb4/iMe3tZD/5+xe+GBAZmZcCK+XWwUf1/5j1o+cyuwkvFJ8ccg+c9DkvAlyCD
 DXgCwg5ApY8QF/d6IbAYylT5lEFbjTA57ODJhMZCNBQW2N4rVYYoNoTfFC6PJY3h799o
 HP1MzkRsZjPhyYeaTQ5nUcucJQ+SJDtBCFL8qkne6XIAgqeI9w5fCEBHv+E5cSOrqhjK
 jAYlyCZf8AwEvRhlswdLZ2tyvYmpPcKdtaxW+4OToSUFbAySWyvZaUpg5bURW0gGR0/Y
 G2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Hu+wkWbpBPezTyvSb2of+Vm89E29WSOkpzM3YXzuj38=;
 b=WoBYBbBk/qIewHfKkIT7glmzcwPnHsapoNn+dJ4ZkD3aBAjy4riyLNx8cFxKI1XIHl
 f2GxUFTs23HM5pRvDnCtL13QR6Uxzwt/8apTuwEv1pgKeK5lBe4Ppjyu4w8j7U3iI+V1
 CJDGg87FjoFuXGyoV585kzrLnWAEMmf4gVTM5dY0OUZkg4+6/PI/QmUxr0C9RFOxrw/8
 B832G+9pfqtd688nRpPyB98JpJW4p5oz26TsfYwX5fJfFGEOk/4YP21Okl8XUuNkfay+
 J5DJMxav8yCLuKjgrfZernC+hOvkqVzTYFFZbsv5eP/uzLA8Q6R3L7UkwczQv/3NYVe8
 VD6Q==
X-Gm-Message-State: AOAM533xVe8oCORK95/9EKZl26Zsp2i/3ebOOXPWrGH0OuDfeEMRK6Gw
 Bg8tY4IZD97Lfiohr3CTd4SIdPcmMLp0Gg==
X-Google-Smtp-Source: ABdhPJzUH98nCflQCCHuadj2dET80eZLyv6NF8U5XbXxt95V+Oap0UpJh05+04/E7GpWUZU0MpSJwA==
X-Received: by 2002:a05:6820:131:: with SMTP id
 i17mr5320675ood.18.1607125065377; 
 Fri, 04 Dec 2020 15:37:45 -0800 (PST)
Received: from linuxmint-midtower-pc ([135.26.31.16])
 by smtp.gmail.com with ESMTPSA id l5sm990439oig.46.2020.12.04.15.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 15:37:44 -0800 (PST)
Date: Fri, 4 Dec 2020 17:37:43 -0600
From: Travis Carter <traviscarter2@gmail.com>
To: ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH] staging:rkvdec: Fixed "replace comma with semicolon" Warning:
Message-ID: <20201204233743.GA8530@linuxmint-midtower-pc>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201204_183750_724066_2FED8064 
X-CRM114-Status: GOOD (  11.94  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Corrected the following Warning:
drivers/staging/media/rkvdec/rkvdec.c:133: WARNING: Possible comma where semicolon could be used

Signed-off-by: Travis Carter <traviscarter2@gmail.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index d25c4a37e2af..66572066e7a0 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -130,7 +130,7 @@ static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
 	memset(f, 0, sizeof(*f));
 	f->fmt.pix_mp.pixelformat = fourcc;
 	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
-	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709,
+	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
 	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
 	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
