Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CB36C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 01:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUNXFz81PyPyG3wIGuNcqKupDRec2VsMo5JtRMC/k2w=; b=Upv01xkXfoeP1L
	Dw2ghMHZvF+GtRGZ9LSBaYcS/AQMHmUvzt7aTgibhZjkM6YdJiYtuHjtxnZheTsfkZrA5kIXm1WK1
	V94YVW5eqPrHVjz67fiix0rfram2BWVPvBhAMyJ/vV0d4HKzxu0KV8vm2L5yzy5Ba3mwIDD+m7Bmr
	5UkMqtjM1SfOj0Ksli3bjeQhy53E5cphihrFbMgOpkWdOd72OtWhUX9qjUyL9kV4RHmL6sTyuSL2+
	PgPwPl5SOcy0fowCUC3V7KQAbG2Kpl6FAH8aatPiRfNiL+GyuWazLhfvk+M/xS1tw8WLhvEpokBXc
	UVgXRfoaiHL/+H42stig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naSho-007k3K-8C; Sat, 02 Apr 2022 01:37:32 +0000
Received: from mail-m17637.qiye.163.com ([59.111.176.37])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naShd-007jwV-CG; Sat, 02 Apr 2022 01:37:23 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m17637.qiye.163.com (Hmail) with ESMTPA id DB99998029A;
 Sat,  2 Apr 2022 09:37:17 +0800 (CST)
Message-ID: <1c0fbf4f-2e17-29f9-5c69-c80b53ff3d2f@rock-chips.com>
Date: Sat, 2 Apr 2022 09:37:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: dri-devel@lists.freedesktop.org, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220401125205.GL4012@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRodS0JWTBpMH08dHx
 hMTUpMVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MhA6HAw5Pj5WQgNOHU8QOAtW
 ExkKFDxVSlVKTU9DQ01IT0hDT0pLVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0tOTDcG
X-HM-Tid: 0a7fe7eb6580d992kuwsdb99998029a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_183721_625262_546F2F94 
X-CRM114-Status: GOOD (  17.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Sacha:

On 4/1/22 20:52, Sascha Hauer wrote:
> -- 
> >From cbc03073623a7180243331ac24c3afaf9dec7522 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer<s.hauer@pengutronix.de>
> Date: Fri, 1 Apr 2022 14:48:49 +0200
> Subject: [PATCH] fixup! drm: rockchip: Add VOP2 driver
>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 14 ++++++++++++++
>   1 file changed, 14 insertions(+)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 7dba7b9b63dc6..1421bf2f133f1 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -2287,6 +2287,20 @@ static int vop2_create_crtc(struct vop2 *vop2)
>   			}
>   		}
>   
> +		if (vop2->data->soc_id == 3566) {
> +			/*
> +			 * On RK3566 these windows don't have an independent
> +			 * framebuffer. They share the framebuffer with smart0,
> +			 * esmart0 and cluster0 respectively.
> +			 */
> +			switch (win->data->phys_id) {
> +			case ROCKCHIP_VOP2_SMART1:
> +			case ROCKCHIP_VOP2_ESMART1:
> +			case ROCKCHIP_VOP2_CLUSTER1:
> +				continue;
> +			}


Think about this , there maybe other upcoming vop2 base soc, they may 
only have

mirror window Smart1 Esmart1, or Smart1, Esmart1, Esmart2, Cluster1.

I think this should add WIN_FEATURE at the platform description file 
rockchip_vop2_reg.c, then

check the FEATURE to decide whether the driver should give this window a 
special treatment.

this can make one code run for different soc with different platform 
description. or we should add

the same code logic for different soc again and again.

> +		}
> +
>   		if (win->type == DRM_PLANE_TYPE_OVERLAY)
>   			possible_crtcs = (1 << nvps) - 1;
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
