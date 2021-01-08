Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 796FCC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:33:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7421B23A9D
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:33:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7421B23A9D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9RBWw4Oy8RLuATuVLC/1HYIC//eG/1lsBYyeoj6v53g=; b=dSAHgZq/tOiy4R3+ebAsNBTw7
	2XIJzArxlZzfkhF2YZlW/d3ktUZZJ5SeINX+3EMSmmwG7qbaj4b1qsqTgt+YsONArhJCqm0hZRE/R
	pkKsJ5xEOxwTJ6ZyZvR25iGuqyd6a2Cb9Hh4IKmoFwvbPMj54Yo6A9PSu0nEgyA8rCVZ9psQAlGlf
	Z8oh5y6yhTDzPTWT+sqCP2/dLnL7GExQm72xjFiUmgQw4zX4caVNxyXrTMWZCPzwwgEstDxSNyPM1
	QuPiWBE0BKoDlznX0Zu2oPee+d3mv/44K5zCpRqkwMRnm/pE69OXOltqeFnQYDQOJ6z5Z1X6XCNZZ
	Awyk5GGmg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxxWA-0005wZ-TG; Fri, 08 Jan 2021 19:33:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxxW8-0005u8-Lt
 for linux-rockchip@lists.infradead.org; Fri, 08 Jan 2021 19:33:50 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kxxVv-0004Zr-5o; Fri, 08 Jan 2021 20:33:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com
Subject: [PATCH RFC 01/11] arm64: dts: rockchip: add csi-dphy to px30
Date: Fri,  8 Jan 2021 20:33:01 +0100
Message-Id: <20210108193311.3423236-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210108193311.3423236-1-heiko@sntech.de>
References: <20210108193311.3423236-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_143348_925062_23520614 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com,
 mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f4dfcb01e3d9..52bc54416657 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -863,6 +863,19 @@ dsi_dphy: phy@ff2e0000 {
 		status = "disabled";
 	};
 
+	csi_dphy: phy@ff2f0000 {
+		compatible = "rockchip,px30-mipi-dphy";
+		reg = <0x0 0xff2f0000 0x0 0x4000>;
+		clocks = <&cru PCLK_MIPICSIPHY>;
+		clock-names = "pclk";
+		#phy-cells = <0>;
+		power-domains = <&power PX30_PD_VI>;
+		resets = <&cru SRST_MIPICSIPHY_P>;
+		reset-names = "apb";
+		rockchip,grf = <&grf>;
+		status = "disabled";
+	};
+
 	usb20_otg: usb@ff300000 {
 		compatible = "rockchip,px30-usb", "rockchip,rk3066-usb",
 			     "snps,dwc2";
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
