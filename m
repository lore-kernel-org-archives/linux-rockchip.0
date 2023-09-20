Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96440C00454
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 14:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xViqw+V4iu7CkVuNc2VJ0TDiPBYXgHXycYHApbRo0fo=; b=g0gcoonJHoafIl
	YwQX12OaCabimz3PcanbxyTRnDTxQdUjsys9uy/B1/vWbQaIrlQE/cjpniszLG2dNEhx3/JsoanWa
	hi5+/NM0x76tIWdt5rzcXRIvHyEB6uUOrg0FT1jKgVooMMyM/xbrxOciKIxiog3sj6XwEtb3Y8YOR
	NDCII3ItdwvBg0Vd5d3T3cv1qTuQJVyS1DQH86q0XImaDbZkS0ygueNP8BgIkKN6dw0NjPkikBQ+Z
	g8n/CloUPbOxKKNqi75piW4vbIX9lHbvdAmFT3r+XiYrHMXkoMIYjkHTWsnGeKH6GdfhTVbe51C2y
	U1lD5GA0mscLU2ld7YHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyLb-003NXT-18;
	Wed, 20 Sep 2023 14:38:35 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyKB-003M5V-00;
	Wed, 20 Sep 2023 14:37:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id C08C3CE1B7B;
	Wed, 20 Sep 2023 14:37:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 633C8C433B9;
	Wed, 20 Sep 2023 14:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695220621;
	bh=a4BpgPVlN4us8i8ZAKm55WYfRM8D4UzuiG9jC3POA78=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Xp+u+U23wcC1j0R0R0CgHMqWOB8I/CjrW/dfgbC4SMrxatx40K6DWlsnu8OtvQilE
	 aAAuSe3M7gsyyQSAO5fMes44xaqdmWtMvVBSsqgq7VSO0Be+PjfRSRtJ0+ABaS5IQ0
	 2YDjfiChJ0rT0vAyC+NEajKtF3HIYbOmvkqJxonef2P3VEyazchjnpeNr8hVxoEVuE
	 StIL2e5AapeocXN5iNDaiuuAN20S4JJbneRwCt2yc/YBCzI0k6OF2kdJi0SIIx8t2c
	 55b//lHAtnnO7k4R+V5Cb/uqth3BYpYEKlHv3wmMXjmDH+x3jFO5TR0kcPhQ/BSMe8
	 Q7ffJapvKs90w==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 20 Sep 2023 16:35:43 +0200
Subject: [PATCH RFC v2 28/37] drm/rockchip: inno_hdmi: Move infoframe
 disable to separate function
MIME-Version: 1.0
Message-Id: <20230920-kms-hdmi-connector-state-v2-28-17932daddd7d@kernel.org>
References: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
In-Reply-To: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3525; i=mripard@kernel.org;
 h=from:subject:message-id; bh=a4BpgPVlN4us8i8ZAKm55WYfRM8D4UzuiG9jC3POA78=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnczFZWXLVuG4wPiyjYmX7fJOn3N7Sh8khyX6/oqpqnW
 b6GttwdpSwMYlwMsmKKLDHC5kviTs163cnGNw9mDisTyBAGLk4BmEjPAkaGT698WDZ45G/s+/tN
 eMXXDUndMQ/lDp4XMeHU6/4zd4t7ASPDStN8mwerQsL/2dxJYfly4eGa5jVdcVrL//6zcObN4i9
 mBgA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_073707_508633_05999F81 
X-CRM114-Status: GOOD (  17.16  )
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

The code to upload infoframes to the controller uses a weird construct
which, based on the previous function call return code, will either
disable or enable that infoframe.

In order to get rid of that argument, let's split the function to
disable the infoframe into a separate function and make it obvious what
we are doing in the error path.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 53 +++++++++++++++++++++++-------------
 1 file changed, 34 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 59b2b676b7b8..e3a421d98dd4 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -156,33 +156,38 @@ static void inno_hdmi_reset(struct inno_hdmi *hdmi)
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
-static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi, int setup_rc,
-				  union hdmi_infoframe *frame, u32 frame_index,
-				  u32 mask, u32 disable, u32 enable)
+static void inno_hdmi_disable_frame(struct inno_hdmi *hdmi,
+				    u32 frame_index,
+				    u32 mask, u32 disable)
 {
 	if (mask)
 		hdmi_modb(hdmi, HDMI_PACKET_SEND_AUTO, mask, disable);
 
 	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, frame_index);
+}
 
-	if (setup_rc >= 0) {
-		u8 packed_frame[HDMI_MAXIMUM_INFO_FRAME_SIZE];
-		ssize_t rc, i;
+static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi,
+				  union hdmi_infoframe *frame, u32 frame_index,
+				  u32 mask, u32 disable, u32 enable)
+{
+	u8 packed_frame[HDMI_MAXIMUM_INFO_FRAME_SIZE];
+	ssize_t rc, i;
 
-		rc = hdmi_infoframe_pack(frame, packed_frame,
-					 sizeof(packed_frame));
-		if (rc < 0)
-			return rc;
+	inno_hdmi_disable_frame(hdmi, frame_index, mask, disable);
 
-		for (i = 0; i < rc; i++)
-			hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i,
-				    packed_frame[i]);
+	rc = hdmi_infoframe_pack(frame, packed_frame,
+				 sizeof(packed_frame));
+	if (rc < 0)
+		return rc;
 
-		if (mask)
-			hdmi_modb(hdmi, HDMI_PACKET_SEND_AUTO, mask, enable);
-	}
+	for (i = 0; i < rc; i++)
+		hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i,
+			    packed_frame[i]);
 
-	return setup_rc;
+	if (mask)
+		hdmi_modb(hdmi, HDMI_PACKET_SEND_AUTO, mask, enable);
+
+	return 0;
 }
 
 static int inno_hdmi_config_video_vsi(struct inno_hdmi *hdmi,
@@ -194,8 +199,13 @@ static int inno_hdmi_config_video_vsi(struct inno_hdmi *hdmi,
 	rc = drm_hdmi_vendor_infoframe_from_display_mode(&frame.vendor.hdmi,
 							 &hdmi->connector,
 							 mode);
+	if (rc) {
+		inno_hdmi_disable_frame(hdmi, INFOFRAME_VSI,
+					m_PACKET_VSI_EN, v_PACKET_VSI_EN(0));
+		return rc;
+	}
 
-	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_VSI,
+	return inno_hdmi_upload_frame(hdmi, &frame, INFOFRAME_VSI,
 		m_PACKET_VSI_EN, v_PACKET_VSI_EN(0), v_PACKET_VSI_EN(1));
 }
 
@@ -208,9 +218,14 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 	rc = drm_hdmi_avi_infoframe_from_display_mode(&frame.avi,
 						      &hdmi->connector,
 						      mode);
+	if (rc) {
+		inno_hdmi_disable_frame(hdmi, INFOFRAME_AVI, 0, 0);
+		return rc;
+	}
+
 	frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
-	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI, 0, 0, 0);
+	return inno_hdmi_upload_frame(hdmi, &frame, INFOFRAME_AVI, 0, 0, 0);
 }
 
 static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
