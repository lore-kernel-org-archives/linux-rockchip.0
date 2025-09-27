Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AD26CAC5B0
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Sep 2025 09:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pVvSqPKgGUyP8F5ejC1/FFpZHXjWTJrpDwZIMPcQFxU=; b=meJv5LZsMganJ3
	A5SvA4nzpNVXzBbDBM5XBV4TsrVYVCmbRyuXg1DHVc4o0l2eh1Z004pWgh4OtMC5s+3MR2Sjc0sal
	ASfhEB/Eyt/c5JJsXZhGJX5OkfhDLgClOuUd/Ey/XM72fSZCrX3/o7I0C+rPhu5rcXEuci/kPXDeM
	S8rLxuL/wnY/GJTspIvo6bE6qIYomtuRVFqxPuQj5AsH2F9kEg7/IsA3+F4NQHbFj75jolKTGdQGG
	zMHtVFoUMPtOr7udb0kHZCfkdIKBrLsHGCsiPdpD0u5xIzLSgOQMVWMt4mjiiWpmEPlOUlf93qe/c
	iCOCxWh3b7GhHjcyvkvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2R9N-00000008dKa-1Atg;
	Sat, 27 Sep 2025 09:23:29 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2R9K-00000008dHb-0AoY
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Sep 2025 09:23:27 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-269639879c3so29038955ad.2
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 02:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758965005; x=1759569805; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E+B9+WNcUf/SiLJEas3IyGzNh/XuKBSyoIl4DxHdrSg=;
        b=J8Uq+j8BS3jTsi16wwQbOrryPBFxEvHt58FaCLRJB3SvDQH9cWxGbPjyomaM2wlKwP
         cfCsH3APrFl02RCe8mhfFnu18RcvFpvN9fow48BFI37JlreTgwPHzeb0Kjkk7lA1HIXw
         zjXKa/YIAKrjvCkMCAGtdl9K40aFg3kEzUV0W4C31HihSY4CQSBsX5v7NE3Kfu0Sm4N3
         prJ0j3GtU91C1UGaMApnHuaK0JbWpAfO6lyuGCqTF26OTmFpnUdynnj6l7dT33NdrAdh
         +koAQVkeFLVS1K0Tb/BBB8Tqb/9+zCT8oLPJ4YZddVkcWd48VO+2FWKrBZ4xzfF5jhen
         rfsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758965005; x=1759569805;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E+B9+WNcUf/SiLJEas3IyGzNh/XuKBSyoIl4DxHdrSg=;
        b=AsCADIjoB8iZAwYpYcd6hwHrXqbTa/7ZWCZa7CtiJxOPH566Kyju5wxXopH2lXjbRR
         Z1lNMobZBF8SRwEzRN4YZW4cC/1IPaRhq6bGUYEDAPZsmfWZugUK7ozGwXEM8LpXHxl2
         69hCziygZmRGzb6CLesnHEna5NPXEaKZFaFT+9+KsR1wuonVyF8Mf0z5dczsUBXHTwDr
         GRwyzs4NneCdTGlSABBHQsJK0TSsbCXqEX5U5Uc3amp8uIOlvhHftL6ecjgpzriEGUax
         CjVJeSIKhR23zNSb5ydo70gzFS7CuRQuWPjqQDr+rJvcwp3UQCzNUYL+tmSsHzdqQmM6
         YUbg==
X-Forwarded-Encrypted: i=1; AJvYcCUTbBwuNFESIXF661l3tixjnirjJcO9PDWVOj+y1Kyf0RYXwWteOiVMFhEeXjktonKG+CiZPyFSUnMp5nHV/w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGsQSoyTuQIrlcUCr/lzj7y+qrYLgOaW0TOqviNrzpxm+U9y9X
	8tNUwa5wq+ACPqlRvlmrU0WlVZH0EEYlokIsysGEztzMM8zQ0cjP/ZTo
X-Gm-Gg: ASbGnctzsBOlo/8HFxpavZyVC0OGknCuljM403/Iq7q1rdIOWfLPlGK6ge/JR2ScIwe
	MXA29hgP/VSCQdzW6SJsOmqk5psds1l9z64MlU37bSfpBC8q5zjrPr5eV/YuU6/Xk98CSGcjkz0
	XJsWdRPEQVDT7Rw1ivmPI1pvGT87juGmsTYfddRS7hT9vjZDE8j7/0vQitcoLRLryZTGqiBYkh2
	VC4wg9jYCvi3UA9PGNl9l7FvK3v5j0glskiuyxMpTOVraVaIWB1QevBgrKJ5jfmHPtGOp68+d6L
	Ow0wdyJ6tU1QI4MAW+qBh9Z11s3OohnJVkFAGULN9j2hpf20wBuYtC5YQEahYPHVjoIB0oK4dCR
	ix2s6yrwHpQ==
X-Google-Smtp-Source: AGHT+IHMb2zeZCzMkFx8yBXTWRgBTgF1yuwQDLgQlJbi5YnTqM1OZiKrbYwL/jrRqQ9LuO5X6Hd0pQ==
X-Received: by 2002:a17:902:d60f:b0:267:cdc8:b30b with SMTP id d9443c01a7336-27ed4a873c8mr101655395ad.53.1758965004608;
        Sat, 27 Sep 2025 02:23:24 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2401:b60:5:2::a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6882277sm74215125ad.78.2025.09.27.02.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 02:23:24 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Diederik de Haas <didi.debian@cknow.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi R76S
Date: Sat, 27 Sep 2025 17:23:09 +0800
Message-ID: <20250927092311.789946-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250927_022326_080769_D12F7534 
X-CRM114-Status: UNSURE (   9.05  )
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

The NanoPi R76S (as "R76S") is an open-sourced mini IoT gateway
device with two 2.5G, designed and developed by FriendlyElec.

Add devicetree binding documentation for the FriendlyElec NanoPi R76S
board.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---

Changes in v2:
- Collected Acked-by tag.

---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..e8185344c6f0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -330,6 +330,11 @@ properties:
               - friendlyarm,nanopi-r6s
           - const: rockchip,rk3588s
 
+      - description: FriendlyElec NanoPi R76S
+        items:
+          - const: friendlyarm,nanopi-r76s
+          - const: rockchip,rk3576
+
       - description: FriendlyElec NanoPi Zero2
         items:
           - const: friendlyarm,nanopi-zero2
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
