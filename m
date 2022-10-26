Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57BE4C38A2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psgAeJcNqTir6pul4a0A81/kYfPvCGZAk5eBsOfXPZY=; b=Y+MjS3jm2L/wSL
	IF5yl/9PmcRyA77tsMsAj+F0ACudGUdYSHB88HU25aEjePV6uLJ/WI3K9lPP/G+uPU2HQaFDKGiDU
	vL77GYYaiwsDLZUWFLF97qF1vgz2q0UEOuO4iQLujFx/LnKkmCjkG8YWqggAl9E1bHM4N1PYn/MQA
	wLsukcHoe7HRL1V8p58QE8X7r9jcqf97WyFTIm2JQudgyC91PimxNTqNbi0EUWuzl8pHZnqrNExrJ
	bGnd0dA5Fd7WDliW9CzU7CxARqPpXCon9i2BKZf78gSvJgmavg3KDD8tgslsX1f/q66bnxr1suh5V
	tnxzzOG5A0LXhMX0OGqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ongEh-009QYW-H3; Wed, 26 Oct 2022 13:14:23 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ongEZ-009QN6-2g; Wed, 26 Oct 2022 13:14:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description; bh=hVlTEDNXqc/fdmdheJRXcBghemReuWQuEg72Ug1yjCQ=; b=w3hIo
	exZgL3mE1EU8J0QZCFZNzGgmAd71kq7c212s3cOAdKD8+tZiGPsFE6mss3OeQR5/Uskrv1benxejF
	pBbY4CleScuxjuKMp53MaE8jpI4TNnwx0xbL0q0mFS+mLpqbTVBLfkR61L5NRVCubvbp1hZ+JDsb4
	W8DypmVA8cWH+TKpr+g5cs0t79owvqcvK0+ly12gX2X8ZZfBvt5YrUe+J8TJN/60VY1r6N+vcwUh/
	ljCbL/Ks4N+TH8g/yWDp3ZlVtnlgQZLpYK7eP6WK76ijUlRW6M5PmzmI4UZ3icuQ8KSJhQkRTSbZS
	+fBzphM6n/OH5uZhpqNty1IjV2CtQ==;
Received: from dougal.metanate.com ([192.168.88.1] helo=donbot)
	by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <john@metanate.com>)
	id 1ongDr-0007Dc-Mv;
	Wed, 26 Oct 2022 14:13:33 +0100
Date: Wed, 26 Oct 2022 14:13:32 +0100
From: John Keeping <john@metanate.com>
To: Aurelien Jarno <aurelien@aurel32.net>
Cc: linux-kernel@vger.kernel.org,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sandy Huang <hjc@rock-chips.com>,
	"open list:DRM DRIVERS FOR ROCKCHIP" <dri-devel@lists.freedesktop.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] drm/rockchip: dw_hdmi: filter regulator -EPROBE_DEFER
 error messages
Message-ID: <Y1kyfAMbt6yFFlJ6@donbot>
References: <20220926203752.5430-1-aurelien@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220926203752.5430-1-aurelien@aurel32.net>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_061415_150495_158634C9 
X-CRM114-Status: GOOD (  18.00  )
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

On Mon, Sep 26, 2022 at 10:37:52PM +0200, Aurelien Jarno wrote:
> When the avdd-0v9 or avdd-1v8 supply are not yet available, EPROBE_DEFER
> is returned by rockchip_hdmi_parse_dt(). This causes the following error
> message to be printed multiple times:
> 
>     dwhdmi-rockchip fe0a0000.hdmi: [drm:dw_hdmi_rockchip_bind [rockchipdrm]] *ERROR* Unable to parse OF data
> 
> Fix that by not printing the message when rockchip_hdmi_parse_dt()
> returns -EPROBE_DEFER.
> 
> Fixes: ca80c4eb4b01 ("drm/rockchip: dw_hdmi: add regulator support")
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index c14f88893868..2f4b8f64cbad 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -565,7 +565,8 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>  
>  	ret = rockchip_hdmi_parse_dt(hdmi);
>  	if (ret) {
> -		DRM_DEV_ERROR(hdmi->dev, "Unable to parse OF data\n");
> +		if (ret != -EPROBE_DEFER)
> +			DRM_DEV_ERROR(hdmi->dev, "Unable to parse OF data\n");

Can we use dev_err_probe() here?

There's no DRM-specific variant, but that is already widely used across
the DRM subsystem.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
