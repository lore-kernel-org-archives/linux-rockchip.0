Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A92B9C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eoKjGsUqn366TaQMxIiXNHBYpCfqZBXLrNBlVZ/vVI=; b=SdINgl+zUfrUdy
	/0XWUWrb68NQTxzOgF2rGFhAZL6WH2IhRYAFNlVrbuCQQKaOJeGgQ8RXiPZBUMxEynRVDe9ChmYaW
	/dvVvVFADH7qmjntM6dcsmoYxDsJX7Yuou5E07dalpG8fsRW0elOCCCKHza5BAEo0nIv4aLVWmfu8
	5558KuSe5qOZHCMVSEqE+6/iXqGzE8sO8fKVbLO9XEsaKJBimRBx9+b4WtgPlMyfZpCiyAXYijXlc
	dvC35KUPJWMEcBFwkksnMbdtrmYdFJkPJeBBiHS1xo0XBUBwydGo5IY5GS0A60oZ5AajjnyWG3W3m
	wsmyS1qGYtSQ+csGvKHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfgF5-00CnLk-IV; Sat, 16 Apr 2022 11:05:27 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfgEs-00CnH6-Fl; Sat, 16 Apr 2022 11:05:17 +0000
Received: by mail-qt1-x830.google.com with SMTP id bb38so7324706qtb.3;
 Sat, 16 Apr 2022 04:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UMYeeN0iZUy6EfrHqDAGGWFWHi99PGIp7rnql4YH69k=;
 b=mO+c+dgqNkgVHglcmeNkqeYKEFrbca9Mg1ereL9nAPWF+rDUhc5bExsShTgtJGU7Fq
 YnBsFlQMii8hiDBByq1Mbg04Uu+YzbVE16mL0cTHy1TQzjI7YMPODVwtC6Dvplq3jmdM
 YhSlC9j+CkJOAjRvVzQvy8rE9ed4kuu94gZMUlA/RVHyRp7PnzBTZ5S8IQGcroVUQTgM
 +hbuGk86KhafBO6pYzl38Zqr07WbTYZ+o3yivDwoqTHoUJi7n45BFRLWAEkSUirlPDTU
 MXKd2Fq214KHOcDSHUnOQDbrAxQH+9jNaxYtaM1bAuaFWzMsFLfu216YmPC1z0GRwceL
 9f4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UMYeeN0iZUy6EfrHqDAGGWFWHi99PGIp7rnql4YH69k=;
 b=T2wSX7AHooGhcDdkkgtZsGs43tT1rePRScztF1og77P4cfSqDJo4gY6v4Y8gRGdeuo
 53GmWOi7Xk1e3w8mUcZv56hcOcV1s1En+cEBeKtvMTzk1cuKR0cDNzyJ4pBaUoosYNlQ
 3KKBT3x6Hh53QifAHlrCRY1lXfJ9Tro/358wQ26+iZfyAn7M4MgBgVrbnM6x2zey2ESC
 UWrqZXKAJ1bw9u3Yl3oGheebJvvE0v4HDJtJfNrHZqLd8OgSxezUikwb7iIVaz8E3Yw+
 uO2+9Mv8cSOMOI/wJoreTFxL4ssoqJZUugWvb8OxJwMXKliPbabTcwynkxm5/2ADfb4g
 hdow==
X-Gm-Message-State: AOAM533vINQIKxkQ57ztRAuhvIW3SB41HvCtBvta+CUCzmsfgblyrod2
 B1ouAaT/Unz43XvI2O5Xk1A=
X-Google-Smtp-Source: ABdhPJyEAu3rtiQo0zzKoe4zKalnE3V0w3SLyN99GNkbCGHM7+Ji+PwVeroMv+GZu4jpHLnxwpdRsw==
X-Received: by 2002:ac8:1191:0:b0:2ed:bb6:ab07 with SMTP id
 d17-20020ac81191000000b002ed0bb6ab07mr1935995qtj.418.1650107112074; 
 Sat, 16 Apr 2022 04:05:12 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 w6-20020a05622a190600b002f1f91ad3e7sm97026qtc.22.2022.04.16.04.05.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 04:05:11 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 1/4] dt-bindings: pci: remove fallback from Rockchip
 DesignWare binding
Date: Sat, 16 Apr 2022 07:05:03 -0400
Message-Id: <20220416110507.642398-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416110507.642398-1-pgwipeout@gmail.com>
References: <20220416110507.642398-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_040514_562101_9C3F1724 
X-CRM114-Status: GOOD (  11.12  )
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
