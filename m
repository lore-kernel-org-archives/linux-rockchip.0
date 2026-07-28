Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A28ABC54F51
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 22:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ND77o7qXfBtAXnWTrh7vZRB34jPgq40lBbm4SOW7qA=; b=Ga8eA82uNHHbLr
	5H29NJ4QvOOwk6hUDszMZPhOatRYtHGuAIsc4DtMw9fLt+IuMHIKrzV77IAPIXCGl87VbNXyqksHh
	Txly+ENUKchScNMyMw/WeWu7fzyCCBuGfeYoOlpP0Y4LB7O77x3spoIlEOCxrN3yNYmzYQfgSPzga
	ewnaNuibQ9chKACcHUYgqxTzpaITl1vG7cpPAxHK7LmGX0+z3wOGOsqlSUSLxgwaqwyYGDcXgvUDV
	9ppOZJFVO1BkRBbrTj4/2FkK1V76K/AquDAJie9JOeCO/GZScEoGM1xHEHN+Mfphiw719gmLUnQAD
	LOiLpBvEQXME6WF+XCjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woqkX-00000006RtK-0FRm;
	Tue, 28 Jul 2026 22:58:13 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woqkS-00000006Rpy-0vBW
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 22:58:09 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-44ae14b4fd6so130318fac.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 15:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785279487; x=1785884287; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GK+FG51ApM0c5ceijH9gfcRis3iTLtG8+LrJylpTuMY=;
        b=af9cg1Q4pUL3XlMzTAfA58nO0M8fDn6EmEgwGZDWUF/usq7CWtUFe23DaOMXYNOmYY
         k8KcT7ZQOt4KsbJnpX9Lo5cUbF1fY3iJrab7fok3cQpQN3tG26xEvXw3h3Ng+bi6TYgL
         d6QE7bVn6YNr/o7iNkDJCsfeeiXWDsPmLt/nNaC0ZLFwB/2dkRKTzW63aX9JDzR5muAV
         yKucdp7ctOkJicf5SJjbKrMpbzwb6BIcMHAnHwPMZ2jI1OMvq23+GU3ftW580DMldWW/
         9/FpnVPtB67FREuNh81B1JG5b/k7nfzHYlm4ZvHZ3GSewfq6NnW/zk+r1ggnwq0sLSX6
         sKcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785279487; x=1785884287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=GK+FG51ApM0c5ceijH9gfcRis3iTLtG8+LrJylpTuMY=;
        b=mcSkS1mhE2IqbTKE+PAgTPu0QWAd2WhKuAd4TxBYJZby82xaCZ19jXX5CDXQPJJP8f
         mUYtUCOmI9ZVC7BBPM/9bo16vmOVErwtGx7KSqJW7aHP4V3pXMXEkwUvGTL9JWbtQ4ub
         70FBOFs3p5RG1RPM7FF7Ur5EGEgi8U/xs9nSsiFg6x04+pdrkdQqKYCIueN/wANocx2k
         DOr2TyhVEW29hRipHCoiOmVmg/aAu8U+s5WQdqnq3OYW05UYXKamF6xY5d2MNfaG2xJm
         l7iAIVRlFgGBjG63o9fbdmwF4OUFVvcz7Gg/VvZVdAhvLBGGpq5t49U5WfbL+ozUsGyt
         x90g==
X-Forwarded-Encrypted: i=1; AHgh+RpNZKHtnT0nw3xnfw/opuKrPXYA7IkXgXXIBbacoqqyHa5nsIIkiFQv81EMAa7ZJWMwlDVxtLECmvc3mbXMtw==@lists.infradead.org
X-Gm-Message-State: AOJu0YymgFuIx0gi4PVoMlD3VZci9SgY0mg32Qx9ree/SsnBUEyuMVZc
	OncyebT/uqCtl2OYYqZz9wvNqqz/NCLXRWuzJ7Ho7uiWOrAJasKoM+pqjPcEUw==
X-Gm-Gg: AR+sD12cFUJbtn/6MdOAI4ApPyCrwbE5YFlRZJt6VHRhR/p1jVt8he6579cOv0f+De5
	XC3mZ6+qyRW6dX6vB0nApzt2qqHPth+4HasOLrrongVnGVP8vLMdXXlVOSaK6CMAH9D9WV90a5w
	qX1+MpEweAHEs9baIHLu6O7NCLbKM9SL1EAZSkAj4U/P6ZrjjvsDNUhnM/dmP44WXgt9TKhcTMn
	Ea1EQdkrTH9Gg1x6Xa1v3WXnTeFeMhUqRUoCiowdmIU5nk31zVfdhWw+N8UK2ZqibLKfg0r4WDD
	G6vrQnKKg5K86nbuCSEbBQ1xWnBDy8LyxOkyD8Epjk3evXyDHkALqMpDENoqtJfC72VtukwwYbG
	INo+QuNJ1BbU6r2dSo+EQ0UGdqkaMp73V06XSqYouhrAY5ed+YEkrcDMTF+228KjCZf7jTy/cCr
	tTUm0LRDCsAVeHjnC6X44hvq7vuBkDAB5+Q7Fyk4C8cYyy/R1HRwzT1DOoSVFVjS//6assy+o3P
	qIvRKAQ
X-Received: by 2002:a05:6870:7204:b0:44c:e350:a0b7 with SMTP id 586e51a60fabf-4586cd87f4fmr2888608fac.27.1785279487214;
        Tue, 28 Jul 2026 15:58:07 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9162:e42b:cb94:2d55])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4588646ade0sm990277fac.5.2026.07.28.15.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 15:58:06 -0700 (PDT)
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
Subject: [PATCH V21 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Tue, 28 Jul 2026 17:55:33 -0500
Message-ID: <20260728225542.174825-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260728225542.174825-1-macroalpha82@gmail.com>
References: <20260728225542.174825-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_155808_287651_48250E7C 
X-CRM114-Status: GOOD (  10.19  )
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
