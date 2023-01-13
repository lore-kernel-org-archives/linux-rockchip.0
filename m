Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D51E1C54EBE
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jan 2023 13:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8sel4HZ5dI5P23oYwoQ9UG8AqDDHcNa+5x0MTylNRis=; b=KhxAYa9OBhYjyg
	QIJUx2P+FLbCiMbMmwfRmt2FPtMEjE3j2MxIQeR9F706byD6i/x3KnytWoFIFJAOP9y4UWxqfkepd
	0F0DHgSSPXuRw2KK+z0TF6kuVzRNqxcqjWajCYWk36Ga2n/fKrj/SB58m5L4Yxcn8eolFgmWqVJ6M
	QKFFJY167i849jTh74XGicmPsDpK2Te+lu3Yg6tJocPOvKRR/hTrYOHWHNMs3dtfaIbtJLGDg2bFM
	7Pac0Qi7FH3oIpMeeZWu7dK8ljOAykEgCyYG6gHR24VZVnVuoYP6mMHFpjq6nef1feLvWI0O1NbKP
	DFOe8BWDNdme5IcC42kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGJhg-002emh-EF; Fri, 13 Jan 2023 13:02:40 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGJhV-002ekg-VQ; Fri, 13 Jan 2023 13:02:31 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 78BC96602DCE;
	Fri, 13 Jan 2023 13:02:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673614943;
	bh=aUvLM57s+KTS0WmTxnw9kmbSx3nApfm7x7mEcHDukc4=;
	h=From:To:Cc:Subject:Date:From;
	b=XotrLTm9CYAR/t5hVtLKuAv5CZShy4EckmylSTvmqv/amMZo08lSKAiotiAt4Lwqu
	 R6kTQA8Fwq+8ARRXaaKTSb5531dS1g/tTEA0JAvK/VDBIb6pLWls3i9SQCto2CcDLJ
	 mDJhIb3P+7uGvx4u/5XYqTRMMCvlu9OTbiUwQ5mPzB3O1yQio2qLNmonPRi4EDnkwf
	 pIvbDD7aWBhkG8is5iWIwiTzbc1hUUe5cqWqVq7oYLumVTnY5YfASAXRVx5krV4phW
	 SmVM5tQC2R0DUxN8x3qu5GDi7AD9/aXroY+FMptnsHe/BPEO0pwb4T1KQYYUBJErFx
	 1xgFhe15vJCng==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>
Subject: [PATCH] arm64: dts: rockchip: Fix RX delay for ethernet phy
Date: Fri, 13 Jan 2023 13:02:20 +0000
Message-Id: <20230113130220.662194-1-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_050230_258432_5AE22C86 
X-CRM114-Status: GOOD (  10.40  )
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

Add network PHY rx delay and change type to rgmii, so
that it is applied. This fixes packet loss when more
than a few packets are exchanged.

Fixes: 55fa4c2a7a912 ("arm64: dts: rockchip: Add rock-5a board")
Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index cc4c68936b3a..9e22ce01e1a3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -53,7 +53,7 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3 {
 &gmac1 {
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-rxid";
+	phy-mode = "rgmii";
 	pinctrl-0 = <&gmac1_miim
 		     &gmac1_tx_bus2
 		     &gmac1_rx_bus2
@@ -61,6 +61,7 @@ &gmac1_rgmii_clk
 		     &gmac1_rgmii_bus>;
 	pinctrl-names = "default";
 	tx_delay = <0x3a>;
+	rx_delay = <0x3e>;
 	status = "okay";
 };
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
