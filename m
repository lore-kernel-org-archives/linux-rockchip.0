Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47C73C4321E
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Apr 2022 21:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eoKjGsUqn366TaQMxIiXNHBYpCfqZBXLrNBlVZ/vVI=; b=tvJaFwf4/qv9tj
	WPD5HlIXB0kd3SXCUxulr1t/7IS+U2HMsj2d0NDQkaUBbFaZ2yK3fSLOG1joIvPlOo51jAb/S/O79
	5Wp+yoBEnPQ+AYd/YMncHWKW7A8SDndl6j++A3tvthKNdMyAP2ai238RdOaP7c8RtEPSLGI7DSwAo
	bF1YrpZzngRv8fEziS7doTYTWLvf9+40CmOBCcORGO8l+Lt4oNu3Eww/ixQsB9VqmYUbaIBhTFX4N
	z1iDDb8Mc2SWV9e4qVTPfIBt7SNPjSTCyIu9eZMCdkn3TOZvHIfyxKh5StzwNupx+YHPqthQ1Ukqi
	cxD6CHWnZobvjvQGR0rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfT9E-00BJi6-AN; Fri, 15 Apr 2022 21:06:32 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfT9A-00BJff-UN; Fri, 15 Apr 2022 21:06:31 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id a10so7157473qvm.8;
 Fri, 15 Apr 2022 14:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UMYeeN0iZUy6EfrHqDAGGWFWHi99PGIp7rnql4YH69k=;
 b=jVy4wLQXJ5Xiw1bj4CpGcPN5pnCX6r59sOQO66Jz2Vvt9y4Tzwih3hlFcvyeCRD4Hr
 LG25pmwmM7+PyhWhkrHsXBYgNA8egqCTX/GQpcuiu6Z3xr6hQaQ674okap8z7lUy6jWH
 cI/MZpMTQQiQEtnnhPPF3nS2ALkqeJB3ADFpyVw3h1HJRB32It3hjvY5e+/WxOe6LS9p
 ZArv72BnSZ4UFPQCo6s86Gyg39ezv/dxU+L7EUHvsIKugHNqdCRkYJ+3Ut1aZ4aXxcsg
 YsXNTagZdOsdTXEW82dZ0JfC00y5Xlc3ZGqxfiowc/pXWOgMcQN9oy4bonSI9KD2lUHy
 eLhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UMYeeN0iZUy6EfrHqDAGGWFWHi99PGIp7rnql4YH69k=;
 b=oR3EYDZSfXpF/QFGPzhoYJqkXM8wGQzJn+WuXAmfjFfU6cKM5r4Zwk4w3UKPk3Ic2h
 y7wA5RbHK3CmVvY3qAAa8K4BLQEz85YCnGQeJ4ueDOjgYPlLq442ZSDYpFAJ++DjZVrl
 PrM5QsDxRGOlyF6IAmXlTHToVA3sZ9NMxrhh0UdLkUx87FsuXeYDriNMgR42/qMGSWaM
 HcX4GqIE7kMcbcrUvU0hiJi6n3i+pmfV7sc1q8cYiZOZG4nqyg98oxpNTR40trj/7cXD
 kjEYjkyg6r0epYPvmBDpcy79NOQ1xKo4RtL/osDW2/PucwBhBe36FZoT9mVqZEemrSjD
 6dKA==
X-Gm-Message-State: AOAM531hzfqWgprtDXe9b8pAO+hXb9ILNafx+f1EE/4Y73/8BeztPnkW
 FlJhTKzXcEFmjvNU/2OGfnw=
X-Google-Smtp-Source: ABdhPJxbrMCYX9pst0yUUj30dL5YGetX2lKuySfQVgVFm/cqlONSsHjg0w3yNcEDpoX2+Hn5wU7qSw==
X-Received: by 2002:a05:6214:2aa5:b0:446:3a3d:bdf with SMTP id
 js5-20020a0562142aa500b004463a3d0bdfmr499333qvb.55.1650056787492; 
 Fri, 15 Apr 2022 14:06:27 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 w8-20020a05620a148800b0069c4884c990sm2838664qkj.108.2022.04.15.14.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Apr 2022 14:06:27 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: pci: remove fallback from Rockchip
 DesignWare binding
Date: Fri, 15 Apr 2022 17:06:18 -0400
Message-Id: <20220415210621.538109-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220415210621.538109-1-pgwipeout@gmail.com>
References: <20220415210621.538109-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_140629_011446_B742E5F6 
X-CRM114-Status: GOOD (  11.45  )
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
