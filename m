Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60033FEE4ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 11:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZxwTnUVIcgoauYrOWUgcZQFJIdAKdrrqdQdlLAaRkV0=; b=oY4L6Dda6fGEJ9
	9+F91DyEhYld9/kDGpDNLXXPy0w4GM2k8T32JiDQRCOHDBsPFY5azbhmbLi/8qQr1kje9loR1PUSJ
	SCb34OspbBVLWdURaj8Vok+sofIYsi2AJBPQOkBB1/uzZ+RLZBo8oR7/K/PiG/NkIehbagG2ssPC1
	Yqc3kZ1/A/vMcgAHJuH+H6ppvtkVhjkWUr1+myudpdqT6yUkui3tzxcXBIIEeBnd7TLPM3QJONFTm
	EwGjXgdZuCTz2XIsybjHqzVNySzffqTXJFfFusFGfhnhnsotgQCaznWfMmrFUO7dcjwgjVqPWkl6p
	+pUPp5fP5TJBr/mgr9Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwIUr-00000009n5S-1esh;
	Sat, 28 Feb 2026 11:28:33 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwIUo-00000009n55-1dA4
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Feb 2026 11:28:31 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4837634de51so12183095e9.1
        for <linux-rockchip@lists.infradead.org>; Sat, 28 Feb 2026 03:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772278108; x=1772882908; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=lPMQsCRzdgUsnGe3LplGdHC9I0aaGaZ1j+ZQBXbed9c=;
        b=cfKJmWHUAVGIucd1XRgO3pJtwlpOfpCvyx4rKBLYsNZKwksdpevBXnSkg0sxEaYZZF
         4zsHCdk8WLhxZH7aouI5+CcI6OKCff+D8av5MXNDdlVd8quyku7RxST+Vgk6kM+rGrq/
         nK9pwV3svI3c7DQlrCPJG5PL35rtGnwJXzNroL8Tem3P0IJaJxoehQq9aQtd9Ba39PcJ
         klRuNFSIUq02qR1m9o9DZhs/TSFrI0u4WqVGOdBrPjA+FHqpGxbWpdajNVGVdRUE98jQ
         zjsRR2YRvng8/k+SywVVLiPRcpmYqGBOd0z2/8btrFssi+GP8lKOpsf9TM10ZC2JJ8vW
         1kFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772278108; x=1772882908;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lPMQsCRzdgUsnGe3LplGdHC9I0aaGaZ1j+ZQBXbed9c=;
        b=GEsHjJhDTjvjTdrtxWXsWEns/9EeMV9F9ndLR5AYHZb6M83VsjyOAPnooaif/lpsiT
         3CmuWe4cp/n1X2pBCERXBRW2oquN3s7Ikean0QpNMtGTK2JqRH8/p7QGXlG5yXPUbK9U
         uB10OKB31oTX0faGhwUF5WQxOQktrR8kYILOFIt7/kX4OE+eoJiCrxYnBWYsai4SDhOY
         cXk7VP8M8W41Ra3kOG3OeD6MPtQerDXR/4HS++jrO6DWDIRgAbv7eUQ6RAI5TOZ3B/Bz
         Ta8V2mv7WZpsi/FEDHbWWuwf6ufFTVEjr1Z2ESlyhRGK5QKvIf2yA0b70XUCIdzjmmEa
         1cGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUiZ7EEvNnDXdWur7uIjTLg6OUC++FuRdbXlDHasstZkRbamAvqLRIzGItbMisX4L34Nu7E+578gL7zMHaKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzaOyUGR9RpMH80uHVZa48RSjZP86TQ78BdSW3Wzir35zlyLQWk
	k074aj0y2XGjgbuNE1fFwFpW8/rosQ1wr1He6mrnnrFxW3NdIpNhutiR
X-Gm-Gg: ATEYQzyT8aCguV7QGqlHefZZEyTK6l95m6+6bgsrgQeolxtCM2aBUs/UKh4E+m+pw3d
	OwbqPldkMEbsvRULBm6dfo+536tADoWUsEi4oMWHK3LmAIuw5D6EFe4W+EGuRcaKxWv98fn9/bZ
	2/GQUlkoqHcSwCVhAZ/VhnY5kajd0A1tESHFIM8HNRE93ZfhGFcSXnRpuLpO0LSMKUTTcwBRkol
	wpfeoSVa7ZAiB2JaBV2fDl8aus03ejd1xNc49vBRodmYyFj+ef818R2YbtAbC/vaKwvxUX6TFHl
	hsXiFZzE5lZj/K9uGaA/AVVo110YQFH4hsQXPbwzX1GUbU6CMJwuiTLpru+mUJB6v0XZchYmrTa
	MdAudb1LtNNVTT583CSqAeDMSaQlRl6ro+zjmmsEaI66dw2VjVKlcLU5edT6e/y35wTJv3ehXo2
	HUSp3aGkSewHYfOlCumaQhzoJV/fc=
X-Received: by 2002:a05:600c:5308:b0:483:c490:8c0 with SMTP id 5b1f17b1804b1-483c9bdb6d6mr93362665e9.11.1772278107808;
        Sat, 28 Feb 2026 03:28:27 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd702e7bsm310980275e9.5.2026.02.28.03.28.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 03:28:27 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Douglas Anderson <dianders@chromium.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] drm/bridge: dw-hdmi-qp: fix multi-channel audio output
Date: Sat, 28 Feb 2026 11:28:22 +0000
Message-ID: <20260228112822.4056354-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260228_032830_639653_F64DEB8C 
X-CRM114-Status: GOOD (  11.47  )
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

From: Jonas Karlman <jonas@kwiboo.se>

Channel Allocation (PB4) and Level Shift Information (PB5) are
configured with values from PB1 and PB2 due to the wrong offset
being used. This results in missing audio channels or incorrect
speaker placement when playing multi-channel audio.

Use the correct offset to fix multi-channel audio output.

Fixes: fd0141d1a8a2 ("drm/bridge: synopsys: Add audio support for dw-hdmi-qp")
Reported-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v2:
- Add my SoB as requested in v1 [0]
- Add Cristians review
[0] https://patchwork.kernel.org/project/dri-devel/patch/20251206072718.2039874-1-christianshewitt@gmail.com/

 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
index ab7fed6214e0..facfb7526928 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
@@ -848,7 +848,7 @@ static int dw_hdmi_qp_config_audio_infoframe(struct dw_hdmi_qp *hdmi,
 
 	regmap_bulk_write(hdmi->regm, PKT_AUDI_CONTENTS0, &header_bytes, 1);
 	regmap_bulk_write(hdmi->regm, PKT_AUDI_CONTENTS1, &buffer[3], 1);
-	regmap_bulk_write(hdmi->regm, PKT_AUDI_CONTENTS2, &buffer[4], 1);
+	regmap_bulk_write(hdmi->regm, PKT_AUDI_CONTENTS2, &buffer[7], 1);
 
 	/* Enable ACR, AUDI, AMD */
 	dw_hdmi_qp_mod(hdmi,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
