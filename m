Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E643CDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 06:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGMIUMcnm6GmRSAQvOAdH8xZaobmHFUui9heDg3BUkc=; b=b9eROZurS4Ua++
	K9CK1Sl6EzDaVzpXEHVOuf4asOeccfHQjMn0VgwHRSzdLKPcK+KlbLVLTR3jU6Qy60WFXla0ryRGO
	UlmRr93YX7fD8NYmMZ9dtqI2nBgAqL63a9Vl6M3+Ph1W/Re8S9k4CgsFrMYGF14D8i1GzNs/yzwJE
	rma/i5STA4ABxvB4aTzUBCuyWBbbJ+JUrhHdXKbWw7eBqfpAxAZs39ZzC5k5bUKm/nsyLSBGx082e
	YCQ9Nq5lJd9oOh8za2jqjH6zLgbT5qwCrqCIyg9XqZwqk/DFHD4Qo3GmrNuXZ11JNb9UczuAwATug
	6mtmyRvKvxOL7fLP4hkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrBOI-002ZnV-1f;
	Fri, 13 Oct 2023 06:11:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrBOD-002Zn4-14
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 06:11:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBOA-0000k2-RY; Fri, 13 Oct 2023 08:11:10 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBO6-001KGs-TN; Fri, 13 Oct 2023 08:11:06 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBO6-00EE47-Qo; Fri, 13 Oct 2023 08:11:06 +0200
Date: Fri, 13 Oct 2023 08:11:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	heiko@sntech.de, hjc@rock-chips.com,
	sebastian.reichel@collabora.com, sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 3/3] drm/rockchip: fix the plane format defination of
 rk3568/6
Message-ID: <20231013061106.GH3359458@pengutronix.de>
References: <20231012023439.1497304-1-andyshrk@163.com>
 <20231012023705.1497648-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231012023705.1497648-1-andyshrk@163.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_231113_527759_A15E9752 
X-CRM114-Status: GOOD (  26.62  )
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

On Thu, Oct 12, 2023 at 10:37:05AM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The cluster windows on rk3568/6 only support afbc format,
> linear format(RGB/YUV) are not supported.
> The cluster windows on rk3588 support both linear and afbc rgb
> format, but for yuv format it only support afbc.
> 
> The esmart windows on rk3588 support uv swap for yuyv, but
> rk356x does not support it.

It's a bit hard to track which sentence in the description refers to
which change in the patch. Could you split this up into multiple patches
to make this easier reviewable?

Renaming of the formats could also be a separate patch. Patches marked
with "no functional change" are nice and easy to review.

> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 53 +++++++++++---------
>  1 file changed, 30 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> index 62b573f282a7..cde85a17f138 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> @@ -15,7 +15,11 @@
>  
>  #include "rockchip_drm_vop2.h"
>  
> -static const uint32_t formats_win_full_10bit[] = {
> +static const uint32_t formats_for_cluster[] = {

You can drop the "for_"

Sascha

> +	DRM_FORMAT_XRGB2101010,
> +	DRM_FORMAT_ARGB2101010,
> +	DRM_FORMAT_XBGR2101010,
> +	DRM_FORMAT_ABGR2101010,
>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_ARGB8888,
>  	DRM_FORMAT_XBGR8888,
> @@ -24,12 +28,14 @@ static const uint32_t formats_win_full_10bit[] = {
>  	DRM_FORMAT_BGR888,
>  	DRM_FORMAT_RGB565,
>  	DRM_FORMAT_BGR565,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_NV16,
> -	DRM_FORMAT_NV24,
> +	DRM_FORMAT_YUV420_8BIT, /* yuv420_8bit non-Linear mode only */
> +	DRM_FORMAT_YUV420_10BIT, /* yuv420_10bit non-Linear mode only */
> +	DRM_FORMAT_YUYV, /* yuv422_8bit non-Linear mode only*/
> +	DRM_FORMAT_Y210, /* yuv422_10bit non-Linear mode only */
>  };
>  
> -static const uint32_t formats_win_full_10bit_yuyv[] = {
> +/* RK356x can't support uv swap for YUYV and UYVY */
> +static const uint32_t formats_for_rk356x_esmart[] = {
>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_ARGB8888,
>  	DRM_FORMAT_XBGR8888,
> @@ -38,14 +44,15 @@ static const uint32_t formats_win_full_10bit_yuyv[] = {
>  	DRM_FORMAT_BGR888,
>  	DRM_FORMAT_RGB565,
>  	DRM_FORMAT_BGR565,
> -	DRM_FORMAT_NV12,
> -	DRM_FORMAT_NV16,
> -	DRM_FORMAT_NV24,
> -	DRM_FORMAT_YVYU,
> -	DRM_FORMAT_VYUY,
> +	DRM_FORMAT_NV12, /* yuv420_8bit linear mode, 2 plane */
> +	DRM_FORMAT_NV16, /* yuv422_8bit linear mode, 2 plane */
> +	DRM_FORMAT_NV24, /* yuv444_8bit linear mode, 2 plane */
> +	DRM_FORMAT_NV15, /* yuv420_10bit linear mode, 2 plane, no padding */
> +	DRM_FORMAT_YUYV, /* yuv422_8bit[YUYV] linear mode */
> +	DRM_FORMAT_UYVY, /* yuv422_8bit[UYVY] linear mode */
>  };
>  
> -static const uint32_t formats_win_lite[] = {
> +static const uint32_t formats_for_smart[] = {
>  	DRM_FORMAT_XRGB8888,
>  	DRM_FORMAT_ARGB8888,
>  	DRM_FORMAT_XBGR8888,
> @@ -144,8 +151,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
>  		.name = "Smart0-win0",
>  		.phys_id = ROCKCHIP_VOP2_SMART0,
>  		.base = 0x1c00,
> -		.formats = formats_win_lite,
> -		.nformats = ARRAY_SIZE(formats_win_lite),
> +		.formats = formats_for_smart,
> +		.nformats = ARRAY_SIZE(formats_for_smart),
>  		.format_modifiers = format_modifiers,
>  		.layer_sel_id = 3,
>  		.supported_rotations = DRM_MODE_REFLECT_Y,
> @@ -156,8 +163,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
>  	}, {
>  		.name = "Smart1-win0",
>  		.phys_id = ROCKCHIP_VOP2_SMART1,
> -		.formats = formats_win_lite,
> -		.nformats = ARRAY_SIZE(formats_win_lite),
> +		.formats = formats_for_smart,
> +		.nformats = ARRAY_SIZE(formats_for_smart),
>  		.format_modifiers = format_modifiers,
>  		.base = 0x1e00,
>  		.layer_sel_id = 7,
> @@ -169,8 +176,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
>  	}, {
>  		.name = "Esmart1-win0",
>  		.phys_id = ROCKCHIP_VOP2_ESMART1,
> -		.formats = formats_win_full_10bit_yuyv,
> -		.nformats = ARRAY_SIZE(formats_win_full_10bit_yuyv),
> +		.formats = formats_for_rk356x_esmart,
> +		.nformats = ARRAY_SIZE(formats_for_rk356x_esmart),
>  		.format_modifiers = format_modifiers,
>  		.base = 0x1a00,
>  		.layer_sel_id = 6,
> @@ -182,8 +189,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
>  	}, {
>  		.name = "Esmart0-win0",
>  		.phys_id = ROCKCHIP_VOP2_ESMART0,
> -		.formats = formats_win_full_10bit_yuyv,
> -		.nformats = ARRAY_SIZE(formats_win_full_10bit_yuyv),
> +		.formats = formats_for_rk356x_esmart,
> +		.nformats = ARRAY_SIZE(formats_for_rk356x_esmart),
>  		.format_modifiers = format_modifiers,
>  		.base = 0x1800,
>  		.layer_sel_id = 2,
> @@ -196,8 +203,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
>  		.name = "Cluster0-win0",
>  		.phys_id = ROCKCHIP_VOP2_CLUSTER0,
>  		.base = 0x1000,
> -		.formats = formats_win_full_10bit,
> -		.nformats = ARRAY_SIZE(formats_win_full_10bit),
> +		.formats = formats_for_cluster,
> +		.nformats = ARRAY_SIZE(formats_for_cluster),
>  		.format_modifiers = format_modifiers_afbc,
>  		.layer_sel_id = 0,
>  		.supported_rotations = DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270 |
> @@ -211,8 +218,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
>  		.name = "Cluster1-win0",
>  		.phys_id = ROCKCHIP_VOP2_CLUSTER1,
>  		.base = 0x1200,
> -		.formats = formats_win_full_10bit,
> -		.nformats = ARRAY_SIZE(formats_win_full_10bit),
> +		.formats = formats_for_cluster,
> +		.nformats = ARRAY_SIZE(formats_for_cluster),
>  		.format_modifiers = format_modifiers_afbc,
>  		.layer_sel_id = 1,
>  		.supported_rotations = DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270 |
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
