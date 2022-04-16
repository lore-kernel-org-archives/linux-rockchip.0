Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 102E3C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eoKjGsUqn366TaQMxIiXNHBYpCfqZBXLrNBlVZ/vVI=; b=K6xmjIH8DDLW+j
	/V7IIkYh0YtzWY77X/c51vjY7Ymv2srtvTQAB7O6XQ6FoUPJd9QqWM+zk6+JkiGoFtaBj9zDYahcp
	91DVVZKR0zpvnJxDPKTfuK9l7T37NEIl7mkLP3CuHaJ+OVCgH/rxiicZNJfpFMDRVjOwfufeKnuqo
	lLo5h+6HealnIeTh0OuKZvEgMHdav3Mw6wKwJ2OAC3iD2c1QZ+Cub5NYoOv1SDHcVK0UgBZ4MemUO
	+mn/NaNDoHMUFVNHQABqNc/xupk/KezEF/h+HvguLWRIbzGMpf7fywGJsG8ndVmnLIhkLI6zkb8VH
	4zFX+qCouGidO5U8KY0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nffIt-00ChEU-Ub; Sat, 16 Apr 2022 10:05:19 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nffIi-00Ch8g-K2; Sat, 16 Apr 2022 10:05:09 +0000
Received: by mail-qk1-x730.google.com with SMTP id e10so8116740qka.6;
 Sat, 16 Apr 2022 03:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UMYeeN0iZUy6EfrHqDAGGWFWHi99PGIp7rnql4YH69k=;
 b=mOvkRR5eJ9vjx8JtRPhJIqLuhXOHNKl0zTHY8+1g55VqwGg8RzRhl7jVK+QFBBJN96
 OAiaLwoMsQt85+snNBi2HWtGsgpwdes4z36dZfPc7PwMM6L5cmY+ExBzYgQQzROOURbm
 zjCWI3+Gl7ZWd4i40j8335oFN7+UIjnSK4W+2p/wPxzt/s12i0z5RHvdhVKzG8pJdVKQ
 sauubRY1VD/0QO8Y7gJxDgixdZI93uAVviUWUVFLK8s6Zo3USyMsO1XN5FIqhGg6VYsM
 3ufyo3YPATuyYWWnjNk1sY29pvC2et5TqFn1a8Fra8HUvdmT6tnl9O1I8VC0+bJBY7o5
 mI8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UMYeeN0iZUy6EfrHqDAGGWFWHi99PGIp7rnql4YH69k=;
 b=krcIIMxzq0FWg8ZDUo8WKm91k6mw0lSDiVN9eC0FZjKvH7imSudkY4TBpaIHM/ZSZ5
 EUkH1p9l/MYVincCA+WD3uOFSdnPUzdyLukyC8hcp9hLq86tiRjhz2wn27t5VwpFdepl
 rLiU3ofHgwYfCjVHi7HN7FzNDV8oa5z+MagNP0dOZ06Xm+vsIqKKc1bPVRp7t9ZArQjA
 AW8EP2CVNvM0C6XJsI75y323VZ++glWRdrP5X7Pb9zAbtZ0Phvfak1F5TpcZLZQHtPBW
 pMEHcH5z45kSCWmJxb2s9gilGsI1jz1+8VHlTMHaV8HJktSM5H03Xbsa+VHLF01L1lMx
 0KBw==
X-Gm-Message-State: AOAM531Qc60LKLneW8DSQEzFC88HJxDmuOKfpyd35gAjENF5KqLTW9sN
 cPibhm+2z0+DDhITvDVYF3rojOwD1XaWISIr
X-Google-Smtp-Source: ABdhPJwRq9n5D0f3hCXGHWGLW0h4Bo0ha8X8ZtKGx70RNTsRJvEua2poQiwJfEw5GWgJbXpFldqigw==
X-Received: by 2002:a05:620a:350:b0:69e:5a7e:7464 with SMTP id
 t16-20020a05620a035000b0069e5a7e7464mr1576353qkm.321.1650103505389; 
 Sat, 16 Apr 2022 03:05:05 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 n22-20020ac85b56000000b002f1d7a2867dsm4263188qtw.67.2022.04.16.03.05.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 03:05:05 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/4] dt-bindings: pci: remove fallback from Rockchip
 DesignWare binding
Date: Sat, 16 Apr 2022 06:04:59 -0400
Message-Id: <20220416100502.627289-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416100502.627289-1-pgwipeout@gmail.com>
References: <20220416100502.627289-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_030508_704537_9F2BE8ED 
X-CRM114-Status: GOOD (  11.23  )
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

The snps,dw-pcie binds to a standalone driver.
It is not fully compatible with the Rockchip implementation and causes a
hang if it binds to the device.

Remove this binding as a valid fallback.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
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
