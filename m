Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA1DCC46CA2
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gi3RLcSco/SaRvqGpZk6Tp8uA9SalAdAQxsShrwB1ig=; b=lOZAE1fo8hhs2D
	oUUOzKmTM1EHONN5l1sT53B2ratrrYQLKDCDaHkujrdjfhCGolfNIGRxl4GfMhW6DGFncUguF435f
	wbLKQoy0wUmEJw0mreRvSR9QBc14gTaNsoO1IhyIh4Ajs64nq5los+P/NxuqHHQC74TwqHr63bFkX
	zsV9issSGsqGg8I/EK9L3hSoXzWp48On0/ncD+7h0IMxkko1Bb2AyRmtjLVHREbNvBxj9lZZz4XNX
	qfnEKNsHelZaNVqJWC1WvXrbNJaIKYQV1ZsgT9nNgy+eWIg2u5kB5guP9RWQN5keg072TuWb2QT9O
	JXO/Xwnr2LrPfOgWF5ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVw-006KLR-18;
	Sat, 16 Dec 2023 16:27:44 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVS-006JoJ-0L;
	Sat, 16 Dec 2023 16:27:16 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a22f59c6ae6so214831466b.1;
        Sat, 16 Dec 2023 08:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744031; x=1703348831; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xnlt5lgm9qwa/3Pu0kcziAAeIBysCmQzwYaw/MNqgTo=;
        b=cOabJcOssXD4ARdTWwDKypEn4Z8QiWe/4MvzMr9wPKaTUGXgO+J7GoCUdgdW2KS7Cm
         v+JKZ+Ul6VVnRT6yAdU74cWJRXSJx5A+GXUI/vcpSzv78XB+QDIkMNhHRIImEikCANWN
         2/tvv+qwISV8wD/DGdNw0bHlIp8p33x/oQ93GVv4QqB1dGjSIWWIhhNx5YJA6UoZlgx7
         9WliXso8Bk7NNxr/279qrWf6Cb0HRpZggolznfswdaBGszXJVbNeGJZ0Pm9vtLhu30BL
         zm6ln+QzvakFcspXfWFM7990yMJ/L2uy/nSoWDOMT3MyOjMF/26AcRqs/gjZlaSsyXO7
         n4IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744031; x=1703348831;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xnlt5lgm9qwa/3Pu0kcziAAeIBysCmQzwYaw/MNqgTo=;
        b=A/a0hbBiltYQxJQfqW8ry62DVgqywkl0049RIxFX0TuM8U0XIdcdubjUZC9J9M4dME
         QFc/jRYSiAHBa/gt9/T+WGlmHiHAdk+D2bm1jwWF5gpmnrNNA5gi00zTA1R60Qu8Lpm0
         IcIlgftQbpq5+e8eMq7dZMcb79Fe0qYuF4Xip1nWERj6HU81d7lyDzVmxEXc0rVoNKtn
         s5gu6m58TgzXGnmaG1BPlAb2+hFz1Rh85MxxybXtNOLlbrTi4+sJ2GQcuKB8DpuqeqA6
         WR58Uu+iE6F3Ii1GARLSuNME4kfGaNI1vT21sXLyPgvYJYoJCtXICFZm6h+v/ICjvwDF
         QJiA==
X-Gm-Message-State: AOJu0Ywu/E00ZvU2Ne78qK0oggoaBJljeSTBoDIyZlYaXGKfeDo+7JFH
	5ilqLaPM0CfDC084V4Xhgg==
X-Google-Smtp-Source: AGHT+IFv2/zw0ooG1yd0ojMj7vmNs6hU7B/IUbAwB2DH7Qa5Ghq8j9jjVMSVxr66g2NaXt7MFLjh6w==
X-Received: by 2002:a17:907:3da9:b0:a1c:898e:6a0c with SMTP id he41-20020a1709073da900b00a1c898e6a0cmr3708081ejc.210.1702744031312;
        Sat, 16 Dec 2023 08:27:11 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:11 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 08/27] drm/rockchip: inno_hdmi: no need to store vic
Date: Sat, 16 Dec 2023 17:26:19 +0100
Message-ID: <20231216162639.125215-9-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082714_196956_5E4F992B 
X-CRM114-Status: GOOD (  12.49  )
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

From: Maxime Ripard <mripard@kernel.org>

The mode's VIC is only ever used in the inno_hdmi_setup() function so
there's no need to store it in the main structure.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
[made checkpatch happy]
Signed-off-by: Alex Bee <knaerzche@gmail.com>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 299770e481b7..d99896f1a73a 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -28,7 +28,6 @@
 #include "inno_hdmi.h"
 
 struct hdmi_data_info {
-	int vic;
 	bool sink_has_audio;
 	unsigned int enc_in_format;
 	unsigned int enc_out_format;
@@ -443,16 +442,15 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 			   struct drm_display_mode *mode)
 {
 	struct drm_display_info *display = &hdmi->connector.display_info;
-
-	hdmi->hdmi_data.vic = drm_match_cea_mode(mode);
+	u8 vic = drm_match_cea_mode(mode);
 
 	hdmi->hdmi_data.enc_in_format = HDMI_COLORSPACE_RGB;
 	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;
 
-	if ((hdmi->hdmi_data.vic == 6) || (hdmi->hdmi_data.vic == 7) ||
-	    (hdmi->hdmi_data.vic == 21) || (hdmi->hdmi_data.vic == 22) ||
-	    (hdmi->hdmi_data.vic == 2) || (hdmi->hdmi_data.vic == 3) ||
-	    (hdmi->hdmi_data.vic == 17) || (hdmi->hdmi_data.vic == 18))
+	if (vic == 6 || vic == 7 ||
+	    vic == 21 || vic == 22 ||
+	    vic == 2 || vic == 3 ||
+	    vic == 17 || vic == 18)
 		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
 	else
 		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
