Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4271CD343F
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 05:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjVEfC19oUaR/jXktKDeXNROeauLCJr2IjVZivXTOug=; b=WcmI6ioz/zon5p
	ZLA+nwo+k5d9VbGX5m/IYsuyyZIcqOFRsOYKhoX0Rp4+VLNJEt1j2GeMCBrYkvx16ykkN/suHLx6K
	XFlABZiXn34wk8dzWUmkn8OJVXlMqQB+fv/XGYySbO5fro8V8mWAZEleGjAzq7YtNnMxxofKR93yj
	kGrcoVZ1PVWV9csVy7M5lY2Mcs8EIM8wJacQx1zD406rRAcVMZ8evZhtdkKVVd4CiuU021SExLI9+
	Oshre9ktGBVVnWYVfQgLLJgFf/PvB/ZIbBL2VtjgRG4RApG4PejV1ywT80ifKFV0RjHI1iXq8Nxj3
	5jEsscH8OhqYJTWue6Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLaOT-00000008JuT-47S3;
	Sat, 09 May 2026 05:38:30 +0000
Received: from out-186.mta1.migadu.com ([95.215.58.186])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLaOS-00000008JtT-02SZ
	for linux-rockchip@lists.infradead.org;
	Sat, 09 May 2026 05:38:29 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1778305095;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5V5bu8wkVupwenl9kEt3EBNU8qJQmy9AXZs1gAf63t4=;
	b=XAW7qdfOIy5LLS+BTo7puF2YCVhJIuaCojxqMd05ujk61bqCA0XWrYdz0O3eelGXYByVWr
	wUZVI417lKey6DWb8pW4IgevbJivmj/tvgpoF+Iv2zVwgb4xi0TP7GiytKE0YCzhW+UBpN
	ml8YbgAmM+ybJPAwCOFEHhh3om2uj8U=
From: Fushuai Wang <fushuai.wang@linux.dev>
To: shijiaqi_develop@163.com
Cc: airlied@gmail.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	hjc@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	p.zabel@pengutronix.de,
	Fushuai Wang <fushuai.wang@linux.dev>
Subject: Re: [PATCH 3/6 v2] drm/rockchip: Fix vop2_create_crtcs() error path cleanup in vop2_bind()
Date: Sat,  9 May 2026 13:37:37 +0800
Message-Id: <20260509053737.54007-1-fushuai.wang@linux.dev>
In-Reply-To: <177830024278.246051.2541513211000360573@openclaw.local>
References: <177830024278.246051.2541513211000360573@openclaw.local>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_223828_191700_F5AAFFEE 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 8afabe2118a9..1234567890ab 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -2735,7 +2735,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
>  
>  	ret = vop2_create_crtcs(vop2);
>  	if (ret)
> -		return ret;
> +		goto err_crtcs;
>  
>  	ret = vop2_find_rgb_encoder(vop2);
>  	if (ret >= 0) {
> --

Hi, Jiaqi.

Reviewed-by: Fushuai Wang <fushuai.wang@linux.dev>

-- 
Regards,
WANG

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
