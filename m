Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 507B4CA0EED
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 07:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUfh/DlGGK4WqzkvxvQ4+gdP2uFmMP0c4jHnyg1ZFsA=; b=ScKuj3uIV8RQnH
	mbSv+TT6MCB0LeOjLyCEH7xXGIv7W/z/0pc4w+g766Ca7B8ztLTqp9IeYkALiNDSMl89UuNKimbJr
	YlYcF4JLmQ7+9C8V7JC5vKYMn8/ZlhEvKi/zeBufPWng+umF71mDXvVd+imgThT37tDPPjum6gf7e
	yBfSpG2xHJPc+GHmsMWT81Sq/6Wh0B8kHnWVgEuCh9Fz3wqACJAajt6AwQ2oC0n1IFwZbIdMcW8bb
	PZNQBHI9eSa8kSjm8qz9BY3l0ITgIIKq/xVY/pR/rdY8cFQEbTY6TkFpQ0CmFwooeB7W1G5TP+wPU
	2yWt4CU8JcVBPe608Cwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uocvk-0000000CZEL-0Pbx;
	Wed, 20 Aug 2025 07:08:20 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uocqW-0000000CYYn-1G8b
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 07:02:57 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-afcb736dc8cso79134566b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 00:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755673375; x=1756278175; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JYDyb1l+byMOiaJzKn+UnmmghGQhvpVn03tecEee7KM=;
        b=riGkfRIrcw2WsOaAkNgGIV5Do0j3nqhY51A008cIhJNf3pG1Pp43fVeq9m9r+joLqr
         R8uATjpBaP9AtjS9OOqdW3vpEXFTvqihfpCQsOJVp8LcPVuuUjLetgzROFbckC1kh5Qj
         pVyzD8pUJG5QtBhhqmbsjNybr3WnBSZ0FV1EgtCWV70Bk59VSGP2wKCRBZwFie88KO1Q
         mHOquMXlEq8nEO0JrBLbXq/1xRE8WVX4ybd7QH7wnYkk69Vvzj15fVViKoBKSCK7mCen
         mBIznLTseX22ncyhWiTs433sv99u9wytupG4P5koi+ibMPRfiZI+3Uc1RIypU1cX6yXm
         j7MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755673375; x=1756278175;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JYDyb1l+byMOiaJzKn+UnmmghGQhvpVn03tecEee7KM=;
        b=HRllq5DQ5A6zETLimYCL0OBMg4XFik0QwDJzhjJJLY6gB4jdXKeFyK/4Wl9K/ObxLw
         Bbu6T1vuDIyEVbjzsFqz9sV8/OlH+4eLgYCjLhjLdQG8OY0CYBR/QJeURcldKCTr596C
         E0Nsw8s+191o/JVTUW9Ye688r41ZZ6lvFYy8AieKUzVOD5s/WQ07Kwh/Lnk1z2xqoMM7
         8juskAJwL9qi6KyNiAIHVrDTEnBhXkXITzt5R9bXWUkxXAKng1ym13Xr9hcTxcRLppCh
         nnPO1CEeFujyx68+sIrawTqCGDYNIeG+O9/O9Wnyg776HMGOVgemkGa3KLb44d4Wn9li
         cjdg==
X-Forwarded-Encrypted: i=1; AJvYcCUdy1bKPFsJpKomzQfL9aFbmHnR2mjt5c9JohSrWNalLDYDo7Zn7yLraUp40mOgnL3JhHX5amM6+fTiHFM9kQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwYtYZTDSJEy3fZ1C9BZDcXk34s2i/P9znwmAImwJmH2JVudZ44
	zAMG7HVxcGL11SAuPWlrOhc8zsLZd1h9gH6L7JD9SXCiPmM2L+dYJUh7/XwZNIjiVjM=
