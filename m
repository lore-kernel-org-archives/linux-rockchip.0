Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6CBCC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Dec 2021 10:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTwnFtBrDqH6DKSNn5t8m2e931hQXJt/6cOsHgsF7r4=; b=NhcoSKPWpCGiox
	Lp52nU3DuetFaofPOVePwmOwJEcM6DxfzUj8qL5ERcUEoGQcYdZ2EMSsYnYmeI74sV2UWmt4labpj
	FNSD32eHln5he+2DvoJOupEvtbd0cUpK18iDAxIUAiYVpRiCxT5J3vccXGlApxC+VQBk7NLsMdBKf
	uJ45CXRYn93mm/O+Hqt6E7gJPdjzECM/XvdMX+5T2+6aTC/xSZNuQK7GUqVlg5NK+GRTYgScEgIFJ
	FWeTUbQ26fJx+V1E8bWtEzCasBweeuWWL8omDNCVS2dR6gqlx2TiJ7cBuTjj5Z9zGntVR4M4lRAm9
	yhpTekDTzxOACj+XbLaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwiPP-008xDE-3N; Mon, 13 Dec 2021 10:18:15 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwi7E-008ozG-HT; Mon, 13 Dec 2021 09:59:30 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="238924787"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="238924787"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 01:59:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="566495206"
Received: from ppolasze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.20.7])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 01:59:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Thomas Zimmermann <tzimmermann@suse.de>, nouveau@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/dp: Move DP declarations into
 separate header file
In-Reply-To: <20211213093650.19598-3-tzimmermann@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211213093650.19598-1-tzimmermann@suse.de>
 <20211213093650.19598-3-tzimmermann@suse.de>
