Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C07AC28B28
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 06:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6JMuxFKuVeiCE0QsIy8uvcuIVgIuAYhRSRwf9Rvod0=; b=EqCh5bp40LOP6r
	QbChxo6OlKMlaTVtgpWBERF6rmUfq/ybWeBj15And7e+yDfLRO6QY5Y7uTOqqXMLAz9u1AiDFAx80
	fWlovGGeng6XNNyyZ/J0GpIF6M7SjabrKiD4ah2j7eB+5u3hGaRPph+PgiRAo8hwoCpWxIS80M0eL
	G0/XnYHNErL3y6lWE89DmazDhIBtSkXtJeR1Hpic7AIv+vaTT3xDf3+OSWgIWyGeRipx7iSpm75Xp
	6ch0rbGimd9EikIsQ0oF+YOaKBvoeakitsN1DYqemC7yGO9Q0P34Xvn8F3vMaQd+Z6Kc5gcSzFPbB
	YDKBAg2/AnT4VxNwyygA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuQY4-00000004qB5-2KaR;
	Tue, 18 Mar 2025 06:35:36 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuQY1-00000004q7z-43EM
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Mar 2025 06:35:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=i6T2F
	0eCFThv3okYLkbuNB4j1ShIXzAcksGCUbz1o6U=; b=jrVtI4odp1oVxAZOXMstF
	n7ndha7qW9yoELihPWOo/V5QqJ0x1wmq+J5sz4AMsVoNPHxsFp4S2JxFBOtVmPNK
	cQ6Q3IwcWlodhLAta6MatmeAf/SBGhNQeHp6Hudm8emUAVS4Z3ySz0yaQJyUyQ2d
	nAhwxUIlthgDnLVasPQSwM=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wDnnuYSFNlnP+WyAA--.9231S6;
	Tue, 18 Mar 2025 14:35:05 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: lumag@kernel.org
Cc: mripard@kernel.org,
	neil.armstrong@linaro.org,
	dri-devel@lists.freedesktop.org,
	dianders@chromium.org,
	jani.nikula@intel.com,
	lyude@redhat.com,
	jonathanh@nvidia.com,
	thierry.reding@gmail.com,
	victor.liu@nxp.com,
	rfoss@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v2 5/5] drm/bridge: it6505: Switch to common helpers to power up/down dp link
Date: Tue, 18 Mar 2025 14:34:39 +0800
Message-ID: <20250318063452.4983-5-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250318063452.4983-1-andyshrk@163.com>
References: <20250318063452.4983-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnnuYSFNlnP+WyAA--.9231S6
X-Coremail-Antispam: 1Uf129KBjvJXoWxZw18JF47GFy3AFyDWFWxJFb_yoW5urWfpr
	43X345JwsYqrW7Xw1vyr1xZFsxA3ZrJrZ5JrW7Gw40v3WUX398CayjvwnxGFyUAFyUGr1Y
	vrnF9F1xGF1Ikr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j4ksDUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAQUXmfZDcXVzgAAsL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_233534_338159_A374A956 
X-CRM114-Status: UNSURE (   9.56  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Use the common dp link power up/down helpers to avoid duplicating code.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---

(no changes since v1)

 drivers/gpu/drm/bridge/ite-it6505.c | 46 +++--------------------------
 1 file changed, 4 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/bridge/ite-it6505.c b/drivers/gpu/drm/bridge/ite-it6505.c
index 8a607558ac89..b05fc82bb667 100644
--- a/drivers/gpu/drm/bridge/ite-it6505.c
+++ b/drivers/gpu/drm/bridge/ite-it6505.c
@@ -771,40 +771,6 @@ static void it6505_calc_video_info(struct it6505 *it6505)
 			     DRM_MODE_ARG(&it6505->video_info));
 }
 
-static int it6505_drm_dp_link_set_power(struct drm_dp_aux *aux,
-					struct it6505_drm_dp_link *link,
-					u8 mode)
-{
-	u8 value;
-	int err;
-
-	/* DP_SET_POWER register is only available on DPCD v1.1 and later */
-	if (link->revision < DPCD_V_1_1)
-		return 0;
-
-	err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
-	if (err < 0)
-		return err;
-
-	value &= ~DP_SET_POWER_MASK;
-	value |= mode;
-
-	err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
-	if (err < 0)
-		return err;
-
-	if (mode == DP_SET_POWER_D0) {
-		/*
-		 * According to the DP 1.1 specification, a "Sink Device must
-		 * exit the power saving state within 1 ms" (Section 2.5.3.1,
-		 * Table 5-52, "Sink Control Field" (register 0x600).
-		 */
-		usleep_range(1000, 2000);
-	}
-
-	return 0;
-}
-
 static void it6505_clear_int(struct it6505 *it6505)
 {
 	it6505_write(it6505, INT_STATUS_01, 0xFF);
@@ -2578,8 +2544,7 @@ static void it6505_irq_hpd(struct it6505 *it6505)
 		}
 		it6505->auto_train_retry = AUTO_TRAIN_RETRY;
 
-		it6505_drm_dp_link_set_power(&it6505->aux, &it6505->link,
-					     DP_SET_POWER_D0);
+		drm_dp_link_power_up(&it6505->aux, it6505->link.revision);
 		dp_sink_count = it6505_dpcd_read(it6505, DP_SINK_COUNT);
 		it6505->sink_count = DP_GET_SINK_COUNT(dp_sink_count);
 
@@ -2910,8 +2875,7 @@ static enum drm_connector_status it6505_detect(struct it6505 *it6505)
 	}
 
 	if (it6505->hpd_state) {
-		it6505_drm_dp_link_set_power(&it6505->aux, &it6505->link,
-					     DP_SET_POWER_D0);
+		drm_dp_link_power_up(&it6505->aux, it6505->link.revision);
 		dp_sink_count = it6505_dpcd_read(it6505, DP_SINK_COUNT);
 		it6505->sink_count = DP_GET_SINK_COUNT(dp_sink_count);
 		DRM_DEV_DEBUG_DRIVER(dev, "it6505->sink_count:%d branch:%d",
@@ -3233,8 +3197,7 @@ static void it6505_bridge_atomic_enable(struct drm_bridge *bridge,
 	it6505_int_mask_enable(it6505);
 	it6505_video_reset(it6505);
 
-	it6505_drm_dp_link_set_power(&it6505->aux, &it6505->link,
-				     DP_SET_POWER_D0);
+	drm_dp_link_power_up(&it6505->aux, it6505->link.revision);
 }
 
 static void it6505_bridge_atomic_disable(struct drm_bridge *bridge,
@@ -3246,8 +3209,7 @@ static void it6505_bridge_atomic_disable(struct drm_bridge *bridge,
 	DRM_DEV_DEBUG_DRIVER(dev, "start");
 
 	if (it6505->powered) {
-		it6505_drm_dp_link_set_power(&it6505->aux, &it6505->link,
-					     DP_SET_POWER_D3);
+		drm_dp_link_power_down(&it6505->aux, it6505->link.revision);
 		it6505_video_disable(it6505);
 	}
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
