Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84F56C4706C
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1H6hLryv3e9X+9HN9zE6RyxwjD3fApXba49Lni8i7s=; b=sQf/prsa8ZpWok
	RmaXaKAuHc3KXqoJpojvsyVOEDxDTvy6xtAlMHb1QwDWQHAxXJg47iQd9pcSjM9QETDWu9SghtPRv
	hYCmuHdwAxmMOh6PTdEj8nHaaTTZY+M+YzhmCOsw89h7gpaFjsWhCA5mmTsvMdB4wQOV1xu0j9UPZ
	m6YL0gaGIEz4NXSOSxS8GFv81XXrbC07mDp61QAvI/vupZBb7Zxrqxv0KhOWf4v94YfBzE0PXK7Ty
	4USMysK5D+m5i5UXr4TFeKCnqLpzDBT6IGDVIkscXc1C0FX+2oHUF84IjiRV6d3nPcvm0Mh7A9v0A
	Wgpovd/ifKmXHdawlB8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjYM-006XAL-17;
	Fri, 22 Dec 2023 17:43:18 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXb-006WMp-0p;
	Fri, 22 Dec 2023 17:42:32 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3368ac0f74dso1459800f8f.0;
        Fri, 22 Dec 2023 09:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266949; x=1703871749; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=soAjE8acoLO25uetbn7sq4B8XVGjHmzUhDkeJCVuw6s=;
        b=H/FdYEdduIp1mcWdzC0JSiuHb9/Oki/LLcH/NAdutYrrMdxibGBAt+rp/I9yEYUhvg
         /a2+wRqFOZaE5PmMo+z8GgNdm02FJP5dEgrgle8Jwni+8bGsHoob7FSvun3bTD/kgxM4
         ZQ+O9ovoyQMIV1lXY/uhS2aiZ2HiokUJX3j6PPxipffnYiuYbM/R/RVc5fq0U1sOmVxK
         0LWhnGePxaA7BZQ/ifwaS/m9aqSIRxlJo+899wadSzvannm9IraOdfJ/25NpM0JT8fXU
         Hv8TUW2Q0FhQJL1Pou5wCXPYR+h20hURX9Vr0tw2k9IrcpbvtmR7PyvBnSGzUdXdcXdl
         86wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266949; x=1703871749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=soAjE8acoLO25uetbn7sq4B8XVGjHmzUhDkeJCVuw6s=;
        b=F70hkRV17crguT36NzSnvEge3W0bvDjZE3zIl/fkE3GMFrfAMtk4Ir/Ct4I+oPAJz3
         DfBzV95/cvjOQk5BzUxL/68ooDE4kdI2Ephd7VHGYdYfZMITAhi2ZjLl8010BuE2QB7n
         VM2JbMPZfH8gtT8+Q9rCM2LreLtfNEe/ieWyoIrxffIZtJ06xMoXTngkVpE8cBP0FcZ3
         yEaCtsz4Da0ZcgyrMlYHANMbSAHLgImWUQVKZ9ikTdFHvBMrC9CNnqCCkqAS53sFJXd/
         Z6FvORw5VVaEOcT28ZdCrR/z36xtY1Q9n1mtiQXYOm8mwRAKkfl3zsSkhjgmzMcTszjD
         AyDg==
X-Gm-Message-State: AOJu0YzLihviE3UAYJr6agxye/8fLcTWDU2Fx89TOqQ7FslwDfTzuhwN
	zbwMggnfzZOSrv/KefXg8g==
X-Google-Smtp-Source: AGHT+IHah4jnfoc/iQDiaH04TqQnyPss1cyXKoR1c4+dSrS+PxFbwT+bgS5fPTlfRhKEEGTVhCzfJw==
X-Received: by 2002:adf:8b1d:0:b0:336:6e32:3fe3 with SMTP id n29-20020adf8b1d000000b003366e323fe3mr1295901wra.54.1703266948656;
        Fri, 22 Dec 2023 09:42:28 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:28 -0800 (PST)
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
Subject: [PATCH v4 09/29] drm/rockchip: inno_hdmi: Remove unneeded has audio flag
Date: Fri, 22 Dec 2023 18:42:00 +0100
Message-ID: <20231222174220.55249-10-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094231_294697_E93EB5CD 
X-CRM114-Status: GOOD (  11.67  )
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
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - added my SoB

changes in v4:
 - none

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
