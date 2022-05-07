Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A76EC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 May 2022 10:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N2OZVXy1vchwGaqQYaNqoG+N0dDu0kfBgGxy5f/EByY=; b=d7F+qJS5Bkwc+k
	VWl/+kkX/EdlKihiIVnJ5vlUaC61099ch+bTMs4rPklWCAc1cXijjx3TSJe/XvzxtKwHKK7Y2Hs0J
	YedWjDqRL/h/bnXiQ5IhkCL1CaROnRuh+EoIoqcwUGzvyHeVb5GGZmSYRu3jSrj90MEcZPM0VR2C9
	xUgSowPI0L5WuMz6roVi+tY/5I+JhxeV2fQzZNFzjSbiolPztc+ksW6+QpiSiVOZThs1gghs8V3Bd
	dxuFQy/AhsnelC6Laftao2T0ySf6Cu3xi3ccegIHNZLrBsmhFqGRVFEiSvNKmEqOtTSwtne+ngjxz
	fvMCMaaTSXQyJAQDXCug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnHOw-006ktc-Td; Sat, 07 May 2022 10:11:02 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnHOl-006koG-2x; Sat, 07 May 2022 10:10:52 +0000
Received: from dggpeml500026.china.huawei.com (unknown [172.30.72.54])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4KwNP65mKGzXdlv;
 Sat,  7 May 2022 18:06:02 +0800 (CST)
Received: from dggpeml500008.china.huawei.com (7.185.36.147) by
 dggpeml500026.china.huawei.com (7.185.36.106) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Sat, 7 May 2022 18:10:23 +0800
Received: from huawei.com (10.67.175.34) by dggpeml500008.china.huawei.com
 (7.185.36.147) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Sat, 7 May
 2022 18:10:22 +0800
From: Ren Zhijie <renzhijie2@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <lyude@redhat.com>, <tzimmermann@suse.de>
CC: <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>, 
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, "Ren
 Zhijie" <renzhijie2@huawei.com>
Subject: [PATCH v2 -next] drm/rockchip: Fix Kconfig dependencies
Date: Sat, 7 May 2022 18:09:10 +0800
Message-ID: <20220507100910.93705-1-renzhijie2@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.175.34]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpeml500008.china.huawei.com (7.185.36.147)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220507_031051_327827_028D0316 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
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

drivers/gpu/drm/rockchip/cdn-dp-core.o: In function `cdn_dp_connector_mode_valid':
cdn-dp-core.c:(.text+0x1e1): undefined reference to `drm_dp_bw_code_to_link_rate'
cdn-dp-core.c:(.text+0x1f4): undefined reference to `drm_dp_bw_code_to_link_rate'
drivers/gpu/drm/rockchip/cdn-dp-core.o: In function `cdn_dp_pd_event_work':
cdn-dp-core.c:(.text+0x138e): undefined reference to `drm_dp_channel_eq_ok'
drivers/gpu/drm/rockchip/cdn-dp-reg.o: In function `cdn_dp_train_link':
cdn-dp-reg.c:(.text+0xd5a): undefined reference to `drm_dp_bw_code_to_link_rate'

The DP-helper module has been replaced by the display-helper module.
So the driver have to select it.

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 1e0f66420b13("drm/display: Introduce a DRM display-helper module")
Signed-off-by: Ren Zhijie <renzhijie2@huawei.com>
---
v2: remove "select DRM_DISPLAY_HELPER if ROCKCHIP_ANALOGIX_DP" under DRM_ROCKCHIP at the head,
and separately add the select for ROCKCHIP_ANALOGIX_DP and ROCKCHIP_CDN_DP, which Andy suggested.
---
---
 drivers/gpu/drm/rockchip/Kconfig | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 5afab49dc4f2..53c2d9980d48 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -2,7 +2,6 @@
 config DRM_ROCKCHIP
 	tristate "DRM Support for Rockchip"
 	depends on DRM && ROCKCHIP_IOMMU
-	select DRM_DISPLAY_HELPER if ROCKCHIP_ANALOGIX_DP
 	select DRM_GEM_CMA_HELPER
 	select DRM_KMS_HELPER
 	select DRM_PANEL
@@ -38,6 +37,7 @@ config ROCKCHIP_VOP2
 config ROCKCHIP_ANALOGIX_DP
 	bool "Rockchip specific extensions for Analogix DP driver"
 	depends on ROCKCHIP_VOP
+	select DRM_DISPLAY_HELPER
 	select DRM_DISPLAY_DP_HELPER
 	help
 	  This selects support for Rockchip SoC specific extensions
@@ -47,6 +47,8 @@ config ROCKCHIP_ANALOGIX_DP
 config ROCKCHIP_CDN_DP
 	bool "Rockchip cdn DP"
 	depends on EXTCON=y || (EXTCON=m && DRM_ROCKCHIP=m)
+	select DRM_DISPLAY_HELPER
+	select DRM_DISPLAY_DP_HELPER
 	help
 	  This selects support for Rockchip SoC specific extensions
 	  for the cdn DP driver. If you want to enable Dp on
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
