Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABB5CC2BD09
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jul 2024 23:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KcJ1GJcpw7z21hoEaNduW88vmRgpNEHVQNk7rU9fStw=; b=v/IJYjD5FXrHkc
	xKu5G+RL+1qbLtkSM9zCE9K7TRSr9v/ZVabq6a5EIAZXDJlkklr+oADuYbtzLUKvC61oapuNKvXas
	oi5s/aJgdmZaj6/KXpA1M/THNwyMp97Zc8F3rik7/PuwGjVphWjW9JE/zWLrX9OowdEpi9q3SM6vs
	wJ+qxkMWNfQ+M07QMcnyqqk8Ym2GPo9Rc0sOw7rLmPYKr5YZyFy04rg+lq6zPCY96JOzo9ugD2mxN
	BYCAW7qHHyM2I9cjNBzkd7TpX+HwT/d3RPFY9PqqEiUmaZhEszmfKIUvtWwMDHp0LaRnXSIjXhEJU
	d2XFZfviHexw91iVOUuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP9Sf-0000000BjsD-2pSh;
	Wed, 03 Jul 2024 23:32:29 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP9SR-0000000Bjp4-1DfK;
	Wed, 03 Jul 2024 23:32:17 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720049533;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QlysRJGMPVMeOyPkS2J6+X2utP4VEwmmX+EczNyIJjk=;
	b=FCIW4v3KulXCCrJ17Z/KdG0HmI74JNGt56c6V4NKu8hg7IHzTQp3mAQBJhS4VQLZm2EX2I
	T4VlSTAP2VT62fyVvfE5EsO6+7vJ1u63ORQ9OkK0O54pC1GsJL3WicmvVf0Jy+RwGN35fe
	GoVsbiPQlLvi9MNjY7zfPdnDBWTdFPpSP1m5tXBgtMPZ4//8aKWIJpGcmC1GtZ6j9UFtdt
	Csy1+CXnAlOHR0v9MeNF6qh1kwrSeXpzqS7ALiF+X1v415HS6Fs0zVoKToUjZeQaT1Z5Cc
	XS39/nf/pLAio6TxwRuQfXKRY9oFCPbG/MboevgWIlfJjT/mi51pui5lWse4CQ==
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Cc: heiko@sntech.de,
	hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: cdn-dp: Remove redundant workarounds for firmware loading
Date: Thu,  4 Jul 2024 01:32:02 +0200
Message-Id: <9b7a9e9b88ad8c7489ee1b4c70b8751eeb5cf6f9.1720049413.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_163215_818541_BA153935 
X-CRM114-Status: GOOD (  12.52  )
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

After the additional firmware-related module information was introduced by
the commit c0677e41a47f ("drm/rockchip: cdn-dp-core: add MODULE_FIRMWARE
macro"), there's no longer need for the firmware-loading workarounds whose
sole purpose was to prevent the missing firmware blob in an initial ramdisk
from causing driver initialization to fail.  Thus, delete the workarounds,
which removes a sizable chunk of redundant code.

Various utilities used by Linux distributions to generate initial ramdisks
need to obey the firmware-related module information, so we can rely on the
firmware blob being present in the generated initial ramdisks.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 53 +++++---------------------
 1 file changed, 10 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index bd7aa891b839..e1a7c6a1172b 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -44,9 +44,9 @@ static inline struct cdn_dp_device *encoder_to_dp(struct drm_encoder *encoder)
 #define DPTX_HPD_DEL		(2 << 12)
 #define DPTX_HPD_SEL_MASK	(3 << 28)
 
-#define CDN_FW_TIMEOUT_MS	(64 * 1000)
 #define CDN_DPCD_TIMEOUT_MS	5000
 #define CDN_DP_FIRMWARE		"rockchip/dptx.bin"
+
 MODULE_FIRMWARE(CDN_DP_FIRMWARE);
 
 struct cdn_dp_data {
@@ -909,61 +909,28 @@ static int cdn_dp_audio_codec_init(struct cdn_dp_device *dp,
 	return PTR_ERR_OR_ZERO(dp->audio_pdev);
 }
 
-static int cdn_dp_request_firmware(struct cdn_dp_device *dp)
-{
-	int ret;
-	unsigned long timeout = jiffies + msecs_to_jiffies(CDN_FW_TIMEOUT_MS);
-	unsigned long sleep = 1000;
-
-	WARN_ON(!mutex_is_locked(&dp->lock));
-
-	if (dp->fw_loaded)
-		return 0;
-
-	/* Drop the lock before getting the firmware to avoid blocking boot */
-	mutex_unlock(&dp->lock);
-
-	while (time_before(jiffies, timeout)) {
-		ret = request_firmware(&dp->fw, CDN_DP_FIRMWARE, dp->dev);
-		if (ret == -ENOENT) {
-			msleep(sleep);
-			sleep *= 2;
-			continue;
-		} else if (ret) {
-			DRM_DEV_ERROR(dp->dev,
-				      "failed to request firmware: %d\n", ret);
-			goto out;
-		}
-
-		dp->fw_loaded = true;
-		ret = 0;
-		goto out;
-	}
-
-	DRM_DEV_ERROR(dp->dev, "Timed out trying to load firmware\n");
-	ret = -ETIMEDOUT;
-out:
-	mutex_lock(&dp->lock);
-	return ret;
-}
-
 static void cdn_dp_pd_event_work(struct work_struct *work)
 {
 	struct cdn_dp_device *dp = container_of(work, struct cdn_dp_device,
 						event_work);
 	struct drm_connector *connector = &dp->connector;
 	enum drm_connector_status old_status;
-
 	int ret;
 
 	mutex_lock(&dp->lock);
 
 	if (dp->suspended)
 		goto out;
 
-	ret = cdn_dp_request_firmware(dp);
-	if (ret)
-		goto out;
+	if (!dp->fw_loaded) {
+		ret = request_firmware(&dp->fw, CDN_DP_FIRMWARE, dp->dev);
+		if (ret) {
+			DRM_DEV_ERROR(dp->dev, "Loading firmware failed: %d\n", ret);
+			goto out;
+		}
+
+		dp->fw_loaded = true;
+	}
 
 	dp->connected = true;
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