X-Gm-Gg: ASbGncs6LzikGPKevGR2GK1LXGCVR9MhxKM61nPEhPFmo8a5/ALAog7xFWXZFIlYHfM
	2DXe2uT22f8wrOzVH8wOgPNs2xA+3Ou3cGea7KRywdUu0zBHX7rvN14nVx5OGXB4DmtF4Ydf0Ql
	8YPckfjMCL0MXYcCy8I563i2O6FKR+XClNBJZnbsG0AC62gNCv5CSFXNntVHMT4aMXhWUEoF8vS
	eD0TfvkjSngtmSOgxXZm9hDkPhc+MsEwAu/X+EdIs4T4/0XrfzzW3Y9ZxefuCa1qB78eudAn8P0
	sRlFJGhk+5rma5TLb96OXv+PxkwkDd2aMTcQvoOAO1x9g2I2lW/sy47d+tnWKmyYODkSKIcluah
	0Wt8NDMQyRm2v+yJFzJxaFw1AglPkv1s3icGd9Lg=
X-Google-Smtp-Source: AGHT+IHJRyotiUitRQlmcmuPpwvWkmkIG5BFx79tKET0/ZCpVsB1kmI1FDM/O1dsctY74CZHdQJyWg==
X-Received: by 2002:a17:907:869e:b0:af9:8a71:e090 with SMTP id a640c23a62f3a-afdf0280436mr79978266b.9.1755673374003;
        Wed, 20 Aug 2025 00:02:54 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf6ff14f8sm37756466b.67.2025.08.20.00.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 00:02:53 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 20 Aug 2025 09:02:41 +0200
Subject: [PATCH 2/3] dt-bindings: display: ti,tdp158: Add missing reg
 constraint
MIME-Version: 1.0
Message-Id: <20250820-dt-bindings-display-v1-2-d5b2555df51f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=990;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=AkV3VRQfJAkPuyGMV3zApyjndBmAsTYMa/X+l+hz0eY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopXMW9wkV4htcYjEWNJWdk1zKtmlcN5CE41MJX
 1lvlVHNyB2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKVzFgAKCRDBN2bmhouD
 10A2D/9nQCtB+BeS3a1GcRicjBMuO4BkqDJ5fzrjdybep856QeJGH+n5b1OlnWduayCgJ6pf6Dl
 LypCyElXEf/lACJADLNxNjsYmPhmf1xM6Pcn8rUiaRjTWzL5kuaKrt8ebYHsWZLGMPLPjWAInos
 ehCcXGVg0K+9/wGg+Ktof4C42Apwde031SvjTDqRFovXzfZiMksOvKip8EqCLBP0Q7I2ATk/HMo
 YNb5TZuVXvQei+SPOlGiDyjSE/lrv2u6zX/8Cgs4bgm8+lgw2vhnoLu6FCSssgBpspHM8XdK4mi
 7RVZ7+AejZe9/NrCUiby/iwRcz7r9GZBpbYj4AgyEMwchWysCpt/DeGaKJl8wFIUvCVHtQlInvQ
 u/+ww52Wz5tbPFYypkn8DeAl8xTQvvBB+tdGFPq6HedhtRQpF5e3TI/f19j7CO7XbFvdc7L+Ij2
 AaU9Z2GXgTdcvBI7CQn68hNqcoGYQm8dmxaObXAHIRncTbasCU41dBaRlDqGBxwIpW+8mzxHOZ+
 mxP5i8qdMzLlDOb3upooTdHnHYdpxv+4rHyKsOa0BR3VtvCISQUHiIlfo44ZFT5KnxqQrJQPqXY
 QmdKI43hwtGaOR0OnRZzVR/elstxfWt1N+1ovS6R0pbZnNLTFD73gtuL9gYcz84OOUd1K4qOkvk
 Uj/DMPJ6az2a7Nw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_000256_369075_B99E827D 
X-CRM114-Status: UNSURE (   9.95  )
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

Device can be used over I2C bus, so it documents 'reg' property, however
it misses to constrain it to actual I2C address.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
index 1c522f72c4bae3313930b5c76dd04dde1aef5151..721da44054e19ff04fe9d8c1dc31a9168e8f79f5 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml
@@ -17,6 +17,7 @@ properties:
 # The reg property is required if and only if the device is connected
 # to an I2C bus. In pin strap mode, reg must not be specified.
   reg:
+    maxItems: 1
     description: I2C address of the device
 
 # Pin 36 = Operation Enable / Reset Pin

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
