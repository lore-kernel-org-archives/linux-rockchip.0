Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5219C43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 22:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EweReHBqT/k1jm+C86s5fpNYGmw1VILdDPMisktd3ZM=; b=dOBLffWvmByZll
	Ux4t1wK/S8opm7P6C9OykhEUqfIpt9jqkjH4iSKQHJMYjd2l/DChswlFUclSLszB08yAdPkNLKjEc
	+8VeOZeS7w+wWPUcRdAtD4nRKk75KTS8xRbJE7KSrPDvJn3H8yrVnah4NzxujHGkTAWt66E8rL/bo
	iAIchTDyUvkXaDJFp6Bqv2OTl0Evem3kss/ePs14j+PLtS2e3lhf8NRuBNmMLa7Ir1mH9RorRtns4
	vWhgZHyhv/IMnS3E3h9AulJ2+ES75IPZ3xioUfR+S4PDJRKyJbq3URnequ6f5SQM3Ww9CMxrMbIKz
	PD/6I4FuzdFd5MhRo11g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdbzM-0000000CoYC-2Lqe;
	Sat, 27 Jun 2026 22:59:04 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdbzI-0000000CoWx-3guT
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Jun 2026 22:59:03 +0000
Received: by mail-pj1-x1044.google.com with SMTP id 98e67ed59e1d1-37df416c45cso1007908a91.2
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Jun 2026 15:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782601140; x=1783205940; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xIQYg38HKX2hWoFak3/raun5oGJ1Q4Ta/HKT5+91FRc=;
        b=G/PjBG/YjrNPNMbYtJVABgBuilsa31X9fEC2Yx0xTJdtA2R81btJcw6o9x7Fc6lhvP
         laDMoufC3YLylBZfDN3zmB9yiKFBMq/B/EYFOQNtGfbA8nwvzwkJnd+LEBF+o1XxsDeV
         8aFB7W2YbCjU7qgWeTPwvaKwSgg0yJZaaecZj+vS7S26bVGcoi1byJWvJxydnhtuje+6
         P8IT2UX/4ETCfPvbdM5/+2nmn0GRQL5CbM1l2zx1KNHa5v4B1YzLsXmxoexsxXDDOgqQ
         8ifQbw6bEa6XWAZJNyS0M7fJ23ec7glHpHh8NqBlEu1928LFMbhrAlMjkI2WWAWgIh9o
         +Swg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782601140; x=1783205940;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xIQYg38HKX2hWoFak3/raun5oGJ1Q4Ta/HKT5+91FRc=;
        b=DY5OE0kQTNOhiTfwHA0EzDkzjHUZgsF2fERPwmR8mLP+oD3Lw4Mz6NGrZB5edCYkXL
         Oo15XBLDFf68H4ohzWOAqCRfhNJ1s4IzW1zYkcUvTKux0noYrGXvstM/o5xrEJbrHpjQ
         IaKA95RSDw6+zoxd/v9fpLk/xpreWIdJCsiUDSjFzFttsr8lU3uOONIqy+96E+Pxczzn
         wHi6Qym4fKXnfIs2LqagKxz7PwFF2rZOBk7J5UOTTy6FaAiHwB5o3+HTTCVg47YdI7r6
         Q1jlLyLH9mj3W/vVz4XhNodLW38PEDsJziiUwz4hQ5Enbl45seeWqF2BprgeylhaqoU3
         sR4A==
X-Forwarded-Encrypted: i=1; AHgh+Rouga+0G2WD07S3/SQQD1bcD/0E2GAKc5RubPcE3CgZZWwlyshCA0jVMzDZFFEt+HScrbZ5aIK1tBSQZBsEpg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzs02gmwFcoM9mrk5oDW0rKFVJfwOqdYAZPkcnX13oOyZ7Li2CL
	Bk30MFZehMprniaLD+e4yuJ3hljeJ3S8RWfALglGMWHuYjqeK5WXxfxH
X-Gm-Gg: AfdE7cm2VJzyjAWCQ1G/jStCtGNQLwweL/PdzZXHTHgkxz8VrXE5e+SGaW3W9XPBupS
	I4y4Ia15vllAinbVZHHK8XXRjlz/fTytuOJnl7jTpU5OXceEecthV7uRHO4q7n4PTvJn/jv3Eax
	rY86V+iM2XY1+b4njIiIARskVtr8wCkutSJsFDetI77OOKhXAQSRsDq1+83/lA1nbMFqrKDcJGK
	L+lhinjrijFKicN0n5Q4XZ0kAsPWRWfS1OZz3+y+E9bjvvuBoapUY6kPcjYnnC63cxd+MTa2zj6
	MXA1xkLEF4qMCMvsRI/FuS9PEZ9427TXuREGNGtQ8qp3CheoTahkhY41+K+kYoZvFEOAhjyc0JA
	5v7DCcZQnMGimJFnByIcF5orZi1mlesblRXLVUgiAKVdl/liQTWBHuq+2wfkawDY6+CtweuexmW
	CCdYYeCFa2abE=
X-Received: by 2002:a17:90b:17c2:b0:36d:633a:e7e5 with SMTP id 98e67ed59e1d1-37df9f3821dmr11072345a91.3.1782601140142;
        Sat, 27 Jun 2026 15:59:00 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37df3b0ee6esm6313693a91.6.2026.06.27.15.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 15:58:59 -0700 (PDT)
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
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add Graperain G3568 series
Date: Sun, 28 Jun 2026 06:57:56 +0800
Message-ID: <20260627225755.1710837-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260627225755.1710837-2-coiaprant@gmail.com>
References: <20260627225755.1710837-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_155901_574466_973012F0 
X-CRM114-Status: UNSURE (   9.25  )
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

This documents Graperain G3568 v2 which is a development board based on RK3568 SoC.

This series also have an SBC series with the suffix "box".

This board is development board series, not SBC series.

Link: https://www.graperain.cn/RK3568/RK3568-Development/ (China)
Link: https://www.graperain.com/ARM-Embedded-RK3568-Development-Board/ (Global)
Link: https://image.chukouplus.com/upload/C_153/product_file/20211022/6daddec9e400458816dd4c57ba807fc3.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde186..873d41bff 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -683,6 +683,12 @@ properties:
           - const: google,veyron-tiger
           - const: google,veyron
           - const: rockchip,rk3288
+      
+      - description: Graperain G3568 series board
+        items:
+          - enum:
+              - graperain,g3568-v2
+          - const: rockchip,rk3568
 
       - description: H96 Max V58 TV Box
         items:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
