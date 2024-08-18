Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62084C52D7C
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 17:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtq7NVO4TfdRZ/82+WAdDZmpIVL1trnW69ZZ4q5s3t4=; b=NRQRoR2Mj31eZn
	vlpVcbmr0udjQB+qL/Tog6j4bAMqnaqAB5eaxWy5NI3HxNPe0sQST+cl489Lr3EESLWIZ1M4whgBT
	JofVwECDLnHHVRv7Yobh0Oiz0aXPDEpsp8eXUATB8Eb8SI5q1H0/RGdVu9OtmUazyEYrOnp3ZWLhC
	gHB1WrckI4teGYWP59z6T09D6cwwU4xOeutjfH2MV1QwDbMhO/5MhVp/W0jC/f4qG2+xxYAsU4TbD
	lzc8JJU4CXu/I8hUIVdUQerqCtyNzOtsKH9OVfk/fRS/0eDEQVG+y3by+YO4dvSn4H3FUcZaV3RNF
	2lfeiTGwUzuC46WihBKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjqv-0000000Gv3W-42mO;
	Sun, 18 Aug 2024 17:38:05 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfjjU-0000000GtAt-1n3X
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Aug 2024 17:30:26 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-428e1915e18so26298035e9.1
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Aug 2024 10:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002222; x=1724607022; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDxabNXUGD2spiGWzUWebdJZipOuLFpvCr9ct8rDDA8=;
        b=HN5V2sR1tje4FJGCwF0LsVFPXkaf95E5FdAAoRTu7TS+O2tK0/ottxOfFvwCXLVdYD
         1isHmL83+hazt99s1fwKVUG0IkZe16vqCiLdGyc/voe3qUYOSwSknm2W9vcZjsnf/Mds
         wJYQnm1BsnGpfBXlXlfyMRRXhA6RG8N16ihgmH4RHzXQSgc6Q6qsC9uABL8BgPKsAXCO
         WsR1qryhCfPL0qN44zLLJA3ls6y16uXgXUl9oyc1DvZ3pqpydjgsmTbhbNyKTOFBqqmX
         MGLEA5xMR6PE2xZQ/XMRFO7ISHJieR5h+XZCJd2zpF2k4XGtrOQZWQaAHIVOg2W7XkXt
         O9nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002222; x=1724607022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yDxabNXUGD2spiGWzUWebdJZipOuLFpvCr9ct8rDDA8=;
        b=dZij1MskKXW2m/CDDYPW6bpmDxUBZekXIKooS4/U3LUmvYGtsb3lg67qgD0Wx30FuW
         1DvRn5GyCF0BuKV5B6fjnWooqBMg4YhyniVB+k1F3EmXkldMLuHb5LwfEqUWibPw5ghP
         3nQDXHtR0qtDovpxcjLEjh471NoO4BYou5gdbBu2aCUC9ewdEn3wBX659vOUtIus0QNH
         oh+2CPGs1q/QgbfKlea+xMKgZTRGkGS7AKAXcfHfSVLsFK9wXeRJRJVs1QbCzWyD8nMX
         Pq4d6wzgZAKNl4N3mxId5ff0NeM5Mvw10zgHtX2cKjy9Moo6UpJOCWOIeOeNLIDy8LTF
         Su6Q==
X-Forwarded-Encrypted: i=1; AJvYcCV8rCI0tAFEU5B9n7MzL5F5el4pv2242VjPU+LBY0yG6Fcpp8wOevU4Ino/+gqLhMcjeGhOgigBAes4aK1KfXqqBOu3sI5rkqosEqYDhJgUapG2
X-Gm-Message-State: AOJu0Ywm4HdxZphBSCywfCNWiaNePnzzUgd9mTLK4NhivJOv96ikGC4S
	RYdXEo6nqVvfcV2CZCl8SmlDENz5WxqKUA+eKky6GXHUmj/RT9Bo1oWOaOtzpaU=
X-Google-Smtp-Source: AGHT+IHTe5/9uPQMEtI6+zcncZ4iytZUcY1Qxy0hgPT1aarVYzDAmJ3Q55hH1n/3z5bWggegxUIW8w==
X-Received: by 2002:adf:f2c5:0:b0:371:7cd1:86e5 with SMTP id ffacd0b85a97d-37194314fa2mr4713443f8f.8.1724002222433;
        Sun, 18 Aug 2024 10:30:22 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded7d5a9sm134999915e9.43.2024.08.18.10.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:30:21 -0700 (PDT)
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
Subject: [PATCH 3/5] dt-bindings: clock: renesas,cpg-clocks: add top-level constraints
Date: Sun, 18 Aug 2024 19:30:12 +0200
Message-ID: <20240818173014.122073-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_103024_475077_EB14B74E 
X-CRM114-Status: UNSURE (   9.91  )
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
for clocks and clock-output-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/renesas,cpg-clocks.yaml     | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/renesas,cpg-clocks.yaml b/Documentation/devicetree/bindings/clock/renesas,cpg-clocks.yaml
index 9185d101737e..a0e09b7002f0 100644
--- a/Documentation/devicetree/bindings/clock/renesas,cpg-clocks.yaml
+++ b/Documentation/devicetree/bindings/clock/renesas,cpg-clocks.yaml
@@ -32,12 +32,16 @@ properties:
   reg:
     maxItems: 1
 
-  clocks: true
+  clocks:
+    minItems: 1
+    maxItems: 3
 
   '#clock-cells':
     const: 1
 
-  clock-output-names: true
+  clock-output-names:
+    minItems: 3
+    maxItems: 17
 
   renesas,mode:
     description: Board-specific settings of the MD_CK* bits on R-Mobile A1
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
