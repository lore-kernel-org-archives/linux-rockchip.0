Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0682C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 11:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W76B44BHbbiUwKefxLCzNtHCTVA8TcaROTQiDOP/YaA=; b=sesYuFwu+WkaeH
	5JKPcJF/Fh4xJzbWqvNtJmMYi//8Y1uVS7vxf5aN517FZcwpaulR9T3Vu6mgTSWWAl2MP9Su+UG9a
	1xnNHcwqZxLmc57/o/XqTvnuKLh00Z2afjiyEoEUJ4crNyaE5AvcjCTbxPL5W0DqbesUC0ZeqOkhH
	6s7BHId8Xtrv5nvEOWCtGH2a9Lq8rKqwRK6YRtJmpDwuLvilrdKbEAm+Bt9Rv9GJaAiNhZtZeJTGa
	Q15naM3fCu1lhcxMPcKkGsLnpe5WPIDyQkrIY76k6NdVzDIazGYPFx+deHSRBr9t9+eWKLrlTJPkz
	MNcO8uUZ7avOiWInAOFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJtQO-00000000x40-2VTd;
	Wed, 19 Jun 2024 11:24:24 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJtQ6-00000000wtC-1YDr;
	Wed, 19 Jun 2024 11:24:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718796243;
	bh=usplT3anrO8gUnCYhFFAGJCvwDOsIVmI2af1ckkghmY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=g3y6PpqO7mV9YAqLbbBVE8VRMUz7/uqhgzAeNq0L9Ht/L4iQg8pLe5TKBaPbZFg9r
	 fX1dBAFJ54l4dTUBKL8Amn1dBBWh3KE5KTWpkj5gJMT2qdRvrtiT8oppOkOl3/uQdx
	 Gl0Qawv70ePGOKZxtnJ/IpYCGz4jiRKlgurHuhl6DUuHo5D+geMyPfu3PXHXd2PER1
	 p840e6Vq0aoqbwk3OOucy8KNvY6+QDsDJCMimGGCaYjwuBUSw+DqteO3en5P0hLD4s
	 wNh8paAZFElAUXoWT82H+woE4/Mtbb6XgcRWs5vr71wKxepFaG28FRxhcpVC4BxiGP
	 MJBcB32l9T6bw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 539B537821C7;
	Wed, 19 Jun 2024 11:24:03 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 19 Jun 2024 14:23:30 +0300
Subject: [PATCH 1/5] dt-bindings: mfd: rk809: Use correct compatible in the
 example
MIME-Version: 1.0
Message-Id: <20240619-rk809-fixes-v1-1-fa93bc5313f4@collabora.com>
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
X-CRM114-CacheID: sfid-20240619_042406_608839_BF4D1734 
X-CRM114-Status: GOOD (  11.73  )
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

The example is not able to actually test the schema since it uses a
wrong compatible 'rockchip,rk808' instead of 'rockchip,rk809'.

Use the correct compatible and drop the wrong properties in the
example section so that dt_binding_check passes.

Fixes: 6c38ca03406e ("dt-bindings: mfd: rk808: Convert bindings to yaml")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
index 839c0521f1e5..a327d73f3c43 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -126,11 +126,10 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
 
-        rk808: pmic@1b {
-            compatible = "rockchip,rk808";
+        pmic@1b {
+            compatible = "rockchip,rk809";
             reg = <0x1b>;
             #clock-cells = <1>;
-            clock-output-names = "xin32k", "rk808-clkout2";
             interrupt-parent = <&gpio3>;
             interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
             pinctrl-names = "default";
@@ -146,9 +145,6 @@ examples:
             vcc7-supply = <&vcc_sysin>;
             vcc8-supply = <&vcc3v3_sys>;
             vcc9-supply = <&vcc_sysin>;
-            vcc10-supply = <&vcc_sysin>;
-            vcc11-supply = <&vcc_sysin>;
-            vcc12-supply = <&vcc3v3_sys>;
 
             regulators {
                 vdd_center: DCDC_REG1 {

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
