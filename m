Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D063C52D7C
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 17:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QZQtxqBur+3dx5KEeFBwtsRY8RLkZdt33eHpZa6crk=; b=F3LDt6pmBmUp9d
	HIhvE4wGlI7p8Aq+SXoZIMFvYQyAHJU3XPy0ubGe63jnlbA3pilJriWmKWmpJSJXkFusVHWQvOg/7
	ocrQH0NUh7yaL76mdvC0KF8suvHmYxFbhwQEJ9WhP41bnNsbBuvWja5LYQ2rcpI4NHIfLUxo57cFu
	2HlTh+JXdwEQQPhzfNBt37ABF9Yeop1xUroQgd8o0sFXkNNxA37JhsKB8sA5myxziuYQQCXu7DQhI
	YdcAdB44irKsAMzBVNbnhXuLfXASNFkYXtseNPwAj7vD5keWCpdYrsNkVX6XHvAgHtGpUW2NWYVCn
	Mq1SQQniDetaYbAF9ooQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjsC-0000000GvKU-0dx6;
	Sun, 18 Aug 2024 17:39:24 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjjX-0000000GtDC-47By
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Aug 2024 17:30:29 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-429da8b5feaso38707875e9.2
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Aug 2024 10:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002226; x=1724607026; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aw4Fptl98pttOY10KCxMd4Nms4w6E/3GwtsKk+Wk4vc=;
        b=fZUuslv+Bqh2YWWx/ERQtYgL986bhlOQs3QcfaqXb/KQ5i4t3euYExxkdT6xMdVOYy
         Yw1B42uv0J0GrvXLyusZl7upDewhmQbzY9eWZyUhPIhsU+Ney33jjUwG0Xls8iPHD1lq
         X2uzwUtxRWiKlLSVlYU1RyFxd+A0jEjXdQ/2gfjPd/hs5w0DLHyYLv3eqb0QwxA20S8Z
         vW/s/kPPB9PcFO/ojPiCl8GtVVx61rTlqLaKe+8iVqxMKpGnO7XvrF4uH1mU0jnsNJl6
         I/18s5IwNsXdVtGpph/zUcEVt+9BUAHVgFS7ek2vzHsIfLdR0i9HejP0UP/DN5P+9DoZ
         xSUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002226; x=1724607026;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aw4Fptl98pttOY10KCxMd4Nms4w6E/3GwtsKk+Wk4vc=;
        b=Y0CGVXGY6QikWY80VMY0IUXyzasYZdwLBBdmRZImqsVqLmzRbHzDmjvGbfjM78NiP1
         aHpHKcTF2SsIMcP0JYT8Otp000NcfWyG+Adt60X0Av/w2rC8vlD67CLLid0wx3CJP/Ui
         f7BB5Ad/GdAip1V52LYKn/9vWXhi3K37xZqB1HC9X/eIzlnTTRSZXPj33hes/wrofMxJ
         l7TDJ+OoKJ8sXc9A5tAsIhew2BLe6ZCgDnbDXnTSRqCyGD1EHN6de9GC3YAQC/KqSYAU
         ErJZbel0gTQmZRJvydakajp39bkHRF01MwHaiskzUf35EXignFJ/MKX/Sv5NntHnrpry
         BEJg==
X-Forwarded-Encrypted: i=1; AJvYcCVskOmpbVvTYqotYKdddJndTZS3Mkfvz0HUgQXHxp19wgm87w2Nnw/lb45Av2MjjkhldCtKkvuej+BhpVIOX5TBA1xThtLMgV/VLv2Uv3GCQkRD
X-Gm-Message-State: AOJu0Yz+lhNRfB/m9qLBLhffSnb2iWqoIZoCEBVqBYuMiEX6TonQa935
	Deb9ypNz0N79xB6n7CW5qXAUCOOCHu/qal/xj/FkrbYBCV2NKQybRQOGTL699vE=
X-Google-Smtp-Source: AGHT+IFPilTQ7go8vvbQhelRsOizLG7WbbiYR3MYgpB7AkCObI0W33aHc2RPr2v9rpCg6UZ9TBfHgg==
X-Received: by 2002:a05:600c:358b:b0:428:e30:fa8d with SMTP id 5b1f17b1804b1-429ed784090mr75921025e9.6.1724002226203;
        Sun, 18 Aug 2024 10:30:26 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded7d5a9sm134999915e9.43.2024.08.18.10.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:30:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Serge Semin <fancer.lancer@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	patches@opensource.cirrus.com,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	linux-mips@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 5/5] dt-bindings: clock: st,stm32mp1-rcc: add top-level constraints
Date: Sun, 18 Aug 2024 19:30:14 +0200
Message-ID: <20240818173014.122073-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_103028_062816_C49870B8 
X-CRM114-Status: GOOD (  10.37  )
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

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for clocks and clock-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/st,stm32mp1-rcc.yaml     | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
index 5194be0b410e..9b3aaae546cb 100644
--- a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
+++ b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
@@ -60,8 +60,14 @@ properties:
           - st,stm32mp1-rcc
           - st,stm32mp13-rcc
       - const: syscon
-  clocks: true
-  clock-names: true
+
+  clocks:
+    minItems: 1
+    maxItems: 5
+
+  clock-names:
+    minItems: 1
+    maxItems: 5
 
   reg:
     maxItems: 1
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
