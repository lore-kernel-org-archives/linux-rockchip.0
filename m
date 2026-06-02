Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32CB3CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 17:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79HYeWSJ7onvN5xDhu8ERvfBHKjH9n6ouQOEjgY/HE8=; b=FBHg9vAbA9bm/o
	eYMP8YS9I/oNWYruY3E7nSeq1dJyIbNjQ4WbHaWMjv9igEkwjz/DF4nCp3n7AdaVLiZ+JVIbk2Mw3
	Yl6DVXFlzJ+hrmncpkquhV67HZZ/Mora/B/htzlBRB7CeLpmF3Kr92zLpf+ZLdGwgy4lpeghTNE11
	EpEX8lM1PxBeXFPMgD2eiDLGO/XC38V/nXRJu4iZHDS7xP7wTN9dHKvNtmQwRTEr6/RidsFgIAL5J
	at0kNO4Jp46h0uftkJmZbOFsiPlO9w6KgDwZjZUI96YE8wY/D6Y5DghpPW/lng4GHrZItmzgWHvU7
	TA9QjIgeYw/C14Gj2OKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSUb-0000000DWXb-31X7;
	Tue, 02 Jun 2026 17:01:29 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSUX-0000000DWRz-3EyZ
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 17:01:28 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-490b211ee6aso8617225e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 10:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1780419684; x=1781024484; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cTm3whJEPVR1V6vQN57Lc8lY18BNxkH1NXZKiaHL+cg=;
        b=Y+yAHm6Atn/Om6qbhvo/mNJJOpGAsxzTzdtBcGbZRgMHuVwzMhTOJLyP/PDAtIHpk5
         o98RDhNllmUAOatiK7l9EBIGYpB4O277zptx24wYHaJI+q1gPUdS5J260AJJ3zLWXzC9
         N1y7ndM+WjWdtK5L47dj8ijEC5pxT92mjqxlnjkoFG5nFnd8bCN8Pc2YylXqWD7ktxYE
         0XTZtA14Jpm/5NiKJmaz16POG3VF0DRUkbfojRsQGjWfzvUctlWpUO3PSWcawzo0Iw11
         SzZNWV+ds7GytidHeOO9VpShaMn9irtE2UeyHZcvBbpmruQVXtxnMqqWZQfN0egQX8qK
         u3Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780419684; x=1781024484;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cTm3whJEPVR1V6vQN57Lc8lY18BNxkH1NXZKiaHL+cg=;
        b=jKLGzmCJks7WU+rjWePZS98KpLCVQ1ZXkX2YbFHMD9/otbbqRDYXTJLJRNJeYZz2no
         IZ9LKTVndtc2pow9PudOiiXH1vairRHIhg1XqIkLQnVFUNvdHF9IjfiBc2ZK+SIvwT1q
         ks6pnQXCLKyEGkFJn5DWPTgbVclDzoU8C+FrzUl7oSwF8gyjrjnTbkuyw5EBrAoVtGtG
         vZGFif7z09g+24yaRamRtjE9iAtJP2XoD5znbpDwGoisFHHqJh9U4tvN5DqBBxX0n2oE
         I/75ehVz30CnNrXu2h6/ui48beumvI/DDEpT2S57UtTpw3CyYmJG0HZsd2PdWRl/qHdX
         Cr4A==
X-Forwarded-Encrypted: i=1; AFNElJ+ukgyvvhSBuE4SamEJ5Dxq4E8rqoG1iFnOD3qmYWO7eQ30yQWkq1Epl9dGpueQbZMC53k5Vo7pVTRQK0dm/Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw70AeLXv4S5bGuYe8N56Pp57Kw+t9jjwCTeHQiUQpAzl9tqL2i
	xNy5WuhdKDwqmBDw7XMfDfoEd5gg6QGfzlz2qsby/5tEkchRK25cTDYTZjZ88C2PH+17WF9gv8o
	Gj2kSWiiMhbRy
