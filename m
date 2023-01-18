Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07600C32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 19:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qg1+fAm45H3SH0jtlkb5CekyGWM3BLm7LNNij9QkGPg=; b=kJmKGS+RPuo2HQ
	LZPSqhQTNvUr0okLCMQV5VBFfe5x7Eg9lDCHLncZ55FQzJZShkLzOKOFCNWFJLO5F6Cr7V40oLH/Z
	9CRZqysvX48KdoaFqmXXVFnIcNjcc7HKlG87gmprGotaNzBvY5mI0+mV5IMTAv8wMsICjgZNuxCiI
	aIdS0irtXJCQPVnbYD7mRLSeXdHTJge5dFpx0qUUi0iUMfkWPpLvhGq8bJjv6PE229FFiANEeq1K7
	gNT6x2NNkg8/EnX8I6oa3RTDFyqlV1VqBqqkgUN8XACvrvi4uXALQ44xVrFYh0HznSNZX/ZeX+R/z
	DQVQ/2/1K+rG1VyKMw/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIE9M-002VfX-32; Wed, 18 Jan 2023 19:31:08 +0000
Received: from mail-oa1-f49.google.com ([209.85.160.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIE9I-002VcZ-Br; Wed, 18 Jan 2023 19:31:05 +0000
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-15085b8a2f7so96001fac.2;
        Wed, 18 Jan 2023 11:31:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L0sk6WSE6h2ySUyFVnUkIwye39tqP2uFGs/tVLLc9YM=;
        b=pJHl7VSesZoJiUWf3GxNTtDqpHk4fWPq+RxU2JEXUJgFe7JWTF2OSEV1qA4G+b8m29
         wcS1f/rAfq/0ZtBIaVPbsbbRDkm86CfpZKOqXMG1biIKDWssgtljJvVBTRGcaSL5TeV5
         5s9msQxJk5A+7GzEfbqawrq+vP8BmD3YOD4jPLJJT2ICVE/o25kLsvHQ7oOU7rFVFhEj
         ph6Lb2g0kmzuKQNl7g8lSBfTk/j5VFxrMEaSqPf1Ro6PHU0CzeALObzO2PoqnEQ6L55h
         o0olFj0jFL3t9xPFmTWbI8+hPcmSLZq/+QVaNfdlmxi8H0zB7zWPC3OpmBsDzQwW6WQe
         qXfA==
X-Gm-Message-State: AFqh2kpQDGMQxbVxnuwXDm5+JtflAjoATMKhSSJJSrFuR6MRbWJy9m8P
	AFL3bSnFVKJb3/hELpAXcA==
X-Google-Smtp-Source: AMrXdXsAOEkXzjlCDtKORZICvzXTbloceRTTyJ1tdkrIkJ1m0D2pIsRTPrNjsQbT6tvOlUoaFZrhPw==
X-Received: by 2002:a05:6870:bf0d:b0:148:3440:cfde with SMTP id qh13-20020a056870bf0d00b001483440cfdemr4472842oab.28.1674070262146;
        Wed, 18 Jan 2023 11:31:02 -0800 (PST)
Received: from robh_at_kernel.org ([4.31.143.193])
        by smtp.gmail.com with ESMTPSA id f18-20020a056871071200b0014f81d27ce3sm18948186oap.55.2023.01.18.11.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 11:31:01 -0800 (PST)
Received: (nullmailer pid 673650 invoked by uid 1000);
	Wed, 18 Jan 2023 19:31:01 -0000
From: Rob Herring <robh@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Felipe Balbi <balbi@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains property
Date: Wed, 18 Jan 2023 13:30:55 -0600
Message-Id: <20230118193056.673514-1-robh@kernel.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_113104_446765_B6B3AAAE 
X-CRM114-Status: GOOD (  11.23  )
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

The Rockchip RK3399 DWC3 node has 'power-domains' property which isn't
allowed by the schema:

usb@fe900000: Unevaluated properties are not allowed ('power-domains' was unexpected)

Allow DWC3 nodes to have a power-domains entry. We could instead move
the power-domains property to the parent wrapper node, but the could be
an ABI break (Linux shouldn't care). Also, we don't want to encourage
the pattern of wrapper nodes just to define resources such as clocks,
resets, power-domains, etc. when not necessary.

Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
 - Allow 2 power domains and explain what they are
---
 Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
index 6d78048c4613..be36956af53b 100644
--- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
@@ -91,6 +91,16 @@ properties:
         - usb2-phy
         - usb3-phy
 
+  power-domains:
+    description:
+      The DWC3 has 2 power-domains. The power management unit (PMU) and
+      everything else. The PMU is typically always powered and may not have an
+      entry.
+    minItems: 1
+    items:
+      - description: Core
+      - description: Power management unit
+
   resets:
     minItems: 1
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
