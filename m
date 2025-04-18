Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F7BAC369CF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 00:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x28P86XnExesBwBCL/n+oaDd/LdZ5IrwVfut8DmhH68=; b=r2UfR+Y5fqEz1R
	EKmXwZZa+xO4LRnItsD7cpHgYfmcKPoerB/lkHelMGxSyDPmE1DLxJ/5YhO6r4sSG+UIg5nmwH1r7
	9vvPv5koi57DYT8V2zKFF8lbebYGgolY92r3z4OOxU+jscWlNUrm+ZVAdMJGNP+I0yMQWAnXqOLUO
	RBM4jCc932r2tp7Am7ZhIYmR302WqKzPi+vQF3bO8eGjuuSQN9TUnOQzPRPaBBmut49B4G81D1UZI
	yXscLmtkX3XMb5NECCNW5mEryxye2Ck001m4ChBOPVxNIXJ/vunbd6lpWRCUozYXzHRbfQCge/jOf
	coCQJmwN9GQfgDtw3IRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5ZRv-0000000EfQ5-0Lju;
	Fri, 18 Apr 2025 00:19:19 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5ZQ3-0000000EfJg-2RZK;
	Fri, 18 Apr 2025 00:17:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=ACoMjeqQEK5QbJmghOEEcrUjtymI5asACgjcWs598NQ=; b=O
	KIOo5KHOR64c/8UirzmT5CgdF5UgcdDCpO+iHZkeqW+oIiHSaxkhd8X66jBfmIKL
	49bD6AZ2R5tAtRDB0iI8RSLsk0em5BcxtOK5O8gNFFR+pVs8GhplAsh8/1WZCj73
	0cOsaOPhovHRVT0AKtxSOg1YZpsPW2GWr9Q5r/W4Ic=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-120 (Coremail) ; Fri, 18 Apr 2025 08:16:11 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Fri, 18 Apr 2025 08:16:11 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Konstantin Shabanov" <mail@etehtsea.me>
Cc: "Sandy Huang" <hjc@rock-chips.com>,
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
	"Maxime Ripard" <mripard@kernel.org>,
	"Thomas Zimmermann" <tzimmermann@suse.de>,
	"David Airlie" <airlied@gmail.com>,
	"Simona Vetter" <simona@ffwll.ch>,
	"Daniel Stone" <daniel@fooishbar.org>,
	"Dan Callaghan" <djc@djc.id.au>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re:[PATCH v4] drm/rockchip: Disable AFBC for res >2560 on rk3399
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250417065759.5948-1-mail@etehtsea.me>
References: <20250414095332.9674-1-mail@etehtsea.me>
 <20250417065759.5948-1-mail@etehtsea.me>
X-NTES-SC: AL_Qu2fBvWYukss5yeaYukfmkcVgOw9UcO5v/Qk3oZXOJF8jDLp/j0HdmVSAWfk9OO0GyOzmgmGQhZw7+16UYtfUYcQ2sF/6GvOriIdCw400ymGgg==
MIME-Version: 1.0
Message-ID: <17402f2e.360.1964640c3d3.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eCgvCgCnzPPLmQFoYdSZAA--.47571W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkBQzXmgBloInMwAEsE
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_171723_918849_1153B3D1 
X-CRM114-Status: GOOD (  10.17  )
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



Hi Konstantin,

At 2025-04-17 14:57:58, "Konstantin Shabanov" <mail@etehtsea.me> wrote:
>As it isn't supported by hardware. At least, RK3399 doesn't support
>it. From the datasheet[1]
>("1.2.10 Video IN/OUT", "Display Interface", p. 17):
>
>  Support AFBC function co-operation with GPU
>    * support 2560x1600 UI
>
>Manually tested on RockPro64 (rk3399):
>- ARM_AFBC modifier is used for 1920x1080
>- DRM_FORMAT_MOD_LINEAR modifier us used for 3840x2160
>- No noise on the screen when sway is running in 4k
>- Dynamic resolution switching works correctly in sway
>
>Signed-off-by: Konstantin Shabanov <mail@etehtsea.me>
>Cc: Daniel Stone <daniel@fooishbar.org>
>Cc: Andy Yan <andyshrk@163.com>
>Reported-by: Dan Callaghan <djc@djc.id.au>
>Closes: https://gitlab.freedesktop.org/mesa/mesa/-/issues/7968
>
>[1]: https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
>---
>V3 -> V4: Correct redundant header inclusion
>V2 -> V3: Run check only on rk3399
>V1 -> V2: Move the check to the fb_create callback
>
> drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 12 ++++++++++++
> 1 file changed, 12 insertions(+)
>
>diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
>index dcc1f07632c3..45e1619b5c97 100644
>--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
>+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
>@@ -5,6 +5,7 @@
>  */
>
> #include <linux/kernel.h>
>+#include <linux/of.h>
>
> #include <drm/drm.h>
> #include <drm/drm_atomic.h>
>@@ -18,6 +19,8 @@
> #include "rockchip_drm_fb.h"
> #include "rockchip_drm_gem.h"
>
>+#define RK3399_AFBC_MAX_WIDTH		2560
>+
> static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
> 	.destroy       = drm_gem_fb_destroy,
> 	.create_handle = drm_gem_fb_create_handle,
>@@ -52,6 +55,15 @@ rockchip_fb_create(struct drm_device *dev, struct drm_file *file,
> 	}
>
> 	if (drm_is_afbc(mode_cmd->modifier[0])) {
>+		if (of_machine_is_compatible("rockchip,rk3399")) {
>+			if (mode_cmd->width > RK3399_AFBC_MAX_WIDTH) {
>+				DRM_DEBUG_KMS("AFBC is not supported for the width %d (max %d)\n",
>+					      mode_cmd->width,
>+					      RK3399_AFBC_MAX_WIDTH);
>+				return ERR_PTR(-EINVAL);
>+			};
>+		}
>+


I prefer the V1 version PATCH[0]. This is because we do not deal with hardware-related
differences at this level.  It involves a VOP-related restriction and we always  handle
limitiation like this  within the VOP driver . 

[0] https://lore.kernel.org/dri-devel/20250402125320.21836-1-mail@etehtsea.me/


> 		int ret, i;
>
> 		ret = drm_gem_fb_afbc_init(dev, mode_cmd, afbc_fb);
>
>base-commit: 4890d68db651562ea80250f2c93205a5c0327a6a
>--
>2.48.1
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