X-Gm-Gg: Acq92OGaggGcqti/sWlRskq9PXsodw3CKYOyRVEdydCqw8paVLcwXJtUyJMJPbOfy4i
	z14aBt9vAhK/vF1Z6x00JZHeHzU9cH9R7wdmmBoqUMfzxyynwv7Mv0CQqS+1BbiL5AGUmiF/V46
	YYd4de8nrLDId+0ol63kDl8JNpWCeno5J+61rTn1Fgge/BnvUQnKaQWtowSK8si5xx0ylBXVF+J
	62Wpj9ODz377OdMLZmtgX5wgq+9CcjOyZAIykZyJ7IJucG6HrPYafd4w4VIO0WIe8ZRYmoAelji
	fa6iutFXBzGJQ4/I6dU16FhM1KSnr/ABJ84kfz9B6enM9lMR4qwxaj7ze0WeZNGOKvBz0gn2gwy
	zO2Q70iIHh2XsVqBdXO0bCWaDALH96oBiB1zGDRne7c9ZfL6+hlR/CBukZo0nuy2fcs/LQjMMUd
	2IROG78c/sjFCADJNHQlS2OJFGzTPTRJ7pnRCPWZ/mnzeVB6ebfQoWyeD4Z9qY6A==
X-Received: by 2002:a05:600c:6211:b0:485:4388:3492 with SMTP id 5b1f17b1804b1-490b505e6bamr11024685e9.11.1780419683944;
        Tue, 02 Jun 2026 10:01:23 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.92.128])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcbe3sm588495f8f.8.2026.06.02.10.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 10:01:23 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 02 Jun 2026 21:00:40 +0400
Subject: [PATCH 2/2] drm/rockchip: dw_hdmi_qp: expose "overscan" property
MIME-Version: 1.0
Message-Id: <20260602-hdmi-overscan-v1-2-31f71b817c80@flipper.net>
References: <20260602-hdmi-overscan-v1-0-31f71b817c80@flipper.net>
In-Reply-To: <20260602-hdmi-overscan-v1-0-31f71b817c80@flipper.net>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2125; i=alchark@flipper.net;
 h=from:subject:message-id; bh=tHygaxsktj42z30dgx6UrKlEC5FoIMQxcKQ2lQcmua4=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTJ84QWFpevzNSVk3KbHC56Jr/59YE7c9cfbMmaquPyU
 WPBI+3MjoksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0EjHWMeIgYtTAKY6vJKR4UhqqtjB4/6f1iwr2uOiUxorJcHYPiX05ukJaUuZAht04xn+Ge4taNm
 kGF3z68uU2DUrlLr/aCsWxnl6+h7Q/tQu8F+PCQA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_100125_847509_5C06EC92 
X-CRM114-Status: GOOD (  11.18  )
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

Expose the "overscan" connector property as recognized by KWin and the
likes to compensate for TV overscan cropping.

The CRTC will use the margin values derived from this overscan percentage
in its post-composition scaler to add appropriate blank margins on all
sides of the output image so that the TV doesn't eat up visible content.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index f35484715c2d..fae44d11dbef 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -137,10 +137,18 @@ dw_hdmi_qp_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
 					 struct drm_connector_state *conn_state)
 {
 	struct rockchip_hdmi_qp *hdmi = to_rockchip_hdmi_qp(encoder);
+	const struct drm_display_mode *adj_mode = &crtc_state->adjusted_mode;
 	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
 	union phy_configure_opts phy_cfg = {};
+	unsigned int overscan;
 	int ret;
 
+	overscan = min(conn_state->tv.overscan, 100u);
+	s->tv_margins.left   = adj_mode->hdisplay * overscan / 200;
+	s->tv_margins.right  = s->tv_margins.left;
+	s->tv_margins.top    = adj_mode->vdisplay * overscan / 200;
+	s->tv_margins.bottom = s->tv_margins.top;
+
 	if (hdmi->tmds_char_rate == conn_state->hdmi.tmds_char_rate &&
 	    s->output_bpc == conn_state->hdmi.output_bpc)
 		return 0;
@@ -603,6 +611,14 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 		return dev_err_probe(hdmi->dev, PTR_ERR(connector),
 				     "Failed to init bridge connector\n");
 
+	ret = drm_mode_create_tv_properties_legacy(drm, 0, NULL);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "Failed to create TV connector properties\n");
+
+	drm_object_attach_property(&connector->base,
+				   drm->mode_config.tv_overscan_property, 0);
+
 	return 0;
 }
 

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
