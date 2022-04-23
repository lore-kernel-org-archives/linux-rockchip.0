Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69B35C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 15:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adgrdt6EY7OpmIDOkKor9h5cfzf5tOW0XMTXjUeMRzw=; b=slZ9MfJe7aCO6h
	2sxVC7T9h93q5Jwi4ovJBOKwLaSB3OYWpQf+Tyq16ryf/TD2vwP5uj+Il26QjsJds74fY8JwSDWYx
	PRN4VtMxUWke2lueMgDjq9fEj7SOLvfAgnRIcvCy7fU13OtUu/hhnvh2I6glFyCQM1S05XGwz7nAp
	8yL2WYLFxO+Gix9l2DNs20C5n7XG7WgQtedVtbH0BTVIvvuDGfa0SGmJ8sChgF4CHj8//493uBtqa
	X+TMqdbmJPlPtuFSAc0xvGPbTpazENIKMeN21xxAfnE8GaenrUMP/dY+1wHoL1XKQ/HDLYlhdP6WZ
	pn+/iEsB//TInnT5pBkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niHcM-004WKp-9O; Sat, 23 Apr 2022 15:24:14 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niHcH-004WGz-8f; Sat, 23 Apr 2022 15:24:11 +0000
Received: by mail-qt1-x835.google.com with SMTP id he8so311814qtb.9;
 Sat, 23 Apr 2022 08:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qApPth3uca4YCOXE8IxpOrj2EUsmdDr5GnAY2ojHbqA=;
 b=jT5T19XUlZImZsxepXMQHfoKPuZVtaOZC/R5qD2iqW3XVATpJ9hsq6eIygV3lhEhgq
 xAmYd4uuERjXV9meMpHb1qL2ng2BQlK4VX6mhACH8fOp/d0sv5BN7VUusVSdWv7OPkb/
 b5kwiCVUq+dxY9757TW6UYXDFaBG9Mxaq2pHanAdp2l0NbJrOb8VKCv8K/KZOmI+pS6V
 tM/ESZFs7eMoOLii5BwCk0eZmYFyOl7GOl5KjFBgkCPJDBmoD3U5U8Q4Dos7QDHPZ9Fv
 klLZkg8oXEQ9WQeQfFuib8PnyY6J6BKsSK2+ibHx+BdDWVLZpN2HTIe/cukwchmImI//
 vMcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qApPth3uca4YCOXE8IxpOrj2EUsmdDr5GnAY2ojHbqA=;
 b=AEn73QZlq+JWhztxpI2qszBAxxB+vChIHPUidsZfP4k8IrmJ/+VQrYtCbMYXE4HeBg
 WU6M/FQcIjzXpIgWh349G2dNQOE3zaz7V+4SmzVFEbj1UPWbcOiqnDvwFNrnuGGEvhPI
 dvVfnm1YF4qLLwjBFroN+4x1KWpf5NukN1Pw4Np99V41yxC+jXEoeunu6CT6qdfI4ErM
 YXql8MCH3h+umqX83M1wOpbxfnmeZuVIkUE+mzGjulpLlEUXejY04H+Zzffj5MIMRyEz
 Djk00POzIpaqlkq9QdmpCpg63aqu8n9WBnYjA0KCVAP6hnGccWsjvSjFB8KLbM32Rr1L
 2BtA==
X-Gm-Message-State: AOAM530iJviHrfoS2y/D9pRRzuYrYiYVlLiTGefLi/t9/ZlccDLJjSiL
 3hnixaDXsrxfxKi4YN8c4BA=
X-Google-Smtp-Source: ABdhPJysNVDryTlHRk1oqkOTgUVFuZHGVHZHhjbXCXeLJ74+14HrNmnrWXj5OMA7eI7vuyYCsyd9RQ==
X-Received: by 2002:ac8:5fd5:0:b0:2f3:610c:ca02 with SMTP id
 k21-20020ac85fd5000000b002f3610cca02mr1943412qta.74.1650727447713; 
 Sat, 23 Apr 2022 08:24:07 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 y6-20020a05622a004600b002f33ba280cbsm3184165qtw.8.2022.04.23.08.24.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Apr 2022 08:24:07 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Marc Zyngier <maz@kernel.org>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v8 1/5] dt-bindings: pci: remove fallback from Rockchip
 DesignWare binding
Date: Sat, 23 Apr 2022 11:23:59 -0400
Message-Id: <20220423152403.1681222-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220423152403.1681222-1-pgwipeout@gmail.com>
References: <20220423152403.1681222-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_082409_323862_B1E48DEA 
X-CRM114-Status: GOOD (  10.55  )
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
