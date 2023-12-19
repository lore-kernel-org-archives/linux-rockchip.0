Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD5D8C46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryv58UrnOwUExcNdGYSYEGXevtoMYdtrXjx9BKlLhTA=; b=kE6SJCxib+zDxS
	SuTAKuM9cB4PazTqaE01bOFDvSby17WdloU8lwsXlcHSC4WaCLpT4NVO0EsyIWQb8gls90Q61tOk+
	XajzpCokxaCnMtL2GCBF51wKWi/kn9/50URNnjlXPUlHurPphTMT/1QroZmJ8g3Z0YaMgF+EbmWHH
	CjRoAgwKx2kqtApDrLRm8gBMcm7py5NAdAX5bWLfsgEkIZx6nWYnTS/0F8c9xiuo+nH4N05NbE50v
	GgqfngzoaIKAnLBz7vhmiuxdM17yQoZsyclkEtCGQDj23Bw0DAvgGNFXOnDeFChzyTHv+kXABYK7C
	0FoHWWyiIb5VVICtmkGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTZ-00EoZ9-36;
	Tue, 19 Dec 2023 17:01:49 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT2-00Eo2T-0d;
	Tue, 19 Dec 2023 17:01:18 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40c39e936b4so54777885e9.1;
        Tue, 19 Dec 2023 09:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005275; x=1703610075; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VvJhWTUaZ1kAS2FjYOCcewK/+2L6xqjKsMInEMuEacc=;
        b=cP+urzIA+tiJljZUtAbkMXoLm0/Tts5beGTQKYcSRw0iTxi6a5PsNcpiI4TN0AInup
         egngGK/6Ot6rI3MMKBaQErilJmSQSVbZVTJ0Em2kC2oIDvF0Al6oyJ5nECz3OBCkUI0T
         iKJltdH6LDw4wO7GqzP3uPDcr+96aRtIC9lMkP2+TSEfHYB4noTh4zl8OPs/q42h0oka
         ORVojZco/vyfq7iNGRFTuoBIxlg4ypDQllIBkxrnenPSPOuCcEqh4VOPN0xt4G8u3eby
         QZIwQIZn1kFSgu6liHM5G8zCxWH/GuozqZcSoPhUItZeC3UUWtmlxL5SaN9k3A0pJqx8
         hGrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005275; x=1703610075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VvJhWTUaZ1kAS2FjYOCcewK/+2L6xqjKsMInEMuEacc=;
        b=rVED95uLVARL9aKuEkM1V2Gn9vHOywkTycGkgkQ40CUGzq9Mp9/nWsRVioD8d658kU
         038moOMRXar5vE1ZjWsvBmPYFR5OUBhvh0VA2+dThgXOyl3UK2oUTzH2sMLTsxbm+Lwv
         WBurQTZaujhxICl7xd0hF0RiR5St/YZJOTAAX3m2wHVmKxHT4R6NWluP4HvqJMys4N4f
         epiuIjhDHjBBT/KITcTOyvblfAsEY4QCEk4FIqgfRiZw04f+Pyo3J4A8+djny/5l8Fwo
         Olec3GSuPz2pIzVULoFCgEtz7WhsJbsC6RGsS0hj3cPjEnJs7sE8uKrPra0+GaM53Oo3
         bptg==
X-Gm-Message-State: AOJu0YxNdQJwnQcgiFcEWHod2pBfW5rmpSKbhK1uKl0yFgirCBgUdU7x
	PrTrPwHIB6vGMKoHrQkR/A==
X-Google-Smtp-Source: AGHT+IGSTG2bZEzpSu8nSWJckWftmgfOLD5ECMR1O8HR3EFeEhnatTb8aS+6tL1yBM93D+staL9K0w==
X-Received: by 2002:a7b:ce8f:0:b0:40c:2205:e5f6 with SMTP id q15-20020a7bce8f000000b0040c2205e5f6mr5185131wmj.293.1703005274526;
        Tue, 19 Dec 2023 09:01:14 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:14 -0800 (PST)
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
Subject: [PATCH v3 08/29] drm/rockchip: inno_hdmi: no need to store vic
Date: Tue, 19 Dec 2023 18:00:38 +0100
Message-ID: <20231219170100.188800-9-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090116_273405_20DB8354 
X-CRM114-Status: GOOD (  13.19  )
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
Tested-by: Alex Bee <knaerzche@gmail.com>
[made checkpatch happy]
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - none

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
