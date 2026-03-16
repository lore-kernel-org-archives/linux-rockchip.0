Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCC90F013D5
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 08:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PsrHm5OtfrMDiPNVbvERqrSLmcAfa0+5IU1TmOIYZuA=; b=4zxLUhXeei/bW/
	WGLlzcqmDtJp0TxArZPpUiVd7qZEZmZVBOBM8gyPVV/uAa99tRoAHPn+xJmoeabcLuP91gMxF0b8l
	5xDFM8E05gMLu9/pIiQ0yYDV1dEjl4xKjINl2n9eG+xguOT7HBEMeTFU0CZuN8JKQWqjhCVMN6HLC
	a7la8OrkySEs3RTdSikmc47mNe63QafxW0BpDKPmTLgCo16+Ci2Ye0o+bD80Nhufnt5vLSknQI4vS
	1tGQ+WsbKuMpsbaZr67h9ln0AWdOjXZz4VS/HymzgL6z/zcGVRhc37LK/n8aFzn1YtBP699unht4w
	nzDopXfDqgeSETPuMc0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w23Vt-00000003ZII-44uL;
	Mon, 16 Mar 2026 08:41:25 +0000
Received: from mx1.wiredblade.com ([72.51.58.38])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w23Vr-00000003ZHz-2oar
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Mar 2026 08:41:24 +0000
dkim-signature: v=1; a=rsa-sha256; d=psihoexpert.ro; s=dynu;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=bTvMJhKi428zCRtr43pHlrKylv2Xx00GjbMEhpaWMTQ=;
	b=NC1zfJ8IGzssem504K+SYyI6MwKci7OTrZqMtLIQd2/8RW0IkyQ3gr7bpbjf84cm19lYqzUQvj8a+MkIFNA6PCpLOM3Jnh98F4LRkTZI8anNq2rzdPcbfei3uOxnYapucIjgS1eKrvLOIaIKD8qPXoQJ7bVRSJPdRUy3+KKymAMfLdpaFYaz5ordS8YkImmfkZfLexM2cSR67Rs/IDaGu8Ql/RzMQ64BDbAsbQBwGeztEF2TtURrk/PM1y
	YrN5+AmzfFUJL4IJVYrAAci9f52MooRrdkPZvyey2nFY5VhP5h9h9ryZBAyZtZlF6ou3dXvoNuxXunG9dn560+HhRqZg==
Received: from TkB (188-24-192-137.rdsnet.ro [188.24.192.137])
	by mx1.wiredblade.com with ESMTPSA
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256)
	; Mon, 16 Mar 2026 08:41:17 +0000
From: Marius Dinu <m95d+git@psihoexpert.ro>
To: linux-rockchip@lists.infradead.org
Cc: Marius Dinu <m95d+git@psihoexpert.ro>
Subject: [PATCH] drm: rockchip: dw_dp: add missing dependency on bridge_connector
Date: Mon, 16 Mar 2026 10:46:53 +0200
Message-ID: <20260316084653.1559-1-m95d+git@psihoexpert.ro>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_014123_810053_305DBEFB 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
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

Avoids this error:
  ld: drivers/gpu/drm/rockchip/dw_dp-rockchip.o: in function `dw_dp_rockchip_bind':
  /usr/src/linux/drivers/gpu/drm/rockchip/dw_dp-rockchip.c:108:(.text+0x188): undefined reference to `drm_bridge_connector_init'

Signed-off-by: Marius Dinu <m95d+git@psihoexpert.ro>
---
 drivers/gpu/drm/rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 1479b8c4ed40..749a4b86c893 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -13,6 +13,7 @@ config DRM_ROCKCHIP
 	select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
 	select DRM_DISPLAY_DP_AUX_BUS if ROCKCHIP_ANALOGIX_DP
 	select DRM_DW_DP if ROCKCHIP_DW_DP
+	select DRM_BRIDGE_CONNECTOR if ROCKCHIP_DW_DP
 	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
 	select DRM_DW_HDMI_QP if ROCKCHIP_DW_HDMI_QP
 	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
-- 
2.52.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
