Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43DD2C43327
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 16:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QqZS62FpWKnFWRq+maloW6uXkGfQpiCywrVzSM4QFtc=; b=HBki1TVILKs/FJ
	I6z99/GRU4TEf5qR2wadkTDfJ0TMgPcJ7NkJy7lvNkzIaMkcnfCko/wYd/TEqxiKX6hIZxaxfpqon
	WFYsdxtYSYUqZe6rxZlpQkf43zGVsu0f7Z/2OTtLCL9KJQchTZ8w0GVuS+jV6LHea4y/jvzso7Fjf
	vUYk7ZU7sH4869WKk47w73yWnrw07S6wyrvnjr8iRkcDu9AQtkah0foI3BDftQGk3DiG34P3S73bH
	Vh4fJEhLMO4ebauGR7cC5Ds4Iy6X2HGt6sbFxCD81Nfgd94UvLABrjsyxo1v7nizq9DCzTfiCAJoo
	rATZELjpLXjElnVr2pCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey5s-00000002ZvY-0qwO;
	Wed, 01 Jul 2026 16:47:24 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey5m-00000002Zt0-3L3z
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 16:47:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id d9443c01a7336-2c9c9913ddaso4331585ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Jul 2026 09:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782924438; x=1783529238; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dB6M/qa8E/LqUAyzo7cAKot20skT1kqM90AWopBSmro=;
        b=C9JIRvfS1Wekxp220+jHMdWAt2ADY+c42FcGdpCI1EptuYT+3x2nqttw8zd5LfL084
         gC+4STxgr34SV6s+RCNp8i5lA4+JUvA9M4XvFX3D6p4L+ojhb/sk2ccQbOVEjFyIt+py
         GgBm9lssTxmidTKfWRLxnT3Asv8iGZnL7fsggJx8q8zpSeHD4qFI0BfcID9OEKAtsZt+
         yc3/3K+1bfP0aHojZaw3WCpMoOnosWIyql0aGuxNkQb/h4d94UGm593GKQc4xGxEHtHH
         whwnMhzUm3neZzeF2Hc9TZsNSgIj/ltUbw5kPzQakB5Nl1kYW76diarSszf9JJ/8YB0B
         Gcgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782924438; x=1783529238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dB6M/qa8E/LqUAyzo7cAKot20skT1kqM90AWopBSmro=;
        b=JU5MlXi1qJpq3v1eU/Xi7+ZR1GCsUZ7R1x+KDEnF9JFbXCbeaIge7qR+aNZqpwlkHZ
         Nji9ncY/dDxRDQHwU5ksEyPUewzJUebKElTYLN0Z926Z/kNkDLBNRT+kYK2ijawq4dod
         r0myl5bFsP50h6GWky01d2YxzCGRpQtP8YXYcqUwRJmsS9wLCuz3pK4oXlTyHZPRkbF6
         oYZDP9XKCAwSW5UCGr8Fc9y+Z53Kt45LMaFC4DRcsZ2jdJ58eDf4geN3XpoMRWhx2rQq
         apj8d22wruD0U90qjwTX38E7TzkqsOW61PkJuDUy4fE28HLJ3ayX+RlaAIhGlxA8rMfT
         2mmg==
X-Forwarded-Encrypted: i=1; AHgh+RrQl3+lH89/YZcWPyGZwfhaAd10WcVPSZYUwL45jP72N9cmMcU3dgs7cKaYaFBbuTZO1aBaoId0/Qq9YxZfnw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzoduZZrGUpWCtWxVlEXGGntOJCdeAuGjEJWyEl9mdo24sS363r
	YYwv8ZY1vDmsEq52CTAU/OtQtbTM0cMuEF0y+I2/z62+FtHfsjtpS+2U
X-Gm-Gg: AfdE7ckpgPJ3SeSgpcN+DoeX0R0xkZQ/BvOv2GoyVYAb0KevM7v/cLWCxvJgrxTdUyr
	MuUAYVPMN/rX0I0brN1Fa7AqTLmxp6hh0j9s18EM1orTzW4th37o1VXYhTIqosM19QSyaI9Jkpl
	BiEmdVBGgDMSC58KL/Jlq1AA7SWvXrFnOojCGAusjD/dUq5B3r8yL0V6RxRJ9VVuCm8QCCBbJ3N
	RtpyxiJ2xXmmqiGlwAqgRtYVJskiRJFFLz/Sdxr+gX+EtObrr/dds2KAd3wcyr1xZDO2KgOTzVv
	dDagCnAguu51XZuBuhrAByHVJWTTUGEFxoFMsTLQCFZeZL7KS1u6iTG0qsq2faySsY0aMOd4EpB
	hoBFczuS+nXRisnKFXwpaAv/myxJE9RblhUw9RwvMuoFOZ8/Y2rhPfMJVzbVuLrQc5ANQI9RfME
	a1ofDTivE9+fg=
X-Received: by 2002:a17:902:d482:b0:2ca:883b:3608 with SMTP id d9443c01a7336-2ca883b37e8mr16422805ad.28.1782924437695;
        Wed, 01 Jul 2026 09:47:17 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca9a911f4csm985015ad.29.2026.07.01.09.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 09:47:17 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Graperain G3568 series
Date: Thu,  2 Jul 2026 00:45:45 +0800
Message-ID: <20260701164543.3967388-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260701164543.3967388-3-coiaprant@gmail.com>
References: <20260701164543.3967388-3-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_094718_831204_AA1C675F 
X-CRM114-Status: UNSURE (   9.41  )
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

Document the Graperain G3568 v2, which is a development board based on
the Rockchip RK3568 SoC.

Graperain G3568 series also have an SBC series with the suffix "box".

Graperain G3568 v2 belongs to development board series, not SBC series.

Link: https://www.graperain.cn/RK3568/RK3568-Development/ (China)
Link: https://www.graperain.com/ARM-Embedded-RK3568-Development-Board/ (Global)
Link: https://image.chukouplus.com/upload/C_153/product_file/20211022/6daddec9e400458816dd4c57ba807fc3.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d0..9eb2f66ba3856 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -684,6 +684,12 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Graperain G3568 series board
+        items:
+          - enum:
+              - graperain,g3568-v2
+          - const: rockchip,rk3568
+
       - description: H96 Max V58 TV Box
         items:
           - const: haochuangyi,h96-max-v58
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
