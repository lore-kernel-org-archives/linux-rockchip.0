Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B2A6C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 13:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=orV/+FRfPWcTR665q7Wcd15jGJ3x/xbZDEn9+DhukJk=; b=Skusb64C3Q2liN
	7rAw0v/J2TNLa0wL4HT/424OIluvkLzXIyJD30rPgMAGoGxHEr9m0abfV8JzNOJWxHqsEzTAxx7vQ
	SXPGuLZx0L0olhXVRGV5i5BdH+yucjQ+Bu8GIhzZiCDuFBLmoVrmYUSd64KWMYvwgSBA/72EwawEz
	apdnDzgbOJTobIIkK9BzN1kYzn8cSbwFZ62Q6bAhmYWVtm/kG3FV/lHFJMK+iCGA1CnoqmCnl6a88
	irqGqrLm+nyO5RayblIXrdJCwLQoRwQfpjsO1EkiGkiY1nbWgj2X8Z7ZPRWczNgocYch1Yace+VeH
	bB8N/cJcV6AkRCrsJV0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhtVJ-000dHJ-Oq; Fri, 22 Apr 2022 13:39:21 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhtUU-000csx-5o; Fri, 22 Apr 2022 13:38:33 +0000
Received: from obbardc-laptop.home (unknown
 [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: obbardc)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BA8401F468B3;
 Fri, 22 Apr 2022 14:38:25 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650634705;
 bh=ksNotgvEvQzUrT0m8LzCraEdRg4X/Z2VoTeJH+OzRw4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=at69pO7OY8TutnNMW2RTCCNAY228SrD8Yfs7Ip+lZMSsOsauLe7Laq06l8lH9XgLH
 cHdqKPAeALmd23foj+rrQQD6E16r20RksQLaAekmZYn8OOSnd4nvKGe85gR+Ps2k1J
 +2WraCW4yUs91z9RLhnRrzDnpiFQTufrvm4HWVgyawZF31C95u3z4RAlRJ7v7GMp33
 CLPtVM5lPNzCF9DGO63WDrc7yyJWcYUYIhipN5TJuV9sZJwwupn43tOuvYtw42obQk
 8CMYrhBPOmq0d9UuSV91/2HojaQs0Vn3+PQGtbSPFIW8dHXUdcJE5tL9O+P9nA+Xu8
 5OkykuMqIZx3A==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Alex Bee <knaerzche@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: Rename vdec_mmu node for RK3328
Date: Fri, 22 Apr 2022 14:38:02 +0100
Message-Id: <20220422133803.989256-3-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220422133803.989256-1-chris.obbard@collabora.com>
References: <20220422133803.989256-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_063830_405008_EBDBEE4A 
X-CRM114-Status: GOOD (  14.30  )
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

All other rockchip devices which have vdec nodes do not
have an rk prefix. Remove the prefix from the (currently
unused) rkvdec_mmu node for consistency with other
devices.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b822533dc7f1..f8ef149fedad 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -660,7 +660,7 @@ vpu_mmu: iommu@ff350800 {
 		power-domains = <&power RK3328_PD_VPU>;
 	};
 
-	rkvdec_mmu: iommu@ff360480 {
+	vdec_mmu: iommu@ff360480 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff360480 0x0 0x40>, <0x0 0xff3604c0 0x0 0x40>;
 		interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
