Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBC2EC25B0C
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Aug 2022 17:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5M3oEjWiwqX20bvqN85nI3xfjs/fkLlwj8zDtP5/joM=; b=C9UfgM5T2H3F+5
	7E29bSr1w5K6VqAeSHB+6J2jYyB5ZQNyUPVh4w1UrATHyTo5Ym3oTpApRHRaIBDVEhnfyYxD8nRo3
	C+vEPXLOEzbAMYOKVMn67yVdvqhgYTviOUBKxRuwrI+bOk7iSByy+1L+Xm8w4XrmxCz82jq9w7bB2
	UVV44Nnq6Ak9OGsalhvqQGbP0/quhKAaOHdvfZ8W5Ig0svIMyrtwM62Y3W7EcAoTvhAjiPcbZGdf+
	gWD8yemc/RtSO372KP2J/T393GHzr+gXHV785zqVTvjwMvjKaiw//3pR2fd1kyxJ7EIvtEnTkr5T+
	NEcwgF1mIiQ576ki41Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL6hr-00FBTV-II; Mon, 08 Aug 2022 17:38:23 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL6hp-00FBRU-3K
	for linux-rockchip@lists.infradead.org; Mon, 08 Aug 2022 17:38:22 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-10dc1b16c12so11318685fac.6
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Aug 2022 10:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=L34mygYcsY64WF3ptC9v2v7ym7ZciNtxv50Hixsy1YI=;
        b=lFUXTKxhL8csTgo1zVj4Xe8va4Q9KZhTl/VBjIpkPw3OQiowkMPjoTOlpVJVn+fUKR
         BWNLz9J5/dP0KwSmo6phTXGHiu/dI1ht9y6xslSCh96S4QKhpw2VwQV0un6hnK3iR1Ac
         9ltv5yMznOEb3mLblFNTEv5uV6mN98cUqQd9vtniHJxUv3Of3o/igh4SC2z9F1hbolE5
         B60xOMRBDvlADjcvFLXiP7BGqLMBtxOcyn+TcMe4381L8t8Tsg1333s/idq3DUDGaeAd
         nqyQMgN4RDe/AH+E+o23NwLOeyb8odA8cY7plxG7xkZoOLAIK7lrlgzHhpoumkznqq2E
         /SDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=L34mygYcsY64WF3ptC9v2v7ym7ZciNtxv50Hixsy1YI=;
        b=fPyW9TdNqoE22xBhs5hG0IKII6kR6oJSnZF/qBv4f6sWDy1IWqfIv6ANKCmTy4Dnfp
         XvhIDw/t+51ACExudhb8mYbBNhRp3GfKVtLTOImQFOnbzPs1A0lROh6/HJPK7+DaElUr
         u3ST/Afl9UJ2/zu218mfDLml+u1vMsBJd75LzXCusHZQdnT0m2ZBdsehaW/KyJc8KSoF
         N5FcXq5MvFYtj5y7AhzEGLYgzJxsq512/0lCbwqYDxjOYhWmSlUXD7ghZhGxCADUSqYH
         9NQBmyTQhnJFqwQDjiKrT+pOD+TAiM3naUIbAt0k8DmaJT0gC8Jv+jAjQ3JOdzSPVOEI
         PC/A==
X-Gm-Message-State: ACgBeo3Fq7ROLP//+ZvOmHsohZ+x+l30omCl+0ILt+Ho/5Sr/wgx2Jig
	jf5dSV9qnH2OGkWrs0g5FrScKwx3JUo=
X-Google-Smtp-Source: AA6agR6IoEE8ecvchR2Y/NxDwX5JbFx4dJ7QZJ6Xzm0FFbCe/sHKT48mxnZ6ZY2+8jz7EvPq9wUSJw==
X-Received: by 2002:a05:6870:2191:b0:10e:75b6:fc3a with SMTP id l17-20020a056870219100b0010e75b6fc3amr9066772oae.236.1659980299387;
        Mon, 08 Aug 2022 10:38:19 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id s2-20020a056870248200b0010edfa2b0e8sm2429202oaq.50.2022.08.08.10.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 10:38:18 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	jon.lin@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 1/4] dt-bindings: Add Rockchip rk817 battery charger support
Date: Mon,  8 Aug 2022 12:38:06 -0500
Message-Id: <20220808173809.11320-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220808173809.11320-1-macroalpha82@gmail.com>
References: <20220808173809.11320-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_103821_162880_3BF52734 
X-CRM114-Status: GOOD (  12.90  )
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
