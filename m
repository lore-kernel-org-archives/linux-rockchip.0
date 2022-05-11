Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66244C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 15:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VOKrc6gMY2wQsgHDF/dN1qf5ubUtep9PR01WQypbH0=; b=Wtyox7turjwHc3
	xXmLuhmcKIwHbauMGs+BcsSbQB8uVAFeI0YEms/2USXfe6BjMLp7hKdSgS/nytw0Kt82m14sW8INe
	ugYi09xBwpDs9B9EUIL/dq+qQaWP2fJzRXk21Bo+iB3rrvvETfPO1QHkwOg1OlssDWfKgIBGlnJH3
	kaf6/GsDQe+/Qp0jLiJoQ3o2DQUm7VgC99c8bWHf6pujbPZZ05AtobmObO/vqb9WBlx2S1n8+mvgP
	xDreOSbv8xdce/28GCJoaYxnssyAK+6hCE/14vPlDhH4UPDJ3DL5LyR4EeO9/KN6DWdf5joucBxot
	x7D9fuYC44xzb4MBWaHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nooel-007ehU-EM; Wed, 11 May 2022 15:53:43 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nooec-007ed6-J0; Wed, 11 May 2022 15:53:35 +0000
Received: by mail-ej1-x62f.google.com with SMTP id n10so4951450ejk.5;
 Wed, 11 May 2022 08:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yjOB8oqEwj9sflBfsTrbSM5ZU+W2PCPtGpyHnXQbiBE=;
 b=DEe5lwmx+2gl2/ljAQlEQrJ1PN8mf3JLE2GLEOI8Pc10Qd60sdbvlnNgdIjftPFcXU
 DjMiBmrvgwzcqgEkOqHilryRors0zI0ldL3Yrz9TqPC/H0ia7astUlcXSIkhwqLsOKX8
 ydamXn4CY3Wq5lQyHaXMsRP/r+dRITClHBqwhXbAPBuz5M0m4JEs3VQq+KS0cr/in9Z5
 yrwtOrC8B5SzGtAcs75Ng6wkqTfkEqnOQRrlrgqKbX/IR2ngEwu30fa+NPrd2iowUIoA
 PwMFHrGVXoaQMgmu3pxfqseLOSfk1dX9ay2Gfm8VKHB8Rfhf41cAX2yYbe9EgU7EB4tq
 BwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yjOB8oqEwj9sflBfsTrbSM5ZU+W2PCPtGpyHnXQbiBE=;
 b=qfCsykYmGI+XTubmDc6Qhf+aie5JKW4H3Px1wIDTNFn2MPyrBE2YWWw63IXQ1/ZA85
 Plu4ureYn0s3hGkeI7ODRY7qRzQ4wK9xcd3J8/YopXLZesKpcH48famqRFccFN+eWpnL
 HmC4RFtR+yq3piBnWqSrrm8Ov1ohl3yZtSRAYgLbeg5WyEtbwgv6VkrqTNvLVMlqKwbV
 BJMC8RJOLLc451hDpTS7mrh+4cXsxhzX2Ccq8qpXT6QhFDy8ItHpagrmyfIHBgGbr1QU
 l1MSzZ/UgyxlGMA6Apu3DuRj0JyPDc+vau9irwvGiK23rhkF/MI0jk1hutZwJkjomrq0
 d+Eg==
X-Gm-Message-State: AOAM53274/FAMTK7AKWKQLTsoqqr0C32nBNj4GygEBmTkMJh9JUp+c9Z
 QCBIUoTEY3g76xulz0JMq/M=
X-Google-Smtp-Source: ABdhPJyWSUkwh8FQB0XXOTQIraeUsjzWhAMctVfXQSgsFRY6m2slte57mkSqtEgbc+2cMTXMJL4F1A==
X-Received: by 2002:a17:907:1623:b0:6f6:e9ce:9926 with SMTP id
 hb35-20020a170907162300b006f6e9ce9926mr21965119ejc.360.1652284413040; 
 Wed, 11 May 2022 08:53:33 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 fb21-20020a1709073a1500b006f3ef214e1fsm1072458ejc.133.2022.05.11.08.53.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 08:53:32 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: media: rockchip-vpu: Add RK3568 VEPU
 compatible
Date: Wed, 11 May 2022 17:53:06 +0200
Message-Id: <20220511155309.2637-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220511155309.2637-1-frattaroli.nicolas@gmail.com>
References: <20220511155309.2637-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_085334_666858_E6CF611A 
X-CRM114-Status: GOOD (  12.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
encoding. This patch adds a compatible for it, and also allows
the bindings to only come with a vepu interrupt.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../devicetree/bindings/media/rockchip-vpu.yaml | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index bacb60a34989..965ca80b5cea 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -22,6 +22,7 @@ properties:
           - rockchip,rk3288-vpu
           - rockchip,rk3328-vpu
           - rockchip,rk3399-vpu
+          - rockchip,rk3568-vepu
           - rockchip,px30-vpu
       - items:
           - const: rockchip,rk3188-vpu
@@ -39,7 +40,9 @@ properties:
 
   interrupt-names:
     oneOf:
-      - const: vdpu
+      - enum:
+          - vdpu
+          - vepu
       - items:
           - const: vepu
           - const: vdpu
@@ -76,6 +79,18 @@ required:
 
 additionalProperties: false
 
+allOf:
+  # compatibles that end in -vepu should only have the vepu interrupt
+  - if:
+      properties:
+        compatible:
+          contains:
+            pattern: "^[a-zA-Z0-9\\-,_.]+\\-vepu$"
+    then:
+      properties:
+        interrupt-names:
+          const: vepu
+
 examples:
   - |
         #include <dt-bindings/clock/rk3288-cru.h>
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
