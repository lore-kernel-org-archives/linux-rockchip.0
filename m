Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02EB8CA0EED
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 07:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1n/O1/QECuQItFnk2rwX6Kn8s9Bd6fRctFNuytXw7sA=; b=2iheH3lN/p5dJj
	Mses7oe4TjRXjX3ai9ekseEdlzXxKyqpev8fhvdX0Ixp3c6s88YFhHE13dBmJQ4OeVFjR11Pbb3xG
	17Y5PZZub+Br2CiPBC1nPo48OAARwnGzW0Bz6XunpE0S9u70EMhz4KFamvLQAQ294DJk74YDtYX4+
	B7QiahNY58hyP3XZI/W1Q6wSqY34AMjo4otFiGVVbq+S4h0NLOj6wnTRECxi5T1pWQK0WOymhNpBZ
	4n8YeYZinTUBWJWcXxFJ0aXx9uRjJtQl1T1elMh4IooGjmIKJh3JCJWzf86DZ7XJCexaTj8+jtSQ+
	tfcfmOl6T9dIhUPbuw6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uod0v-0000000CZxr-09PA;
	Wed, 20 Aug 2025 07:13:41 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uocqY-0000000CYZx-0lrN
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 07:02:59 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-afcb7a5cff3so112663266b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 00:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755673377; x=1756278177; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ftElaWDs76SxbU5UXNsnZBygKAXPkr+qMloZ0Jeef7M=;
        b=i4PHMyDXcXJhB+Iv3EsWiIntSCsvDqA5KV7Xd0UgEV52+YR56eKaz041ulgwUyUTW4
         aBVy+MQOFD+wv0Gd8/UNEMm3Ue7qLhhYdOB19OqV6AljRopR/1MB1Mbov7oQU85UUm/Y
         eye4Mq5NsD4x7UD0zO7qVo7Y7lSmLdYbNuFe6NQgVs63OmVkTFUWfN9grJkBh1PWEdvu
         /QRQG1ZkHHZvKTYW8acoocigVGjrRhZ5TOMJR+mkZz4YJ38KhQEGm6v76UM3qioscE9s
         4GdUMCvOLIVQRvhGJ1w+2l7Rr/6dkfCVyQgADdNshF5qfnIJkfm1Y7TZQUycn2k1k+vx
         qTuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755673377; x=1756278177;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ftElaWDs76SxbU5UXNsnZBygKAXPkr+qMloZ0Jeef7M=;
        b=alz5i4yFpX5aRGrz3P4pZKlTYj9kFbv8rV+g8mp39LlHTJtvK8es1h54j94Dexx5g5
         O57GW2VXDFqz0T6cfiuClew/zl+Dm4GVGu37nFzCie42SNAsnrhX/BKXx6wX3oSn/+xI
         iLnbqhdkdS1he5Xgu2mR97Ivy+SysmfHaSjH6Yg+dueJJntSqJwukDqOQXI8RMjEFFO1
         hdy5pMyjX5gwxiFDQCnBQVk94unRxhsDMAU7yFnu4MxSjQd9gKDTTlZeyGsycDQpUQoZ
         mV1Nr90qB6/Jt4SzVil6xbP8GKnl4R1GzrBSlRIOP2YHhcYH4FYqUh7XjUXK6QP16xs2
         h4IQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRXQAhJpP7g2OHRSaP+LAD5u/T8lo5iFCOfjmHNdvvVWG7Yb74LR6TNUVWlcddqGgp8EvWF0rxeQ1xKF39Pw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzWaVFLQs3F2ZoOKeTnPCPrDAleHzlMGi3lf8B3IJXFh2Iz7Tw6
	POIIcSz9ABBwzVLOt1fK4xSmo4IOymeCYXsvIDQLdKL8MihOtcW48WJB1dKG537R2ctIv+wNMfL
	PQOf/
