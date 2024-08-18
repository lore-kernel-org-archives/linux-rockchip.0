Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A819C5321E
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 17:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tu/dH4uPtlm/zLvtRuYNVR369h/fN06GoOsNjBbWBTs=; b=ObO/YGDiN4Zg4A
	pPbNQC/2wFIY1bx79TP8KGPinPzQcCo0NW269lnbPrjx4b9Oxi4//dJd0cSaa3mtWuG0BtC4vgRwo
	oKUYf3QTH6nX6fGmTTLPDk8hj7nvDKAv78sG282At5J1BUv0zL1cYbrZi3TGBxdOBhMG/ULXpUSW6
	nHXPmEOndCC+17xBH19WGfqofnq01F0IFCMyT4CHU1e7WacnO07kDHVnc4Jvbq4CXJj5KACj8Z0ry
	lkPB8K3jgdS7RS28/n5yMQGMizi3N+8q2kF0C4JtXzfheCdLsUWIDwyN9iWsmB8axZU/q9x6epi5U
	29f6bgHCvH73/nojJbzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjpg-0000000Gupj-28uS;
	Sun, 18 Aug 2024 17:36:48 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjjQ-0000000Gt8u-37uM
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Aug 2024 17:30:22 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-428e0d184b4so26252935e9.2
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Aug 2024 10:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002219; x=1724607019; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X3MSSxP9rHAkbncpX6jbhl/iQ23LwfwRpJkBsCTawB4=;
        b=ZC/uwc8cKwnOnEIYwlz8jc6Tn1ezt3bq1aeRzdtAtP7+M8eVh2mN/sTG+1RwFMff5e
         6ddLgiXIlpy4Y7wXatkjaAEhePH/hv0bE2MC4dY7ZF+K/GAtxjOTKPyiTBi4DJgSjQtz
         74f9C5SCFNj9R40C6PfZqjcOrNwVQwJDN01Z3oiRSGuLuzNS3d6zD4UWSb8tUtczXCqT
         zKy1j2t5p8tPTu9jGqRqDyYna6VzWCGnzHShT7m7OQ9wm+odS8AYj7E8w1vErcaMAULw
         H/AjmaqSvVl6n8o6DMFjkxjEGSuHThMbzdtLG/9muqCwGrUCnt99IpZbTyFNNGqKdW3m
         ZXKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002219; x=1724607019;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X3MSSxP9rHAkbncpX6jbhl/iQ23LwfwRpJkBsCTawB4=;
        b=wKu+ElW09XrnjhDpa8w0RKFp612l1H/JWeL5Nd6DyCPb2HNb2wUPXVjopPGLbLdDcj
         +GVZ/NFqSQ81xRTLZ5E9WU3e5ToixPufXqRh5/XqEfh/TOwZCzK+hPZFTphtInKvHhfB
         OvogqEzTBwT0VydTqZXQOlmVwzxZKNKZlzgEXedbkhFNxgGR3aGa0nChadE0QbL4NA5b
         4dJkj/8OTu/p3AAX76rPlWqq1M/NLdtIOIIHLWZJqa/giR/LyNVtbwMUtt+8fXWCWum1
         kfmS5yJnL8eW3spkt5rAVRAqdpQGoRylSu/07TOkS/qmY4K6QIUeh0c8chILS9ArWN7Z
         Rgmg==
X-Forwarded-Encrypted: i=1; AJvYcCVkL9ywKlrOIeE1oRu8Jc0MZqOqexkrHQicsPvE3ck/6D607ds0oD4l+0aNp2nT2utobmC2D3HCz5gGMjvN9rLCeLWvIez3A8dTm+WA327Gyc/r
X-Gm-Message-State: AOJu0YwLIwyMRp3plAVyqaK+ZwQ6GK/E5ynHdzLoZLosFnoAGhdssACU
	nOTCI6Y1qFpk57nhobx1dyg/xG+59/m1iNrA+UCZh+2d2aB1fWA5dLMlb+Qy4c8=
X-Google-Smtp-Source: AGHT+IEPnFkHPz/DzJcjmR5QH1BJYBppD43D0BqAvj9I5k6ZQrBB3ZrienBffgoL+lY/tHnzKwzdTg==
X-Received: by 2002:a7b:cc85:0:b0:428:f650:6a4e with SMTP id 5b1f17b1804b1-429ed7e43ccmr55679215e9.23.1724002218616;
        Sun, 18 Aug 2024 10:30:18 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded7d5a9sm134999915e9.43.2024.08.18.10.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:30:18 -0700 (PDT)
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
Subject: [PATCH 1/5] dt-bindings: clock: baikal,bt1-ccu-div: add top-level constraints
Date: Sun, 18 Aug 2024 19:30:10 +0200
Message-ID: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_103020_813837_D7D1D3EE 
X-CRM114-Status: UNSURE (   8.89  )
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

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for clocks and clock-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/baikal,bt1-ccu-div.yaml     | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.yaml b/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.yaml
index bd4cefbb1244..30252c95700c 100644
--- a/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.yaml
+++ b/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.yaml
@@ -134,9 +134,13 @@ properties:
   "#reset-cells":
     const: 1
 
-  clocks: true
+  clocks:
+    minItems: 3
+    maxItems: 4
 
-  clock-names: true
+  clock-names:
+    minItems: 3
+    maxItems: 4
 
 additionalProperties: false
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
