Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CCB8C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 12:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmoGBOCcY3OoQ5oDIL6IPLI/SSHgOzH6k3phGr9awIs=; b=1odE6k9oVq41rs
	xRyRpRKOvkf9iBbtEMgzE+B3i2W6pTMVJjOn6MQKjdzP9WoIRG0Uo3ERvK5xp4A4knPmV0TqKB6dj
	Mtk7MBEFCYQPpaoFOHtI5mjxGpk2w7D49PmqJX25Q3Lydga9XTrUWqkqUQRwAiLJogZQmPKtqX+Xf
	X3+633kpVvHokseQpDPQ6OwV7rTEDpQ3nxL4oJMj51TfqxyxRMeq1RdCS8N/qlCjSfLnFREKkeMxQ
	lEGxBKvfk7jtOVQJze0GL0yCBa6o3HBaxve2MbhWrtMCST+hBMPI848TQZw99YIE+ZbaXIusuo738
	zTij2PhifGB/O+opZBnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lmh-00H0Us-06;
	Sun, 03 Dec 2023 12:41:19 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lmc-00H0R7-1v;
	Sun, 03 Dec 2023 12:41:16 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 035975C0136;
	Sun,  3 Dec 2023 07:41:14 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sun, 03 Dec 2023 07:41:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607273; x=
	1701693673; bh=0Z34ircSgmagFzebZpYklzEym10DzlMEfWeocShNPWY=; b=r
	7zE6P8JIuCguI2jomXAU+50xySPtpLF/UhhyVSrzIS6RYxccMt2pHW5A3KmyCoHF
	UAvIV6FcNm4zr0IF1AW65A9C/HcjjOJmIFfLRctwafDHt/wbDWkwUD2GSXf/TG9P
	hDHH67RPZPHyT0WQJ+H20gRkktr9fWlWy2PGyAZXCshKjjfFZj6l+e4UsBm8Eqjj
	4As4VPikuD+jPtE67v7QnG98a3eRTX6+ivh464QVwFqjrmgphKMoDNjRD8CKiCvM
	+6Yv0HHpEqWyfFrNfBn3Uz/ER4leyIlMhqEfSKxlOk2jwkb+Hp9JzqLwzU+bF8Vw
	6fTxCYNSZOQLV49Dfjk+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607273; x=
	1701693673; bh=0Z34ircSgmagFzebZpYklzEym10DzlMEfWeocShNPWY=; b=o
	qf5WclfJqgRZLvV626Md+9yITaxMq+aKIuIbk7Zz3OIafdffy/5SI7S18EmaDM/D
	VylGzP5wcUIHkPECuttm16e3uE25kLREp+l6XxQdgvoTBDL09tgPYXV5LmzSZs4K
	+0ptg4tYxrQgzC5Wai1jrNoFdNlUlUwJNFRdojP9lUAVZODS1ZSZcrQ1UIWpx8Co
	yVO34hQdnHEBZNGMIwb1aOplKm8hKDUSjxSwtMvbtprFUIOa9vJ0QJ+K4YaYb10+
	XTiSTJfy0VKY19V1Kf/5Yn4Kn6Uzu+eyGlH1kLCJN0cU2ei81AL3lsxkIXu5eaCI
	2PXfOPv8UM6tYVCJsUh7Q==
X-ME-Sender: <xms:aXdsZalwlioYxsxgfmT-2inw3jtYRtnmVkq30U-3Q_HTMY-UlGuNdw>
    <xme:aXdsZR3qB_3qlp9Ts8BtYD-Eq5sQqN8Rq3WdoxfWH-OdOjyZ0Yh2rWJTNqAyxj8oi
    ZgpYEHCxw>
X-ME-Received: <xmr:aXdsZYoU0chF6GxrVteIX1e79VJ-RwKGeDaMUEZA_U7SNazY2zvehkmi_w_SYYxPcZjm6qUphU1ll_gUELRq1BE9wC6co-EygXY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:aXdsZekmlTlUL7DrijkEC5UopWM4MT5LZWFJx7409Kd86U5HrtovdA>
    <xmx:aXdsZY2rhq5qtTswhf9Q6RfCFnDHaWGQfI3tpvPB0QU5mwEzNNuNeA>
    <xmx:aXdsZVtVWjq5oKamHiRfLeT44fND_80uK41SxRXw9fqIbVEQOxXOgQ>
    <xmx:aXdsZZk1ZDaBVe9rvDo1IgdoJxmJJ7bJPBPDdEKsN3dx8XOCKOAdiw>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:41:09 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:41:06 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>
Subject: [PATCH v3 6/8] ARM: dts: rockchip: Add rv1109 SoC
Date: Sun,  3 Dec 2023 23:40:02 +1100
Message-Id: <20231203124004.2676174-7-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_044114_702689_B04EB9D4 
X-CRM114-Status: GOOD (  12.53  )
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

The Rockchip rv1109 SoC is a dual core version of the rv1126. It is
otherwise identical and shares the same device tree config.

This patch introduces a dtsi file to drop the additional cpu nodes.
Taken from Rockchip BSP kernel.

Signed-off-by: Tim Lunn <tim@feathertop.org>

---

(no changes since v2)

Changes in v2:
- new patch

 arch/arm/boot/dts/rockchip/rv1109.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109.dtsi

diff --git a/arch/arm/boot/dts/rockchip/rv1109.dtsi b/arch/arm/boot/dts/rockchip/rv1109.dtsi
new file mode 100644
index 000000000000..9cbaa08ab1b8
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1109.dtsi
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include "rv1126.dtsi"
+
+/ {
+	compatible = "rockchip,rv1109";
+
+	cpus {
+		/delete-node/ cpu@f02;
+		/delete-node/ cpu@f03;
+	};
+
+	arm-pmu {
+		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>;
+	};
+};
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