X-Gm-Gg: ASbGnctGtbUnUJICP7beJG3IYQC3gxBudOHENUPtW44S9hQMlVsBPQ3vuJhA3fTWvAu
	N4HTneM0A9g9iKZ1WSPRT7eoETJBQyjA/YoDR8zBnBQynKDcFR8TOQ5HqdYofyV0lOSyDA0+jbi
	dXkxPU/n/h175BfAZM4P/GQr4Ag2CmMEoe1xa9x6G035OTKvGuqTDa5i3QfvGP53dGG4FPNeBsq
	2L19gPPV01kxD6FNkaKUkuRxGf5YomfOVqpPaycXyCfMsDQ8CHUZBZtCKrCEuTM7A87ZxcXqdX+
	1TzmzGBLMlHAKMQDBeEL2gIkH0uIZ6+jmxuMVALKWdSDXDAc5K/PH4zzl1S9e8KxPkuKparbzbm
	9D68C2ZLp8v3N340FwwuKEtPKqfzCnou0zQxgn6U=
X-Google-Smtp-Source: AGHT+IGzfjQq1LjJ7ggzhlchsb+Gf7jF7ybHUUX6hqr66XtQog29EL3V/Chhryj5RJeGuJiIjRa24Q==
X-Received: by 2002:a17:907:7e8b:b0:af9:3397:ee9d with SMTP id a640c23a62f3a-afdf00a8954mr69459366b.3.1755673376560;
        Wed, 20 Aug 2025 00:02:56 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf6ff14f8sm37756466b.67.2025.08.20.00.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 00:02:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 20 Aug 2025 09:02:42 +0200
Subject: [PATCH 3/3] dt-bindings: display: rockchip,dw-mipi-ds: Narrow
 clocks for rockchip,rk3288-mipi-dsi
MIME-Version: 1.0
Message-Id: <20250820-dt-bindings-display-v1-3-d5b2555df51f@linaro.org>
References: <20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org>
In-Reply-To: <20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 "H. Nikolaus Schaller" <hns@goldelico.com>, Arnaud Vrac <avrac@freebox.fr>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1000;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=HbkuPHQO9jhKV8ffqBrLXqJ13Z1bPzLyMUmFXKOeato=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopXMWpPbr64E/k0zg+O3azP2p8KtOcS4cXs8UK
 kxOJqi0BAeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKVzFgAKCRDBN2bmhouD
 13LSD/9IQvUF5G4t0gW3smruaTu9Lu+S7YS+HVDySWD1gSsXPgb4rnghh3t0QVcd9X4pv8u+5Pe
 0Z1bb/YZTTRhdte/mruSY+AWm04RLEAmMuANTR2OLJE1q3pM0NasI1i/nDME+KRbTcbY5acZCHa
 oNbxYAQ2RGTT1mzq0FrvUDbAJNP4qt1bJHr9mHceexS0ZikYyOwiJI5iMrxc3P2nhUvn/ANW2w2
 exCEVwjKr48QJUqEcAyi5obb3i+S+pjzkPHsejmoLZiXiHPbzZKboO1U7cONJO3xihpeCXHUvO+
 2feirvTp4or1YS5/oGfbNKbk4jqn3pPdRv23ELlPfNYzzzGCNm4WMk7j6/3qPzxRk1ZSFPmnmrg
 Oj7Qyc4QM0VXyWJog6Z7kCLPjLyA3/t1fisq9WlB6JHimLpAa7qAwicFwRuwDhXPg0BjPN8KP9Y
 EBy/BDqiHCvBW2C4IKBbjlBmTC4tzWnB/+YMMNG/aazNWx92d7rb6ESMtm6+Sf2dlEx9O3WXmgY
 zB3PNZvuCqDtJp/FZL+D5fdGNTXJxgT228graq/ykbqNZh2ASKYiASXdGNPUJ3cicneVwuH5mjj
 qGyOBsivQS7Q97vJ9OXlDM5nv6DOtOleVnlRnlKv3/G3W1XCAEzbYLiMqDrOHGA2yr+tUBCyDWe
 b8FF+yr43g/UALA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_000258_227011_B6FDD8D5 
X-CRM114-Status: UNSURE (   7.95  )
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

The binding allows in top-level from one to four clocks and each variant
narrows the choice, but rockchip,rk3288-mipi-dsi missed the minItems.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
index 0881e82deb1105e4f92843380c0183569f688f08..c59df3c1a3f78ae0d345dc725f4dfb3eedb3de22 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -97,9 +97,11 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 2
           maxItems: 2
 
         clock-names:
+          minItems: 2
           maxItems: 2
 
   - if:

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
