Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D76F4CA0EED
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 07:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0kVh6kgZDOhRLvtb9Ool/nTQFeRSqtMNGzAHkqPFlA8=; b=azxxySFFsshhOI
	ws0FXsRHA4ryZVbZM/5wsJiT1Qn6X5o9QGMd54i7pf3LBQRqHFIaRQj8JrkQFz/OkWY56CAd9FfrZ
	8rBxu8UWTA7WXcWh+hBRYu8csVQd4/Wiqmz2nzl+GdM7e9XjwVZxhvEyi+xEEia4BkGNzdJJ0ZQg5
	IjjSXFG/F4ydNKCE9JKqMuv+9lBYi+LJzZuO1NIVZQy+rMSsg19e6hqOdM0Ragg0HCDRFnHeC+2lK
	Tu+guRgb7RTyT5nEWp2iRLSgRXWaS8wVR8BpxCeUlabOwfiPpwXlw1mN0Ybmy8ndG8m7pNPK04T6d
	SDcKopasnT3UEVhq5Rvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uocqT-0000000CYXb-1h3s;
	Wed, 20 Aug 2025 07:02:53 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uocqR-0000000CYWI-395B
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 07:02:53 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-afcb7ab87ffso94417166b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 00:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755673370; x=1756278170; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Kz8t+h/h/0n0QXBXq+nhgUGC9ql7IeTr95ekPgWAy9w=;
        b=vfd8Su8G+t6Eyvzq3ynD2H1FErwrC1Cl4bo0mm7tlYbWV+8YzIpKAt4EkJiDHN7xYl
         rV44vpDC1LvNZeH4D0XpSBsKWBrlAbXC8Xqke8XFAOQt5z4Hr2c/VF3v73E/m6O78ba8
         jKmGLzrfzuep1bb4UYV3DfXPS7rt7ALXsA8qeddXS+9CBoYOw3+33BHmgVq07WQ2ErjW
         x682Mz922IOfFr3F4RkHpsbQa0bG6TB+79MwHzscFfFfyVGCGe9ZqlJfsshGtuqdWkyM
         d3G7DDNthEKnCIon+cIeYVJmWFlWnQvp7gsgoiHkXcMyZQOf+6vuiQ2C3ENsT45aGgmK
         mXDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755673370; x=1756278170;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kz8t+h/h/0n0QXBXq+nhgUGC9ql7IeTr95ekPgWAy9w=;
        b=c3aMLyCoFAeVwGrEalXkVF7F7CIeVp3CQ1PFwoTOK7DYHmJ1ydb4DPYuxlyFm4D0Fk
         G6sYsYOh9f0arB77W0pqT/8ui2F0aNwa9IAdwyP3lkAjVSQ0PBliGTDg0Ro5cXP+FZU1
         +qjz1Buci3uf56bbcfy3AQsmTy9HrNoagfYb2td9+N/vKv/VaVBgNQSiTTlOHuDFy97K
         s4NK9Tu1pg6uPFnQ5ReKe37taHoEMA7QwjxWaRdP+Ugtbg1q041dadQsD4J8C23i+Ggd
         PRFmxL0j96yynshV/fHeU5vMBGQBvU7e+oFHCKXsQ4c7wIZeSZpY53gLnVR+7/+D3EHV
         ZuBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfjyNbwDmFujF5wViA3+bqbQvALlWemYg+OAyoWhgP9Y13Dtqe+WnZmoz0vGlk6drxh7gHORLoomHe965ivA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzBbknPQEKrZTYYbiBZks3CAS1HVkOo0+kOKX3wArfQzyHZSAcp
	7Fn6xhzpVXKdtX4i9ePIDLeeLxhkgKh7yJaNEYk7D4RkqJIZV481EQUYU2r4HUzr8fg=
X-Gm-Gg: ASbGncvNHGERPjXEVNR7WPIikZXs8ogSllxSINCT2UD8W+DIWkBdIyymrJaBrwLtSdT
	ZZuUDdufvUGVhxK1O177lJDesBjtegZx3k9y+QaABmOmeqfdg6xs0Ci1BwcOX+Jjv3saDKBH39L
	WOZI57mgCyYnuIwUoCskQ8BfaZVLZn9jCvOUjMS9us3tvzLqhsxIScmkQiQ+xho9wLtISpr0x42
	Fdfd9V+DJQ5zjyhnIDJtiN2Q5Ujs7aq2UbBdZXO+nEezS+tFLhee236reWJk+pbUDQxeC4t8PLj
	YNtB0p//IHu8gON1fE0Y5mDqvYtGQrcoB5SN0rSVcbYsnNmLfOS0YBSXD4AkHNEeqbxhqODtkIY
	T8KhYJo75dN0alMAJV7hsv2ephDWYB46kbJvfX8bmkzhXHfmuDA==
