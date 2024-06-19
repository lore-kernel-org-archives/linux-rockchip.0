Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE95DC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 11:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjLhW4+kHM8Ko0m0N987jd8KRw46VIg6awiIqAhxsmY=; b=L04UdMO6NHnJLR
	VGTAuRhGJNZ9HEzaP/98XdOvei9D2dPSx6a8mELxnxY4naEkm+7dn0Aj3ULUFp4AxFUdGZG1h8Jyv
	QgnQat1J0Fo0MWifwJA1wYwHy058A9/QcRCC62KjZmw/62riAiIx8kYiVOLOer1iLrTYoLNLRzZYY
	s6LMEnN0KJeKDR6fywB5ROrAax9fPyDNaFixsRJq/S4tSD/WebzsOuDU1GYPmiHhSOBDBDZ8XCHtW
	0Fptq2Gf+Y0y0rmShDWFIVuJBWbr+x4SbC8p0YPb7+qevMnL3iKnqUVkLzupHEf4rUNZaj3Gu7uCN
	D5u6KS/s1oAH7hi9nFIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJtQN-00000000x2i-0kcM;
	Wed, 19 Jun 2024 11:24:23 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJtQ6-00000000wte-00VO;
	Wed, 19 Jun 2024 11:24:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718796244;
	bh=AV5LSZIG/WMszq3J8MtYG9PvEEq/aTIOyQDB0X109wc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=FwP8avy5dAwvwdOlLtou8tozI2k5wcyByghYeut1TKw0+e5ZZAt+gbJDqqk8YN2hD
	 wZQRxjTntX6go2AyfSNmTVGLhj2Mj7+Ye/FUWrVDsEuB0am7qT6d07dO0mP3tyo7YW
	 yC6uMXEigm2DfpxrS5HR6hW9dsPp5+yZqIrCCYNvKBb1RrJQ4Lxqtl0RvyEe9+MAYD
	 OngLHbDw0JM71JZ6NxEG/YeH6HDKq3uciUWVe8dkKkBCryZIiVBkekCkOhJ76/G0uT
	 Amy0JLRfO5syXKBIPbOBnIKA3KR5OkiY3zqNb6zear39Xyc7xdluyzS4qEAWUDtS7g
	 obiqi15KXDp3g==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 8C4C237821D1;
	Wed, 19 Jun 2024 11:24:04 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 19 Jun 2024 14:23:31 +0300
Subject: [PATCH 2/5] dt-bindings: mfd: rk809: Add missing audio codec
 properties
MIME-Version: 1.0
Message-Id: <20240619-rk809-fixes-v1-2-fa93bc5313f4@collabora.com>
References: <20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com>
In-Reply-To: <20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
 Chris Morgan <macromorgan@hotmail.com>, 
 Furkan Kardame <f.kardame@manjaro.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_042406_207195_325294F6 
X-CRM114-Status: GOOD (  13.20  )
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

The RK809 MFD provides a RK817 compatible audio codec, supported by the
rk817_codec driver.

This has been already in use by several boards: rk3566-quartz64-b,
k3566-roc-pc, rk3568-evb1-v10, rk3568-lubancat-2, rk3568-odroid-m1,
rk3568-rock-3a.  However, dtbs_check fails for all of them:

  DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
  rk3568-rock-3a.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks', 'codec' do not match any of the regexes: 'pinctrl-[0-9]+'
    from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#

Document the missing audio codec properties as found on the
rockchip,rk817 schema.

Fixes: 6c38ca03406e ("dt-bindings: mfd: rk808: Convert bindings to yaml")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../devicetree/bindings/mfd/rockchip,rk809.yaml    | 30 +++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
index a327d73f3c43..cadfb5f1c631 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 description: |
   Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
-  that includes regulators, an RTC, and power button.
+  that includes regulators, an RTC, a power button and an audio codec.
 
 properties:
   compatible:
@@ -93,6 +93,34 @@ properties:
         unevaluatedProperties: false
     unevaluatedProperties: false
 
+  clocks:
+    description:
+      The input clock for the audio codec.
+
+  clock-names:
+    description:
+      The clock name for the codec clock.
+    items:
+      - const: mclk
+
+  '#sound-dai-cells':
+    description:
+      Needed for the interpretation of sound dais.
+    const: 0
+
+  codec:
+    description: |
+      The child node for the codec to hold additional properties. If no
+      additional properties are required for the codec, this node can be
+      omitted.
+    type: object
+    additionalProperties: false
+    properties:
+      rockchip,mic-in-differential:
+        type: boolean
+        description:
+          Describes if the microphone uses differential mode.
+
 allOf:
   - if:
       properties:

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
