Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA884C64ED6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 15:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ek2f5pfJkMPhBYP8lGr2gcY4SGzhKOg2JGIL3AAiwT4=; b=OuoWeLo0SNfLsE
	ykKSQcOsBH9pIdNZMPNO+WrHQGQcFiI0bCerFDcYT9lKYq4Jrk7uduwZq+cBM1NpwjFgOa4gcDHHg
	yVlIAN2/dqbhhNRQ+vgFiVMp/nXRNvZmK4sNRIsf6K/mB6w0JFPI5PFLv1C4eYXwehuFhQ6XP1Iqx
	hS21Egb2KJpGHWfO5KZ65Jyl6RlLiH6CBkzoEYfqVj+dpsG2+TfEEI5BU3MT++H+8sari6JnxoDrs
	KD1um1Lzg4GpJYPR3qWJJllojzQf0qqO/1bdi67oAwI4R9dXHn88QfBQr+xk7HCHiORqd7JLay/Nn
	4U2HLJpuXLpU3ImBPnxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1o2-00DdOB-TH; Tue, 28 Feb 2023 15:22:18 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1nx-00DdMv-Va
	for linux-rockchip@lists.infradead.org; Tue, 28 Feb 2023 15:22:17 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-173435e0ec4so1041931fac.12
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Feb 2023 07:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZNwZxqp1M59lbObWhxH+qDHb6sQadQB3wcUdsvUzuDg=;
        b=boJodNHzF82rSDM7hSjyryImL1vLWP0H4Q4yv5ygE0dvjCuS3iyKMKUgNPVMR80U4e
         PbfweOHDwFQUW5tnTIzySam0pIaGIO4Pz7zDGky0ZCSiLoUOmg01C70qdLC7aWaN6Vrm
         lZeZSeb1b+CkTV/dA5FfVGpkCqQciTwFQq7dX9Pc5iPg2xJpDg4zaE4QdwrpUz84/+ga
         XbqeFnRZZqqlgGnUxpqT2ncYk5dcn/C428XV9fDeC3bpMZcgj55lbVqtNoQOHeZfmoqZ
         IfCnm49seyn1XMp3axRYgSgnBK5AQdqu0a6fU91uICbgfPd8JXBPk+Mzg3W1y4McAccA
         C2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZNwZxqp1M59lbObWhxH+qDHb6sQadQB3wcUdsvUzuDg=;
        b=pDwM9Tl0Nl39Dddt7nFMxi1NQ02/RlIQA/4S+ov1qfoETMJnF8hsgfi7zO4/YM/9Q3
         EmRxVbBOpVIUkjIRO/dLPQ6SF7H1gXuwLAjtNA4igWNheWkyssNDcUkK8+VaR8mUDD5x
         halnJDUOnEHyjEU1IbxWcaNkUBephkUi02WIvHZ42EvDXqVRP6NY/or+6Q3VJMgwRHF4
         UOkmLTBYb9S4/akiMgYhKh4ic+taEDglZivOsmDVAByti8U3ymbn26zgzZZ9N2R5w3S7
         MH9HEfdpZkxDTjYtqq52/wKpySK4JnbQaHcP77mBjAWs78LEgxMMsE5jaU/4yhwbaPsh
         WAsA==
X-Gm-Message-State: AO0yUKUy4sPUZBV57h5cNQ1z+fVFNrg5Xymvh6lyAcZbwiC2xSvWfmbs
	4rgzOIWAhVNssNhvT2k85Io=
X-Google-Smtp-Source: AK7set9Y6B8ipvg8FwKex2pPzWjRmqyIyPVe8VjpBkfJ30VuzaGx0qO4maHeaaLWkEawdnj4S3/elg==
X-Received: by 2002:a05:6870:5826:b0:171:9676:8942 with SMTP id r38-20020a056870582600b0017196768942mr1635028oap.3.1677597731249;
        Tue, 28 Feb 2023 07:22:11 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id yy23-20020a056871259700b0017264f96879sm3318321oab.17.2023.02.28.07.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 07:22:11 -0800 (PST)
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
Subject: [PATCH 1/3 V4] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Date: Tue, 28 Feb 2023 09:22:03 -0600
Message-Id: <20230228152205.133582-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230228152205.133582-1-macroalpha82@gmail.com>
References: <20230228152205.133582-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_072214_047270_7B492B09 
X-CRM114-Status: UNSURE (   9.08  )
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
 .../bindings/net/realtek-bluetooth.yaml       | 24 ++++++++++++-------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
index 143b5667abad..8cc2b9924680 100644
--- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
@@ -4,24 +4,30 @@
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
+      - enum:
+          - realtek,rtl8723bs-bt
+          - realtek,rtl8723cs-bt
+          - realtek,rtl8723ds-bt
+          - realtek,rtl8822cs-bt
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
