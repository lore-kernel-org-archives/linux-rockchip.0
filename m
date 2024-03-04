Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3D01C5478C
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 10:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+txPZjr6nCP6vflgilQBWYhQo8e5POUOSjJXXFJ43Ko=; b=uBpR3IUJXMp3FY
	qkw/HMOYNk438OFBXjCCE4iu2SNTn1DiFqKey+6zhXxH5IY5C7TKfR7AAwogwVD/3GTCgIom1Ioo+
	1VNP6HmcmPq0X/yrveyFXc7wyWNQniZVVKyHcKinJNCrZ96NPzFq7AL7i0mjM4mupU4SoZlGUVEKc
	dwEq9684OyDh9QGSd+wNZirWNfusaabXp2NZsM1/N/TH55mT/n7/TSgxJwWA1JN+oe28z0m3IqCBt
	/njyQ8iRq33CNPNQc7uZzUmO4rJe8AVfEiTH93lT2J/5H6diVV68kW4UlM03zD3q/vHz6D6lpI0SY
	ImoDm1CS1kkj9aDsrgzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh5k1-00000008feF-1nkx;
	Mon, 04 Mar 2024 10:40:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh5jv-00000008fbc-3fsA
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Mar 2024 10:40:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rh5jp-0005kV-8r; Mon, 04 Mar 2024 11:40:05 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rh5jl-004Kjc-W0; Mon, 04 Mar 2024 11:40:02 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rh5jl-001rVn-2t;
	Mon, 04 Mar 2024 11:40:01 +0100
Date: Mon, 4 Mar 2024 11:40:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop2: Remove AR30 and AB30 format support
Message-ID: <ZeWlAWLvlW3NdKS_@pengutronix.de>
References: <20240304100952.3592984-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240304100952.3592984-1-andyshrk@163.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_024011_984984_70ADDA1C 
X-CRM114-Status: GOOD (  19.56  )
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

On Mon, Mar 04, 2024 at 06:09:52PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The Alpha blending for 30 bit RGB/BGR are not
> functioning properly for rk3568/rk3588, so remove
> it from the format list.
> 
> Fixes: bfd8a5c228fa ("drm/rockchip: vop2: Add more supported 10bit formats")
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---

Acked-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> 
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> index 48170694ac6b..18efb3fe1c00 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> @@ -17,9 +17,7 @@
>  
>  static const uint32_t formats_cluster[] = {
>  	DRM_FORMAT_XRGB2101010,
> -	DRM_FORMAT_ARGB2101010,
>  	DRM_FORMAT_XBGR2101010,
> -	DRM_FORMAT_ABGR2101010,
>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_ARGB8888,
>  	DRM_FORMAT_XBGR8888,
> -- 
> 2.34.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
