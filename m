Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38C62CD6E52
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 03:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oh99RTq77DVCPYS9pRCo9lqZmRAu1mcks7FskDpptO4=; b=PS3wC3J3YuXgLV
	s3XbnaYXCpn2WoGiWW2II7PISoD+c61Clr1M25eJljX9JsGBbWGUm2oAEJ8DNCwhUnMhsgLTCa8Wf
	JPPW4pdYips6vljfSEcX0sA6WpL8Ms6goy+6Pl8IU8w2r6JA7HvfvyjxDFJFxhn87d8Ygvr1ncMq7
	GJPQYX8+wnsIaFykQ+YGGuAHklnaUo3XxbyNnc2b90T9keIG9j7g8s7/5kuDeX6MozvPB+4nRo8tk
	Fr8zRBlU04Np1/s84Y/3aFZ+H157tPN6lnALGNyjOKk7aOaDMYXm950qAK3nqho+xH6UZq30YhrHI
	wAyvWfpRUBR0XjjkrAng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTAFL-00000008PHm-1zmp;
	Sat, 30 May 2026 03:20:23 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTAFG-00000008PG6-3BNT
	for linux-rockchip@lists.infradead.org;
	Sat, 30 May 2026 03:20:20 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-69dc2c38f6dso2363442eaf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2026 20:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780111218; x=1780716018; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8OOgPw2rPQflxY/7r5kTsmWgQ4SuB53Q041epg5wdLY=;
        b=a4OP5xrTYhJAlvuBp/H3KhMiXVepDKX9lLd9pixMFnB1l8kho/+wwItDNqy+zn1O6k
         KTnGa5i7csu2Yy2q5l1mFzH9a7VcnxIxyBqYh204JY+HTw5D8Gp6xqtsk7+K/WToAP9K
         9OLrZRsYzg5D4LNwcPQiVmIrYym5g6TUFOSEnzuHw5UGWXtc/Fi7zzTl3NsptlXegBFi
         vnVdBEnO4g78Dk9wFJ0EOfb081hWHu2Oqo75SVE1GOGXr/Z9YDGe8QQkXWGXEKLd/WwA
         lNjuqM+2dRPMZ0kFKGmdLkwX+kUsVXWHHvvkwcczFjmO1D3C5cEl0nrxnvFwsSPJa6bP
         WCXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780111218; x=1780716018;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8OOgPw2rPQflxY/7r5kTsmWgQ4SuB53Q041epg5wdLY=;
        b=adutbimLQIyyMuzuOunuAOp2xA3lhi7trhV6Sco1Nq4d2Dq3mVxJJsV5rQ2UktSeJX
         IbF8dUlBiC/CBWWV3sVQ4kmPhl7Ao09b5H2kxJpnhdTUz0lhs3ZvFzTUJoAGEk+y3dwt
         8ePg6OWsu1LjXo++OApDBHRPganlbDT9VJQa6hL10M06VoE9wNvGWlWmm85tkq82F/Xl
         SEifwjr5kzRJHuoj0yZnaiDYdXPli7T6YcKFKrpNseELLnQiuRvuXfisKfIMElpd8FHc
         Z0iyV0AcmdqaiZO6LRTzGMTrvc0SPaFd+/haVRRtbamh4d5OawNLA1IvtTuvkRYUVrdk
         Goqw==
X-Forwarded-Encrypted: i=1; AFNElJ+Sm/A10U9g1QDKdKhlGqh5PuL4EQIQhNLzPRz01gsugPI3RKEoyLOZ3R6T/JMzgt+MMfcmvMsiQ2kNCWd4zw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxysWq3Q7/Cb1WYvFzXX9mtn3He1dQBo/5BKehvrZZ0SkUj/uex
	+CezqjVBDlIYMNx0btikL2iJGawocgN9zVuV9PZBcA/9ajIT+zUpa3MZ
X-Gm-Gg: Acq92OE/OW6NHCfNMd3Hpv4l89KOJSPW2oIHTDFtsCMLVsSkw4Y1VKN4E0fhUt+aG8N
	l5y60/npxp6PPvijrQ5cMooytYNgqkn/UIoqryRK5GRbqMQ2GbZmDIOZJzPqleI6+ag2DCZ1o1B
	p7OaSgbGd0Vno3MR1rk6J/rIuIcwrU9G753CxPZuHccKTvctoS2DfH2/cmthsCfU2149oBuOcdN
	h6tUBupFzebugToJ992T5fzOex27NnYUcJspZ4TJ4k6IRb12uV3E8G3Tq8kvYgs5ZGpaNRKN2f1
	j1poXmKt0LG4zOx0qP5AtXtLl3P0HN8EOkVtzCaNeQB/e3QbkNCi1UWSSdwXAUkvNGvaHB+HKVA
	4dA3oAzL+LtpJZb9bGQht+3aYJm/Efi59ZZLy32i8910GNNZuoaPaF/vzf9bRtLShkzunEv35mC
	trN8E+YcFNJvDUP8aNE4OnRy6Ev4gQJSHe7ZjFRDBifw==
X-Received: by 2002:a05:6820:2018:b0:69d:86a9:16da with SMTP id 006d021491bc7-69e103089femr1088667eaf.25.1780111217650;
        Fri, 29 May 2026 20:20:17 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69e067e911csm2130737eaf.5.2026.05.29.20.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 20:20:16 -0700 (PDT)
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V9 02/11] dt-bindings: iio: imu: icm42600: Add icm42607 binding
Date: Fri, 29 May 2026 22:17:29 -0500
Message-ID: <20260530031739.109063-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260530031739.109063-1-macroalpha82@gmail.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_202018_803743_9E904307 
X-CRM114-Status: UNSURE (   9.36  )
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

Add devicetree binding for the Invensense ICM42607 and Invensense
ICM42607P inertial measurement unit. This unit is a combined
accelerometer, gyroscope, and thermometer available via I2C or SPI.

This device is functionally very similar to the icm42600 series with a
very different register layout, however unlike the icm42600 driver we
require a interrupt-names property be present.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/iio/imu/invensense,icm42600.yaml        | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 9b2af104f186..475a498207f9 100644
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
@@ -71,6 +73,16 @@ required:
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - invensense,icm42607
+              - invensense,icm42607p
+    then:
+      required:
+        - interrupt-names
 
 unevaluatedProperties: false
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
