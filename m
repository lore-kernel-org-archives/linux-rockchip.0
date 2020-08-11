Return-Path: <SRS0=6tqp=BV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E35C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2020 20:27:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 735EC206DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2020 20:27:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="wQk/oOXW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 735EC206DC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+T5NyDLpQTlWlSVb/rOhqgBeR2+82zAi96QrAFtk2CA=; b=wQk/oOXWlI3kPmoKGRJEptqPER
	q3a0jTwD9hddEtjZssw5WLzFD03n6cS6rHgDGXN+/reBeR/y6vPpiAlBAsk8UdbudO983v9vzREGw
	MG+ORVKQXsvTT+8gMkXeZ6J9DYYAlw4mmYudwxQZm3V2qckWKj8xrE+qHvjPhluYT7pZObsAfrW//
	8Asb1BlEnD0a/w6lJ0p6zRqBemuhtMqmZcaoOt3/riIS14YOA5H0BxNXty39c4tZY9txLpffZfH2L
	DeIqrymUHBH6Pf69TLFyrA1y9eixSqoYAkX2TEB9qVd222Gw0yr1a7WfRsmwCopzBk8ji2o9aaTiJ
	d3RAvd9w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k5arR-0001hQ-Pz; Tue, 11 Aug 2020 20:27:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5arN-0001gJ-J5; Tue, 11 Aug 2020 20:27:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alyssa) with ESMTPSA id 85BD329916D
From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, stable@vger.kernel.org,
 hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch,
 andrzej.p@collabora.com, daniels@collabora.com
Subject: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
Date: Tue, 11 Aug 2020 16:26:31 -0400
Message-ID: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200811_162701_739662_9AABB839 
X-CRM114-Status: GOOD (  11.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
Message-ID: <20200811202631.Ii9xFurWkY6ZLCUyXgi0VE1pGsHrBSC5AJR82-5510I@z>

The AFBC decoder used in the Rockchip VOP assumes the use of the
YUV-like colourspace transform (YTR). YTR is lossless for RGB(A)
buffers, which covers the RGBA8 and RGB565 formats supported in
vop_convert_afbc_format. Use of YTR is signaled with the
AFBC_FORMAT_MOD_YTR modifier, which prior to this commit was missing. As
such, a producer would have to generate buffers that do not use YTR,
which the VOP would erroneously decode as YTR, leading to severe visual
corruption.

The upstream AFBC support was developed against a captured frame, which
failed to exercise modifier support. Prior to bring-up of AFBC in Mesa
(in the Panfrost driver), no open userspace respected modifier
reporting. As such, this change is not expected to affect broken
userspaces.

Tested on RK3399 with Panfrost and Weston.

Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 4a2099cb5..857d97cdc 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -17,9 +17,20 @@
 
 #define NUM_YUV2YUV_COEFFICIENTS 12
 
+/* AFBC supports a number of configurable modes. Relevant to us is block size
+ * (16x16 or 32x8), storage modifiers (SPARSE, SPLIT), and the YUV-like
+ * colourspace transform (YTR). 16x16 SPARSE mode is always used. SPLIT mode
+ * could be enabled via the hreg_block_split register, but is not currently
+ * handled. The colourspace transform is implicitly always assumed by the
+ * decoder, so consumers must use this transform as well.
+ *
+ * Failure to match modifiers will cause errors displaying AFBC buffers
+ * produced by conformant AFBC producers, including Mesa.
+ */
 #define ROCKCHIP_AFBC_MOD \
 	DRM_FORMAT_MOD_ARM_AFBC( \
 		AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE \
+			| AFBC_FORMAT_MOD_YTR \
 	)
 
 enum vop_data_format {
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
