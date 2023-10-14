Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA19CCDB465
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Oct 2023 18:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVf/Dir0zfoTi775+/WynkeVQfoCFVnbmkdCSbwbUQA=; b=U1prNTBXS+vEmu
	F+FWSODt/X/g14/wRyskr1LEm5uyC+DDdr3FDUjA3OtXAmNtAbe1sNoIbXqyUsedThgZCNbooxvMw
	u7Mrj1DZdB0wivfzs3G+miC7bGZpaeOeH5IHRuXANcb/9G7QxI1dxlY7BXhSYppnu+n4bhSD/8pkf
	zVrEc5MKCLUQP/DFRPae0dhI5q7b7S/znKDMsPP2I4DD2a9uoQ6pNXayc9wClmTLb01lR4qLT6mRx
	rIm8S/FBMH5Vwm8KkCE/utgYJUF8Z9OGiQEPX9UKVejjd8IRyxt+ShXHwvO0xqinJ5yrYKLbrH77Q
	QnJeIauVj3u2yBPEt5hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrjPE-005ftN-2L;
	Sat, 14 Oct 2023 18:30:32 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrjP9-005fsz-21
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Oct 2023 18:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1697308218;
 bh=hUNMEXwmvTw5SBMzJ8k04ABt7j0KVQgMlKHvCmzwY40=;
 b=sK1YV0GpkC9j/6D+kq9bgmEi6Nj5LDeerPSTwO0EtWnHyePT3rgGFx+nrNhfRGCJ2PhrZ0NyE
 2tOyr3WfedSx1uZIKZiqD7xWrzWd8awWWp7/AHCLEHpdXdYhJWUK3UuJiDy2OIeJFocc/gYoOUv
 hg7KBdHk+cs7O4kBaJPRpRSlGzhKmdP7vmLiFrZOMS3mLiC81ryqn7tl4pxQOCztd1OseFaooOg
 mqS1diM7/bi9gFawkucaN8gENTk1Zso1npzUFUosjZHiuxXs3zQrVYCUoey3KfHWMk9azVaEThl
 SFfbBzIunSneWenHJQkWPBDIPPx+yJVPsCWNEyFMcL/A==
Message-ID: <3b07caba-3978-372a-9107-f8a73ad6fad1@kwiboo.se>
Date: Sat, 14 Oct 2023 20:30:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 3/4] drm/rockchip: fix the plane format defination of
 rk3568/6
To: Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, heiko@sntech.de
Cc: Andy Yan <andy.yan@rock-chips.com>, s.hauer@pengutronix.de,
 sjoerd.simons@collabora.com, hjc@rock-chips.com,
 sebastian.reichel@collabora.com
References: <20231013122001.1594009-1-andyshrk@163.com>
 <20231013122112.1594259-1-andyshrk@163.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20231013122112.1594259-1-andyshrk@163.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 652ade3ade770840148a80cd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231014_113028_327108_F5DECC0A 
X-CRM114-Status: GOOD (  14.81  )
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

Hi Andy,

On 2023-10-13 14:21, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add the missing 10 bit RGB format for cluster window.
> The cluster windows on rk3568/6 only support afbc format,
> so change the  linear yuv format NV12/16/24 to non-Linear
> YUV420_8BIT/YUV420_10BIT/YUYV/Y210.
> 
> Add NV15 for esmart windows.
> 
> Also add some comments.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - split rename to another patch
> 
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 22 +++++++++++++-------
>  1 file changed, 14 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> index 62b573f282a7..05aee588e8c9 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> @@ -16,6 +16,10 @@
>  #include "rockchip_drm_vop2.h"
>  
>  static const uint32_t formats_win_full_10bit[] = {
> +	DRM_FORMAT_XRGB2101010,
> +	DRM_FORMAT_ARGB2101010,
> +	DRM_FORMAT_XBGR2101010,
> +	DRM_FORMAT_ABGR2101010,

atomic_check() will fail for these formats due to missing support for
these formats in the vop2 driver. Support for these formats should be
added to vop2 driver before being exposed as a supported pixel format.

vop2_convert_format() return -EINVAL for these and below formats.

>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_ARGB8888,
>  	DRM_FORMAT_XBGR8888,
> @@ -24,9 +28,10 @@ static const uint32_t formats_win_full_10bit[] = {
>  	DRM_FORMAT_BGR888,
>  	DRM_FORMAT_RGB565,
>  	DRM_FORMAT_BGR565,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_NV16,
> -	DRM_FORMAT_NV24,
> +	DRM_FORMAT_YUV420_8BIT, /* yuv420_8bit non-Linear mode only */
> +	DRM_FORMAT_YUV420_10BIT, /* yuv420_10bit non-Linear mode only */

Same for YUV420_8BIT and YUV420_10BIT.

> +	DRM_FORMAT_YUYV, /* yuv422_8bit non-Linear mode only*/
> +	DRM_FORMAT_Y210, /* yuv422_10bit non-Linear mode only */

Same for Y210.

>  };
>  
>  static const uint32_t formats_win_full_10bit_yuyv[] = {
> @@ -38,11 +43,12 @@ static const uint32_t formats_win_full_10bit_yuyv[] = {
>  	DRM_FORMAT_BGR888,
>  	DRM_FORMAT_RGB565,
>  	DRM_FORMAT_BGR565,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_NV16,
> -	DRM_FORMAT_NV24,
> -	DRM_FORMAT_YVYU,
> -	DRM_FORMAT_VYUY,
> +	DRM_FORMAT_NV12, /* yuv420_8bit linear mode, 2 plane */
> +	DRM_FORMAT_NV15, /* yuv420_10bit linear mode, 2 plane, no padding */

Same for NV15.

Regards,
Jonas

> +	DRM_FORMAT_NV16, /* yuv422_8bit linear mode, 2 plane */
> +	DRM_FORMAT_NV24, /* yuv444_8bit linear mode, 2 plane */
> +	DRM_FORMAT_YVYU, /* yuv422_8bit[YVYU] linear mode */
> +	DRM_FORMAT_VYUY, /* yuv422_8bit[VYUY] linear mode */
>  };
>  
>  static const uint32_t formats_win_lite[] = {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
