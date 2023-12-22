Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 095EDC4706C
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kX0ZuGcsy0YCcBF4X8ytn5Al0gBegyGRw95U9CvkAMk=; b=gTSI40hYANuux4
	Na2rnd7KxvnyWUMt7aviOrbMeDotplOSQE54Q9jExO55u7ohpp0aCjVbsIMrphbLgxUD2C+NTSut1
	v6oNrPImu9Yz92We6Nh4a4yDG9fTr9EW2j6fsK+tkrMw2jwzTTl/9zuVxbAl6tJV2rOCA9/AZvhwR
	QlhnE6XbAPhp3yHmvYYrQeDx5PWP5/CL102U4+Tf4DbWyJgmLWDNMqjeS9heoiIspSD9vGF4BPIa8
	gBqWFPW+GxVKY0AAQxa4oPYm5pO5ESw5cWvX4BGeERQxVXhPCiohpchyhx3E7jT7WoPGICz0DQ4ns
	TNcsD1ZXRp9T7L++p9Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXi-006WV9-2x;
	Fri, 22 Dec 2023 17:42:38 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXV-006WJu-1q;
	Fri, 22 Dec 2023 17:42:28 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-336746c7b6dso1673113f8f.0;
        Fri, 22 Dec 2023 09:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266943; x=1703871743; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xcMMn1wo5ecoqzzFfZ/NThvc+Exg7NREzlaFXx0npiA=;
        b=LJi8j8F230ETfCHi97ASdYR6i4aGsIRvVjdhCsG3Dq81hPxUYuljbXLetaIDJT/pWL
         MNQ3lppUFLSbGuXXs37HQ+0awsGSPB2Jh+bQ2N12Ksnzh16TjnOwdioa5iJlg+UVxZu+
         W4x5TsmvPP1uHiesK3gHIb4MV6snOnK+//eOFPbSWE+tqmZOiPD88n0ZWVM+ocJ+V4kw
         YUpAQHvqXuk4uk9iIHAW+0kaLcLh6KIRgijJhUpy4LNyr96zVF7/3I65I1GJ1fTsTNWW
         RbRLO8uS+QYaIVd6X3Fl5IlDxCXhvgvn6lNfv82yz3WrNpZ3Kb4PQVmRqB1t3psiMjxc
         eQmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266943; x=1703871743;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xcMMn1wo5ecoqzzFfZ/NThvc+Exg7NREzlaFXx0npiA=;
        b=eoAcks6i/GtSg/SBR6Nxz+lqYeIxFFTWrsXz9lAcpSLJNF3daMZuFQyGD/V3idujv+
         eBsTmG4n0sISncDasIEMPjF79tIIWTbsYYTlmUcVKCkDJjCXfbGkd6b+IUQ9tQCEBzli
         SqE2s3aursarzrMkHa4iO1K2h9zBY6fcxMF9dfbX9Y5P0d8HGBjxDhzrZIcgDAhPwQan
         AbLT2my0uWFUpV4yv+1mMKXqua2kPD/Dt6tX4Ehrujrpop3GGswg5MHVRWZNNJwSskfH
         X9x//2JrYgv22Jtt1bHiU/wKR0E2VPPnnBbYY/wAxhDXV1oJU6Y1ujSFBayHyhSKWwRX
         tsJA==
X-Gm-Message-State: AOJu0Yym7qNMpfDP2bmJxv9mcjyl8M1j2rJma2sToYtpW5nFfaqGiwbJ
	iKYZ/HB4sVgAbHJ3p9Er9g==
X-Google-Smtp-Source: AGHT+IH55tOdjFEvsimvQ0AWwkhlparYzELlSEvcxba6ID4XqVa/0ncC9dCVT9baJ10rAbzbikAuQg==
X-Received: by 2002:a5d:6546:0:b0:336:7794:4475 with SMTP id z6-20020a5d6546000000b0033677944475mr992813wrv.109.1703266943072;
        Fri, 22 Dec 2023 09:42:23 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:22 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 01/29] dt-bindings: display: rockchip,inno-hdmi: Document RK3128 compatible
Date: Fri, 22 Dec 2023 18:41:52 +0100
Message-ID: <20231222174220.55249-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094225_615951_816D8EA5 
X-CRM114-Status: GOOD (  10.56  )
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

The integration for this SoC is different from the currently existing: It
needs it's PHY's reference clock rate to calculate the DDC bus frequency
correctly. The controller is also part of a powerdomain, so this gets added
as an mandatory property for this variant.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
changes in v2:
 - clarify that the controller itself is part of the powerdomain
 - simplify clock-names
 - made power-domains property only allowed (and required) for new variant

changes in v3:
 - collect RB

changes in v4:
 - none

 .../display/rockchip/rockchip,inno-hdmi.yaml  | 40 ++++++++++++++++++-
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
index 96889c86849a..be78dcfa1c76 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
@@ -14,6 +14,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3036-inno-hdmi
+      - rockchip,rk3128-inno-hdmi
 
   reg:
     maxItems: 1
@@ -22,10 +23,19 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: The HDMI controller main clock
+      - description: The HDMI PHY reference clock
 
   clock-names:
-    const: pclk
+    minItems: 1
+    items:
+      - const: pclk
+      - const: ref
+
+  power-domains:
+    maxItems: 1
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -55,6 +65,32 @@ required:
   - pinctrl-names
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3036-inno-hdmi
+
+    then:
+      properties:
+        power-domains: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3128-inno-hdmi
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+      required:
+        - power-domains
+
 additionalProperties: false
 
 examples:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
