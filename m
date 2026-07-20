Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DA37C4452F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 20:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ND77o7qXfBtAXnWTrh7vZRB34jPgq40lBbm4SOW7qA=; b=4Eydp0/FpeA/3B
	U5qpsj0mmTwHZqP7RjTTSsc3W76rvCp06+YXK+rBRai45j0tDvEQukJwJjabZCae5uC+FwANUFHFi
	S2Vl8WR9b7QyyiiRRdtU4SkGEJ57ZxiDXMXFsqqhrXabbQGEe7IXIpqGgasr+tZjz5OQOpOGs63az
	1cDse9VyjGAQCT61YKw+8dypZxChDGEa5pGqmzGmB460tMrQHgXKDeWpL9QaCbL2tuV0b6LaGKhDa
	fcFCVyjdyngoxP1asV4FmErexwK83RP1rNFrCulqHL7FjKXp3r/jFWkse6tJIWjpNl9XrxoQIvzTk
	/7KqfbmcOQlUSL87EhHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wluZ1-00000007raw-1oc0;
	Mon, 20 Jul 2026 20:26:11 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wluYw-00000007rZ1-3uTu
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 20:26:08 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-4a46a53abc9so4579944b6e.3
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 13:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784579166; x=1785183966; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GK+FG51ApM0c5ceijH9gfcRis3iTLtG8+LrJylpTuMY=;
        b=FKFMPyysx3GsDHtdgfMTWf8nraPMBPoTEH0xXZrwnFCEStfsVCxhbPtBdUckdbJdxa
         ijfKgsAcBszBA/xWq7h8Js1k8LdbfC6zffk5dJaIWkrWZyzHhYri08KHvBSav6yb2Rh6
         KlB0UQs7EQNrMHCQXQBAJG6kk9UpRP+BpTRYzwYBZbe4jQUpTsRpgOEnMKRAfQMmVYyN
         Rt2P+KWRdXkNmdOkxxMSdgkR6SlsOmLC2raeYiKmJjoxsN/HiE8CzD3xk2XYGnX6Kf7j
         /TB0qBbz/23+dAA7gbd1OtjEwA+ajFWcYoTZ+lWTqbOAhJj4M3S5boUD+MdAfzd51SnJ
         qThQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784579166; x=1785183966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=GK+FG51ApM0c5ceijH9gfcRis3iTLtG8+LrJylpTuMY=;
        b=Lg3thJqXJMeC1p5/sRk7gBS2OWb6zjfMocrI0lODGx3VgRiAYbkhKFVKk65b5fI7ly
         OrmVeuvxXAWVLc35fUNLfrzeyjNUOVznAR87NT1LXr7MZ4b66v+TixdEUygW7I8GnXxj
         2NoluVfid49X29ahvnSyzl8tp0h6OhLmcdc0jrTTfRITKEyzPZq+GsiyqnEq6DTW9dJx
         PL98nlp7qLkP40SV+tdtVu0ReQsac3EnxQ74jzrCkyVXMRok4twr5qfmCmB/bZS5om5Z
         SdeePc91HBS/7ZSYSHr9AJ43t7J7sgbwiATyHh+g7DdqcNX6m4REJPNY8DoFXRemcHYm
         K4FQ==
X-Forwarded-Encrypted: i=1; AHgh+RpRriEbvY7Vok5jdsiM4OC4qmWgwM7im13Gw18ZSPdcm0fwCLXgxpqHx57UjWvZ7EcjYNbuMFawGVK9dls9LA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyo0MoyERMf3vEOTSNm/Jbhh9lKdAmW5jPtS8NMxUQ7z2e0DJTh
	dk33GCiykWWb4AAzsre+R0dJAib+XVtWuVmRPwLR0bjRPn3/o0zNegCf
X-Gm-Gg: AfdE7cnhjz4vBbz3TwfOz/ixiR+6qOKTKeJvgjoTbadPusUHkQEFz6TxbhDxDmmRlOK
	kw9OmBqCbDe8O+m6cq79Trtavahu95tFWdLDrzF48/Q3nxISr/jeKDAX1674Z3iwe9durzSxEMb
	q46jC/mU/ufPgkhV6nmSeqxOqqVBarfFTNSDhKyqeICLfSMjMoHKkgk7R3BnHW8fC+zPdEZRL4O
	AeB9fkNi4m2GldIa4vpb9P17xyIeN9WOe83/VkUXvuEeIXeO258VxyA4Joq2Op5Bhd7QM89BLTX
	FfYMFxzAE9wkRe/GgiM5gLw50JtBXv+CZOKLzgPGdoIMABuEV2vcyFT7yOY3ZlQ/mPcXI4tG1Xc
	RaPPuXBKEdTDz/Q+ySBC2zyCvbl9gszX79FW0L0wQ8cW7z4DQXokjFebXNb8Ykaqdw2bwDAqRRO
	KeumLHzpDiyFtvLbZ6yCpBEg==
X-Received: by 2002:a05:6808:16a5:b0:496:dfe1:e8ce with SMTP id 5614622812f47-4a4d031daa1mr7693832b6e.22.1784579165871;
        Mon, 20 Jul 2026 13:26:05 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9988:5abf:3c51:d168])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a4d3e5a0cdsm8029550b6e.18.2026.07.20.13.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 13:26:04 -0700 (PDT)
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
Subject: [PATCH V18 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Mon, 20 Jul 2026 15:23:34 -0500
Message-ID: <20260720202343.70138-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260720202343.70138-1-macroalpha82@gmail.com>
References: <20260720202343.70138-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_132606_975813_B1DB22F3 
X-CRM114-Status: UNSURE (   9.92  )
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
very different register layout. The icm42607 currently does not use an
interrupt because wake on movement and buffers are not supported, and
cannot be implemented on my test device which lacks an interrupt line.

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
