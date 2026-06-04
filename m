Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37533CD6E68
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 08:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p10GXzJurdtMmTyp0fVzelSoDQsGVKYq9pZg3CIPamQ=; b=hM9puUDSE0LCtT
	tgz0syLIlDWxTD1Tp6ckhRqx/My34Z2et79vrm3MOtdqbuQRH8kWlASmPuRyCAe37Ma3LGfLBNYin
	Di1G1+T7Z8oBHi0+3nDvJIzztK4/jTUvMn5mKTPNk0DECf3mI2Bqn0tuJr+BPMBoIJLehJj6HOQQL
	Qin3IWB5sF7NlylSXD6qir48McoGrA7D3qjPwsiEsbUOPdHoUIwj+Cgx344VmUlSrwVaLMWuUpagy
	vcHXHUtJzXcRHnzlfThxvmw9FToMlVU1aTZ8OAccXBeIKasvikYXA+U5ioDxtkN/ToZHxBMAbLr2b
	xLtTpjxGRmlNYcmnQYqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV3pT-0000000GQpE-0WwE;
	Thu, 04 Jun 2026 08:53:31 +0000
Received: from mail-m60208.netease.com ([210.79.60.208])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV3pP-0000000GQjQ-2fZe;
	Thu, 04 Jun 2026 08:53:29 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 410f6c9da;
	Thu, 4 Jun 2026 16:53:16 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Subject: [PATCH v5 2/4] drm/dp: Add helper to validate DP lane counts
Date: Thu,  4 Jun 2026 16:52:18 +0800
Message-Id: <20260604085220.2862986-3-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260604085220.2862986-1-damon.ding@rock-chips.com>
References: <20260604085220.2862986-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e91d63bbd03a8kunm52a01cd0409908
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTktCVhkdGh1DGE4YQkoaTVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=ISOkaqn33xDGR1+G5j0ZVei2/HBuEVAzaVlXIYZNFH8pjcu3U5DesmPqPNH3xI8kRkuc9lksYWo2zhgHIGxFzozvq2/jyGOz45rHazQTFzXJs0heJ4v4QmH9QEv9GZMb08zLj5fMOMQkzCO4W6QdTmohhmv5cMekmME4J1EyPEI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=9dIv0NNIoT30XW+12t9f4ox/v0SxbNDGY/P6QADqWYk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_015327_889357_C577BF18 
X-CRM114-Status: UNSURE (   5.41  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add a generic helper function drm_dp_lane_count_is_valid() to check
if a DisplayPort lane count is valid. According to the DP specification,
only 1, 2, or 4 lanes are supported.

This helper avoids duplicating DP lane count validation logic across
individual DisplayPort drivers.

Suggested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 include/drm/display/drm_dp_helper.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 8c2d77a032f0..c904cb480d84 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -138,6 +138,12 @@ bool drm_dp_as_sdp_supported(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_C
 
 int drm_dp_psr_setup_time(const u8 psr_cap[EDP_PSR_RECEIVER_CAP_SIZE]);
 
+static inline bool
+drm_dp_lane_count_is_valid(int lane_count)
+{
+	return lane_count == 1 || lane_count == 2 || lane_count == 4;
+}
+
 static inline int
 drm_dp_max_link_rate(const u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
