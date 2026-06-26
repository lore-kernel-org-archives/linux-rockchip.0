Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0831C43602
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 16:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dAd8GN4WsVwD3NiHnAklQ3yAgVbCYrytn7zWM3cs6k=; b=NXv2CPuuJe5Ysy
	kqDgA9xA2gK9TsUfENYmdDyvN+9piBlVvh1DBXdB41yP8Z064lke0nCa6m6mQBNLR14VmOWGGHIpt
	Sw/jEmg5u5bAQqB1SeXGQ1RBIZmduCQuaI/05UJSJyzJHWl+aHZHYHEdNFEWzkZOo/T1ZopBxmr1T
	hbs/aGr2upQMPAgI8VrZlzlUtz9RmxeT5rAEgth/Bc1NCz9jHH2bsnG74ywkspKx7JYcaZsZXIAm7
	bwB41kwQxHAooD8M7OIdke/a7Xo0+b2+1TaDVaYgevxmUiJtOVJDHdHb+8LKRrdQvH2oFs0/yKMku
	qKAQFkVzSmYE4lmJLH+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9Ck-0000000BbcL-2wUV;
	Fri, 26 Jun 2026 16:14:58 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9Ch-0000000Bbaq-3gAQ
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 16:14:57 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-7e6dcc22cbcso888276a34.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 09:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782490495; x=1783095295; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j9fg6CPH5fXaDARyBWa0tR4+RNpX2W01JudkDFTpO7A=;
        b=b0pJYNGzN4sS+7Z5crfqiQ2B8uGu1n+5s+qn22ka2/JCBkH+L3yET0sz7UHK1CGtSs
         osiRwJQD9PUp6e3KprbnOE5plhRBKZ7yqbFjfBqfbwX8NUp5+dnxiHoOsWcS37cD5lT5
         VPtEtc4e89vZEPRZ88T8xJG9v8DTKqXCi6jEvSH+Ey2G2Ib+hB54mmXSxtIZnzoo/zuj
         nXPA8JGcV6x/ONfAtcYNnaXn3i4tLhD07b1PdYHd3D+/ZI9BIkDTX9rwgVffP/eBexgs
         fH1Znu8CcJ9+RYAkRB6YrnB0imz7oRspdMMsYOr+V/E6zzyAfu9PBdukzaCdqD+Qulho
         2P0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782490495; x=1783095295;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j9fg6CPH5fXaDARyBWa0tR4+RNpX2W01JudkDFTpO7A=;
        b=EWR2Pp+KuzhbNa2JHrOqr9HKECGNyVNz9m8eV4JzCAibKq1qa8sKGQPJCaLdOSe9j4
         17cHHxCBxn9tEWnismkfOJbZwJDINEC+dE9X36QeBOqkM3q+hLdPGCLPnAndJpvAQVLj
         ThUza4t7+y/7x1ABwAwGKGOaGWSVTekpIB2tUPnv7+b7+kptns+kTZzHXENm8FjYhir+
         p2dNvZ67sM+Lg4NRUpdzPoQVXO2jGRw3M3GqDY/NIJVy7H/xlHg3jIsZV56dlKjBQ/bJ
         4lF6EJfAGmYB+2bAa47oDLw/UPiQeSfXrpt5rlFEZnctfzQe9XX2kS+bzZcXuni7D9bS
         OWCw==
X-Forwarded-Encrypted: i=1; AFNElJ+71tmJ8MBEUAGbD7iGeEKSdk5NTuWLpiF2QGNHQMNilxJ+W/m2WsPrVujPlUbJr1+K1DPrAIItB+ZPrb3P7w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzhYjbWToUS8nuXVjfzFj9bD5ADwCiYvwviXWOwGatlH4Bd+6D3
	ZiKxGfIOE1+f8pwYc0WwWw3waKeHnP2LLTsQ6G3iFtIl7eNmGJFBhT+4
X-Gm-Gg: AfdE7cmgVUXpnotfxXcc4RrlAMuH7R4mWkjnr7srVUrET0IC/Mu8y8OpbwjS41obGat
	mlluarhjjmfF6UoF3kyrPA7L+Cryn2qDJqFq+MjHEkmSdTevnl9KqlYdRNpnI6L6sFFMyS4SaSJ
	auiOgAxzPYX2IKwTTr1gAhdJnLTwVhc4AFbNa8XYliKMPqnraUQ3Ite6eee/+EStHsL2rNxcsTs
	eQBttY2RvjgC1smKzGH5ao+6ImBP9CamfdPQ43vIDyF/6sOdH4iNrqTs01+43uSGDBkTvpjBUyx
	HYGPHEyPpiEdzZ3eVwS3p1hgvDQfws6+DBOV2EUz49kDizUy20D7T8fKnIFnuQaQqLtaGTRBU37
	CV1PgdkmegMk8Avbbu7kYbhmO0InluznWZ7mMLx85aelv2FwHlHTXyJ4wGtH4PXmOMOCnNzGOu+
	KEbMv8fSPZLAs=
X-Received: by 2002:a05:6830:6d05:b0:7e7:57d8:a8c2 with SMTP id 46e09a7af769-7e99c35dd5cmr6634868a34.12.1782490494903;
        Fri, 26 Jun 2026 09:14:54 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e9aa579235sm1970211a34.1.2026.06.26.09.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 09:14:54 -0700 (PDT)
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
Subject: [PATCH V15 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Fri, 26 Jun 2026 11:12:23 -0500
Message-ID: <20260626161230.93069-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260626161230.93069-1-macroalpha82@gmail.com>
References: <20260626161230.93069-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_091455_941033_5893F140 
X-CRM114-Status: UNSURE (   9.83  )
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
very different register layout. An interrupt is not required for this
specific implementation and is not present on my test hardware
(a 42607p).

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
