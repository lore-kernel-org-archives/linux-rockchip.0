Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A80C5C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 12:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5r1BeAwjWPJnQiuF6ATrpRwKJo13JSpCXQzwjjQvoRs=; b=Mm4dXLqnb/dpBW
	YqH6aGsHml+xhW5XsUyEBNBwJMFYV9epZqff5y5C+bvFaU2NiYdvFI9h0Xs4rwIk8hs8nIi/H2iF/
	3UtCDZuqeu7xsUocEn/YkQDCZyyz7z4GUHvXv0PqLhBnMR5/fNrqpWsu1ZhGV4u7TSvMI0yQDi2QD
	zVkwhh+y428CAvBam85dUOrrf7nwDBNz1AgBF9CFwLaA2pRhiuBaFesNp3Hwp99kTwGMqGDGlF0Gj
	OTJkDh2RTFcAIsqdCAokW4JK4oKJcbvp6jF3f19do6Ayn0kvy/jIDL4pmdo3qTwQZxzowPEKNuiay
	8hGaicZXncusjx2WKKlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwLV7-00000008CoW-2SNz;
	Mon, 15 Apr 2024 12:31:57 +0000
Received: from mail-m49221.qiye.163.com ([45.254.49.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwLV3-00000008ClZ-2Xqt;
	Mon, 15 Apr 2024 12:31:56 +0000
DKIM-Signature: a=rsa-sha256;
	b=SbJFW4qVuEaI4qcFvFthxSYZN4hPn7MyUoKzRBmeQfFIm3SP37qsqNN4ILlu0sJO5R/nhczUDH9lh3KNsJEJ83P6HwmxII+KR1Hfj1Kezs+6y5/oxgE8vrbbFOvbUFWAG49vJ/AXVl9zgXIDSuDca/M4nY+XqL+wCmz22kDKU3o=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=7fFzxdWwdQyIeDGK8d/RTm034/Lv0WNsN5Qi/0l6TgI=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 370E2840680;
	Mon, 15 Apr 2024 20:31:18 +0800 (CST)
Message-ID: <0bc127b7-ef34-49f6-92d5-03ec3633f694@rock-chips.com>
Date: Mon, 15 Apr 2024 20:31:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm: vop2: Do not divide height twice for YUV
To: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stubner <heiko@sntech.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240414182706.655270-1-detlev.casanova@collabora.com>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20240414182706.655270-1-detlev.casanova@collabora.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhgfSFZKHklJTBhIQ05MHR1VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8ee1bd892703a4kunm370e2840680
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MiI6Lzo4STMKLwkiTj8VQ0NI
	TQhPCypVSlVKTEpISkNPSUxCSUlLVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT09LQjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_053154_261710_9F044438 
X-CRM114-Status: GOOD (  14.25  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On 4/15/24 02:27, Detlev Casanova wrote:
> For the cbcr format, gt2 and gt4 are computed again after src_h has been
> divided by vsub.
> 
> As src_h as already been divided by 2 before, introduce cbcr_src_h and
> cbcr_src_w to keep a copy of those values to be used for cbcr gt2 and
> gt4 computation.
> 
> This fixes yuv planes being unaligned vertically when down scaling to
> 1080 pixels from 2160.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")

Acked-by: Andy Yan <andy.yan@rock-chips.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 22 +++++++++++---------
>   1 file changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index fdd768bbd487c..62ebbdb16253d 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -706,6 +706,8 @@ static void vop2_setup_scale(struct vop2 *vop2, const struct vop2_win *win,
>   	const struct drm_format_info *info;
>   	u16 hor_scl_mode, ver_scl_mode;
>   	u16 hscl_filter_mode, vscl_filter_mode;
> +	uint16_t cbcr_src_w = src_w;
> +	uint16_t cbcr_src_h = src_h;
>   	u8 gt2 = 0;
>   	u8 gt4 = 0;
>   	u32 val;
> @@ -763,27 +765,27 @@ static void vop2_setup_scale(struct vop2 *vop2, const struct vop2_win *win,
>   	vop2_win_write(win, VOP2_WIN_YRGB_VSCL_FILTER_MODE, vscl_filter_mode);
>   
>   	if (info->is_yuv) {
> -		src_w /= info->hsub;
> -		src_h /= info->vsub;
> +		cbcr_src_w /= info->hsub;
> +		cbcr_src_h /= info->vsub;
>   
>   		gt4 = 0;
>   		gt2 = 0;
>   
> -		if (src_h >= (4 * dst_h)) {
> +		if (cbcr_src_h >= (4 * dst_h)) {
>   			gt4 = 1;
> -			src_h >>= 2;
> -		} else if (src_h >= (2 * dst_h)) {
> +			cbcr_src_h >>= 2;
> +		} else if (cbcr_src_h >= (2 * dst_h)) {
>   			gt2 = 1;
> -			src_h >>= 1;
> +			cbcr_src_h >>= 1;
>   		}
>   
> -		hor_scl_mode = scl_get_scl_mode(src_w, dst_w);
> -		ver_scl_mode = scl_get_scl_mode(src_h, dst_h);
> +		hor_scl_mode = scl_get_scl_mode(cbcr_src_w, dst_w);
> +		ver_scl_mode = scl_get_scl_mode(cbcr_src_h, dst_h);
>   
> -		val = vop2_scale_factor(src_w, dst_w);
> +		val = vop2_scale_factor(cbcr_src_w, dst_w);
>   		vop2_win_write(win, VOP2_WIN_SCALE_CBCR_X, val);
>   
> -		val = vop2_scale_factor(src_h, dst_h);
> +		val = vop2_scale_factor(cbcr_src_h, dst_h);
>   		vop2_win_write(win, VOP2_WIN_SCALE_CBCR_Y, val);
>   
>   		vop2_win_write(win, VOP2_WIN_VSD_CBCR_GT4, gt4);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
