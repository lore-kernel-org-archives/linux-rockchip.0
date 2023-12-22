Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC2BEC4706C
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVuIXJbu8ra0jB0U8i3uStzrjgyJbUzHF6MoTKI7yMk=; b=vAqcSZ9g4pbepX
	Z7Tm+cP91Wj6Xd2ZDjgceiYsfyTUDpeQPFRKGOZmGhZBvmPH+53JE0Qmn1MwWNNdlojx/+HXI0iu5
	f68jEiCilx/bONukqf9eQykhQ9zYXz2oCy44QRy/woBiuJ8bX8nJHHmnEAq/NYlE0s51kCzemxmTP
	Yld2m8Rqe/k3e8VCra37oFdVkFTnbIYKLjGJWIDGc8p3dyJQeZlmLKV5UCY1LSsemTD7/5mgsZp2f
	F1HNWgKPWSsQZmf4PaY1qMLxWcGCrjnxIOMKUYskxWdNrU+XVxk7SBTRyB/rT53lZuXdrJz5CfG8c
	4IdQ+b/zSNq8ZD+ku0BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjYN-006XBY-1e;
	Fri, 22 Dec 2023 17:43:19 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXb-006WLr-2u;
	Fri, 22 Dec 2023 17:42:34 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-33678156e27so1833715f8f.1;
        Fri, 22 Dec 2023 09:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266948; x=1703871748; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/kgyib+/6QRevWIU1dtxLSbx62QPgtFJTlVAtzjG6Is=;
        b=Fx4zxgWKhILDLkOpTNGBw+NWtJNLzNZkX0yNwfeqFhaKjtb7Q2kJWbSNKiBEqs7/GM
         TqY5llcb/Ylo4MP+yJKoOItbXkJIn+8Y6eDsbqF+yE6MJ+yHxf1+wQdVRqgHmk7RdZxA
         Fjh7KSSG7P/1uDNkW/sSCW1jyxydd8uYk2Y4RCM5OTWfcXQFAsLgyykC/xupXmXr57V9
         0KbldrWXvi6OwDGbYKhlojw1QqCQjZ8ChffydwJmxRokxuIycnjpZN5RD/6f1dQBpmzv
         DLpQx35/pYHBFljBJAns5yfs7SqgK3iyGpRC69mnfe5lQ/ut3QALECGc8PU1UZJ9pDwT
         Wvug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266948; x=1703871748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/kgyib+/6QRevWIU1dtxLSbx62QPgtFJTlVAtzjG6Is=;
        b=Kx0TnpRplJuxNzoKd21I+XW6NlgHeFahhylERK/AuaYwGTW8NiBRn4NFm5pr4Kgbb3
         6BRmjz7GlPxI6yiwYQgSeTflbGYlaG7kJyWmyzhoWroPsgKVcQCfms07flq3Z3Z+FBmx
         OSxTn9Wih2sMgTgTE1yVIJazckTmrU6sR8j7G1tm50NBPX3kL85q904ZQ+F3nXj0yPon
         0YqMLpYCPAokgaePHrj5T2KwLCp/WcNaGMXkga52tVGmkNw7Sb3GoNI8f6iYPJRswLyE
         lRHyiv7oEeebNZCMcLjIYt10udrAi293wTb7bkKlu7QAjvpBoVSngXZzu8a8lm6FTwKs
         zSsw==
X-Gm-Message-State: AOJu0YwMFlULlREGorW3jaiY2aL8x6Om24oMViJq+Ix0Rut570bCjLnd
	KNYORBKx4X06FvR5gRl7DQ==
X-Google-Smtp-Source: AGHT+IEt/69sUBqxWe1PRE1w6MCXmB6NT4MwzHjZjfhAIB1uVmcCKnZlBEfqCpNWf7fYGOh8JR0yEw==
X-Received: by 2002:adf:e911:0:b0:336:4bfe:5ab2 with SMTP id f17-20020adfe911000000b003364bfe5ab2mr864375wrm.8.1703266948004;
        Fri, 22 Dec 2023 09:42:28 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:27 -0800 (PST)
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
Subject: [PATCH v4 08/29] drm/rockchip: inno_hdmi: no need to store vic
Date: Fri, 22 Dec 2023 18:41:59 +0100
Message-ID: <20231222174220.55249-9-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094231_941798_575F6B0B 
X-CRM114-Status: GOOD (  12.82  )
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

changes in v4:
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
