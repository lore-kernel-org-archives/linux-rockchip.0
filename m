Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07CEECD98E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 17:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyfhIgq5jjz2IljX8p//ebQ/8S0/R3ZWsOPHvvbmgKo=; b=YylYnKt6pkApLf
	0ddJ7ceURrCSURxHhUN+jS9oouMXmcyTTKgFklthuprWxVyTIiUXa5aHAjIb1qm4t6s3Ou3+Lttxc
	2U0w0DRv6CGojFKCS9q94Le+WoFVB7SHKLEuGkfdBse2T6SzEb9UwEGmSxD3Fcu+flrSRB0bzcug9
	ZGinMMG5s88/NzLJ3YR9LtWuHY4KidrWoVgUIFXP2qJwBREACmeyEJbl+w/EeTELYisY8YN1DxNis
	pi2yNCG9XG3RoYxgUf27Dj52kqr3440NYgIxLKiUaCL2KJo19RfS4s5AjJDAT/eD4RmcWJ726fZXY
	Zo/Mo5I4kHRtl2TLUm9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6b-0000000Eeny-45VU;
	Mon, 15 Jun 2026 17:28:13 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6Y-0000000Eelr-29MY
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 17:28:12 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-7e6cee520ccso2496103a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jun 2026 10:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781544490; x=1782149290; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AG46e6wh0vfo+H1QfKvpne8/nrh3wipAUO48FCP+P1g=;
        b=ppUNHY1aoyhu+1KTdUBRahBLyo1ViImp8yqbtob2lcZ+FQf8xfM/EXP11FtTlrn4cJ
         RHbtUL4CdYqR8Ouu5HJD7+c5w9H9cPb5gKyMU+mYesEGADBOMFl6ILvEZCWCJAhLcrWO
         kH/sAwBMYk8Sx3lMcmOsLTlSFupfGMjaUeep8sKgNLTbMt1hB/e2ij6zeVphLIUCf9Gs
         9qairi+MLUrzxBUL7SemPXIbEfEOkK3GIz8UVWsDsHqJZCWXvghRr73HCtzGkgAYNS8Q
         A4hnXcCHt9/gqfTlfh8aZMRIUbq15Z4fZelzga5uV15BWbxje2/sxGy64wUyOqLIIkKH
         LcZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781544490; x=1782149290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AG46e6wh0vfo+H1QfKvpne8/nrh3wipAUO48FCP+P1g=;
        b=cB+uiB4LMcnoItNrZtnRHaU7MsP82PKWshTLCqfqcTjspI2MzG8+Itnc5MUjx0AvEW
         x6tETsOYc5ZjIe4y5N+wtfly5d6chdgNKjC6y2Om0Ev/n3JfEg1hhtRLmWfcirtyR+XM
         1zq6AhcDKbUc5tXUwwJp9pzF0JCbFsxqJKgQi6NWVQBwlHY+bXnY1vjS8pvVunZaTleH
         WlePMbjdtA31gvhBwrJRKdKyw0UMnAioO5SqftvWSaYfEJtNdx5Cms8LsufvA8WoSkRy
         dbqxCdYUMLv0DR0Lks9lT2zALafezdZ/ILrOSl71oIAHmgQqhOuJulrE7nf09a+8vM7J
         9xHA==
X-Forwarded-Encrypted: i=1; AFNElJ8bl4Z1HSJuwW26WGkgW5Xz2YZzv0B7uSoI7RbSVxTu7w350ZyfrncPUcx+UTC/2p/FQf2nKSQLEvWpsRWxSA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzNlVfKyP0Yarj4D2/FRsCD6WyDO947tsoKIa/D5W8scvsHAvd2
	UUFVcOOpLhyOwalKWHov3QvphFtgYkpeHGgYaPpGoZOWxML87SZOyj66
X-Gm-Gg: Acq92OE3lTT77OI+xc77v/i+Clb2EcJYccqDNHKfB72/tNLOBHsEHjy0RUeEJrcxgv5
	BbqFKHhANRTse+gzWcW2GirnK5b9FHB1XMqCPisgg10/WQTagSwwLG048GLa9y2lIw/2zUxhDsw
	lGC8hyq6WyTTxuktVUYpmm+ZPt3fw3Y11rqfsrswbOWOTa8dN01XVxswu3jR0TizTu6TQ9itAEl
	14TQXWHKWrZoD/OKLPS1NbRctLXdz3VTFu+oBr3FoF/Anc3MFYCD7bm92cLc9WMBFdiQd1kWSF/
	t+qnquapc6Lzt1OjU2Tmj2oSJhESxzaOiBTofLv/SLvqiTUKu3Fc5U9LHhusTO09ECjHIpF9gdg
	T4lx7keh7IKSAaQFe49tkT46nyWdrfhBz+aMePb34roXRel0APM/Pxl4ZgDAbyqgf3zExoRdP48
	06cTTY/xlpZx3BL3Amqb7/OA==
X-Received: by 2002:a05:6830:3915:b0:7dc:a51c:9197 with SMTP id 46e09a7af769-7e8fc87767fmr222189a34.7.1781544489699;
        Mon, 15 Jun 2026 10:28:09 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e79f451fe7sm4480033a34.0.2026.06.15.10.28.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 10:28:09 -0700 (PDT)
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
Subject: [PATCH V13 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Mon, 15 Jun 2026 12:25:45 -0500
Message-ID: <20260615172554.160910-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615172554.160910-1-macroalpha82@gmail.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_102810_547177_E4E3B95D 
X-CRM114-Status: UNSURE (   9.43  )
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
