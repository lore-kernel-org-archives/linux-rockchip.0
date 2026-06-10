Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4578ACD98C6
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 17:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyfhIgq5jjz2IljX8p//ebQ/8S0/R3ZWsOPHvvbmgKo=; b=2xUyBN17pjD784
	cG1f14om5h2Zk48puBPM/i9iLGYRBgk5xeTZOQcMRfga2kf2cZBC6k8uxScj1lAS7XIslxPOZ0aMl
	h4EUtH785RJorw15If8zktALjjTb0qqi7X0sZbkB17h8aJGChfrdjlhF8wQ/XrXZOTWPrXibIyR4L
	yatOw4GNLb7fyzApuKyeIBvzMPCDPGxNC1ig+ekdOe+/NH9BwgoF9OrEyMXpAVllnkNBp4Ok+2JJ7
	+R8cb6UaaAOBtL0GaMNsvgaWcfoGytnt7yZyOI/u9TG4C1oSxY7LZqllmIx/v7mG2Byhw0AxKTwYs
	c+BIOv85PxBd7DoN7qlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNBB-00000008DIs-3lDx;
	Wed, 10 Jun 2026 17:57:29 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNB9-00000008DHS-14uH
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 17:57:28 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7e718d46a6aso3141809a34.0
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 10:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781114246; x=1781719046; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AG46e6wh0vfo+H1QfKvpne8/nrh3wipAUO48FCP+P1g=;
        b=S9KRNRnOlSMy2ZqvpegkP17FM+pgP63O+VfL83h0oq9JlXRYN6O8UowCtI1b11bOBp
         PIzIj9g/p86DnaF+KiKuMDzmwALIrDyN8E+jP0Stc/ivzP+GnYCwAeaJ8yW2wslNxVrx
         OWpPRfdhUaEueeSLUwiJusSG+tyManeQoNmPOGBNSPwJfeb7xpaFK6qJy726SXD4X+9R
         T/Oexl9Ak/3YS2d1rKsVAjd3gaH6GVNtRMBYWnUQJ9Ym3RkYYHgHT2nGiKe9O69ARtjT
         d1cA3wV0CVBgtkg+pZEMye6pcDFjpVMcngY6NHg/Na0ZGB82yuUN+IYQMtu6M/bL1eGq
         xy6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781114246; x=1781719046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AG46e6wh0vfo+H1QfKvpne8/nrh3wipAUO48FCP+P1g=;
        b=QVWRc2Im6gXi0pg5SgtH1PlPPsjsRKZVBcAwUPBTxFY4lELxEBlRF1gHxeXX3889nG
         5ve1n3FbU2fBcFUYZIQLkr5EFKU0m4H6jP2WQ3vZ2aucoys2xxax5RWQ3GwoYR2yOL6U
         OOwrWqXo4kKn9t8QTha3VJ/+3PDYc+Se2btVPNhePy2U4zBEdDBVjlEkl5IhtqvtA20L
         MUtion22ipeY+v+jEPLu/RvpVVsTXnWrOgX5MUZmVGvCmlg+WOjPDdD+2MkSgE1/D24V
         ly2q8qUXPf2LEPsx8+AlzsRF72w+AKB+uvvFOlmwx/mSv1C5Mf7HqEnowCWZhFUrNz69
         BaBg==
X-Forwarded-Encrypted: i=1; AFNElJ8l5Qa/UIhQ/2I6mXfc/+6Hir0TEhVSjYx3WWqKJqrqkw36WR9kNq3zfDx85bsVLCIAOtwnSpyfH9UwibjOMg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+g6xscFz05ZUrm+ddG7i0k02JWrLKAgHenhWAXSvG4xRYq1C/
	ZrbKCI66iK6zrnlXp2/A3zOrzRRy6zD/SqzJlKA2vh4aCOoXoWH0YfkT
X-Gm-Gg: Acq92OE9jIyLWRrpSiF3ZibZC2ElojkId6s1sZAhB9Pobb+iqlGoddxpBjwUcJG7TYV
	ScYuoLgNpTMJoCphodxDOpEGexfHxeLUnFRyxl0IiVI+C/HWEOKndkLLfxa7jEojqlJihWVYrqc
	tMWrRo5FUrewvvRpQc5Y37BQEq3hIqU5Viog3paB98msNwzrhoUUMzuBLE5c4NA3MlfjMrMoTIo
	tIlGC/cnFKQCFIQPxdUeIPessGGU6yqXAFKa4YlTddH69xBBs0yN4VHtud7RnkX0XPOhMQRzrbt
	N1tOe4RWWvrxqtB3Cz0lHc9kNP2xCPfuhylqinzbtvJySOAxXX/gOyCEhLL9963/FeXH0n9dvrP
	Nt9P0FLacnxMoDFanrn6MVVHB01qAkoMYNLD4jxod4dm3VVNDMf3oz49gBXgMPr1AAUxSoIhFjh
	C9Yw+kHXpBEd7Tyil/cdcgYD9wlqhMeQalKoGPllIRtmIRQcnyc1A8Pg==
X-Received: by 2002:a05:6820:4c89:b0:69e:283:abaf with SMTP id 006d021491bc7-69e68c07596mr16296123eaf.32.1781114246148;
        Wed, 10 Jun 2026 10:57:26 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:b86b:51ed:28ca:695f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d7d4f449sm21180794fac.8.2026.06.10.10.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 10:57:25 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V11 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Wed, 10 Jun 2026 12:54:46 -0500
Message-ID: <20260610175455.19006-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260610175455.19006-1-macroalpha82@gmail.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_105727_300139_D7A77BF7 
X-CRM114-Status: UNSURE (   9.58  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the ICM42607 and ICM42607P inertial measurement unit.

This device is functionally very similar to the icm42600 series with a
very different register layout. The driver does not require an
interrupt for these specific chip revisions.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 9b2af104f186..81b6e85decd5 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -30,6 +30,8 @@ properties:
       - invensense,icm42600
       - invensense,icm42602
       - invensense,icm42605
+      - invensense,icm42607
+      - invensense,icm42607p
       - invensense,icm42622
       - invensense,icm42631
       - invensense,icm42686
@@ -67,10 +69,24 @@ properties:
 required:
   - compatible
   - reg
-  - interrupts
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - invensense,icm42600
+              - invensense,icm42602
+              - invensense,icm42605
+              - invensense,icm42622
+              - invensense,icm42631
+              - invensense,icm42686
+              - invensense,icm42688
+    then:
+      required:
+        - interrupts
 
 unevaluatedProperties: false
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
