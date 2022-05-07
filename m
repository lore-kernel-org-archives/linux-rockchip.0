Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E003C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 May 2022 13:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qd8bT+1zgmWmUPBu3y7GZIBV6SkFz/liWH1HxEqgpaI=; b=Q1t/VNgU73iCVw
	D6QA2pLyjli9PC9hWUIYh7PdizC1osOkpdbnEOfTOP24vO0zlKgYcOCqsDoPaBuWNaKxVbwHSFro4
	VpfS+PwrP/8EO+4kwOMhgfiJY+DIf4CWx41MvjUlrHS/Qkgi9j1+g9rssPatRye7GcDadN/HZ/5ir
	Ga9c5W1gUMxNHC0LmJgRYnc7dj7OEfgHM+TDyP9vC9Y3OkbZJnE/rGkBuP52l/+Fsla72v6wPQ20M
	YiG/acW1yXhlJZysY42dXIpbpSNoDC0jbpShmLRpkDh/LPf7rbqdO88117LlvM6q3aUaFYO3rKExa
	7C8Pqs5SywPZTfXGMLTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnKBq-007EZA-Rw; Sat, 07 May 2022 13:09:42 +0000
Received: from mail-m17669.qiye.163.com ([59.111.176.69])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnKBe-007EVc-Ql; Sat, 07 May 2022 13:09:33 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m17669.qiye.163.com (Hmail) with ESMTPA id 826EC46006D;
 Sat,  7 May 2022 21:09:25 +0800 (CST)
Message-ID: <5b697caa-c8ff-9f10-baa0-4d3e1a644a5f@rock-chips.com>
Date: Sat, 7 May 2022 21:09:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 -next] drm/rockchip: Fix Kconfig dependencies
Content-Language: en-US
To: Ren Zhijie <renzhijie2@huawei.com>, hjc@rock-chips.com, heiko@sntech.de,
 airlied@linux.ie, daniel@ffwll.ch, lyude@redhat.com, tzimmermann@suse.de
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220507100910.93705-1-renzhijie2@huawei.com>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220507100910.93705-1-renzhijie2@huawei.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRkaT0pWSkxNTB0eHk
 tPGUJKVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ni46Njo5SD0xPg0zH0IsSR0q
 ShkaFE9VSlVKTU5KQklDQk1NS01LVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEJDTjcG
X-HM-Tid: 0a809ea3a29cda59kuws826ec46006d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220507_060931_122546_0D0EA77D 
X-CRM114-Status: GOOD (  16.14  )
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

Hi Zhijie:

On 5/7/22 18:09, Ren Zhijie wrote:
> drivers/gpu/drm/rockchip/cdn-dp-core.o: In function `cdn_dp_connector_mode_valid':
> cdn-dp-core.c:(.text+0x1e1): undefined reference to `drm_dp_bw_code_to_link_rate'
> cdn-dp-core.c:(.text+0x1f4): undefined reference to `drm_dp_bw_code_to_link_rate'
> drivers/gpu/drm/rockchip/cdn-dp-core.o: In function `cdn_dp_pd_event_work':
> cdn-dp-core.c:(.text+0x138e): undefined reference to `drm_dp_channel_eq_ok'
> drivers/gpu/drm/rockchip/cdn-dp-reg.o: In function `cdn_dp_train_link':
> cdn-dp-reg.c:(.text+0xd5a): undefined reference to `drm_dp_bw_code_to_link_rate'
>
> The DP-helper module has been replaced by the display-helper module.
> So the driver have to select it.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 1e0f66420b13("drm/display: Introduce a DRM display-helper module")
> Signed-off-by: Ren Zhijie <renzhijie2@huawei.com>

Thanks.

Reviewed-by: Andy Yan <andy.yan@rock-chips.com>

> ---
> v2: remove "select DRM_DISPLAY_HELPER if ROCKCHIP_ANALOGIX_DP" under DRM_ROCKCHIP at the head,
> and separately add the select for ROCKCHIP_ANALOGIX_DP and ROCKCHIP_CDN_DP, which Andy suggested.
> ---
> ---
>   drivers/gpu/drm/rockchip/Kconfig | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index 5afab49dc4f2..53c2d9980d48 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -2,7 +2,6 @@
>   config DRM_ROCKCHIP
>   	tristate "DRM Support for Rockchip"
>   	depends on DRM && ROCKCHIP_IOMMU
> -	select DRM_DISPLAY_HELPER if ROCKCHIP_ANALOGIX_DP
>   	select DRM_GEM_CMA_HELPER
>   	select DRM_KMS_HELPER
>   	select DRM_PANEL
> @@ -38,6 +37,7 @@ config ROCKCHIP_VOP2
>   config ROCKCHIP_ANALOGIX_DP
>   	bool "Rockchip specific extensions for Analogix DP driver"
>   	depends on ROCKCHIP_VOP
> +	select DRM_DISPLAY_HELPER
>   	select DRM_DISPLAY_DP_HELPER
>   	help
>   	  This selects support for Rockchip SoC specific extensions
> @@ -47,6 +47,8 @@ config ROCKCHIP_ANALOGIX_DP
>   config ROCKCHIP_CDN_DP
>   	bool "Rockchip cdn DP"
>   	depends on EXTCON=y || (EXTCON=m && DRM_ROCKCHIP=m)
> +	select DRM_DISPLAY_HELPER
> +	select DRM_DISPLAY_DP_HELPER
>   	help
>   	  This selects support for Rockchip SoC specific extensions
>   	  for the cdn DP driver. If you want to enable Dp on

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
