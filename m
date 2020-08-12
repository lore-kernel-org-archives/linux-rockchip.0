Return-Path: <SRS0=6SwX=BW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBCBCC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 08:35:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8FCD420781
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 08:35:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="l/ZxGf56"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8FCD420781
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tdMG0NSN1gFy4Itu+hxA0G8Bce0GiqIiH/zh93E46ic=; b=l/ZxGf566136L/soXz25ip4JNH
	Sbl5rHyY9eywyvA4W+r5z2eFVAMxJJmsaC4+YMDuOmLJjsdwCeGSLOBRUfo2ODZNkBrANnogSWY/d
	/iIagv59xdb/zboNLKnzOFckOn/vPlBNGZVh0CS8TW5/f9pI4aXYdDzCkLMzXA7yZMzkNfsD0Jad+
	sGxVjB3ceAHRgHjwCzMwUzcLcIvWDy2rz9W9fo7FQxwUPlrE9m/9UF273WjWrNUPD1LasFFnKJ6mG
	plKB65CmyBCNNg130YEMKx9DIw5h7WYVXDlPL74acR8Ib7x2vyhDqLOfxaGYoEgi4+gQ3uKT5LYVX
	TjewWBuQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k5mE8-0003k8-RV; Wed, 12 Aug 2020 08:35:16 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5mE4-0003hW-4B; Wed, 12 Aug 2020 08:35:13 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 4CFACC5B3D;
 Wed, 12 Aug 2020 16:35:07 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P12148T140383044482816S1597221301879174_; 
 Wed, 12 Aug 2020 16:35:06 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9b940f70c8aae58a528400653cfcd4ec>
X-RL-SENDER: algea.cao@rock-chips.com
X-SENDER: algea.cao@rock-chips.com
X-LOGIN-NAME: algea.cao@rock-chips.com
X-FST-TO: a.hajda@samsung.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Algea Cao <algea.cao@rock-chips.com>
To: a.hajda@samsung.com, kuankuan.y@gmail.com, hjc@rock-chips.com,
 tzimmermann@suse.de, dri-devel@lists.freedesktop.org, sam@ravnborg.org,
 airlied@linux.ie, heiko@sntech.de, jernej.skrabec@siol.net,
 algea.cao@rock-chips.com, Laurent.pinchart@ideasonboard.com,
 laurent.pinchart+renesas@ideasonboard.com, jonas@kwiboo.se,
 mripard@kernel.org, darekm@google.com, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cychiang@chromium.org,
 linux-kernel@vger.kernel.org, narmstrong@baylibre.com,
 jbrunet@baylibre.com, maarten.lankhorst@linux.intel.com, daniel@ffwll.ch
Subject: [PATCH 3/6] drm: bridge: dw-hdmi: Introduce
 previous_pixelclock/previous_tmdsclock
Date: Wed, 12 Aug 2020 16:34:59 +0800
Message-Id: <20200812083459.989-1-algea.cao@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200812083120.743-1-algea.cao@rock-chips.com>
References: <20200812083120.743-1-algea.cao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200812_043513_201535_9EC4CC53 
X-CRM114-Status: GOOD (  15.09  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Introduce previous_pixelclock/previous_tmdsclock to
determine whether PHY needs initialization. If phy is power off,
or mpixelclock/mtmdsclock is different to previous value, phy is
neet to be reinitialized.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
---

 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 50 +++++++++++++++++++----
 1 file changed, 43 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index a1a81fc768c2..1eb4736b9b59 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -101,6 +101,8 @@ static const u16 csc_coeff_rgb_full_to_rgb_limited[3][4] = {
 struct hdmi_vmode {
 	bool mdataenablepolarity;
 
+	unsigned int previous_pixelclock;
+	unsigned int previous_tmdsclock;
 	unsigned int mpixelclock;
 	unsigned int mpixelrepetitioninput;
 	unsigned int mpixelrepetitionoutput;
@@ -890,6 +892,32 @@ static int hdmi_bus_fmt_color_depth(unsigned int bus_format)
 	}
 }
 
+static unsigned int
+hdmi_get_tmdsclock(struct dw_hdmi *hdmi, unsigned long mpixelclock)
+{
+	unsigned int tmdsclock = mpixelclock;
+	unsigned int depth =
+		hdmi_bus_fmt_color_depth(hdmi->hdmi_data.enc_out_bus_format);
+
+	if (!hdmi_bus_fmt_is_yuv422(hdmi->hdmi_data.enc_out_bus_format)) {
+		switch (depth) {
+		case 16:
+			tmdsclock = mpixelclock * 2;
+			break;
+		case 12:
+			tmdsclock = mpixelclock * 3 / 2;
+			break;
+		case 10:
+			tmdsclock = mpixelclock * 5 / 4;
+			break;
+		default:
+			break;
+		}
+	}
+
+	return tmdsclock;
+}
+
 /*
  * this submodule is responsible for the video data synchronization.
  * for example, for RGB 4:4:4 input, the data map is defined as
@@ -1861,11 +1889,13 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
 	int hblank, vblank, h_de_hs, v_de_vs, hsync_len, vsync_len;
 	unsigned int vdisplay, hdisplay;
 
+	vmode->previous_pixelclock = vmode->mpixelclock;
 	vmode->mpixelclock = mode->clock * 1000;
 
 	dev_dbg(hdmi->dev, "final pixclk = %d\n", vmode->mpixelclock);
 
-	vmode->mtmdsclock = vmode->mpixelclock;
+	vmode->previous_tmdsclock = vmode->mtmdsclock;
+	vmode->mtmdsclock = hdmi_get_tmdsclock(hdmi, vmode->mpixelclock);
 
 	if (!hdmi_bus_fmt_is_yuv422(hdmi->hdmi_data.enc_out_bus_format)) {
 		switch (hdmi_bus_fmt_color_depth(
@@ -2172,12 +2202,18 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi,
 	hdmi_av_composer(hdmi, &connector->display_info, mode);
 
 	/* HDMI Initializateion Step B.2 */
-	ret = hdmi->phy.ops->init(hdmi, hdmi->phy.data,
-				  &connector->display_info,
-				  &hdmi->previous_mode);
-	if (ret)
-		return ret;
-	hdmi->phy.enabled = true;
+	if (!hdmi->phy.enabled ||
+	    hdmi->hdmi_data.video_mode.previous_pixelclock !=
+	    hdmi->hdmi_data.video_mode.mpixelclock ||
+	    hdmi->hdmi_data.video_mode.previous_tmdsclock !=
+	    hdmi->hdmi_data.video_mode.mtmdsclock) {
+		ret = hdmi->phy.ops->init(hdmi, hdmi->phy.data,
+					  &connector->display_info,
+					  &hdmi->previous_mode);
+		if (ret)
+			return ret;
+		hdmi->phy.enabled = true;
+	}
 
 	/* HDMI Initialization Step B.3 */
 	dw_hdmi_enable_video_path(hdmi);
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
