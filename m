Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61FC4FAD3E7
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Apr 2026 04:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LMyl5uQPKb/RvDuB83UNp9JVRCGjtEUBL068eTINV3k=; b=0C/r/0UQxCuxjg
	xZbnTBr9QYDUnT9y0of3hR6k1L8PpVERzA6S2lXkKrwZwmO4fXZTXaOZ67iIZjJNEGdAFWkuRj9G+
	MtZrJJo2uUvTOUQK1jCg8Mu3lR0nRQRkMsrdHE4cPbl3f081Jz7VD9l+FYhz1IyUKzGBKItUKnlKB
	bhotlE1pZk+0gkbh6c1+G3I7qOL8omrULfQ3FNUzkGb/F5/JsuTCpFlZPrGP717JMeSGZLdoKs4ZL
	h6l0Z53Vdcg4vAMrCDSuDKvKUIOYKayQ+RJXqJHN8q3qNy/v3PdNk6D1va2sVZZdRPpj0eVruih8e
	vPEk/asCWN2cD+xEH7Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFlgP-0000000B1kt-3Udn;
	Thu, 23 Apr 2026 04:28:57 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFlgN-0000000B1k8-1YIB
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Apr 2026 04:28:56 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-c76c60c7502so2685382a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Apr 2026 21:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776918534; x=1777523334; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XjjUIS+FpVjGKchfRJSkovojenGlk/xbLLBCCHWtqGU=;
        b=L74PH/GgFdZad/5gz4nZJ07QrDU4QYL1NR2lHxs2bAMyqnwh9JDfTiK/76wClW1S7o
         mSJBClNOV2DFO8cOif5R84+f/5p7nKLRw7JgyHwnPJpU69zYFRdE/Ro52CMMW3kZgvci
         xKXFzFh/HIQMez9vZcO7Fv9AIyjh/VTdhAihJyvtaFpXYtemmOuWGqdDB63fBHE1oh+2
         uPROoNXSQPSfxOitLCjNXZaGcm/KzNz84ReCNKo6/RnQdsgXExbt8Zc5EENLPatx0ejc
         LWgztay6pb82/m5JcMpmAHaifhe/ttAoiqWF901+bygqZXzye62sT94h1SdrCzs6Zm/9
         U+CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776918534; x=1777523334;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XjjUIS+FpVjGKchfRJSkovojenGlk/xbLLBCCHWtqGU=;
        b=g2bXzXRk9wYJDTaV4Gq52gbxfg0RQbNMNalHlDw5tgH6kJSCqbTr9Qe5op17CKhN7K
         gMhR+xBzqs2urRj6k+aKzf5yMSAiwobUeJsF38VHq758vf2iA8LNI93Wcqd2yLVp7Vps
         iBGynKvR7nk8GBGYye/v5G3f/pYjl6OnX7qf/2zfYH6928QrqnvLZr7lEd1GLEbCR5qS
         WtRjvhArKbvqjnaMwsOhDfslX3eoDW+FIHctGHj4e0WSjNjTzi49FE5bvgfLEbhVsR19
         njs9/D5Lry6xx45wjEqEq20ZnnpA7Ae+SgOwxLLwdEGy0/eGVRKCc58UCth3dEbEGjWc
         /y3w==
X-Forwarded-Encrypted: i=1; AFNElJ8N6UqT3tP826gqbmMZx6dvsb2Hfco0/NByF3hplPkoAqzhHcpMLEtFgVWprmmmSljx7IvqkMRr+rEXeobmEA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHf4+1mG3+bxqFgrx19BK+dGMZ8EvCuQx31xorLWg+Lpq8dbe2
	N51unqZTZzBhoR6EJ9YaB8Yy/7HIpOkE1fUUcDaBjRsZ2jUwzFGe5vXY
