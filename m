Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20D94C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6StAt5vNrOFpTQltHa2LAq9IQKGngaVzIEd9/yjTfb8=; b=tYREKaGYytrRcs
	D8Vn9qZhkBoKQ3nZRDAWn8VTS9jNadGB4y5tY5Jk5pDr2AGmmZB+S5d8tlilxcwglIKqF5N4RsXq3
	hnXe6zApkMTq/JnwpX3Eo+yyRJl9KELXCP1nqDaD1rXorra2vkoBWpBRxtFnvhoDqLpKa2Z24ILbO
	jieYqWiFOe786AQRgkk/0H50hr8nWHRhFBTE/OOCUdikHScPO605QAHza0ZCc8Oxl2gd3eUloWOK9
	X+/1ycR31lpxIk/fouNj3ZwLyZQdU6x8cqo1Q9y0NYkmi8B8A7kMXzX6btdvk+mcP+kynxZjBlcW7
	bshedd9IYyF0SJthBglA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjaF-006Yqn-1l;
	Fri, 22 Dec 2023 17:45:15 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXl-006WXn-34;
	Fri, 22 Dec 2023 17:42:44 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-336788cb261so1662322f8f.3;
        Fri, 22 Dec 2023 09:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266960; x=1703871760; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=34BUg2B4LjsKRfrLMHkMQRe61oTuxBkBwcQpvuibjEM=;
        b=a8xjYQCiWCKbI+wuPBKSP5q26dRsepRINpSq/JePP3LoxKp+Q6aZwNcvbPSNzYUInj
         u/WKrfIvU6t4nWF07hffDMmRpAj1iIoHKaoMEjg2A0PYGMgcaGeTfSP9pdvqaImUwkRA
         BaHDORVVA+z8mNdABaATxbllYSjpyU9I2LKDgcqi1hdxnnZHHCaXeldoJRlz+4jsdwei
         b/rSlP6dJSNR/wl9TpXeaVya3pa/CrDFSQJC5u/r18xjQgXmz0ChrdGCDlgM7ZXArYJU
         ZA5IrjUggHQPLyYxnu40McQBtC5WFNaF+svRj7Bh8gxtItd0sa+X6gifPB/gxyaFBaf+
         G0LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266960; x=1703871760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=34BUg2B4LjsKRfrLMHkMQRe61oTuxBkBwcQpvuibjEM=;
        b=jwNDV5cMC1IJP8OQsRSXwjmMOR8GyIdANHIZ6qylN4jWPqQmto2PWKee3RyfgVa7zK
         CCnTU4lB9+jIXGb/pysJgzeBn9BpqT76IzFfLHDo+H2arfeAkj1yVnGDCHeLdv0QZk0z
         PRcJeUzerDSwPt5lVq5zqBr7WsqFQyidGzJEB4H9xPJZUCPY7X548IoxMCEyipcNZxhi
         gji0vqw93YoMs3FNyOVMx9rwbg/xZQFbekZbAB0QJPRSYFL4iQYuzEuTDhPEFrb1g8sX
         pijcbAzXnh+nlChHyjKYXbOa1teY6E4Wg3H82f2/m1JzXbwG4M8AUEpi3FeG26p5H7y/
         Qu6Q==
X-Gm-Message-State: AOJu0YwEkJtMSuiRYmga206O1mVETeVSBs2vFSApNZBb7vQkP/830w9G
	7uDZRH1ORQ1pgoFbLilSpg==
X-Google-Smtp-Source: AGHT+IEHhKrxlJJC6hecqKp88hOj5Ill1eBn0UyrmY0K3DyD2qK8+a7I0eGYkTkRAt5FV0hLxk4sUA==
X-Received: by 2002:adf:e7c7:0:b0:336:619f:4647 with SMTP id e7-20020adfe7c7000000b00336619f4647mr905229wrn.108.1703266960737;
        Fri, 22 Dec 2023 09:42:40 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:40 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 26/29] drm/rockchip: inno_hdmi: Drop custom fill_modes hook
Date: Fri, 22 Dec 2023 18:42:17 +0100
Message-ID: <20231222174220.55249-27-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094242_011132_6B26FF1D 
X-CRM114-Status: GOOD (  11.19  )
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

Now that we have proper pixelclock-based mode validation we can drop the
custom fill_modes hook.
CRTC size validation for the display controller has been added with
Commit 8e140cb60270 ("drm/rockchip: vop: limit maximum resolution to
hardware capabilities")

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
---
changes in v2:
 - no changes

changes in v3:
 - collect RB

changes in v4:
 - none

 drivers/gpu/drm/rockchip/inno_hdmi.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index a074451a0c49..d7453c36d37a 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -630,13 +630,6 @@ inno_hdmi_connector_mode_valid(struct drm_connector *connector,
 	return  inno_hdmi_display_mode_valid(hdmi, mode);
 }
 
-static int
-inno_hdmi_probe_single_connector_modes(struct drm_connector *connector,
-				       uint32_t maxX, uint32_t maxY)
-{
-	return drm_helper_probe_single_connector_modes(connector, 1920, 1080);
-}
-
 static void inno_hdmi_connector_destroy(struct drm_connector *connector)
 {
 	drm_connector_unregister(connector);
@@ -695,7 +688,7 @@ inno_hdmi_connector_duplicate_state(struct drm_connector *connector)
 }
 
 static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
-	.fill_modes = inno_hdmi_probe_single_connector_modes,
+	.fill_modes = drm_helper_probe_single_connector_modes,
 	.detect = inno_hdmi_connector_detect,
 	.destroy = inno_hdmi_connector_destroy,
 	.reset = inno_hdmi_connector_reset,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
