Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F4AEC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ka6Pbl5aGJGyJmuQL88W1IOiu8sz2UETGxovhyB9JJw=; b=CiLXh44ASiSHgk
	6xo58oVytR2nosK1HhfvZ6pNDwLh/yeyUAIjSnEUU8yyxkQBVKTlQxFYpMpZ5j7RJvL3mB/7J1irj
	zuLr8UJ2N4kQQC8Rz2132jM3vjpapyX8T7H1qiJXEA+X6In3EiN92C6yJJ7ZI/hPmLXN9Wr4ZtaVQ
	NbcyOGKC90nR5+P4qj/1ZrYfeS+NOkG2Ff8Qi1EZspVRwn1eFXoP5KtFyAVw+mxZ29f5wOy/VkWKc
	oCLMDkBreJzmU5TGAt/4liJWQSqB/OvVTrkrJFu+N1C5ndeExKkar480FT12e8WH+bXjXG6mgjRCd
	qAelUZl/qF+Z73nbsVjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPuX-00BBr7-VC; Fri, 29 Apr 2022 12:39:50 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPtg-00BBGr-J4; Fri, 29 Apr 2022 12:39:00 +0000
Received: by mail-qv1-xf36.google.com with SMTP id iy15so5207960qvb.9;
 Fri, 29 Apr 2022 05:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vCEAxF1XGQVI6TESeyTtKarjsI2DOXqFlQIji0+YAnU=;
 b=qAkxqmFcJ29UdhhIEfWnLEEY4/fefUsLLUudCZF2uPq6zZQuTtXwKhZTy2dPNaYBt4
 csWjjOGbRz40Sq2Yq5TAyRvG5Rud8P4S0oPpn84Fsr1e/rf+Rmd/l1g09mkZNg7aZfFD
 1wGlBt790JFkEOwkb7OfyuzWXmxfmelzIF+HszURttaia1JcxrqwDYYFq2ngN/z4IP5/
 AA8wQRHc/+l6O6I4zCLTPFoqb9Kf3HtcajY8ZdluFy4+6aEWJzBzyv/KL8jwEh/KPtW+
 x+PKFJJ6nCtBZM2fEC6ReXun/Imd0icK9uFZF11YPssgnnACxXPBnBsV88h6lulTNjsQ
 ozBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vCEAxF1XGQVI6TESeyTtKarjsI2DOXqFlQIji0+YAnU=;
 b=ueMdEh2F5LR2jm9lsE0FBaEPjiM7+31tFffNmumVyyUPo5ydUNblNYoBS55ToQvglO
 Ll8z7+Kpzc8/byifZ4lHvjheOc/NHQ+0lbUNiCJRtjN1finqEAOnfvnjbMNTqh6sw1T4
 nzamEPhFpDlCdupKKtAfYRM97wzeBmv6AXmMC8AEDLJtGn2CGYlXqv3MxpZonCqY32RH
 CGbfcSoQZVGUB0/+QuhCaViVl7PgwuprhOLzDXAKSnxDA2DnjO4EpNr9MjsIHEw6cStK
 OWquhbQAnVhsT5N2YT3gt+eUvYRjO21Ts8RNZSmZsMPTh3zjmz2WLMbx148FTvoen+YX
 xsCg==
X-Gm-Message-State: AOAM5300VQZjtOVIa8teP85i3zkb3oRSIxEsMF7v+6KVQGU9CfDzEVh8
 Jywj0ORNtRh2tABQOQha7uCP+t7up+KBOf1F
X-Google-Smtp-Source: ABdhPJzo3JwBaRrRayU2eJjKNV4wT5sAuKmjJsRBD3D0SduanmReOc+dv0Hukxj42aPIC8fMQe81Zw==
X-Received: by 2002:a05:6214:2b09:b0:446:7c3a:92c0 with SMTP id
 jx9-20020a0562142b0900b004467c3a92c0mr27176034qvb.87.1651235919741; 
 Fri, 29 Apr 2022 05:38:39 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v126-20020a37dc84000000b0069f9c375519sm1431644qki.46.2022.04.29.05.38.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 05:38:39 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Marc Zyngier <maz@kernel.org>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v9 1/5] dt-bindings: PCI: Remove fallback from Rockchip
 DesignWare binding
Date: Fri, 29 Apr 2022 08:38:27 -0400
Message-Id: <20220429123832.2376381-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220429123832.2376381-1-pgwipeout@gmail.com>
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_053856_714967_1B6D9207 
X-CRM114-Status: GOOD (  11.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The snps,dw-pcie binds to a standalone driver. It is not fully
compatible with the Rockchip implementation and causes a hang if it
binds to the device.

Remove this binding as a valid fallback.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pci/rockchip-dw-pcie.yaml    | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 142bbe577763..bc0a9d1db750 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -19,20 +19,10 @@ description: |+
 allOf:
   - $ref: /schemas/pci/pci-bus.yaml#
 
-# We need a select here so we don't match all nodes with 'snps,dw-pcie'
-select:
-  properties:
-    compatible:
-      contains:
-        const: rockchip,rk3568-pcie
-  required:
-    - compatible
-
 properties:
   compatible:
     items:
       - const: rockchip,rk3568-pcie
-      - const: snps,dw-pcie
 
   reg:
     items:
@@ -110,7 +100,7 @@ examples:
         #size-cells = <2>;
 
         pcie3x2: pcie@fe280000 {
-            compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";
+            compatible = "rockchip,rk3568-pcie";
             reg = <0x3 0xc0800000 0x0 0x390000>,
                   <0x0 0xfe280000 0x0 0x10000>,
                   <0x3 0x80000000 0x0 0x100000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
