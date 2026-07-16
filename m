Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9256C44518
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 18:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZDpovj88tAtr+CREttrxvTgac3Cn1RHRGSXFzFcgmo=; b=Lrp8VZmLLjWG15
	L3j2yAVwtVdxYgcXbnXnAmGIOFKkFg8ML5xCz3mzEbUXcN6FSA6wif9C/zIg8CeawlAOnbImaqOlh
	09bsHuW77VB1+CnbMvGZCd76GrOLlImFyF9b3pE+jrN6g66EE7J7+cAUcno6Hvi06pAi9n9Qw//Q6
	In6Vx+JAc5reLb2mbtV1OfBqHBH3F94o8W3Q5mBhwo3H03OpVs1pIIi6iW6bLgPQeNc4THUXruDWw
	3NZAeiZX7g6vHO+ooUwvkuMrskln7GnL7TcurCalttU7dU7dc5Cg1vlDUgbEq+4tEhmD9HCKDTW+c
	dUT2JzrXT4iAmZlTkgmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQpW-00000000O7r-2kXh;
	Thu, 16 Jul 2026 18:29:06 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQpT-00000000O5S-153c
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 18:29:04 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-7eb5a9f02e8so3327413a34.0
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 11:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784226542; x=1784831342; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zeav82c+zHUEfGFTy6EKqJYIkUOVt3UnaQ/1FR4S0cQ=;
        b=p5jPDvvtIXoTVZ6Lt5gN/35sBspL3seCcYcYvG1yCBF0c/Y/QNh9BADOWZJUBCNqR1
         +7A5GIip+2jUMKGsG+E4y5EkXzF0CcX9noTNPwHQJ25QRgpRZcrtqXpIp0mTLqtpDZTh
         Y2td/z8WC6B7ltcgIKN1Cp5QpKmU32ywbMHWzEfWX+M263pQ8HCoDiPVVQFitsz6MAgc
         eUhgN1Cenrl2mP6Q0ERkZGJKWyq7wYs2F/pFyANwNFoeOHlNFvP5XtCITq36nBGGgFnN
         an/WSRizCWD4omSpMG47N8uRIuMmTMiy1AP6mJrRFDjcOR/Z+UHcCUbH+Zq+mKGpAqZg
         g1iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784226542; x=1784831342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=zeav82c+zHUEfGFTy6EKqJYIkUOVt3UnaQ/1FR4S0cQ=;
        b=I/2uSNSCQ7vUDLqUUHzuBu74GPtkNCpxG5Gfho0sA0yvyRpTOJze8gwmxcQO8sWG7z
         R3N2afZNd1b5ltC/MVblCipXAca0IHy8kBz8i3rwiuJPHW/eVcvW4pqhCgywZzcEoQWZ
         JuhYWclF1duwhEm68BIV/5TNi85QcW5YNZOAmstr0+HcKoHXXvHmTael5Um8e/TNBeyl
         /4qEW4EqWxWQ9jhehMjM8adr7olQrm/LzEaz17PDxCZJCWBgCiLixTAplysTOin/UqcR
         yTHRwSvXI7lFTMTofzd+eG2F14Xe5dz263RUVZuQMvgmSKhoTOQMr7DD3pEzFU1LchXt
         xJ7Q==
X-Forwarded-Encrypted: i=1; AHgh+Ro3sQ/VY4Aj3Nfrv4buXNexJFkD5JA3wv24qdeeqvVhly915yO8zHR44MgHv7FMs+m0ldPdKqa3hgwcMquv5Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzh6AxOhwZXXhMue4oj8yT8ZrDklaNnTrIRWzd04u9bNyfZkhDK
	Z1emiZIV+OgbGR/v5RDvcHLkXAGDimtcYMnEHvHdayPe4UqYzhbFx3Za
X-Gm-Gg: AfdE7clSBYH2MphBKZ1900Uo7l+7gNwBAML0fe8i/MHp+CtZghE5GbU+NUrpkVZTpIl
	o13xBS+MwuU8L6mJ+BJgj81+ZriCf1r8xQAS0fVdElC18qrOG+aWEASzY9S2QRk740fBrgexVYO
	blFpdVKkPcXaTy3z9w8uGYCNE880kLt+nSy7oT+2hOvNW0EiNLoPgmqMoqgidoSIDX8N+ePiefC
	PyUTndBFTWjUY99igpEcjhT41JoRawSh50DjiE5cQwV7Lshc5o0AUE0kwBFVqIVVjDtml3AiTCS
	6JbFK5vp8rA+WYv0xhM6Zl/ycuo8dY4jB/Yt1oriVI3bojqJWo4hCysNXmMPQwPLMlQMihX3vRA
	ChWoKQuiMjZiGBcmxYdOkALRtQZoXMBJwMJz5IZJ/Em0sAuKdYc6lII4NMh5vV4Pn7IDDbn6fmx
	ZN
X-Received: by 2002:a05:6830:6aeb:b0:7e9:cc39:2ef0 with SMTP id 46e09a7af769-7ec59cc5592mr5016777a34.18.1784226542136;
        Thu, 16 Jul 2026 11:29:02 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcb3f6826sm19939993a34.27.2026.07.16.11.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 11:29:01 -0700 (PDT)
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
Subject: [PATCH V17 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Thu, 16 Jul 2026 13:26:29 -0500
Message-ID: <20260716182637.24310-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260716182637.24310-1-macroalpha82@gmail.com>
References: <20260716182637.24310-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_112903_311308_0FF7812D 
X-CRM114-Status: UNSURE (   9.96  )
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
