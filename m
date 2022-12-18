Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E3AEC10F1E
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Dec 2022 16:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7Q7cP9lPYrgN08DcLWPK/sCcklqiNXEZAwmBdic1a8=; b=XRxiy5qJLU5wqJ
	yOjTNHVFy6VgFrJyBXsUTkP3MTuEHaGLj5mRR55xVVRLCtAbp5f7IRC/GUUUWmZmhtLRptHMWWX7l
	DbCIbNjjRZ/9JxLJnNuvaKQfwufTx+AtNQVYWv7NqfcUPOZhBmsOynSsyZ6tRQyh4pIMCREq3wt2W
	oFWVXIujce5s6NgNuzvHl2U7zEG+3kgL9Okyrs9vlDvdZMbaiLt9yeRwhySh9uqDbwyuRSjpjtXaY
	YDGRtuitr6XnK1pNKha4GDkW9ZY6T2bMzELExhBMaz1VGrBqlW1b3N9SQhMFDt4pIMfysskDXzVWf
	mJIMIlh/p6UhU80UHTGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6w87-002mcQ-0K; Sun, 18 Dec 2022 16:03:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6w7v-002mYb-F1; Sun, 18 Dec 2022 16:03:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DCFB860C99;
	Sun, 18 Dec 2022 16:02:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A44CC433D2;
	Sun, 18 Dec 2022 16:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671379378;
	bh=9dKbZvUDMKixS1oltFPcGWQS3eAbwlZIq8VkoEF3F68=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=o4CMRK54T5jMemx8bUIcA+TjAuYImRqVqGNafeI4B2MAVa98bUpONJSCCt0hKfmzn
	 2PK4LRpjrFJsBD1uQ27JEnJ+Izj7fkkrrKFGwW2WXohOzcExLXSChDt10yRx42CZiX
	 joKCsnLR8u0tCCXhQMVREuxnaTzAgh4ttyTO9gjWaM80jrLR0Q9O4ogSxDBSnFdgDK
	 qDJJv8p5wbyaKyX6Pz+XS9zJoxYLt0tT2oe1CdkT8I37RpBYrF5dSJSbs65rkzOjCm
	 4UQnrb3PLjRlFjeJpgDL7mzZ+1ydCjKBp/t5AUtBzrnga0j13yqD0jNLvmrtX2txXN
	 1vpxgKIXHmUpg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yuan Can <yuancan@huawei.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	hjc@rock-chips.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 16/85] drm/rockchip: use pm_runtime_resume_and_get() instead of pm_runtime_get_sync()
Date: Sun, 18 Dec 2022 11:00:33 -0500
Message-Id: <20221218160142.925394-16-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221218160142.925394-1-sashal@kernel.org>
References: <20221218160142.925394-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221218_080259_597838_CE4C1F1D 
X-CRM114-Status: GOOD (  12.26  )
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

From: Yuan Can <yuancan@huawei.com>

[ Upstream commit e3558747ebe15306e6d0b75bd6d211436be4a7d5 ]

Replace pm_runtime_get_sync() with pm_runtime_resume_and_get() to avoid
device usage counter leak.

Signed-off-by: Yuan Can <yuancan@huawei.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Link: https://patchwork.freedesktop.org/patch/msgid/20220615062644.96837-1-yuancan@huawei.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c     | 4 ++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c    | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index f4df9820b295..912eb4e94c59 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -1221,7 +1221,7 @@ static int dw_mipi_dsi_dphy_power_on(struct phy *phy)
 		return i;
 	}
 
-	ret = pm_runtime_get_sync(dsi->dev);
+	ret = pm_runtime_resume_and_get(dsi->dev);
 	if (ret < 0) {
 		DRM_DEV_ERROR(dsi->dev, "failed to enable device: %d\n", ret);
 		return ret;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index c356de5dd220..fa1f4ee6d195 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -602,7 +602,7 @@ static int vop_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
 	struct vop *vop = to_vop(crtc);
 	int ret, i;
 
-	ret = pm_runtime_get_sync(vop->dev);
+	ret = pm_runtime_resume_and_get(vop->dev);
 	if (ret < 0) {
 		DRM_DEV_ERROR(vop->dev, "failed to get pm runtime: %d\n", ret);
 		return ret;
@@ -1983,7 +1983,7 @@ static int vop_initial(struct vop *vop)
 		return PTR_ERR(vop->dclk);
 	}
 
-	ret = pm_runtime_get_sync(vop->dev);
+	ret = pm_runtime_resume_and_get(vop->dev);
 	if (ret < 0) {
 		DRM_DEV_ERROR(vop->dev, "failed to get pm runtime: %d\n", ret);
 		return ret;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 105a548d0abe..8cecf81a5ae0 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -822,7 +822,7 @@ static void vop2_enable(struct vop2 *vop2)
 {
 	int ret;
 
-	ret = pm_runtime_get_sync(vop2->dev);
+	ret = pm_runtime_resume_and_get(vop2->dev);
 	if (ret < 0) {
 		drm_err(vop2->drm, "failed to get pm runtime: %d\n", ret);
 		return;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
