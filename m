Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A928CC46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoIohrPp4WuAlXo5CfmXLuXNrZUlyas8ZwbMOb8fVAQ=; b=OBDSfn6M0cejz0
	7i2VbBqyu+ff1YpzulSaq7i9CShhn1S7DK2zJt78R0bE0tmpaCuof+Ap31pOX8Cy9d401rfMoyhoa
	9XVh4TN74XnBvyk6ctihV6eRdhlLTzyFwRv6/NrnZoxYuaD6sxDKJbriI248IhcZFs9HMQmS9IQdr
	L8OMJ2GA46P5u/XN1F+who56wQ4izT+ehH/8qL/65vx8SYBoIaAVSXfw4Wdmn3fYgZvm5+5j1Yhly
	qBOFkP9EGrHxrLW8kfX8829pTANSx0NqKRFHeLIy2BkP1pYNBfatz7pQG9mfn5EbPd4nPVPFfJHRq
	sobrfwNmqZcq9bR+/M+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdSz-00Enzk-1o;
	Tue, 19 Dec 2023 17:01:13 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdSw-00Enx3-0K;
	Tue, 19 Dec 2023 17:01:12 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40d2764c0f2so11335135e9.2;
        Tue, 19 Dec 2023 09:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005268; x=1703610068; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LuKwY9nW5+R7DeHCNpC77KMqCvSYagjOBXGDTeiO2JI=;
        b=PGXrVQxWHjwtI5DeuJ7BjNgXjGdJMnRRORAkgOPu1/EMsnqc4iIoHj+253sgljb16x
         Ic3dhIV2k+2ffshXpJRiMQ/mtvkalzClipdmrsYdxi1mzN1MT8gpdiIg828UWLUjPvXC
         poWCviBecA5FAIJrfOgLLrjevghyemnjE30WkAx7FBz/mKoT7KnJof65rv5t2s5QUQDg
         gK1F8f385ltZfEnHE3mc0kshd8QByKoMCAgAp2OCE35Kym/uoycjpLKzmvq6WH/qBgQK
         0Kv+1GB+5Wqv726fGqah+M6nQXZAWvIDe+t30qJ+nCzkPsMng+pmd5Tz71rztDnVeq5O
         6ItA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005268; x=1703610068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LuKwY9nW5+R7DeHCNpC77KMqCvSYagjOBXGDTeiO2JI=;
        b=NRlpCldAbvzKpRTpm47Mx6kbrmO2STYx62de+Zk8gO28fZhuz4AdCX3ogaXsQjPnCS
         MtpMLgDBkhm1+Hy5aZ+/XelQfh8Y2anPi7tdyP9sITquq3BRbPuzt/SPFf3DIH33NBBy
         F+Csr78LgKHpyeAy/acxmt+CA8q/FwH3QfLbUuv1xyTSnQwrWhUyk8ss4dd2QQGWcpUT
         yzSt4zobJGT7jyu20lGxC6ZUdwX051jVcte9q5Ah27n683kmGYJtQse75/l6x3+0eMkl
         M3aUVeRoGfyAzejm6DzZrv0JC9CoVFKZPRlOV9vbaA9a1hlQ7LSwrKL+U3nHHPGRdpFZ
         WJlw==
X-Gm-Message-State: AOJu0Yy3kcORGlg+jzraF9edUTFqJFQjoqjHS9ZqvtoYWhwDu44dThaT
	SZ/u4rypVQErqDwjikNp0g==
X-Google-Smtp-Source: AGHT+IHjyJcBo9pFgVWTlwbgCdScLicwo5eWIY6pSPcbe8l2hqtFhG18/pJv3xIxu5MSaFiQGfmU6A==
X-Received: by 2002:a05:600c:5408:b0:40d:3084:e66b with SMTP id he8-20020a05600c540800b0040d3084e66bmr127509wmb.163.1703005267997;
        Tue, 19 Dec 2023 09:01:07 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:07 -0800 (PST)
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
Subject: [PATCH v3 01/29] dt-bindings: display: rockchip,inno-hdmi: Document RK3128 compatible
Date: Tue, 19 Dec 2023 18:00:31 +0100
Message-ID: <20231219170100.188800-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090110_136617_A2B93C60 
X-CRM114-Status: GOOD (  11.24  )
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
