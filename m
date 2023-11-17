Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9361C47071
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 23:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUCjKoRyEdq6nSy+yKFKFWHRtg4zEM0H8vZdLd0slro=; b=HDXU8C9yqMcLSB
	Y9T3mtu1fWMeiEJ+9/NGYzNxCx/BsRDaaUrb9dkBpybH6dJisjyTtSalCRJoKjSc6YVFHJ50+momc
	HErAywu07GgOriE+MSGutWAstoWcscqVoHpF98KeuPHIzx+I8CgXZQZOWXh3fAY5initKSdBsDwMw
	BpOGWhhYjzX4gTAOfLOePDETNByMk5zHdg0C9CUWToOF1Thw9vNtRZ2YYQdBsPb07BBlJThEYc1BC
	IS7s5dEoLIqr8VkEZhc4w6bmx89094byal7uRgooBLUyuoZ4yMDMxJWKPMhhLhpAJsP6cePi96HfH
	5HR2KcubqZI+rfiR/4tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r48Y0-007ZIq-30;
	Fri, 17 Nov 2023 23:46:52 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r48Xx-007ZI8-13
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 23:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1700264775;
 bh=Akxh1pCwlwZ2/Alq/eq4OWlp6spZ3DqWnVV7jZPqbRo=;
 b=m6VnJnDcpIzUPyJ3DuXzmdm6LzVyd9asyXRnvcks5GYv+f7YCZ6WTcvP1XPU/3GXa+61u6h+D
 7MBdKwHr8V5g8J0U4tOne3XuPV/TC0GrKFK9WGrSi0CMUUCae6Eym1vWCRVEEpv33eGcZxafB4A
 kYdNFEX8sHoiJnuacvzbNY/eiijjtHO8pm6t83+7oRSeWXCYa8ZXgpc0ZYEev0UAdY+7snqXpnV
 ujupojpoYFSo38CZreG/hosJMjHNZTNIkfhP5qxAMA3MTT0lLXg+ccdjsQwlSHyeqgYjZ/JpoP8
 B88r5H1qZbgpfkrUayIIGVqP80wCYGK1vvXiC53n8ogw==
Message-ID: <37348be2-c7c4-4eb6-8dd0-e6b18923a88e@kwiboo.se>
Date: Sat, 18 Nov 2023 00:46:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Content-Language: en-US
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 chris.obbard@collabora.com, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, Andy Yan
 <andy.yan@rock-chips.com>, sebastian.reichel@collabora.com
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20231114112855.1771372-1-andyshrk@163.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 6557fb469b02fe711135f205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_154649_693100_1FA40483 
X-CRM114-Status: GOOD (  13.21  )
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

On 2023-11-14 12:28, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> VOP2 on rk3588:
> 
> Four video ports:
> VP0 Max 4096x2160
> VP1 Max 4096x2160
> VP2 Max 4096x2160
> VP3 Max 2048x1080
> 
> 4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
> 4 4K Esmart windows with line RGB/YUV support
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 324 ++++++++++++++++++-
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  57 ++++
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 215 ++++++++++++
>  include/dt-bindings/soc/rockchip,vop2.h      |   4 +
>  4 files changed, 593 insertions(+), 7 deletions(-)
> 

[...]

> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> index 22288ad7f326..4745a9260cf8 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> @@ -34,6 +34,28 @@ static const uint32_t formats_cluster[] = {
>  	DRM_FORMAT_Y210, /* yuv422_10bit non-Linear mode only */
>  };
>  
> +static const uint32_t formats_esmart[] = {
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_RGB888,
> +	DRM_FORMAT_BGR888,
> +	DRM_FORMAT_RGB565,
> +	DRM_FORMAT_BGR565,
> +	DRM_FORMAT_NV12, /* yuv420_8bit linear mode, 2 plane */
> +	DRM_FORMAT_NV21, /* yvu420_8bit linear mode, 2 plane */
> +	DRM_FORMAT_NV16, /* yuv422_8bit linear mode, 2 plane */
> +	DRM_FORMAT_NV61, /* yvu422_8bit linear mode, 2 plane */
> +	DRM_FORMAT_NV24, /* yuv444_8bit linear mode, 2 plane */
> +	DRM_FORMAT_NV42, /* yvu444_8bit linear mode, 2 plane */
> +	DRM_FORMAT_NV15, /* yuv420_10bit linear mode, 2 plane, no padding */

NV20 and NV30 drm format have now been merged into mainline linux,
please add these missing formats. The patch below adds support for them
to rk356x part of vop2 driver.

drm/rockchip: vop2: Add NV20 and NV30 support
https://lore.kernel.org/linux-rockchip/20231025213248.2641962-1-jonas@kwiboo.se/

NV15/NV20/NV30 formats can be tested using modetest from latest main
of libdrm.

modetest: add support for DRM_FORMAT_NV{15,20,30}
https://gitlab.freedesktop.org/mesa/drm/-/merge_requests/329

Regards,
Jonas

> +	DRM_FORMAT_YVYU, /* yuv422_8bit[YVYU] linear mode */
> +	DRM_FORMAT_VYUY, /* yuv422_8bit[VYUY] linear mode */
> +	DRM_FORMAT_YUYV, /* yuv422_8bit[YUYV] linear mode */
> +	DRM_FORMAT_UYVY, /* yuv422_8bit[UYVY] linear mode */
> +};
> +
>  static const uint32_t formats_rk356x_esmart[] = {
>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_ARGB8888,

[...]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
