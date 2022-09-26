Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC86DC6FA82
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEAZdZwJCyQKW4nPkYqVIs4HASNLlQ7vTZoUzSKzvMk=; b=wHwlHBn3QFwqrr
	XnVMOvckyHa3fPHDTwqvcCZ/bY1DSYcIdpEHBX5TZlcskwzcQVestfonCJMxljBilyOrDf67Ov11R
	CD0xrVS8w0y3XYgOQaDfg9cWv/2Qj7I+WJh2ZsuOj48Bkvg4dNxUGojIwVJWk5MXY5VYyUCXUIq9h
	aBOpHosiw1H5UgBmWRfdbOVr6Iz5V3qOAxrsUVxlJ6BivywFi9qP4mxpX8AsFK8Y56JtVrv24MYs3
	saRmS8zzMOe/7OeYomkhAPJvUqDyBLnyLcksHtAMpS5cCCTsBzu0DkmaiTQr+MeyH8HnwVz1KZKCE
	0AO6CVgZrry+hszAMZsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsQk-006CVB-3g; Mon, 26 Sep 2022 18:02:10 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsQ9-006CHD-Gs; Mon, 26 Sep 2022 18:01:36 +0000
Received: from amadeus-VLT-WX0.lan (unknown [218.85.118.195])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 839518000E7;
	Tue, 27 Sep 2022 02:01:26 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: linux.amoon@gmail.com
Cc: heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	michael.riesch@wolfvision.net,
	robh+dt@kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a
Date: Tue, 27 Sep 2022 02:01:02 +0800
Message-Id: <20220926180102.37614-4-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220926180102.37614-1-amadeus@jmu.edu.cn>
References: <20220926061420.1248-1-linux.amoon@gmail.com>
 <20220926180102.37614-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaT0saVk1CTk4eSExNH05KGFUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlKQ1VDTlVKSkNVSkJOWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pj46KQw5LT0eIggcDCgRSSkt
	MAkaCw5VSlVKTU1PSUpOSUNMSk9MVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlK
	Q1VDTlVKSkNVSkJOWVdZCAFZQUlNS0M3Bg++
X-HM-Tid: 0a837af603ecb03akuuu839518000e7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_110133_763946_7BAEBC5A 
X-CRM114-Status: UNSURE (   6.79  )
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

Add Nodes to Radxa ROCK3 Model A board to support PCIe v3.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 1b195355da2a..458a12af1120 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -547,6 +547,19 @@ &pcie2x1 {
 	status = "okay";
 };
 
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x2 {
+	/* mPCIe slot */
+	pinctrl-names = "default";
+	pinctrl-0 = <&minipcie_reset_h>;
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
 &pinctrl {
 	cam {
 		vcc_cam_en: vcc_cam_en {
@@ -583,6 +596,10 @@ pcie_enable_h: pcie-enable-h {
 			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		minipcie_reset_h: minipcie-reset-h {
+			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		ngffpcie_reset_h: ngffpcie-reset-h {
 			rockchip,pins = <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
