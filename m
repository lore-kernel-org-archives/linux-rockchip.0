Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19CD1C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Aug 2024 12:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8wj7tF1YMELO6oh/oO973lrcKy9rXYp2ltlGPfFC56M=; b=scmjuPsPXNEPAA
	h91neejSt4nKS4dtj7giBkNPdwPK+SIRnX836P6xKdl+GxingA+L8S5FYloYdp8UhSSOX6WxDKCfF
	+tQ9aOfj3wysJCKlZeTavLLO5O4pH5TzgaYN4anFH882l+xxFlri4Ru0eK+5G+1lzklNYA08Cksgg
	SzxLym2OjGuqTWlAO+yjGw5CAlmBq889vA3fxQgKwfPx7IbRh/LguWjsGiOZabYGilwA1y1hYo2lE
	rT/CQgE4nCKt7pv9ZmZyj17DqtqUMEWrSw9GdWCCjN6VKvkjJ0b5DO74huRGNc5CoSxZdIFdZug25
	pNS2qMshdRTdCuJ+4BBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgNXi-000000056Sx-1HjX;
	Tue, 20 Aug 2024 12:00:54 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgNXf-000000056Qe-2Eh8;
	Tue, 20 Aug 2024 12:00:53 +0000
Received: from amadeus-Vostro-3710.lan (unknown [119.122.213.221])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 417517E0202;
	Tue, 20 Aug 2024 20:00:24 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 1/1] arm64: dts: rockchip: disable display subsystem only for Radxa E25
Date: Tue, 20 Aug 2024 20:00:20 +0800
Message-Id: <20240820120020.469375-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGB4aVkgZTxlKS04aSR4aT1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSFVJSUpZV1kWGg8SFR0UWUFZS1VLVUtVS1kG
X-HM-Tid: 0a916fa8e1c603a2kunm417517e0202
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRA6Qxw6PzIwFjUvMxIKPEkw
	MiMaFDNVSlVKTElPSk5OSUlOSUJMVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpIVUlJSllXWQgBWUFJT0NLNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_050051_751623_1BBC24E2 
X-CRM114-Status: UNSURE (   8.40  )
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

The SoM board has reserved HDMI output, while the Radxa E25
is not connected. So disable the display subsystem only for
Radxa E25.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 4 ----
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++++
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
index 45b03dcbbad4..19d309654bdb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
@@ -108,10 +108,6 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
-&display_subsystem {
-	status = "disabled";
-};
-
 &gpu {
 	mali-supply = <&vdd_gpu>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 72ad74c38a2b..84a0789fad96 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -103,6 +103,10 @@ &combphy1 {
 	phy-supply = <&vcc3v3_pcie30x1>;
 };
 
+&display_subsystem {
+	status = "disabled";
+};
+
 &pcie2x1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20_reset_h>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
