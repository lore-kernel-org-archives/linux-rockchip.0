Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A93A6C982C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 10:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RPnANRd9keamLs+6gHvSahznUzU2iZksberMrOxNIAA=; b=fAXsTvpk45N+vH
	oIp8MGVU/Cxg/1C9K8wYGU/OBZ7vpSgRjINLxqWyHsyAQBdYTMcK2ry3OTNsGV5/JiEUu0El+xZQ+
	OgP0BgJ1QkMG1pGmnI3BB5eGQQ56b+TMcIM+awmgNO8zqakjRVZvYqMqqKM0fIGp3EarScFNuSwuY
	oRTUXUokL2i6KFrWVk/BvrxfgncUtW+uFl26v3s7jo03ziu7jlI0v1oA6p8VSYXAAuG8kmUrqEF3m
	1rFu7kmErXodfDdb6djxJ5++eBzm1Gy5eJcD+iK+pLrrEfIY2R7X3/WZDpA1GYfGq9EF4S1NdpG0Y
	R8n4RxscIE084NZDYiYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdT-00000005xUU-3cow;
	Tue, 15 Sep 2026 10:43:35 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdP-00000005xR1-0AOV
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 10:43:33 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-482f63546c5so80828f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 03:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789469009; x=1790073809; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=c1tT3yvxjkinhN97rO87ZxGO8TE43RhDvmMo/jPsRss=;
        b=X6Svc1YbXATDCbbJSw4W7nEn6QVlMYjZWY3akikDqJFGAI+wY27fVfbBb0bKthYVXD
         I0C//wNbh1AeruP4KeMDWtwjCL+lcrD1jSbG8TIBSjRmeK3AkKalORlu5Ndj6U6h1kxf
         /B64YKfVtmOUkOJEOznikEKeQc/AOyJB4zQNQXSWvAa8StIN+6Uu78EwI7HCzelQb7ed
         bZHCO3kjV9CT5CczJY7BIYN0Y9qunBNzyN6U7eFTUbeytxIIBgTWhPaFUE0jLXoanwCY
         9ZFjfbjfavpwa1V8eKUhunrkYg3l9VCxLHNQn2Do36cml7hRoj/EGaJ/+eRaU9Ks61cA
         WwlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789469009; x=1790073809;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=c1tT3yvxjkinhN97rO87ZxGO8TE43RhDvmMo/jPsRss=;
        b=iJ7HazUeYWTMFdhX6zTYXVaemaw464BBtFUQ1rCULeunziFHATXJDaip+KPvGJ2bai
         yKW52wZkZ9ZDh/Hd+8NNza52wiFroJMrHj2JRqgYJ24UjjL9WSU+hyRd1j59NO2R8gGd
         8STzYF2Wt7Jl1orbhGKNfUrw7gaHmKunChNHXRJumsyybtNVSB/RgoClMKAcYWSCFevs
         ixiW2D34ia/vOd6q2sBpq717lYw6O6d5mf8Je70ekluMUOK/M0tW63hHf4bN6LdnGdpM
         7T9EZ9GyK8NO2nWJR1eCASMa6qb37iwo5kleg6SS47CJVIzFhYhg1lVB1fhdh3OIYVth
         R9ww==
X-Forwarded-Encrypted: i=1; AKwUvBy+mKDtgaajudyWY1GVE7n3q3eMj2JVVj50s197iODaBwjw3GSt/w9sGw4xKEXWNVq9cnX592ubSqEIqBXCnA==@lists.infradead.org
X-Gm-Message-State: AFuF++nBH3MHyiiBZSZelCy8Z5JPgobwLP7pkOsqc79n9tVjhFt9UgHI
	mR8DM9GN7/UnSYkmpgVTPBlf+msxrx6YmBfdJpXbiWzofe5MwLiAGd8Pj8rb6w==
