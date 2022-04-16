Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 352EBC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 09:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eoKjGsUqn366TaQMxIiXNHBYpCfqZBXLrNBlVZ/vVI=; b=xI0BcU6npSYZvg
	ecUvK6A8Rx0lO9mUqX1f52o5RAcNVl9n0DylnUNXvZBY0rzEmnZHLvN2t4vLzvayS03CU2bO4P5hW
	MD0D4ffl5u2+iCzNKyCbn6eqRiLvt83OSzlBU+jdJCogpagiWd5h0xnegiaGmjjowqmTnzJar8vtK
	0gWpu+MtskdHhPq+L58IfTMtCM1oBsMrrp61wCV/s771BBOyDeLIemc4SXj9bV1UvyDRtjndTrAmA
	KI56FMO47NemtN05ZS7bq6pqYQ9P12UDGzisLE6n3OWhixfZSyp9Fz9Uu6ond0KU9WTnZNRbn0VE4
	sL1U/Q7gFNwuE34AG5NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfeQP-00CaUo-0K; Sat, 16 Apr 2022 09:09:01 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfeQL-00CaS9-6G; Sat, 16 Apr 2022 09:08:58 +0000
Received: by mail-qk1-x72c.google.com with SMTP id e10so8068902qka.6;
 Sat, 16 Apr 2022 02:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UMYeeN0iZUy6EfrHqDAGGWFWHi99PGIp7rnql4YH69k=;
 b=MWXEQ9jODM3hyZtmPdGS10o6jlNMgjEvpfMgf9p7E+o2MKDwBEvoJk6UUS0h8ncboO
 mA4FdMn4YlL0D/N6FPYjSuODJBJWQUJryplXFCoJURCRXKMNgBTFySqGMo/XTu41c+Yj
 sOVcmr6+HYGXx9ao/oIJPlfDuX3Okmik8wG6TQX4WgHt1HZXn77XBozg0kP8rfnS1fMn
 cqlfiGLBYm4U+0DlmZfTB6VVlDwhcFfiRasXjon/JlQ39s6P5q3Qfl2KlBJYNXyp66Aj
 Uxi9SzGjggbbfS+uM2UrV72p1cbdo1bFA0wN42V6i9TjKI6ZH1nQWdD66/4FYU4BOR6k
 0iBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UMYeeN0iZUy6EfrHqDAGGWFWHi99PGIp7rnql4YH69k=;
 b=tSW09pEJtGjaE7sV9AoQSieQoRhUKIXYXP5Q/mjLOMZLJEdtg0CYlz6uKf+DVg3uWW
 YSPZkbJjqrAxcPNv95QCfU28q/Cm6C3fikfbb1+RutL+R1YOB5qOkuLIaUZukpLqLyzu
 hmr+u02EYZJNAqKo5puWHNXrfnZoLQVL7eyTTW/I04BtWVprMdoXLCTbLXqOl0IB/tGd
 qgXe4fGYtQDykDp8K5LtoOmGKVCepd+PgofRU4YM2VHXUPnprgE/VxDlcBYF+9nNvLFb
 Go7mvKWBuk5HNag7NeIDDI7S4kdhvaS8JVKSU7sSSFmDZQK3rzben9PQcu3PIxhhw0Np
 Ix/g==
X-Gm-Message-State: AOAM531qRDl9hxZRs8NAXt8wjpCMe+61CpIyYDwRLcl0FCQXddTG840S
 s+AfZCvJm/Byylm+fSJ7mfA=
X-Google-Smtp-Source: ABdhPJymvfA9CPPCM/99cI+aS1rwkZ7AzNIjDfEbRZEPTWlYFGnmRJxubbLRaiFyW4tJV9S+7nB25w==
X-Received: by 2002:a37:aacb:0:b0:69e:7821:1195 with SMTP id
 t194-20020a37aacb000000b0069e78211195mr533111qke.412.1650100135798; 
 Sat, 16 Apr 2022 02:08:55 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 t19-20020ac85893000000b002e1afa26591sm4630394qta.52.2022.04.16.02.08.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 02:08:55 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/4] dt-bindings: pci: remove fallback from Rockchip
 DesignWare binding
Date: Sat, 16 Apr 2022 05:08:41 -0400
Message-Id: <20220416090844.597470-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416090844.597470-1-pgwipeout@gmail.com>
References: <20220416090844.597470-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_020857_267262_51A64D5D 
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
