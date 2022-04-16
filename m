Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B39EC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 09:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eoKjGsUqn366TaQMxIiXNHBYpCfqZBXLrNBlVZ/vVI=; b=UkGFqnwgcPai0W
	Rm0yaxUqgfxB20AQwGeI4J2kuvr+bRifghIATU+fGZ4IFud5SrObLpcHseS3XRCkJALHWxkmTsmsM
	aViRFFIpRKTUD91J/nRFUTyMu1B4Vs6dceP9VGdsaXunjlUl+YliO1X/nJrG4TPQbLEYSOE67c+NT
	q/ce12BfxBnNKVfUxj8gg0GM1D5A9ClUavvcCYiqj2mZbkGkSivp4eQDdNZ7Et0eR1LmAWcAsT6KO
	mOzTaLqQzpAr+Fw00mLUI7ZB7PmYn2OpXde9vatu/+XGubVpe9Hf4LqouZlAE5OwjSEBypVYUU9nt
	5JWKLi1sFmtkamUsr+Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfeK4-00CYVM-4f; Sat, 16 Apr 2022 09:02:28 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfeJi-00CYKM-I1; Sat, 16 Apr 2022 09:02:08 +0000
Received: by mail-qv1-xf35.google.com with SMTP id kl29so7847105qvb.2;
 Sat, 16 Apr 2022 02:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UMYeeN0iZUy6EfrHqDAGGWFWHi99PGIp7rnql4YH69k=;
 b=SHRbg8x/2JHNnkBOV6/ilD2huqCqpDRTm3pEUP94q1dA2HF25/mbncfBO60ybBMK9J
 CTgU1fn0th7wGA2m5qEt63IR+sdTKmR4Fz64scgnCymkfwelCNkxCGaf5V4GdM53zd09
 FgGi/n1PomtpcTp4G5bYD6ssSTtgTdaBR1mN/Z6ZS8ECfqArA2cGVwnka/i5L7wKkkkK
 nH1vc/EKfUo4oGpb9IdY++dxNtjznIvlxxy278jYriy2nKyQoXdZPsZjDDCrRXYcW7oB
 PSySnvRbq96IZAGYk8zk22UMuFv3UU59NMJ+byluQF2trHHAShQ4twdxkcA3Axl1afk/
 gJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UMYeeN0iZUy6EfrHqDAGGWFWHi99PGIp7rnql4YH69k=;
 b=D82fYyzaRqKhRu91CA96ugIRVRAyoBsYo3dCsm5hqhKBHFUjNyQgeIo3Nhb6xEk6pV
 VJrhmgKyFh7pV4oOKCIYEoF6Ie/RiScIMRc8w6UpnsXBrivIsP6TKYMBdIPk6g8WpT+Q
 wdqwGEZk7dnNiZ5IPxTmzBXtYYqnqTCwqVIU4Zcj/v00eGOfW9ZFVBf16Cm0f1s2A9ER
 BGap3WHjGDkbQCkzOiTSlB7j90pNFVAK2+JQZLZNmr2T6SnooGfGjK9Bd/izkdnbmTZW
 eH9Gt5uvy5KhkjNYNArnd8hVsajNxDKJrw+Eac0VGpS2MukraUHYcfWAhM/tjrintnkV
 v8xg==
X-Gm-Message-State: AOAM531YL6HdwxC8IFJLFLCSBA+nRj47MfObJTqOp7oRJgBLeJbiKn9/
 oec+vapCW+w6lYIi9bGh99E=
X-Google-Smtp-Source: ABdhPJx1fx5x1PI6xkhKtntIgNXtV21Yyi5CtpacqQpU+GXOKX3ivUyESARsPbkaWqdHt7I0HguTlg==
X-Received: by 2002:a0c:d688:0:b0:42c:3cb0:3923 with SMTP id
 k8-20020a0cd688000000b0042c3cb03923mr1713298qvi.69.1650099725053; 
 Sat, 16 Apr 2022 02:02:05 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 o6-20020a05622a044600b002e1b9be8e6fsm4258085qtx.36.2022.04.16.02.02.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 02:02:04 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/4] dt-bindings: pci: remove fallback from Rockchip
 DesignWare binding
Date: Sat, 16 Apr 2022 05:01:57 -0400
Message-Id: <20220416090159.596930-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416090159.596930-1-pgwipeout@gmail.com>
References: <20220416090159.596930-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_020206_607044_BC7EC368 
X-CRM114-Status: GOOD (  11.03  )
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
