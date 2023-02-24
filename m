Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67075C6FA8E
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Feb 2023 23:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SZnPBwEdN/9f2i41tXGGOcC0QrbRVy+/RwWtxy9pus=; b=is5U1MRNe8mFDf
	4wQ/ttFeK5HJ040hsm6d6f+BOmC0L4VltXjpRps1DlGAs835RB3hBtbLnMG3e72gWiGWG05dgVeZ/
	H4arPgwZDqGrOniT+NHowRHQGSnpBRzRDLfmddlnKAjHM0O2tLZ4Qkk9V0QeyFfykF9e0cM58jMwq
	fMiuVbig/tlfkVC0nRTjyESrPBxsmZ3DDuMIBNVoMD2aDfX52vuNQOwUCl0cmIkZqr/FL5gf+/TDQ
	soIk+ikZ/2vqYgyWhUZZpvqXtfF6DCg22rZIJKrYhQlserRp8bl5i7qVqYx5a7ooLQVPfQSpjzjlZ
	5OGJIo5Hv5KWnA41nh+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVhPr-004Hbb-EZ; Fri, 24 Feb 2023 23:23:52 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVhPn-004HaB-Ct
	for linux-rockchip@lists.infradead.org; Fri, 24 Feb 2023 23:23:48 +0000
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-17235c8dab9so1290249fac.7
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Feb 2023 15:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ALnkpz8ALlNTqOsurEtcPehgpRmTbr/BEiX5U4d+ylg=;
        b=EtSwvEl4wHMAYWoOnr6OlfOCj5VIPJX9tUA9ATsc/F2ZYx/XAT4GO+z2GEbdbXBCCB
         39uvCsULlJmHlGFJfk/YSR7DLC/htqkS3lhAzFHPrj7EZXGP/ZBXFz3nkie2ACMFthPZ
         gPb+5BXzNxhe4RBPCx+2GyyM0WLgNk5yxKPhy9lGuHq0i3h2sbfqQKQwF6up7b7Af7A5
         YGOBheos3F9B/Tdh9M1YL7Kqaw33eUP3JDsSTK1JmaI6RFgKbO8rnC/A9HDfEYLroWCH
         DKGKUBMeEC+McM+hsbrkAsy4gWqvQ+htRAgV8eqAnmgtM+Ig3d7QYq4kRZ/wwFIRYPKp
         iqyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ALnkpz8ALlNTqOsurEtcPehgpRmTbr/BEiX5U4d+ylg=;
        b=QKtAmo97Q59JMXzNKsXiK2dcRtZ48HTl4R84xlOlDk/vR/FovjVnsmx+feSNj0yOOJ
         Doi4zw6pMr4l8qyX1oUiJVz//oq0paOo2uKSvKgEGG3Y82R7lq0BG1iDX/cOd0vK0UkQ
         jY1A0IyNA7Fc/QCWuS4H0iy+BTiL7FAXQNQyeaML6OvZn8zobLKwsYmivcLsnlCWnGZe
         v/TsGOeLGOfcKQStOma5XQ+OQe8ELmdR75PNNiGn11wmKwUztYlGizYwzG+kiNx1rAcN
         7fBqGQ/8jZH8f3w1YyyPLxsP1T5Rz613Z0gjPrV4z+fLEzus42rqrLyWimiP98F7n4tU
         gcKg==
X-Gm-Message-State: AO0yUKVMV//atPMyvDzL4J/v1X+EZpJAMbPmIq34x1uzMWYEB1oqP99S
	cONYbn2iP4jjg1FFNsesb1w=
X-Google-Smtp-Source: AK7set+4l2GHkhtxjGmZf4wArC1qwF3lZiAbvPIz0e1IHuhEpBXL8gPl73rsRn2bqElTB3K4PyIQqA==
X-Received: by 2002:a05:6870:a54b:b0:172:21e9:21c7 with SMTP id p11-20020a056870a54b00b0017221e921c7mr8946638oal.40.1677281026056;
        Fri, 24 Feb 2023 15:23:46 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id k22-20020a056870d39600b0016b0369f08fsm119706oag.15.2023.02.24.15.23.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 15:23:45 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	alistair@alistair23.me,
	anarsoul@gmail.com,
	luiz.dentz@gmail.com,
	johan.hedberg@gmail.com,
	marcel@holtmann.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3 V2] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Date: Fri, 24 Feb 2023 17:23:37 -0600
Message-Id: <20230224232339.124969-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224232339.124969-1-macroalpha82@gmail.com>
References: <20230224232339.124969-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_152347_463416_583C3B08 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
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

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for RTL8821CS for existing Realtek Bluetooth
driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/net/realtek-bluetooth.yaml       | 23 +++++++++++--------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
index 143b5667abad..f91d06d629b9 100644
--- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
@@ -4,24 +4,29 @@
 $id: http://devicetree.org/schemas/net/realtek-bluetooth.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: RTL8723BS/RTL8723CS/RTL8822CS Bluetooth
+title: RTL8723BS/RTL8723CS/RTL8821CS/RTL8822CS Bluetooth
 
 maintainers:
   - Vasily Khoruzhick <anarsoul@gmail.com>
   - Alistair Francis <alistair@alistair23.me>
 
 description:
-  RTL8723CS/RTL8723CS/RTL8822CS is WiFi + BT chip. WiFi part is connected over
-  SDIO, while BT is connected over serial. It speaks H5 protocol with few
-  extra commands to upload firmware and change module speed.
+  RTL8723CS/RTL8723CS/RTL8821CS/RTL8822CS is a WiFi + BT chip. WiFi part
+  is connected over SDIO, while BT is connected over serial. It speaks
+  H5 protocol with few extra commands to upload firmware and change
+  module speed.
 
 properties:
   compatible:
-    enum:
-      - realtek,rtl8723bs-bt
-      - realtek,rtl8723cs-bt
-      - realtek,rtl8723ds-bt
-      - realtek,rtl8822cs-bt
+    oneOf:
+      - const: realtek,rtl8723bs-bt
+      - const: realtek,rtl8723cs-bt
+      - const: realtek,rtl8723ds-bt
+      - const: realtek,rtl8822cs-bt
+      - items:
+          - enum:
+              - realtek,rtl8821cs-bt
+          - const: realtek,rtl8822cs-bt
 
   device-wake-gpios:
     maxItems: 1
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
