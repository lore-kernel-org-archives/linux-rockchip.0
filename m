Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F04AAC38A2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 12:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnAnucIbymdfPwJduhILF2Ajdwtm5dVM9wzeUiMQTXo=; b=cKbU5g5hYY+2yk
	aJeLgC3MifIlNfwnYoE+qwQ4+SnDRfriozmij44mSx+3sL3cKTLy/oHK40Id1cBIM9mkYR/YhQDl1
	r2aHptQp6c0VHUb3j4/vhYr28K8I8NWdKffjW0S5qF2W6fKDHNH9NAqjaAwXXZkwZV+Ykx0qhFHkh
	eWpuzeBYz8RB6Qcm7RGrEKFcnoPwd60pSJ7yUWcnB4NeVPViAjW81J4o1gGTC1YoQK5Hi6u3b1AiK
	nIY6TPSGjdrIuxRSLSKUxxnFjSuiYp3L7rpYFkQ4sro7oX8GJbcgi3upSRaIknsxFyE8Dj7/WfoSp
	F8ULgikpU3y1EQMLZDLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onfZ5-009Av6-8V; Wed, 26 Oct 2022 12:31:23 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onfYs-009Art-74; Wed, 26 Oct 2022 12:31:12 +0000
Received: from [192.168.2.190] (109-252-112-196.nat.spd-mgts.ru [109.252.112.196])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A160F660283C;
	Wed, 26 Oct 2022 13:31:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666787465;
	bh=cVeQ921nr1AcNBVj1P6cg8IcXyv7Hv4rrSLvF9n0vLk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SJWsV0ogx4gukVqrHHNKVgKYZ0kQz8qF4ZbwVQbXmfCAcWW4X8jM2jbdSIC6O+ROD
	 mlrhJWseWDEdiODY58uwsEURti2LqQwah7CejmrvhqIDfSJt/tIR1Cnr0f3IUM+G55
	 QRpxyefWC1CNP6ov7hkqLEMDJXITcPtUtJIoJ0DWwY/Kn9O2PqLXOft56F+tpwa5Fj
	 i1TExjR1seBKD05WzlfypAdVrIKgqz9+cbe8v5VNIG6T/ulg8qYxU5a/nLOYhlY4ey
	 HRJkDF0H5nFUjK5uXNE7oWp4/VdZkAGoPWtxCR8LVla4tW9PUTM7jdP4pf0IMwFpss
	 XHXynQR2p0ORA==
Message-ID: <c3c49aec-f307-3679-55a8-eb2c33fb84aa@collabora.com>
Date: Wed, 26 Oct 2022 15:31:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH] drm/rockchip: dw_hdmi: filter regulator -EPROBE_DEFER
 error messages
Content-Language: en-US
To: Aurelien Jarno <aurelien@aurel32.net>, linux-kernel@vger.kernel.org
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:DRM DRIVERS FOR ROCKCHIP" <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20220926203752.5430-1-aurelien@aurel32.net>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220926203752.5430-1-aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_053110_578046_7F95DEED 
X-CRM114-Status: GOOD (  18.36  )
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

On 9/26/22 23:37, Aurelien Jarno wrote:
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
>  		return ret;
>  	}
>  

Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>

Nit: all the DRM_DEV_ERROR() usage in this function is inappropriate to
me. These errors should be converted to dev_err_probe(), IMO.

-- 
Best regards,
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
