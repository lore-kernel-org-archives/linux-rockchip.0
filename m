Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39737C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYEeifofNPWYOxePo+yZ6jWK+IbW3h6Rfeq0aqfBD4I=; b=CJDrOhQABbhM91
	uu0XFd+wZ48CYpscx6lpHSpgsMoLTVKYDpSn3zql2jIn5KutP92UbCjLiGk9Bqj2BqWRxUK2kpRtk
	bSyqdjv5a5+/LzlGKmmSrSrNinWoqp6uhaPf8c28fv+alm0VOqzckC5TrUz1m/O7t5yJsHdbwU2y9
	OV2xeY/+qtaIKITyCpbyyHpBzMkfhi6uPpjE9AE5fEx/VubrB5jvui31jo7+rCujcU9R1GAaVPCBm
	/XDzR5CyIVL5+SpJU5Z0pmSvGJXV4fYqrxO2pAHjXF7J70UUXnQleyN9kNEVgoU4me4MjjqAhv4fs
	F0439yYDEisd89bnDGqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXs-006Wex-0I;
	Fri, 22 Dec 2023 17:42:48 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXX-006WKt-0h;
	Fri, 22 Dec 2023 17:42:28 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-32f8441dfb5so1845360f8f.0;
        Fri, 22 Dec 2023 09:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266946; x=1703871746; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JDZw6NA00pLIWCPFGMihyx1IVwowkY8XOiwDd7TasQE=;
        b=a3TjqSXfSNPl+Nb3gnAmfCaieiJB97FJQlwtW0qtujWt2vOOKCR0Sd5+ih2Tsif5vm
         u/U/5R+oKSyNpW2nfVrN0kA6qmm2J78aJb6kJUQEupvreI/2wCeWFpSHyikEbqvTkU8g
         iPrJXk36Nx0NFfrKsxY2PbqwK9sKaRk7lSLfKRp/j3cvZb4PpL0ywzfKXbR5oaIYMCEs
         nsmP31MPBwpuKfu9VLZbeQvQTE4pw2aa3Hnhw86TyunB5yMGyzi0BPIiTHZdbZxyA/Uf
         ZtKbZrxDZrCdgITG0hInPrAlcOsi54a6936YeiYPeY3O3sY4CVor0XDqW5EdGgbyXEsJ
         jFzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266946; x=1703871746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JDZw6NA00pLIWCPFGMihyx1IVwowkY8XOiwDd7TasQE=;
        b=Xy/Yb9hcCpNqiaMwzxj7ZMxgVPa6SMeF7wivkmwimUoUeOC9ReixSH3LZ20gkUb2aB
         BzdyEnHZtamHRwohDm9onZl+Ur2SLTkBhzZMwn6SnMA0+fwqIvsFgHa1J5ES6bPZXjng
         iLKA5vF2OHAvE3oLSJxdDa43r2BqhrIiZ//Wmp+4UuPWSLWR2eejvtGp+zwoef+he4zl
         yzaB8guKRqslMB5i08yzqzfvYaCJouLCtsuVf7lGgyxCfdugF5xSYV0JK8+dyNuZbDrk
         ZI2/aESn7T426eJDks00ltS2xFsJ6Ni7oCdMpMB61U00Niw/7ub8IbmYI8MG8cC6ALPX
         cuGw==
X-Gm-Message-State: AOJu0Ywf/eCB+BLMKbfHoZlgKs48iaXD/8kUPZsVBo4P0NuOrKfQRNIk
	aCULEqI5h4yIMrqVSBGGdQ==
X-Google-Smtp-Source: AGHT+IGOfU9ODiH9NLfSXETtkHv9WTh+X98b43SlP0OW8MLrcFPW+Mc6NKBN1yINEst4gkgEd8TDVw==
X-Received: by 2002:a5d:58c1:0:b0:336:48fd:3458 with SMTP id o1-20020a5d58c1000000b0033648fd3458mr1123123wrf.68.1703266945929;
        Fri, 22 Dec 2023 09:42:25 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:25 -0800 (PST)
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
Subject: [PATCH v4 05/29] drm/rockchip: inno_hdmi: Remove useless copy of drm_display_mode
Date: Fri, 22 Dec 2023 18:41:56 +0100
Message-ID: <20231222174220.55249-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094227_264147_0C2EAFA3 
X-CRM114-Status: GOOD (  12.06  )
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

The driver maintains a copy of the adjusted mode but doesn't use it
anywhere. Remove it.

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

 drivers/gpu/drm/rockchip/inno_hdmi.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 0b1740b38c7b..14d2ba92a606 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -62,7 +62,6 @@ struct inno_hdmi {
 	unsigned int tmds_rate;
 
 	struct hdmi_data_info	hdmi_data;
-	struct drm_display_mode previous_mode;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -498,9 +497,6 @@ static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_setup(hdmi, adj_mode);
-
-	/* Store the display mode for plugin/DPMS poweron events */
-	drm_mode_copy(&hdmi->previous_mode, adj_mode);
 }
 
 static void inno_hdmi_encoder_enable(struct drm_encoder *encoder)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
