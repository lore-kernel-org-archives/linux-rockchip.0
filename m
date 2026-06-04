Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A27E9CD6E77
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 20:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkXJLs9l77kQANjazFgQA26CEJNJqykdMdGKchjfTUI=; b=a+/y4ozRGdfatY
	2ZEXDU387FuzE1k89fM9jj/LQA4ceWbXmFHgahOVCGHFgAWUw8pzm7Co7S4zheeNC0O1cu0g+cGWf
	yyRqhsZjQPAzyjw+qDVh9foI5ZneF1rEpe+BtTKVm5VBZRhJfPIhk7WCzpLlNqJ7f0EQINgMQmP/c
	LK6zsxAMPNZUZ9+qbxB5uT4D1G4BgzIRA/IXUz9BYPx0yY63xtaK+FCAQmpc2viUV0bwxO4revgt6
	4/1kQQ2bUqLYq6JolHKmvSy2GznUCkThqjUlQk5uem5OR+mqyaJ+MJ1fIdKHMfSmYNvSVZ9++Odeb
	hzAET9+iqNij6f8Ca+PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVEYk-0000000HFhd-2X8u;
	Thu, 04 Jun 2026 20:20:58 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVEYg-0000000HFfV-3dd5
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 20:20:56 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7e6b5c374e5so1264400a34.0
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 13:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780604454; x=1781209254; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kcgz1FBr0J4qXoUHyaNL3XQfYa/z8zpzCDQPO3u6gd8=;
        b=ikvs4AMuy000q80/UuFlTobhcvVy48Vh78xi8XLGbLwVZPJMg7xdi0bDbn62IzNdiw
         evFmk4XbAsW2Pq2hrWwG5oL/FHOHsDmMQF9wBAxg+2hYT5wIKofOrnp8QhAKmH1oMus+
         tVTOs4uTZlyNTOwdnO49HN52/6Aba+nV/epe/EIaeG7OpNMnURnbdIaho9ehuVGZ1lli
         CZGCaN89KeIZlWHhQlT8sYDDlkbpIEtggicC7gXhLv8wnh92AvKvM9fIRACnK7sqJ87f
         DLY2KFUh+yLEtiO3Ew2mANM+wC7Ych4iKnJhTFscU9++ryfhtW9fxdu/Q46GcSWg6m5H
         L/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780604454; x=1781209254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kcgz1FBr0J4qXoUHyaNL3XQfYa/z8zpzCDQPO3u6gd8=;
        b=tLDAJtYzuPXbO7i7BLbaSChISe7h3blSj7e7TgKYxfhFk9pbQ2rXEB9SxTXmYLExTZ
         oKt0vgcdSJwaesm1+w5JATrnRqK2rYxnhU/2DKM5EJYbRyKGxQmKWJCUcOWIm3NZJ3f0
         IFhdDPFSy+Wk96BSw/jFPXFlwRb+zpwN+ws4Cfj91iUSbVNbk90llcsfrmLqca+qeUxE
         2Mfk+OR+dBzFEUX5Dq0EomIbjUgAGwGkZYirTq/xslyOX9Y5EH6VZ4xG/87Kevg+NnZ0
         DnIczU/bMI3wnI95GvG9zbmILp17lPbnfUEDXZEbGlh/3y903V7LkocLRyHjoIA6wsbd
         FB8A==
X-Forwarded-Encrypted: i=1; AFNElJ/NnS3gkn83XXzhWuP03jAzZwJnucMB21J8cS/AeowdV6Rvls/D+SO/X0yq/hRUrAKi0+6VYO+C+BzAbjUttQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzCqXG8y9A1i/NZovCVnp4HL7Tv6n+3MktemSLArTsz8ncFgt+1
	FkSCZZOivSuvLFG8tf3/B5hTiDtw4WbrnNNEAhaNJlyvQ2vwq/HrMzFz
X-Gm-Gg: Acq92OH0/QCCuFvVERR7NizbpOywJA4By0SMliZNIusR6gG9wmu4YTmVmtQKKCI192b
	AecYU4IDgz8oO+dZUOWjfxOaItvBT7vTvBf3N9wZ43OFA31k5rI0psBWFT2voNXU++OeB47cXCA
	ebvsxm4VLabycohYjTZGrQv9fopsMNiWBJo9JFU0o5hRdfYfrqy4nVICHJ1ISDcisVXxIbrwYH0
	T9x0frjxemWJpN86vKY9Aich/0ZQJeaIR087b/t7lliLbtDo1pmK4M3vtLSIfAvx7i0LdDFn+Kf
	sAxomws6gXrL+oY2s3ssBHNcp5IFeSnU50pUXX2NxPwPxOKovcFVh6HWpeVYCVR0SaF4fxK4yWJ
	7LdECysSSwN+80hJ2tMKggjvWIatLatopho+rCSlsz/PB+BmPWBKp1tkFYjijV4OOEeBehCYmOt
	E3Cmy4bA5qWY/ILUNpRD59TtzC6Olyxjw=
X-Received: by 2002:a05:6830:368a:b0:7e6:d7f4:16e with SMTP id 46e09a7af769-7e6f949fccemr2968986a34.12.1780604453769;
        Thu, 04 Jun 2026 13:20:53 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e6e796c675sm4541800a34.24.2026.06.04.13.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 13:20:53 -0700 (PDT)
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
Subject: [PATCH V10 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Thu,  4 Jun 2026 15:18:24 -0500
Message-ID: <20260604201832.60656-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604201832.60656-1-macroalpha82@gmail.com>
References: <20260604201832.60656-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_132054_910683_699838D4 
X-CRM114-Status: UNSURE (   9.44  )
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
---
 .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 9b2af104f186d..81b6e85decd52 100644
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