X-Gm-Gg: AYBFou0GNfqEcULyICjdSVphx9G2ABhOo5DJJJN+zwaecHZBaKXZ7ekWc5JwRPHTzal
	2bmL1hTo7mcXdMxtEpn9BZzY0MmrGNDZezYX2jW5ZH01hyMtbyDvWV5Ggwo71nd7nXWn+ln4Hm2
	xVy++OmvrSHS4Y30NMZCR6L+S0dyNxQx3588BEQvCVaE5AUsgaASCIigB5ToyduGPUQXuZ/1t8l
	LjbnX/VYQLc5kFAR5gTwSelvb25NulDNUfMSybYWXcDJfd/UoBoQf1xp/1c2E46E4NRLgC6fQh9
	RBoOXCS8npgiN4RKMpEZRiY9gw6D6+pC6DIPwYXI93j5bPg71GfVIXr784SVPcKA1sckVJtezyJ
	XlXPEetd5FJv66UPOAtluXHLPU7ZsgIGxFWjsUQTeSAiGLe6i9Tmwk/PWdgbR4NbWKx6hJZBPBm
	/H7O6tpnaV3PizzG1Gk/vaeLRfECSY1zn9f4RyyCEs8aF6Q1FgOD3z3NhwzE0uPVmQHGccTkSU3
	2AqmhCZSralTiKUQ6w5rhTx5AgLHkaeST1CxNmeIh8EUnS1sx76ww+m87PC6UEQ8mM=
X-Received: by 2002:a05:600c:4f46:b0:49c:cfbe:5a76 with SMTP id 5b1f17b1804b1-49e82213d4bmr10107005e9.2.1789469008368;
        Tue, 15 Sep 2026 03:43:28 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d2a94b9sm58001325e9.3.2026.09.15.03.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:43:27 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Subject: [PATCH v2 0/4] phy: rockchip: add support for the RK3576 MIPI
 CSI-2 DPHYs
Date: Tue, 15 Sep 2026 12:42:45 +0200
Message-Id: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACUhqWoC/1WNyw6CMBBFf4XM2pp2oFBZ+R+GBY8BRuWRFomE8
 O8WdOPyJOeeu4Ijy+QgDVawNLPjofeApwDKNu8bElx5BpQYS6Muwj5CncSiGttFYCij2kQGlS7
 AL0ZLNb+P2i37snsVdyqnPbEbLbtpsMtxN6vd+5VR/pVnJaRIJKEmU2lKzLXpcn6ey6GDbNu2D
 87Uuh64AAAA
X-Change-ID: 20260819-rk3576-dphy-2304f848215b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, 
 Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789469006; l=1671;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=yZEgzTB21dJfahfS3EghGIYvrSbI8fD5s64xGT2boCo=;
 b=ot+vSy2JSTHjEbz9uBeefJXb/lU1tBk60Hb1vd+2VgmjPFt6k8cpkzJT9QHP88Ng6VxHFAlTL
 bJSEKJiOgB5A2Ledx+QpDv+NYkObnMwn0SNsr7pQzcftDj0X92xSduC
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_034331_094340_AA4BA0AF 
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

Hi all,

The Rockchip RK3576 features two MIPI CSI-2 DPHYs. The CSI-2 DPHYs can be
supported using the existing phy-rockchip-inno-csidphy driver.

This patch series adds support for this variant.

As you may have guessed, this is part of the efforts to bring the
support for the RK3576 camera pipeline (VICAP) mainline.

Looking forward to your comments!

---
Changes in v2:
- Patch 3: drop the RK3576 GRF register table, which duplicated the
  RK3588 one, and reuse rk3588_grf_dphy_regs instead, so that the reset
  names are now the only difference between the two variants (Michael)
- Patch 3: reword the commit message accordingly
- Patch 2: spell out in the commit message why the RK3576 compatible
  cannot use a fallback (Conor)
- Collected Acked-by from Conor on patches 1 and 2
- Link to v1: https://patch.msgid.link/20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com

---
Amin Gattout (4):
      dt-bindings: soc: rockchip: add rk3576 csidphy grf syscon
      dt-bindings: phy: rockchip-inno-csi-dphy: add rk3576 variant
      phy: rockchip: phy-rockchip-inno-csidphy: add support for rk3576 variant
      arm64: dts: rockchip: add csi dphy nodes to rk3576

 .../bindings/phy/rockchip-inno-csi-dphy.yaml       |  2 ++
 .../devicetree/bindings/soc/rockchip/grf.yaml      |  1 +
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 34 ++++++++++++++++++++++
 drivers/phy/rockchip/phy-rockchip-inno-csidphy.c   | 15 ++++++++++
 4 files changed, 52 insertions(+)
---
base-commit: bd5f485f3f026225b86573e559af0b7254ef4184
change-id: 20260819-rk3576-dphy-2304f848215b

Best regards,
--  
Amin Gattout <amin.gattout@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
