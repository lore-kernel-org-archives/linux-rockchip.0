Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D8B5F4644F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 11:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kh4CsMuwV9MZgUa1zqhE9v7Vwi2st8vepkI2H2Ao3s8=; b=QEHWo7Eb1dzrhq
	WPo3rceEhnjkhQxOCnX2X8HV9+ZOvxGp5/UE/z2vt1SaOvuEEJrzaSxtwD3j40zjA9W5C9/+TLwz7
	QEKulC0sUZMPYNjuxthHOx7d9QmAPxxSqpUM52G3I2OFhDtdyPAAgxTF38mxsP7QDI2WmD2tSbKAy
	UFLFgzWcJxqLR/gn8YDQBpw3HilWK1RMWiyfttLCaEHWKDrCeeV2RnzNX/8hpNbQO8stgWIuG+5Hd
	GRlBfeUOUFVR6QOcDJnJDzDF0DQ91FPtk4YPyKVY3/OVpRjbp60ga4Re+6NjluCO064s4wbdxkiti
	sKOiXnJW428iWPKieDWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w25v5-00000003nq8-22Vx;
	Mon, 16 Mar 2026 11:15:35 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w25v1-00000003nml-1PTn;
	Mon, 16 Mar 2026 11:15:33 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1773659687; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UIej3PgOTkE/n0d+iLhvO9KUEiB24mLjI5T3L8rccNLAyjrayVNy8Aw0GeSTmgMPA68EXjupr5mrY8JaIsmw27IaWeATHFfYPAFqIrCh+nM3maDlIYuf8fIQ06Y/Vkp9l8E5WIfTUs3OU16oTagb2sSEhfrcm/esDoQertxM7Io=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1773659687; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=XlhrKy1qO5Y7JTYOOoPiFnrf+Gaw2TCJw74PIWbx0L8=; 
	b=GHJL5UhzMhaI4sJ/M2v+eF4cfdijD4SFjKwqah2FRjP9h/z1zw2QMf9fj98FRyyGfo3LH8PCo1xWQF8j2EeKQ0LopTyqkGzgSvdHumi+9YnmRzB5LQeaczuGyYgmdJY/3gCNT68jyY6In18UbnM7WRUY7rUMGkP+ZShY2bE1rgU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1773659687;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=XlhrKy1qO5Y7JTYOOoPiFnrf+Gaw2TCJw74PIWbx0L8=;
	b=FPZG0d9UCoj7VXzxtKmvxxFQxaF9k8mtZY+xQj9wmcNo5ZR3YeOZ0v/MSQDEG4e/
	uo+DFdjh4U8fl2V0BoI81dK5Xu0NTrMpgb8RMITuxhj8KJz8j88FHgNWCMwF0qOxFfQ
	9yuJEN5GQKJ2HcVlyUA0Yk+HsIxrGRCSHTTnxhhU=
Received: by mx.zohomail.com with SMTPS id 177365968484917.368603781984916;
	Mon, 16 Mar 2026 04:14:44 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1 3/4] drm/bridge: analogix_dp: Add support for RK3576
Date: Mon, 16 Mar 2026 12:14:37 +0100
Message-ID: <2032185.PYKUYFuaPT@workhorse>
In-Reply-To: <20260310105307.309765-4-damon.ding@rock-chips.com>
References: <20260310105307.309765-1-damon.ding@rock-chips.com>
 <20260310105307.309765-4-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_041531_507750_F37DFB25 
X-CRM114-Status: GOOD (  16.64  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, dianders@chromium.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, alchark@gmail.com, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tuesday, 10 March 2026 11:53:06 Central European Standard Time Damon Ding wrote:
> Expand enum analogix_dp_devtype with RK3576_EDP, and add max_link_rate
> and max_lane_count configs for it.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 1 +
>  include/drm/bridge/analogix_dp.h                   | 3 ++-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index fe7158d9edde..c4e49e8186ab 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1248,6 +1248,7 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
>  		video_info->max_link_rate = 0x0A;
>  		video_info->max_lane_count = 0x04;
>  		break;
> +	case RK3576_EDP:
>  	case RK3588_EDP:
>  		video_info->max_link_rate = 0x14;
>  		video_info->max_lane_count = 0x04;
> diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
> index 854af692229b..d1a6e6d44a2b 100644
> --- a/include/drm/bridge/analogix_dp.h
> +++ b/include/drm/bridge/analogix_dp.h
> @@ -16,12 +16,13 @@ enum analogix_dp_devtype {
>  	EXYNOS_DP,
>  	RK3288_DP,
>  	RK3399_EDP,
> +	RK3576_EDP,
>  	RK3588_EDP,
>  };
>  
>  static inline bool is_rockchip(enum analogix_dp_devtype type)
>  {
> -	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
> +	return type == RK3288_DP || type == RK3399_EDP || type == RK3576_EDP || type == RK3588_EDP;

I think we can make this easier to read with a switch statement. In
a separate patch, we may also want to rename `is_rockchip` to
`analogix_dp_is_rockchip`, as e.g. rockchip_drm_vop.c and exynos_dp.c
both include his header file as well.

Switch statement would make the function look something like:

static inline bool is_rockchip(enum analogix_dp_devtype type)
{
	switch (type) {
	case RK3288_DP:
	case RK3399_EDP:
	case RK3576_EDP:
	case RK3588_EDP:
		return true;
	default:
		return false;
	}
}

Kind regards,
Nicolas Frattaroli

>  }
>  
>  struct analogix_dp_plat_data {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