X-Gm-Gg: AeBDieufRApP+LD2jyRULqu2vm7fImU8gS6IbNzmJ/5bwyasS0UbKSTf6MGSwbQ8wPq
	b3nqFxTiv/Rt+Xg6Sex/d1ut0Ay3GXN2yasnKcY7fIk59aZ9lKG6FzjoMc6hzV80yUKUEY7JcCU
	+V7JEKLFMTtx1eDMk8phUuRQ8lAwfzb1tGz3xNtFoNUDRv6+5g2cbtWemcmYkI2Mmi2xio5sm2F
	2myEJ8pu3jdFaXWwir41brlKxNK6sMAxk36BHv8CI6efWcTZ5xIpga7HzSL5xMFq95whCL/+g+6
	tG1MPD8+Bk+Y8nh8Z7LSwUbbdbHiTXayNkWdH4+0cp+8y/gvPodczEJd45hv9b+YOUlpQXc9v55
	/5rjYXBhiRza58NHYrtQO4gv387gwdzrCW4r0vAAiMzEC6axKCbJt/6LC/S54wCjIX7354NtvrP
	T3THr5qb4gJzpnHounzlAbvhPQgbsgi8A1rRn71cuCiUaMt+gkoggyAv3vqMs8crd4hAoo
X-Received: by 2002:a17:903:f8b:b0:2b4:6122:10f8 with SMTP id d9443c01a7336-2b5f9eb4a00mr190635855ad.21.1776918533945;
        Wed, 22 Apr 2026 21:28:53 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5fab4049bsm165723755ad.77.2026.04.22.21.28.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 21:28:53 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Lee Jones <lee@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Joseph Chen <chenjh@rock-chips.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	David Rau <David.Rau.opensource@dm.renesas.com>,
	Animesh Agarwal <animeshagarwal28@gmail.com>,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 1/2] dt-bindings: mfd: rockchip: drop redundant wakeup-source definitions
Date: Thu, 23 Apr 2026 11:28:30 +0700
Message-ID: <20260423042831.21114-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_212855_417558_CA3A180B 
X-CRM114-Status: GOOD (  10.28  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

The 'wakeup-source' property already has its type defined in the core
schema. The Rockchip MFD bindings redundantly specify 'type: boolean'
and provide descriptions which only repeat the generic meaning of the
property. Drop these redundant definitions and descriptions to clean
up the binding files and rely on the core schema instead.
No functional change intended.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml | 5 +----
 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml | 5 +----
 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml | 5 +----
 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 5 +----
 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml | 5 +----
 5 files changed, 5 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
index 7c71447200ba..8e394ab6879b 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
@@ -29,10 +29,7 @@ properties:
     description:
       Telling whether or not this PMIC is controlling the system power.
 
-  wakeup-source:
-    type: boolean
-    description:
-      Device can be used as a wakeup source.
+  wakeup-source: true
 
   vcc1-supply:
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
index da2391530c16..548ba1f30712 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
@@ -48,10 +48,7 @@ properties:
 
   system-power-controller: true
 
-  wakeup-source:
-    type: boolean
-    description:
-      Device can be used as a wakeup source.
+  wakeup-source: true
 
   vcc1-supply:
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
index 50dfffac8fbf..40f8f23afad3 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
@@ -43,10 +43,7 @@ properties:
 
   system-power-controller: true
 
-  wakeup-source:
-    type: boolean
-    description:
-      Device can be used as a wakeup source.
+  wakeup-source: true
 
   vcc1-supply:
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index 2cb6d176a84c..b99aaff100fb 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -55,10 +55,7 @@ properties:
 
   system-power-controller: true
 
-  wakeup-source:
-    type: boolean
-    description:
-      Device can be used as a wakeup source.
+  wakeup-source: true
 
   vcc1-supply:
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
index 90d944c27ba1..b7af774b1395 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
@@ -43,10 +43,7 @@ properties:
 
   system-power-controller: true
 
-  wakeup-source:
-    type: boolean
-    description:
-      Device can be used as a wakeup source.
+  wakeup-source: true
 
   vcc1-supply:
     description:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
