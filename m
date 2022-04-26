Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11B07C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPQUdrEQiCsl+jKbXsY5qOEwrdrfGrpFEToj+XWnMPQ=; b=vNwbTem2B0t/dA
	+XVcq/waIu1/fSbCCIW5SdUnO4FAZ5qUpPhH3yIrY9Cuht0qkr3Anrdn3NF9Fu9KdxOJunVVbcceQ
	6aotKczbg0BOX3OY+abtrug3z/fdyCeFEequ7xa+l/LQCPKQOTpAQN3qpV5L5nCSZCobV5PIA5tFn
	kFN6GsIV5Z6lBXdX22CphlnCsN0/eFq6ca3nn17JmBLHJJ0uHm2W0xSjMcuZOzW/OiH9Ntniq1z0K
	rJeUJnNtSazYi19ovfzYFHjR8Jdk2oQHdm4i7CZMBm6iXObuV6croi+VHUa7Gp/KaS4hERDPvHMcY
	KLVrbBI6XTW8zHS6laAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njLDh-00EaYK-3I; Tue, 26 Apr 2022 13:27:09 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njL8p-00EXpT-EU; Tue, 26 Apr 2022 13:22:09 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout2.routing.net (Postfix) with ESMTP id CE8E1615D8;
 Tue, 26 Apr 2022 13:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650979325;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+PqOAHHD5Ke/d891B5zhwO1Haizd/LoBpwF8/ijmhnc=;
 b=KAgrYqHCHmGjb56eabZZY/0kH2URSzS+1Iyy32AoENGlppkXWjuMkLjjJwabq3wAXflkLB
 n5v3i074u2gai9tBxQ/Y7ZBrnm9XUz3VaYBrMhhyNeOrUi6EF1pb9EvEWWgh4lHcFpJLkg
 AU6HlL6u+TA8XmH65AkDdavhXbJj198=
Received: from localhost.localdomain (fttx-pool-80.245.77.37.bambit.de
 [80.245.77.37])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id C83704059D;
 Tue, 26 Apr 2022 13:22:04 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [RFC/RFT v2 11/11] arm64: dts: rockchip: add basic lane-map and drop
 bifurcation from r2pro
Date: Tue, 26 Apr 2022 15:21:39 +0200
Message-Id: <20220426132139.26761-12-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220426132139.26761-1-linux@fw-web.de>
References: <20220426132139.26761-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 684376ed-9bc4-4c48-93b3-5deaca47720a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_062207_679193_725F43D7 
X-CRM114-Status: GOOD (  10.90  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Change DTS-Property from bifurcation to the new lane-map.
The lane-map is more generic but PCIe controller driver
converts it back to the bifurcation-bool.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes in v2:
- new patch
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 86506d7896c6..9acd85db3a3a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -477,14 +477,14 @@ &pcie30phy {
 };
 
 &pcie3x1 {
-	bifurcation;
+	lane-map = <0 1>;
 	reset-gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_ngff>;
 	status = "okay";
 };
 
 &pcie3x2 {
-	bifurcation;
+	lane-map = <1 0>;
 	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_minipcie>;
 	status = "okay";
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
