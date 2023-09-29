Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12B63E732E9
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Sep 2023 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RcKh5obTbjYtCdBKct3KD4pfb9LCkgx+A1+JSwDWi24=; b=a8MG/DcnIB3WPD
	BMy2z+rp0EebRPMQkJCvTLDhfw+00NouYAcKfTLFRF3lZEU4PsPNJMhfUruHRQNLok8NsipEhYa8u
	6WnwKySs4omWvBbBXmuBE9fTdW1zyotcLx76yholw0TfxHU5DUvQYjzUw+OxYUHuRjfw1asMJF0Tx
	XO/25CXqrOiiBrUpEBMYhJsqWTyt9XzPSr/ZqRkXYGmL5d3SYhL2KTyG03wTmtDQHArNXQia2uPGS
	Cf5+2mY7jQleslVV8ea0ddSo6nmN/PIw9kYGlooldEb03srVLsdqyB18oufgUSmm2Sis17kdW4itM
	VIJm7SoBHRwRuSSo+tkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmAQP-007W9H-1s;
	Fri, 29 Sep 2023 10:08:45 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmAQK-007W68-2W
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Sep 2023 10:08:43 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id F07DE1BF212;
	Fri, 29 Sep 2023 10:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1695982119;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5U2Vlzghfoo774zsU4ZxMClCDoCsWFp/EPSf+mUw5k4=;
	b=ZqoTeFAP3E8F+25el4dBzWpPEEhI8mZi0bGc8SduHVIzMKD9XAr19EaAo1a5b7VqUHcaSy
	jtaZR61vmdWR97C/3oKY2YIVflRVZpbMOYmKAZHWcg12T11pHunx79L7RwRjWEjgya0BcX
	uZv/6MUEIEZsn0iyQdyfQhandwyEyVWJO/Uqgo9uB1Vro+DgRoFmTFskN5M3D6u8Y15YbU
	kG7g9EhEy7Z9cSDmyy7b4LjJlruV6Q89chSWsIlV+Dijy7FcYsaidKF1jfTFvmGB/pFUXn
	1KaTxCQ72Ms3QJwK7R9RRK40emdI4HtPLAciQl15AuzMFavoDbSEXPN9scPfmw==
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: mchehab@kernel.org,
	heiko@sntech.de,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: paul.kocialkowski@bootlin.com,
	miquel.raynal@bootlin.com,
	maxime.chevallier@bootlin.com,
	luca.ceresoli@bootlin.com,
	thomas.petazzoni@bootlin.com,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Mehdi Djait <mehdi.djait@bootlin.com>
Subject: [PATCH v6 3/3] arm64: dts: rockchip: Add the camera interface
Date: Fri, 29 Sep 2023 12:08:02 +0200
Message-ID: <e1de802514c7a955583641a5fb197c75d8e1f6a9.1695981374.git.mehdi.djait@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1695981374.git.mehdi.djait@bootlin.com>
References: <cover.1695981374.git.mehdi.djait@bootlin.com>
MIME-Version: 1.0
X-GND-Sasl: mehdi.djait@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_030840_958468_E4EF764F 
X-CRM114-Status: UNSURE (   7.89  )
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

The PX30 has a camera interface, supporting CSI2 and BT656
modes. Add a DT description for this interface.

Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 42ce78beb413..7aaa88a15d07 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1281,6 +1281,18 @@ isp_mmu: iommu@ff4a8000 {
 		#iommu-cells = <0>;
 	};
 
+	vip: vip@ff490000 {
+		compatible = "rockchip,px30-vip";
+		reg = <0x0 0xff490000 0x0 0x200>;
+		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>;
+		clock-names = "aclk", "hclk", "pclk";
+		power-domains = <&power PX30_PD_VI>;
+		resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
+		reset-names = "axi", "ahb", "pclkin";
+		status = "disabled";
+	};
+
 	qos_gmac: qos@ff518000 {
 		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
