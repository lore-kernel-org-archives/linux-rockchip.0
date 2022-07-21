Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E401EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jul 2022 16:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSiTeA49QvwjAPWnZCjbSrBAz+oiM/vjoFqoUUrzmyg=; b=tOUNbg8kYwHkfq
	c12gTaMNgjgEkqRldtU1kcQTy0KPQ0P/+LM6umyS+bjFEl6JwKj+iVrOgnOXwSdBXExfXKut/pZuX
	YGjhmnIao7JTUIt46p2uwgbzo/nSABKQhY5HEGSF29RoA48QN2DjAKFYnWEWb58fKpDDB36q6Bul/
	pSKoQOg29rNAx3DYeOvs56US4KF5LwY9HIKE6k5Ouc24HCRpfS3MBWUt9NsOav10isGYO3USnY94e
	GIR2pYnRGxA92jTPiFIppzWTFXrolFNNx5hcWOas93rPbBIPxEeFk9rmF4ZSxbTvEyobUL7Gqozld
	tZcrH/VEj/FhO+1mslzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEYs0-009oDS-3u; Thu, 21 Jul 2022 16:17:48 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEYrm-009nuj-Pe; Thu, 21 Jul 2022 16:17:37 +0000
Received: by mail-oi1-x22e.google.com with SMTP id r82so2582232oig.2;
        Thu, 21 Jul 2022 09:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=za+JFS8UrUe1EXtSy/HN8YRbGNE25Vj78rAPO0Rkf/g=;
        b=XE5kAqwl3Rf5mcVlgqYtU3nZNYS1XkyqIh80DOiZZT8LTpu5cJy5s70ZJUkGGj80Is
         cxR8Dngy+eim6aaUkbJZKdTm2oVowGoTVk+TqMk3NqHgZ7OFVFqYU3KMmBmlz1u2+q4H
         MVzp9ppVTVsHVfli3f2Xa5banhpGKdQG4Uj8lVmvpL8Fls4GVRFHoBn7T6UlWv4K+uuI
         3uiYOCvD3R5a2rgvoTvqwh8rnMnaW1t2SPb28P6aPC/2ZnRz61iH5yp7QAyFDYcgLUDk
         RQ4qfUMvsKzXwu7occ9gO+oji3gk/fu3V6TXvLSQ0vOZ55BMwedY07oFPxwV7t1vDiaM
         l+gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=za+JFS8UrUe1EXtSy/HN8YRbGNE25Vj78rAPO0Rkf/g=;
        b=mzqqq33qpGYxJ4gf1CGD+9O4E7FJD3OkMxbSSkgGW1zcNx6wPphkg7N93qHTsp2zJU
         c3Xnaj6bMSExmxaKu17pXNEGXhSERRv71x3PMdTKj9wLROA7/iGghDnFND6q//TbBrFl
         2R8f2fTCkS9Ds/bFVB/vGIYXUtKvg5i8qRgT0jFT2uqAAdNP1W1tPhvfwkSOL1cUBzGk
         ykSRxuSJvn3vamqt1p/dzQUBJPU7O7oYxwTGv+hVkoNzTeTSoRWxaHlA9srB+mWUUbQ1
         7hesa0Mxm0QKo4DvnEbyLlx4gp2n4L/hsWQX5zRlH+Rv4v8PhCmUmr+Uw9DZElvbGBiA
         2smA==
X-Gm-Message-State: AJIora+c/B+sQxGwS3XTnpO1AbYeXiWBaefVBw9S1u0isxXI/5JXSNW+
	qjyow8h3vK7u9xioUyfy0Ho=
X-Google-Smtp-Source: AGRyM1sM7fsacs//VGlMkfgECCovjPPTLIXhH1cECgMNdUWQh5ZDiWMSUGDHlQDg3KznL+HThctTxQ==
X-Received: by 2002:a05:6808:1647:b0:335:4374:487 with SMTP id az7-20020a056808164700b0033543740487mr4904952oib.121.1658420253643;
        Thu, 21 Jul 2022 09:17:33 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id cy18-20020a056830699200b0061cc06a886csm951732otb.9.2022.07.21.09.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 09:17:33 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	jon.lin@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lee.jones@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND 1/4 v7] dt-bindings: Add Rockchip rk817 battery charger support
Date: Thu, 21 Jul 2022 11:17:15 -0500
Message-Id: <20220721161718.29800-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220721161718.29800-1-macroalpha82@gmail.com>
References: <20220721161718.29800-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_091734_861615_64452D41 
X-CRM114-Status: GOOD (  13.77  )
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

Create dt-binding documentation to document rk817 battery and charger
usage. New device-tree properties have been added.

- rockchip,resistor-sense-micro-ohms: The value in microohms of the
                                      sample resistor.
- rockchip,sleep-enter-current-microamp: The value in microamps of the
                                         sleep enter current.
- rockchip,sleep-filter-current: The value in microamps of the sleep
                                 filter current.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Note that this patch requires the following commit (still pending):
https://lore.kernel.org/linux-rockchip/20220519161731.1168-1-macroalpha82@gmail.com/

 .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index bfc1720adc43..d0dccb1aaf4c 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -117,6 +117,47 @@ properties:
         description:
           Describes if the microphone uses differential mode.
 
+  charger:
+    description: |
+      The child node for the charger to hold additional properties. If a
+      battery is not in use, this node can be omitted.
+    type: object
+    properties:
+      monitored-battery:
+        description: |
+          A phandle to a monitored battery node that contains a valid
+          value for:
+          charge-full-design-microamp-hours,
+          charge-term-current-microamp,
+          constant-charge-current-max-microamp,
+          constant-charge-voltage-max-microvolt,
+          voltage-max-design-microvolt,
+          voltage-min-design-microvolt,
+          and a valid ocv-capacity table.
+
+      rockchip,resistor-sense-micro-ohms:
+        description: |
+          Value in microohms of the battery sense resistor. This value is
+          used by the driver to set the correct divisor value to translate
+          ADC readings into the proper units of measure.
+        enum: [10000, 20000]
+
+      rockchip,sleep-enter-current-microamp:
+        description: |
+          Value in microamps of the sleep enter current for the charger.
+          Value is used by the driver to calibrate the relax threshold.
+
+      rockchip,sleep-filter-current-microamp:
+        description:
+          Value in microamps of the sleep filter current for the charger.
+          Value is used by the driver to derive the sleep sample current.
+
+    required:
+      - monitored-battery
+      - rockchip,resistor-sense-micro-ohms
+      - rockchip,sleep-enter-current-microamp
+      - rockchip,sleep-filter-current-microamp
+
 allOf:
   - if:
       properties:
@@ -323,6 +364,13 @@ examples:
                 };
             };
 
+            rk817_charger: charger {
+                monitored-battery = <&battery>;
+                rockchip,resistor-sense-micro-ohms = <10000>;
+                rockchip,sleep-enter-current-microamp = <300000>;
+                rockchip,sleep-filter-current-microamp = <100000>;
+            };
+
             rk817_codec: codec {
                 rockchip,mic-in-differential;
             };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
