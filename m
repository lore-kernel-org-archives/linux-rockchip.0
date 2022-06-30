Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E1F7C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 17:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/6AAAsZ0uWG1WCP72c+6J/UHh9bhbtK1J7NCeuZuTc=; b=oldDJH5yNEBRFc
	xAEf+29S2NRfQo7NkuAwT1e6U5VVkyfvZfdKk0QSue5823RrLyNCbZ2nO1Wkp7rm5tzAbwucBL14f
	lMZWizlzQAWcSbWXQE/Q7gDHvrX1H8f9lj3BknANb4g5AG5v5K25rZL7AhQgWFogH75g6r+Da3CRS
	y3LvWgobyinAFfyoE+8xpWkzd9u7REo0xkmaMaIPt8xdICgKVqgb9iGh+ohmNJywF/OUhX6RZKTaw
	SR4nQHLgvgso7gAUdPqdmbN5mklhnbORNOhhXL1rmjXYczAeSFchaGjqiTUSK8LqfHDHYxZAL1HDP
	Sp3Bvk7suNyOHnkgJydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6y3g-000qqq-A4; Thu, 30 Jun 2022 17:34:28 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6y3a-000qnS-M6
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 17:34:27 +0000
Received: by mail-oi1-x22e.google.com with SMTP id bd16so166728oib.6
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jun 2022 10:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=BWbLJKNt5MQqNM+YkZAOKbF+2rTK0qxaILnlQmPjQL4=;
        b=RPsUGVKyrgf5xg0jcnzE7QB2dirFT0xK3s8TYFJ/rLTSjzy1/dXyAUJ6hsrGo0AgK3
         0CjbgD2BEaoPuX60nr6hxj0ezhnyYUT0JWa6ZFksc0onWBUOEkydiBAYyy/Tzrxq7gAI
         SkKxMDeWtegmW0N9vlbSiI3KYxzTKrTx+Kj8Z6ENoXTAViJA3vn8/djDjj8JIsXgklIU
         yeZ4shPeFr+/qpuE7zcGcRjRsXvNUQNFdRmNwA1wcFm9REPxg6dK+16MzTXQLqarCl9O
         iGFVdIyvcm3yegLnMSgzaYXgBk3I7ru2A2CE37rdIPZgPHp3MYJAkLLzQSwvfiJvlyjp
         +mQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BWbLJKNt5MQqNM+YkZAOKbF+2rTK0qxaILnlQmPjQL4=;
        b=qo7rkaIe9CRvXCD9cUEZ/gcnt/usA6zbwx5o/i9qMyUIEjwHHQkJvPXAjXZjt1ZoBL
         YKTb1H8BFFyGcpQi325mdlHs/+sVY60kxVvpmfL5fRD/sO5ySN5y4uAy31k52PPePtMU
         sPdKwOQN8KeV5fIwv0ZWCna80MFewaOCWlJWsCQ0/ZicmGNJU8il0Y5Sd+/hHtFJGDac
         UPpmAAMJ5BHSpaJ2X5HE7iDzA2a55TuyMjU02HalFLsAy/9L65HkeLYZBqmp1grBgXXj
         LBSR8AAnkpBqysoEeLOUceQnL/ulUoq6VOv3A5ssnyqMgWc+1mnTugYxfyFUHxJzU86H
         CdmQ==
X-Gm-Message-State: AJIora+rwG9BffnFFwRXNx+9nEYxcp3iZI+s7Hb4BRgIrSlXnoRh70u2
	Dy3GLR75byclfg7CWSjWS0dfNQ==
X-Google-Smtp-Source: AGRyM1vEwKk6VMtJ6yfaI/N6IBF1oh91SChmbChO4mduVSAvClPkYqXQsh5Dy17rYEmcMyschR/Jkg==
X-Received: by 2002:a05:6808:94:b0:335:98f6:2471 with SMTP id s20-20020a056808009400b0033598f62471mr5801516oic.148.1656610460711;
        Thu, 30 Jun 2022 10:34:20 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id q10-20020a05687101ca00b000fb2aa6eef2sm13182533oad.32.2022.06.30.10.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 10:34:20 -0700 (PDT)
Date: Thu, 30 Jun 2022 14:34:13 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, mripard@kernel.org,
	paul.kocialkowski@bootlin.com, wens@csie.org,
	jernej.skrabec@gmail.com, samuel@sholland.org,
	nicolas.dufresne@collabora.com, andrzej.p@collabora.com,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	kernel@collabora.com
Subject: Re: [PATCH 3/7] media: hantro: HEVC: Fix chroma offset computation
Message-ID: <Yr3elVvJDfISzA3U@eze-laptop>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
 <20220617115802.396442-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617115802.396442-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_103422_779472_A2F56C85 
X-CRM114-Status: GOOD (  14.83  )
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

Hi Benjamin,

On Fri, Jun 17, 2022 at 01:57:58PM +0200, Benjamin Gaignard wrote:
> The chroma offset depends of the bitstream depth.
> Make sure that ctx->bit_depth is used to compute it.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> ---
>  drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> index 9eac133bda68..8407ad45b7b7 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -12,7 +12,7 @@
>  
>  static size_t hantro_hevc_chroma_offset(struct hantro_ctx *ctx)
>  {
> -	return ctx->dst_fmt.width * ctx->dst_fmt.height;
> +	return ctx->dst_fmt.width * ctx->dst_fmt.height * ctx->bit_depth / 8;
>  }
>  
>  static size_t hantro_hevc_motion_vectors_offset(struct hantro_ctx *ctx)
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
