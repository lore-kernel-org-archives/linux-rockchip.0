Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D418BC19F32
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 09:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yDIuS6PAWwCkaHxTbr3zYeJJJp784IGIhmYP7dZtheg=; b=21m3oTCNbwECPx
	0GTvj/tSEYuyXX7XuN+MyUejItstqB9hozHb2SNHqV1axm6njjis0eB2DZwwikVgLflFEBt11QYI2
	gFhFWmUYT6HPGkBgcn1GUnnDc1TJ0YqLjfpPTxgkhffcpj1BGQ0FJJ5UOb1DJ3dYjKIDmksJ4czu1
	qx5oWifGSjGOApt5nT3twsT7Bd/W61ilz+EAvB0sDfRM2FxfnBM9pv5jz2E8DyA0/5gGjp4XNnKdW
	zeGoio3CHs+RZCdxTeaOMJ6WTshVXWeWIw1DQSNchSlCUVrm2Iny2RdwpinHku0I32zEtxl6gztSF
	aXRIGhEh3WygxNs236tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqU70-0000000DjVp-1H6G;
	Fri, 07 Mar 2025 09:35:22 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqU4x-0000000Dj1L-2KnJ
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 09:33:16 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5dc191ca8baso312509a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Mar 2025 01:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741339994; x=1741944794; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fU0HHdQ1hyz6Oi/pxgyRXXgGFlp0DgTNlBw/r19mLUE=;
        b=R9gWkMLrzJUCsy0Nce+HXb+6FI9Of9JLAEdPwsc0cUqJsnnC8nImAkIOutUsgHo/ix
         qYoop9cuHV+ktJM70t8JljdpeB4F23OIEgM+9d3LQzjEW7c1wDaJmItBvsNON8c+itHZ
         RkxJUB6hVePRuHR1h0U1BAmNhWFT0YCkIamEWZx0mkBvKjNaaXS6w7YwGIjiShRbDqVF
         EkrSdJi0d+2k5gpVRvuwp7pT+xm/VcaZ+cgr92rlbcP04wPT0HnEBS71Pth/+Zj97PxZ
         rmpMJ8Up0fpxNYpukTgfiQ7AbbIaheTIBC8AMZUIMfzyByZYkZlGCkAMgSpMOy9VdE0u
         hk6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741339994; x=1741944794;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fU0HHdQ1hyz6Oi/pxgyRXXgGFlp0DgTNlBw/r19mLUE=;
        b=ERhZgTzeC78Ld2YgVMBW8Pb3hVPyYe8WOnxY2+RtsWRQvUoAR8VaK+kZIgPbUBXI9e
         sZM28dQwQNKzQQeqYTs6LtpcF+HlYfMAns4ZiFDXW1c6TKEoZkis/q7VrPM6oUX4KB0a
         W6cZZ+0U8/3594n553odK3AUqS3TYIbYy7gFAGQd8VR07tZcs//oGw0X8923B2VEZCzn
         UlJuqX2CRjvQRV41PR77PwjClXad2WsKHQMv+tEMIsBV2cUUU44oxk3soP7QhC7l8fZA
         9oJkpIbgtSXUXQcxo/Vaxxp2gwN/zskJcMHfdpihRNcJw2T5t3O2LV+7O27Xa/LVT3CZ
         ZNKQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5fx8zXceBYbtdaDo+uIAZhBHF/GRWAPvCu91A6UrLp5VT5ZFOIcSzQ0430T8MjfIZ5LRSsYHiQp/MttYbxg==@lists.infradead.org
X-Gm-Message-State: AOJu0YydAIow0u8x9ySDtnmA+bTX3lk4GdUvOpMXamvEptIhhLPJQ6vH
	mDNkQg593ZlW86Wrx4zxxAYMRycXLY4sGsuEbGIfkhm+npaoh5x8w4U45KDIqBs=
X-Gm-Gg: ASbGncsW0X/AiR2aY2gAUlhuHtur5N+z1O0c5t/OcpgMfO+7txJMC7YSZi83NOYE2NZ
	npLazSqmYl4ZbnAlnw057wWpcJDTS7DTp8lNwVmx/VGPB0HVR0xp1qpG1HRwapT3iha0FJlSHDr
	7+v91MDfXVyT2gDbQ7bSfG622G2JopeJKpDqbRyCbq7OsLmOgI3o5FkkymMn7yr63i4B/9dD6k7
	WciWN9vgToCuf6JF2Fg4EwUHxR5EoVEaoVMT3NpD4amQpPXo9tKaJMjDuRw2RTW/4a6HWJ74gGc
	Htc5H+NuEmWYhZHIElXQJp+IXmccIkCDmfq51kWIHkJXHtGGFacfX+tiAEo=
X-Google-Smtp-Source: AGHT+IEAJGcNFFbHug7ITx5iMdjawlkckyUu9cdR2GxHKINK8WVBM4YprSaxysEv0Z5OJYbITLcdkQ==
X-Received: by 2002:a05:6402:51c9:b0:5e5:e17f:22fc with SMTP id 4fb4d7f45d1cf-5e5e22ae3c4mr1030915a12.2.1741339993683;
        Fri, 07 Mar 2025 01:33:13 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c74a82ecsm2275091a12.37.2025.03.07.01.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 01:33:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Daniel Golle <daniel@makrotopia.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: rng: rockchip,rk3588-rng: Drop unnecessary status from example
Date: Fri,  7 Mar 2025 10:33:09 +0100
Message-ID: <20250307093309.44950-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_013315_612866_AD9FAFED 
X-CRM114-Status: GOOD (  10.17  )
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

Device nodes are enabled by default, so no need for 'status = "okay"' in
the DTS example.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Drop unnecessary full stop in subject prefix after ':'.
2. Add Rb tag.
---
 Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml b/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
index 757967212f55..ca71b400bcae 100644
--- a/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
+++ b/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
@@ -53,7 +53,6 @@ examples:
         interrupts = <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH 0>;
         clocks = <&scmi_clk SCMI_HCLK_SECURE_NS>;
         resets = <&scmi_reset SCMI_SRST_H_TRNG_NS>;
-        status = "okay";
       };
     };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
