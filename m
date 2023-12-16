Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 307DCC46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bi/ZjnFAPFhpu+KXHm2bAbWVNt+Zh1xXEI3LxuQkRP4=; b=gK003BAWyLBft5
	qSTTKReryooQanu9vZequw1SzpR0dwW66qCf0/tnMdB/gB9LptXMvkAhO9FrMJ68Vh1/Ti6JQC1IX
	ehH1S7qlsx3ic18hAl0b6+pgrASNr6kS/nN9c/an+1rrfHUJtW1v79heXzp9UeJk5+78BhV1uT/aJ
	lbP6mWz+Ewi0+nEsy7EdfFlBzTIAhyyD1qXEGEcIXEsIyQLZUGn+GTQ4Duc1ZeAAF4AqKjw+jO8fy
	8o9FOCKWfWZwqWbu8mLBusAz2EoqKI6ElqcKD0YQGYNEIndcbeyCe8Xi+xx4VKhY5d9zj6+oZwV2L
	Yc9uysuySADtIoEQkZrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXW1-006KPJ-0t;
	Sat, 16 Dec 2023 16:27:49 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVT-006JpJ-2y;
	Sat, 16 Dec 2023 16:27:17 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a2331caab22so26555366b.3;
        Sat, 16 Dec 2023 08:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744032; x=1703348832; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4O+Q+uG5M/KTzI1PKwCAfiw017Nj6I11OqkfEb5dgI8=;
        b=aqOtE6mqltB64IJ769T9WgxvGecmkFXm1qAoKGO7l9QXfF73JZcHs/jvwsN6yEa8Q6
         1tOS4/c1Ty1jr2va1DgRcf4geTZ7xlG4Ss8pVRWNXci/DOQBeaNAfThtfkLkuCqoHV7A
         LqkOTIm8C9lNIv/tvccgK7qGbHjJ5d89mzIoJRCIJA/9yC0oSWRADO69djt7nBsIIaTs
         UCZsKR84rYwGkqK1IZ9WYpv21IwRf8A7jbXYdNkmKcGCZmYj2eHh4k90XtEw+HdWXKhj
         fj70VOfrs9UIqMbuNu/zh6FLlv66EKyxBaKdLsvjZRcoQmldWZU+LR88skwxKMS1x69l
         Xghw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744032; x=1703348832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4O+Q+uG5M/KTzI1PKwCAfiw017Nj6I11OqkfEb5dgI8=;
        b=qraddvPxkRRLahS5C4IpPtKXmThJjRINshvhcFCA5wPYJCWTRaI1zgMZNVylbxOfPL
         Zf5HKdR7ywhwzGkpWiYbO8PvjcTE34gEFaLsnfdEwx1La3xL8Q0IEnvhT27+jY4pBfCA
         KH3iddRXuCn9SPpkEanbLoXaEiqaWBzJz4qF6EIVdIwijqc294jUPau4tjnWmRQo+Hlp
         g2n774GNBIK/5/YCOu2bH/JXcMVBhsG/HkDB9uJkmjfVCl46kZrVvBo5hlUSH7Wp7pli
         i+JXYXFBcUl3rfV2CUdn5HtVSRvb3/HBSoaFaT16LMrtQVaWVZ2n9jRUnHpxuzBQmc4c
         v21g==
X-Gm-Message-State: AOJu0YywHDGVaitjFpcHetS8BqIEK1jvkbycaE1FxkXBFEOLatp4m9rY
	8QNkSn/HckR0zwHXMLGf6g==
X-Google-Smtp-Source: AGHT+IFyQOJtDkKfP/aGpoVbX9uCAPLdCE/IT1cjuph553xK4Po40z2xou+CG3MWlJoPZyeCd1bl/w==
X-Received: by 2002:a17:906:d4:b0:a0a:f739:ad6e with SMTP id 20-20020a17090600d400b00a0af739ad6emr5182343eji.31.1702744032054;
        Sat, 16 Dec 2023 08:27:12 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.11
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
Subject: [PATCH v2 09/27] drm/rockchip: inno_hdmi: Remove unneeded has audio flag
Date: Sat, 16 Dec 2023 17:26:20 +0100
Message-ID: <20231216162639.125215-10-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082716_011254_F5951C79 
X-CRM114-Status: GOOD (  11.49  )
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

The sink_has_audio flag is not used anywhere in the driver so let's get
rid of it. It's redundant with drm_display_info.has_audio anyway.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index d99896f1a73a..58aff7a9c09a 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -28,7 +28,6 @@
 #include "inno_hdmi.h"
 
 struct hdmi_data_info {
-	bool sink_has_audio;
 	unsigned int enc_in_format;
 	unsigned int enc_out_format;
 	unsigned int colorimetry;
@@ -554,7 +553,6 @@ static int inno_hdmi_connector_get_modes(struct drm_connector *connector)
 
 	edid = drm_get_edid(connector, hdmi->ddc);
 	if (edid) {
-		hdmi->hdmi_data.sink_has_audio = drm_detect_monitor_audio(edid);
 		drm_connector_update_edid_property(connector, edid);
 		ret = drm_add_edid_modes(connector, edid);
 		kfree(edid);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
