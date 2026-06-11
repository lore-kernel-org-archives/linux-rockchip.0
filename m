Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0E24CD98D5
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 20:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyfhIgq5jjz2IljX8p//ebQ/8S0/R3ZWsOPHvvbmgKo=; b=cdITGjKjyUrwPy
	MTnvjLZjR59TMJSu6FK31PfDUZruqDm8deQnY8tCGHg3GBae4/xFpTj479CcQcdB70QiTMywzplAG
	yuPbQwHlYeDttojDqxnIrBOqCPFCvKRoxCKZPx/ftapf3C1cS+25ATGSYmsrwWx0aflu5zxT76IPm
	ZwQL3D4NeYBSK0r/uIeFrbD01HtlNRFhPtA+uz+wwOTqeVYOOLkEFXNYrc2esLMKbQpSJr+QNq/9V
	CJrBu5/Dbv3Q4Q8BMRVkkdrN+ze59nYkhEHg/J0MsKLCDBIlDjBl0W1Ur6r5g533tpjGUL5ypNVQw
	5XrR141r/5Wn8EV4V3Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm17-0000000A2zR-1i5j;
	Thu, 11 Jun 2026 20:28:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm15-0000000A2x0-0GTr
	for linux-rockchip@bombadil.infradead.org;
	Thu, 11 Jun 2026 20:28:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=AG46e6wh0vfo+H1QfKvpne8/nrh3wipAUO48FCP+P1g=; b=XXO0o9FbIatDWOo/4Sg+f/vXQW
	EbshY18jN2+t7Do+qhwAytHtAMxnBd56ZrWlcE8Ig6PeNJ4dM4Si2ZAJMXG/ULG0BJFVzCMFat5dM
	4BVDlwHJ0I7U9iThaw+kBM26WtATbcIsm5w2CF+9hhw6v1UDn94CS1j+R9b1tItJVHXKrCDNWIP3R
	NCkb3YsxReYk2MfiMVvuEcRRTzVJ8nzs6v0baO19g1NRT1EG9EJGXRmpWfEp1zaeFChTVG8iM3nYP
	ST8lqpX6FLcFNszBhgXtrQ3xKSMx7viw1aNwMofnx7oLNj8DCygRUowkr2qDQLaJCtyNgaPXe9OHy
	hUOfsk8w==;
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wXm10-00000005emG-2mdM
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 20:28:41 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-43f1f2b82c6so216840fac.3
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2026 13:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781209716; x=1781814516; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AG46e6wh0vfo+H1QfKvpne8/nrh3wipAUO48FCP+P1g=;
        b=kJeWQdCgcy23LEtTTqSZvHwqr9fdNSRNXWOoeYgDHr/cQVYm60MmPxo0ksXdK+C54i
         MSzz1DjeB/wVXnDsNatO7j7gW/goGksR65d6f/6ZiW5m3jK2OTk2YXkI3dFYe7EU6yW6
         5WHM5oEAqNbAZfyGyWjyQNgDhqhGQYqH/qGiqkfnQnx8ZOIMTr4PU+UptxSq/K7wKq/5
         sDih7P5j0kVoEhzH3eJJUMffd5MvphuVY2t5KxMEK9ilWDRWn6Mc7sfEbeVWYUQcFO8D
         q9d6kGL+s+IJByx2cOAGiYUYhG7d0GWSY50ffNzuiMyyqQQQVzTpzPg+7x63BYH8rePF
         dqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781209716; x=1781814516;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AG46e6wh0vfo+H1QfKvpne8/nrh3wipAUO48FCP+P1g=;
        b=FPHJ6ev9uWaV0Wz5/iknIJEfl6i6DghZc3NCnb47yU4B9j1c1uWkJ5s2Issn/LWBKE
         J/YIHZSfc9jiTFvhm6+uK7yDOv1ZLrdbNFMVrPHE34Kdn1SOPlSDz+pQg0+o3namraGt
         XIvPiB8omg2In38967g+KBFXOahTH2Kb3T1MZVxm24GlGiqaK8oRGWVj9d3fIoFz+mdF
         eW6eREIPvPzdSIialrfiivh/cokYduZ3Aomq4j+CPv5DXKW9QK8E/V7BobXBq6ap3B0r
         +BsFjQbGtOasR5a8fMPN2lv0nHrR8EcMa01cdtX8Pry0JP3Nz3MzGpEf+tMXuhkbi4X+
         tCbw==
X-Forwarded-Encrypted: i=1; AFNElJ9qSwIDUpu11kOJDhl+I/OOqUAZWncGbHK/iU5QQgyyG8ik1Kz/kGopEaypDb2Czs93Ctyzfb36CnRTUoMmlg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxX1Bwhp20A2DNltchPZi9pqfKLQ/1EoyLMdAmHVLMQwThVgicy
	lR6CIDUDDqv0nJo+RKK/VLO3Kiln0jwtSZoFxPiMOz8bTHZSSwa+H+tG
X-Gm-Gg: Acq92OGkYqV5byDFQUJFDXHz0w6qEObyDENX6WBWMvq4b6L9PyQbILgpIEnSO4DIjDo
	UKzPtoNiMadt3hvG6xs38/owv2lod9aaNP2zcbafiYUPft4LwNFmkM1dzyEZ33P4BCrbtYUvzVV
	FvQK1GcvH3iuaJ3r6eUKni0nSeCcWgNEZcqT3aDzCno9qALvTeWEzCYcjiP68xhWQLXv3opudky
	AUQaBnHAZsdnG1BhHilSCwftcTP1dNi0HUGlKTcnbthY/IxsDBX+/yCdQDHsp+0MDc4Ry7VTWSh
	rcPv4JF1VQmQfDBy78FQDaFGGc4OqwBcV5tsCC1U64//Vwj2uJSCFp12IqY2jP0UFnlbDOSpDbD
	bSb2XgO+OcgABYfBNQoau6SVFnr7ij7Edm+YuDc2aiAIkAbbDiiDXjXp3i2THGD+ZV+2Wa6bVxd
	kMYLqpvH6/aNgjeZ4HZlADpt6fVUZOFtbh
X-Received: by 2002:a05:6870:f289:b0:43d:2d44:5ec0 with SMTP id 586e51a60fabf-44241d43bdbmr2944367fac.26.1781209715705;
        Thu, 11 Jun 2026 13:28:35 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-44244cd05c9sm1796134fac.18.2026.06.11.13.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:28:35 -0700 (PDT)
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
Subject: [PATCH V12 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Thu, 11 Jun 2026 15:25:59 -0500
Message-ID: <20260611202607.85376-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260611202607.85376-1-macroalpha82@gmail.com>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_212839_419635_D84AA038 
X-CRM114-Status: UNSURE (   9.04  )
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
