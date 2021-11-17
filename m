Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A88BC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 11:02:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB1846126A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 11:02:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CB1846126A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmxRIrlGuPQWlvfVh92UvT7aCbLY1UliBY5dRzhYVeg=; b=DcN2c9JALEVOvG
	MwwrZbl5ZdTazgE+tQas2MCh9tqv9RlPbo8vaVYHFtt4jpVCTgCZ5p11qyAr7FgsVI9Y4k2DOzWYS
	9bU1jleDhUA0r4HkJZlZX/+/9sC9rE9Gx/tgyzyj+EqTQQympwtPPs1TGPx+0H8vqnxElfbN6Uw+l
	WejKlCehSNof7waCgVafTns4ryYUuraucsbc8jp2yaM9YBDwunfbrF5qOyGQ0ORy1GAALy6aRZeft
	ZM6nMwGvLDCTLnDGun0uxnuETIuNTicOE7mBc1h+qRLAbIKau6tXyxgHqLfTSXl6e2xCfH7J+kfN3
	HmjAFdGsiFz4/STsmYaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnIhQ-004WqX-Tw; Wed, 17 Nov 2021 11:01:56 +0000
Received: from mail-ua1-x92b.google.com ([2607:f8b0:4864:20::92b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnIh8-004Wjk-9W
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 11:01:40 +0000
Received: by mail-ua1-x92b.google.com with SMTP id r15so4987525uao.3
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 03:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=czk1gMWNKXWl8chfFRRwl73Bh8CMWwWD2CpmdeQ3Jb4=;
 b=4ocR6khZ7SMJBnmoPmytAiz4Pbd+lZ8NL6T/RvZSPS0K2vzKwCGWLWjhWVEemeD25R
 A0eBsX2Ibnb0SIECwwiCRtEp9Oe72SC7a12h/B5PhV96vZwIHj2Wk8v6cDi7BsCN5eyP
 j2TmaBb/HML3Nu1CvDX2Sbhl2viHSVNVo36mAxztD8M9ecDs/tLtFCN6HyTX1d+/DwrR
 LH3ILZyLRiiwO58/qPEI7owfmQyb5sBtSU6Wk8xVB2gnsThBRBPn7QB1Lzm8MckDgW1P
 5sWNO0/3iZYMCyatS6QxiM4gVHGoSg/Nci8CaUAFu1fekATNHdb+jpSHvBCkSFitJAjw
 wtog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=czk1gMWNKXWl8chfFRRwl73Bh8CMWwWD2CpmdeQ3Jb4=;
 b=pa/MtQjvLiJ8E9IzHHRMWSzhZMK+OyDSYOosfD22khgwyE3KLV1/H/wPEk8htyR7WT
 8JCS+meYPJpljVaLqxtXppIXnJPd6HLVgnJey0BAMeP/e9DCwYCqaOMUKslaTYpzba4S
 bYHN6MESIk23y/V4HgktDeNxHORa7CuCZAKH42kT1lCBxiinHTH++sOcjNVJQdNubeho
 bzTlUZ41prM7v3bcnghINBXZ+avhrovkEw9ny3aVozrzvcMZq0VeaQhAjbLGBuLxlsHp
 2979vJGiIA6sdLNP84WCrJZoqVrC3oDTKwyZ+nIWZCQGyAukX7kofMD68FuHvwLCrskH
 CycA==
X-Gm-Message-State: AOAM53038qo/iRtVsp1rtCA75r4wiRDgOda8MfaBPGVjCoq8aFA2gBBd
 8i2S5CMAHRQFdF2ewTDR+FW6sw==
X-Google-Smtp-Source: ABdhPJwPYB21ayTea+GyZOeZYIv+kUpZQDhZWKYMm0kaZ2x1ybUNAdz8Pgc+NVlaA8KYMpC0o8jccw==
X-Received: by 2002:a67:fa0f:: with SMTP id i15mr65495172vsq.16.1637146896937; 
 Wed, 17 Nov 2021 03:01:36 -0800 (PST)
Received: from eze-laptop ([186.122.18.126])
 by smtp.gmail.com with ESMTPSA id y22sm11422513vkn.42.2021.11.17.03.01.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Nov 2021 03:01:35 -0800 (PST)
Date: Wed, 17 Nov 2021 08:01:28 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com
Subject: Re: [PATCH v8 11/12] media: hantro: Staticize a struct in
 postprocessor code
Message-ID: <YZThCK6+/jA+P/v8@eze-laptop>
References: <20211116143842.75896-1-andrzej.p@collabora.com>
 <20211116143842.75896-12-andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116143842.75896-12-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_030138_366110_799349FC 
X-CRM114-Status: GOOD (  16.73  )
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

On Tue, Nov 16, 2021 at 03:38:41PM +0100, Andrzej Pietrasiewicz wrote:
> The struct is not used outside this file, so it can be static.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  drivers/staging/media/hantro/hantro_postproc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> index 4549aec08feb..89de43021779 100644
> --- a/drivers/staging/media/hantro/hantro_postproc.c
> +++ b/drivers/staging/media/hantro/hantro_postproc.c
> @@ -33,7 +33,7 @@
>  #define VPU_PP_OUT_RGB			0x0
>  #define VPU_PP_OUT_YUYV			0x3
>  
> -const struct hantro_postproc_regs hantro_g1_postproc_regs = {
> +static const struct hantro_postproc_regs hantro_g1_postproc_regs = {
>  	.pipeline_en = {G1_REG_PP_INTERRUPT, 1, 0x1},
>  	.max_burst = {G1_REG_PP_DEV_CONFIG, 0, 0x1f},
>  	.clk_gate = {G1_REG_PP_DEV_CONFIG, 1, 0x1},
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