Date: Mon, 13 Dec 2021 11:59:18 +0200
Message-ID: <87v8zs7rm1.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_015928_635121_9C8A8A9D 
X-CRM114-Status: GOOD (  16.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 13 Dec 2021, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> Split the DP declarations from other helpers before moving the
> DP functions into a separate module.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/drm_crtc_helper_internal.h | 27 ---------------------
>  drivers/gpu/drm/drm_dp_aux_dev.c           |  2 +-
>  drivers/gpu/drm/drm_dp_helper.c            |  2 +-
>  drivers/gpu/drm/drm_dp_helper_internal.h   | 28 ++++++++++++++++++++++
>  drivers/gpu/drm/drm_dp_mst_topology.c      |  2 +-
>  drivers/gpu/drm/drm_kms_helper_common.c    |  1 +
>  6 files changed, 32 insertions(+), 30 deletions(-)
>  create mode 100644 drivers/gpu/drm/drm_dp_helper_internal.h
>
> diff --git a/drivers/gpu/drm/drm_crtc_helper_internal.h b/drivers/gpu/drm/drm_crtc_helper_internal.h
> index 61e09f8a8d0f..28e04e750130 100644
> --- a/drivers/gpu/drm/drm_crtc_helper_internal.h
> +++ b/drivers/gpu/drm/drm_crtc_helper_internal.h
> @@ -28,36 +28,9 @@
>  
>  #include <drm/drm_connector.h>
>  #include <drm/drm_crtc.h>
> -#include <drm/drm_dp_helper.h>
>  #include <drm/drm_encoder.h>
>  #include <drm/drm_modes.h>
>  
> -/* drm_dp_aux_dev.c */
> -#ifdef CONFIG_DRM_DP_AUX_CHARDEV
> -int drm_dp_aux_dev_init(void);
> -void drm_dp_aux_dev_exit(void);
> -int drm_dp_aux_register_devnode(struct drm_dp_aux *aux);
> -void drm_dp_aux_unregister_devnode(struct drm_dp_aux *aux);
> -#else
> -static inline int drm_dp_aux_dev_init(void)
> -{
> -	return 0;
> -}
> -
> -static inline void drm_dp_aux_dev_exit(void)
> -{
> -}
> -
> -static inline int drm_dp_aux_register_devnode(struct drm_dp_aux *aux)
> -{
> -	return 0;
> -}
> -
> -static inline void drm_dp_aux_unregister_devnode(struct drm_dp_aux *aux)
> -{
> -}
> -#endif
> -
>  /* drm_probe_helper.c */
>  enum drm_mode_status drm_crtc_mode_valid(struct drm_crtc *crtc,
>  					 const struct drm_display_mode *mode);
> diff --git a/drivers/gpu/drm/drm_dp_aux_dev.c b/drivers/gpu/drm/drm_dp_aux_dev.c
> index 06b374cae956..0618dfe16660 100644
> --- a/drivers/gpu/drm/drm_dp_aux_dev.c
> +++ b/drivers/gpu/drm/drm_dp_aux_dev.c
> @@ -40,7 +40,7 @@
>  #include <drm/drm_dp_mst_helper.h>
>  #include <drm/drm_print.h>
>  
> -#include "drm_crtc_helper_internal.h"
> +#include "drm_dp_helper_internal.h"
>  
>  struct drm_dp_aux_dev {
>  	unsigned index;
> diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
> index 23f9073bc473..e995a0262ed7 100644
> --- a/drivers/gpu/drm/drm_dp_helper.c
> +++ b/drivers/gpu/drm/drm_dp_helper.c
> @@ -35,7 +35,7 @@
>  #include <drm/drm_dp_mst_helper.h>
>  #include <drm/drm_panel.h>
>  
> -#include "drm_crtc_helper_internal.h"
> +#include "drm_dp_helper_internal.h"
>  
>  struct dp_aux_backlight {
>  	struct backlight_device *base;
> diff --git a/drivers/gpu/drm/drm_dp_helper_internal.h b/drivers/gpu/drm/drm_dp_helper_internal.h
> new file mode 100644
> index 000000000000..5c9f8bb0c99a
> --- /dev/null
> +++ b/drivers/gpu/drm/drm_dp_helper_internal.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: MIT */
> +
> +#include <drm/drm_dp_helper.h>

Please don't include other headers if you can avoid them by using
forward declarations.

BR,
Jani.


> +
> +#ifdef CONFIG_DRM_DP_AUX_CHARDEV
> +int drm_dp_aux_dev_init(void);
> +void drm_dp_aux_dev_exit(void);
> +int drm_dp_aux_register_devnode(struct drm_dp_aux *aux);
> +void drm_dp_aux_unregister_devnode(struct drm_dp_aux *aux);
> +#else
> +static inline int drm_dp_aux_dev_init(void)
> +{
> +	return 0;
> +}
> +
> +static inline void drm_dp_aux_dev_exit(void)
> +{
> +}
> +
> +static inline int drm_dp_aux_register_devnode(struct drm_dp_aux *aux)
> +{
> +	return 0;
> +}
> +
> +static inline void drm_dp_aux_unregister_devnode(struct drm_dp_aux *aux)
> +{
> +}
> +#endif
> diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
> index 7f0ff96261cf..9f7b0b606924 100644
> --- a/drivers/gpu/drm/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/drm_dp_mst_topology.c
> @@ -45,7 +45,7 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
>  
> -#include "drm_crtc_helper_internal.h"
> +#include "drm_dp_helper_internal.h"
>  #include "drm_dp_mst_topology_internal.h"
>  
>  /**
> diff --git a/drivers/gpu/drm/drm_kms_helper_common.c b/drivers/gpu/drm/drm_kms_helper_common.c
> index 47e92400548d..88260d26409c 100644
> --- a/drivers/gpu/drm/drm_kms_helper_common.c
> +++ b/drivers/gpu/drm/drm_kms_helper_common.c
> @@ -29,6 +29,7 @@
>  
>  #include <drm/drm_print.h>
>  
> +#include "drm_dp_helper_internal.h"
>  #include "drm_crtc_helper_internal.h"
>  
>  MODULE_AUTHOR("David Airlie, Jesse Barnes");

-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