X-Google-Smtp-Source: AGHT+IEUJtY9T7M3w+t6NgODZP2UMBO1bB6yUNgABbdBlZ++2gMxl+ZFtQKIgu4nmM7A4aFMOc3sVQ==
X-Received: by 2002:a17:907:6094:b0:af9:3d0a:f383 with SMTP id a640c23a62f3a-afdf019afd1mr77479066b.6.1755673370012;
        Wed, 20 Aug 2025 00:02:50 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf6ff14f8sm37756466b.67.2025.08.20.00.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 00:02:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/3] dt-bindings: display: Few cleanups
Date: Wed, 20 Aug 2025 09:02:39 +0200
Message-Id: <20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAA9zpWgC/x3M3QpAQBBA4VfRXJta6ye8ilwsM5jS0o5E8u42l
 9/FOQ8oB2GFNnkg8Ckqm4/I0gTGxfmZUSgarLGlqa1BOnAQT+JnRRLdV3dj01QuK/KxrhxBLPf
 Ak1z/tevf9wMZuMYIZQAAAA==
X-Change-ID: 20250820-dt-bindings-display-996a143c86ad
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=871;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=x6AMMrfKmpsnt80qI/jaePh0x1MxD2M+8h0kme5S3Q4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopXMRGm342NsJMwTGBeIUU3aEDsSSJNSmaCf3z
 2hb1+uhE/aJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKVzEQAKCRDBN2bmhouD
 18bZD/91yp/iNgPOT/8uepdf/zbiG/DGKC1+o61nNJG7BV5sIXxSsdSZ1foiLkHXibtjcNRwQ/s
 x+wbb+LGT8rwNihSQTbClhlnGpXKGOb5kIJQ9z3T+PIKGYN6CIV3o4p6hfvnGiiew5aADThPKJ9
 8NFQigShv/pzBXx/7yRzb4UyRxhkvfSjxBXf76ppaLwyvUh3Tcf5awj8aHfTVb9kR2jVBM21gAD
 SRTfGiqhC9yWvPJP16o9c3sdHOf8Pak2qnpJyfXj8yXGv3+EpcwZ4oJj55lq0mjIBoTlHaedT8L
 CwM/STq7YsVkiQHD2Yd6bln07WWyUdQtXiVUbm/JBKJgSAyysh1/E7VRbp17BQ2yvsl8AuRzi1X
 qVjHurkILLCLqiOGWuyYBYbr+Oddhxx3w3ZDR47yvJGMmXlHwfzTab5U5IW8OfiXHiSgAP0STuS
 zfMQFCqSeskPBGzRZm3FMVw6Cmlt4kZSgBff7JbYb6rD7dQZF1Z185+7beNhzP7mkFdtVplBT6B
 ueg1Uhz/o51bOZgNc3s2Jf/nBPRDEFwXdw5iSS63VO+LfPJsFJmg98MoUMEpkCbz4oMfag2Ig6Z
 Tl/wWTVLi9tC3Z4XuYkUHpUtHbUGghMGsxPnlZ+gCDNEYcdQN30wBgZOxKPet6HCgmghz8FDqla
 d+DIIriSdXsoRwg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_000251_809506_5348EB63 
X-CRM114-Status: UNSURE (   7.17  )
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

Few minor issues fixed.
Rob, can you take them directly? Display bindings are pretty often not
picked up.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (3):
      dt-bindings: display: ingenic,jz4780-hdmi: Add missing clock-names
      dt-bindings: display: ti,tdp158: Add missing reg constraint
      dt-bindings: display: rockchip,dw-mipi-ds: Narrow clocks for rockchip,rk3288-mipi-dsi

 .../devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml        | 3 +++
 Documentation/devicetree/bindings/display/bridge/ti,tdp158.yaml        | 1 +
 .../devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml     | 2 ++
 3 files changed, 6 insertions(+)
---
base-commit: c2a1a5ede4717e6f12d49fe5177a66d40cbf4847
change-id: 20250820-dt-bindings-display-996a143c86ad

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
