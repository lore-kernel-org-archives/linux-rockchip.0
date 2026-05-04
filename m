Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04B36CD3427
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 May 2026 19:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boAPjpHnoOfqEzt/AyJw1uNp/9j2VJP6XkbmYVCxO9g=; b=f7y8MLVnl81unb
	W263L3uKyzLwr3B9/nUPdCKtUX0przwDnEjx7N27aMgkf+PuytmTA7UoQZyYsGiAtrYtDTlWpx4s9
	/OS4N/wp6MAR+VP8O04oklQHr1Not94+yBTGUTMRgt0WgCkwfE6G+OOtfxCR3X1lumo3vpKewJ7Wj
	YDcMFX1uknoxPWicJZ8hZ5FFTe9rAcy08AlqyZ4dSvaoh8+qc0Omw4YP3zRX7V7WinVnOsx3wEH+C
	lq6WbgFVAZX3G1gEC1Pqs8hBsKFxnPG9q1FjHQ95CQPeQyqyWAvuH56MgShmY2jr4vaCnGb1xFYbV
	3CgEIwIRhVodV1ZkP08g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJyi1-0000000E5kg-1KRK;
	Mon, 04 May 2026 19:12:01 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJyhm-0000000E5Ig-11qq
	for linux-rockchip@lists.infradead.org;
	Mon, 04 May 2026 19:11:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1777921905; bh=XGUigRl0dHn2l3h5bXexuTyn8UnpuWF+VIfFWcyqNco=;
 b=bgxIznRC56ZmS+lqYa5dxbcJxl5AXAH1I2wybp/wJ9WYzEtaeFf7LNG/kA7NUn8kmSYoimoE7
 lvhRZyFlBMJw9SKpffoyQdBkQ8ndIFyPYKl4V+s9sHca62UrKCxg0h/YOXGPWj4kTBriIabZaGo
 ekM0CCW/gcydie2+MlRrik8Z6DS5Fg6VTfkCjTXjP1NJT105Tom+Cqd1qQ5atGC2KaiiyxB5rzv
 TqS/GgF7L20naP6r/yapDmbpr4nKqJHFXJFCzruCSPx5bAIFUQYwRwGPbRYJTsDdrQ5e8Wlr68q
 QCTbMBtZGFv4EIAdwTfu3qbXG1jLM5cNactjbO0LhyEQ==
X-Forward-Email-ID: 69f8ef6b04bb1dff846bb8db
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.7.7
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: Liu Ying <victor.liu@nxp.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Christian Hewitt <christianshewitt@gmail.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 08/17] drm: bridge: dw_hdmi: Remove cec_notifier_mutex
Date: Mon,  4 May 2026 19:10:45 +0000
Message-ID: <20260504191059.275928-9-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260504191059.275928-1-jonas@kwiboo.se>
References: <20260504191059.275928-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_121146_478516_62A9BF11 
X-CRM114-Status: UNSURE (   9.81  )
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

With CEC phys addr invalidation moved away from the irq handler there is
no longer a need for cec_notifier_mutex, remove it.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v4: No change
v3: No change
v2: Collect r-b tag
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 059f1d241fef..fc4f255c2a2f 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -189,7 +189,6 @@ struct dw_hdmi {
 	void (*enable_audio)(struct dw_hdmi *hdmi);
 	void (*disable_audio)(struct dw_hdmi *hdmi);
 
-	struct mutex cec_notifier_mutex;
 	struct cec_notifier *cec_notifier;
 
 	hdmi_codec_plugged_cb plugged_cb;
@@ -2476,11 +2475,8 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
 
 	status = dw_hdmi_detect(hdmi);
 
-	if (status == connector_status_disconnected) {
-		mutex_lock(&hdmi->cec_notifier_mutex);
+	if (status == connector_status_disconnected)
 		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
-		mutex_unlock(&hdmi->cec_notifier_mutex);
-	}
 
 	return status;
 }
@@ -2594,9 +2590,7 @@ static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
 	if (!notifier)
 		return -ENOMEM;
 
-	mutex_lock(&hdmi->cec_notifier_mutex);
 	hdmi->cec_notifier = notifier;
-	mutex_unlock(&hdmi->cec_notifier_mutex);
 
 	return 0;
 }
@@ -2910,10 +2904,8 @@ static void dw_hdmi_bridge_detach(struct drm_bridge *bridge)
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
-	mutex_lock(&hdmi->cec_notifier_mutex);
 	cec_notifier_conn_unregister(hdmi->cec_notifier);
 	hdmi->cec_notifier = NULL;
-	mutex_unlock(&hdmi->cec_notifier_mutex);
 }
 
 static enum drm_mode_status
@@ -3316,7 +3308,6 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
 
 	mutex_init(&hdmi->mutex);
 	mutex_init(&hdmi->audio_mutex);
-	mutex_init(&hdmi->cec_notifier_mutex);
 	spin_lock_init(&hdmi->audio_lock);
 
 	ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
