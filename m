Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FC91C25B4F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 19:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqVUihMrJXNn97rc7/gML4t3C/AdsxwuqU1z5uuoev0=; b=k1r7gLzHQ/dbN0
	bgfaTyFtO39E6ucVBinosNdHrysMSonTakT2QpCjDvfboEaTuhci2WfDUWnQgxPxcelQ2KZ1aQE9r
	+u7PPorIaonaXs4QxVeCiCr7BJ797S0GRgOgXzYNtJEWXk4X3dt0SQ96tGFuBD/c8WuktLoXGW09O
	uw6sxfBY+WqKzQ4DHjBgGWCSDpNX6+lRoq0lWKxa/higrLiI0u2jcPWBH+NmOrPYFlFENxmoYruhK
	XJcFSUTO/8VFKlNYQKQR92F8Oo9kRHI0/UQ5A3ENiu6enngr2ZuffwPll253u0VsnbW8pHJFOhIO1
	lku6N/CQ237fyaQTseGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fr-00000008YDU-2g5q;
	Mon, 06 May 2024 19:44:07 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fm-00000008Y95-0DEZ;
	Mon, 06 May 2024 19:44:03 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-51f1bf83f06so2789645e87.1;
        Mon, 06 May 2024 12:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715024639; x=1715629439; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hiy2vL57H3KzFyuIeojalhw0sromROUcEPl800VpgDs=;
        b=Rrder2MuI52lWOtoYr+73a8g7wKFHIMHA6GVzdgscT3ZZsdcphPvMVTRRaaqUm+mDD
         uQNfXvHaLBW/TUvNBl5Jim2MbybFD8iGbmnWpudZyXZYIsNFIPqMQD2HEfnRvwM7A+pw
         SLxQKCa5joji4HibU0O48JpNDwibHiwdKUIh3gTRNpPqkt84LRQYfjCu7byG7+DH9H8C
         8fd5gJ1RGWEvN9L808BQ6TNOMzTgrvUB84U3s/4DSMF5o+kYN7jRJAHKXw2sIWrNUgZl
         OYo6J198N+GwmMEayl7F0vGu1virQYGWgudhnm2kZAwpmlwDfW8am1LT0V6gB9W0VNz+
         UaQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715024639; x=1715629439;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hiy2vL57H3KzFyuIeojalhw0sromROUcEPl800VpgDs=;
        b=QPoUTdzICsTM6jYEwU7AsG/fEmZWvmI7CGbeAREOsGKId+257aQE4RXjQuUrcyhbPv
         uGBL53CvZNnvgoTZiOwBVDMVM4svWum93VpMgG9Bmm17+7fbLUbpfXPuZ/nq/BF0K+ED
         /wPjuaFHHjW1OuO4ecyD9ANzx3lxj1EADLDPEipJ8cqwOvOxxzI1bUaCaZTeseR//Ueo
         Mbg0If75wWnTQf4V9C9Jz9TDJukh4t4CHEcvJV7yuzGsIEbQWHRXeuKcxyt3kCAX2CDH
         +iSP4Ng4rkSYniRBiCGFcayvftvVTEEblXp8iIuX8aBWz/4lN8JK9w48sBJelyG86FAY
         ghoA==
X-Forwarded-Encrypted: i=1; AJvYcCWoBb5eSg22roDNULr6kXks+xMsIRgm3tYaYiRnsDMvfYJESzD9iSKcnzST8iycMchR2qm35UfCgPScYTZJXwMSNCSxTPYugmAUl+Q1niwoU47RoilhHXSKvX4dxdtvWTG/zWsrb/7PNVTlFEvtaT48pkuQsLXj1Xo=
X-Gm-Message-State: AOJu0Yw+1TocJ9VUPj/57P8hR3Tj60QMeNaRpEmMeSXa8Wu1Lh562ePW
	10+357wtfOC0ZxMReXG0MJDMrI1Abr2g+ucvxLpALhmO7IUN/Fk=
X-Google-Smtp-Source: AGHT+IE3JAd8h4TS07pAYS2PxovxmJduheJelK1ti9csXaOuNGCuxVp7c/O9qhjmBPiNhSTXCswuGQ==
X-Received: by 2002:a05:6512:2090:b0:515:9abe:6c46 with SMTP id t16-20020a056512209000b005159abe6c46mr6362105lfr.34.1715024638800;
        Mon, 06 May 2024 12:43:58 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1c62:e77:6753:5729])
        by smtp.gmail.com with ESMTPSA id f13-20020a1709067f8d00b00a59d146f034sm1367321ejr.132.2024.05.06.12.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 12:43:58 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 1/7] dt-bindings: display: rockchip,dw-mipi-dsi: Document RK3128 DSI
Date: Mon,  6 May 2024 21:43:36 +0200
Message-ID: <20240506194343.282119-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506194343.282119-1-knaerzche@gmail.com>
References: <20240506194343.282119-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_124402_110291_AAE453C1 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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

Document the MIPI DSI controller for Rockchip RK3128. The integration is
similar to PX30 so it's bindings-constraints can be re-used.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 .../bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
index ccf79e738fa1..ccd71c5324af 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -15,6 +15,7 @@ properties:
     items:
       - enum:
           - rockchip,px30-mipi-dsi
+          - rockchip,rk3128-mipi-dsi
           - rockchip,rk3288-mipi-dsi
           - rockchip,rk3399-mipi-dsi
           - rockchip,rk3568-mipi-dsi
@@ -77,6 +78,7 @@ allOf:
           contains:
             enum:
               - rockchip,px30-mipi-dsi
+              - rockchip,rk3128-mipi-dsi
               - rockchip,rk3568-mipi-dsi
               - rockchip,rv1126-mipi-dsi
 
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
