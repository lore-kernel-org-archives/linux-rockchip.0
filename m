Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF25D6B6D1
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Oct 2024 20:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZrdqgJEvLHsticKVQ3iLrd4J9Myx1Qqvujq/TSCr5o=; b=itS815vT5kkTRI
	tVbgnWJeg2wfSU0InVT3CTdih4YtkEsx3LDdoCbS1KS2cjiEL0Q/Q1xITDZbXj0qZBXzNOqI4PPJI
	DfwmXjca/nsaI+igVyzHzK6YysSFXNz9M8RNw+RC5eFj6wPOfVR6crJibBSGg458+nKwNftOCSzFP
	EDRUcQ2LwHHPc1jFxAgb4ag2m26+FzsfUENf7BQxDsm8BnAdyuU4y6ZBL4CnaJOy/vAXlD6I8BXfy
	1EntXNUaOmvKc6Kug0eG8lBJaNToFzufw8q1lYvuq97wGAQiWulFXjFfSq00vN3KH+ZKPt7R26H/B
	T8fHy0b7+uA4wH9Essnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6FJE-00000001fPr-3d7T;
	Wed, 30 Oct 2024 20:28:52 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6FFv-00000001eim-0YCx;
	Wed, 30 Oct 2024 20:25:28 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-539ebb5a20aso261061e87.2;
        Wed, 30 Oct 2024 13:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730319925; x=1730924725; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1VZEJYFGFDY62qRZoKIua+9OCnTC0iVCsGRMn1XjbXk=;
        b=Ce2/wuEEGYPMK8nA1ykQDfoZIVJ1PWA0RuKTiJfiWgMpH+8wg2eczkw+5QHyYV5ppf
         Bgsr9YKrZPjgRHfoJ0pRQHaThvCyOc4m66KajZmut7qEoz7VFCHMNm9OdhL5g+7DmShN
         uxXXs6QrPvJPhkaGnnku/ndc3aZcEK9oxECJ1IHiXat9VLvEaKNvmdm8qDnWQy4nntHi
         7qCHNcNg1WDN7dJPb/2itArqgRAxRIFZMZ5H6IvThtSFFtWavspFL5LFPwLx4JZ1u3NK
         YsHESujtMjecOQ/cLmuPTzlJutu5VN3L8jYJ1o/CL2AGkhp+rF3tEN3cNhacPbMDqqTs
         g26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730319925; x=1730924725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1VZEJYFGFDY62qRZoKIua+9OCnTC0iVCsGRMn1XjbXk=;
        b=VhYkEiC+zJ6f2Ea9RDDUU+iDeAxPq8Nf1c4S7Gx0+L2kySLFe3kE6OFS5SIMASVgM6
         2uDb6TKxdR/+17FbMBJPtGOsGXq5xIcMF8ItYQdkSBqpM/JfVfi7R+/zwwfM0f7cq2yC
         fFQZxdijsLUletMWlN5Yc72BEcUgukFIRfkNmcKmPnQ32BWYVaTuEx/bd/cRieSPI++J
         m5Gcx9sxsHl8LFLNtl5SvALVgJhw6m9EyOaPzVXO5SRkinFW0Mv/25vCwX4cgurdbDsH
         7mUyRj3Vro8l1OZkyy4byxdH2y2UkmwWIL12GOC1WueE6LEFScMTpgqyvPmop1Dz50oN
         xQLA==
X-Forwarded-Encrypted: i=1; AJvYcCVlr3C+7M9DbtxG8ZmCZXPYQGw1wmOIz+a1TF92L0njiPUC6zMkoWjV5xSZosoWTkY/dgM5ww7oHvlQfh2wKKxi@lists.infradead.org, AJvYcCVwdhfpsiWBBz3hn98uYAiE392OX59KR+rRVmBZIzmmpiVaHkKUpW3lYm6fPGCIb5VOuZXHh2aOBkXTRfzsw4g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3usfUEqCFIy6YjVa+HZUr5sj+v73322jByk+7o77FNujwXmEK
	uxbLSjoutfKP1Sgg9/kkVV32i6bx2uX92bzBkROapSJ9/Lx38pQw
X-Google-Smtp-Source: AGHT+IFIcw2dRxHZtSFhC12hb+wqEBUhV/76DRIb86Ahh1Ta3GUBrb+6iZQphI2Zhhc56TKRJau+Pw==
X-Received: by 2002:a05:6512:3b8f:b0:539:d428:fbd1 with SMTP id 2adb3069b0e04-53b34a34bacmr9118824e87.55.1730319924336;
        Wed, 30 Oct 2024 13:25:24 -0700 (PDT)
Received: from localhost.localdomain ([91.90.219.38])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53bc0d6ff10sm334644e87.269.2024.10.30.13.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 13:25:23 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: add Banana Pi P2 Pro board
Date: Thu, 31 Oct 2024 01:21:43 +0500
Message-ID: <20241030202144.629956-2-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241030202144.629956-1-dmt.yashin@gmail.com>
References: <20241030202144.629956-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_132527_189023_2042696B 
X-CRM114-Status: UNSURE (   9.53  )
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

BBanana Pi P2 Pro is the SBC made by Shenzhen SINOVOIP based on
Rockchip RK3308.

Banana Pi P2 Pro features:
- Rockchip RK3308B-S
- DDR3 512 MB
- eMMC 8 GB
- 100M lan + onboard PoE
- 40 pin and 12 pin headers
- AP6256 BT + WIFI
- TF card slot
- 2x USB 2.0 (Type-C OTG and Type-A)
- Headphone jack

Add devicetree binding for Banana Pi P2 Pro.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1e3eceb266b7..c88a3981248b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1104,6 +1104,11 @@ properties:
           - const: rockchip,rk3568-evb1-v10
           - const: rockchip,rk3568
 
+      - description: Sinovoip RK3308 Banana Pi P2 Pro
+        items:
+          - const: sinovoip,rk3308-bpi-p2pro
+          - const: rockchip,rk3308
+
       - description: Sinovoip RK3568 Banana Pi R2 Pro
         items:
           - const: sinovoip,rk3568-bpi-r2pro
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
