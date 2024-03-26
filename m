Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A55DACD1284
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 16:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eCLUnWwJ0aQZcocd1dVEGSB2M8aXBDXpZFCCQEDcEoo=; b=QLCIsPPS0Nhg1u
	KM1Z9oWf91PhBGvvliPlxtNR9ijNA0oEJEq5eEai+cqSjhmyqH7ndyJuTzkF/C+8QMwflLQS92fqV
	GTynvP2Ei6toECSLQ6BJiH+cyQQwYlErMUjS6M+xzsCyGCIJSdO7pC+A+O6PWMngpWycwaB3ukObq
	bA/M4ORbMvyFsa0bK28gCFJPtqQbrJFXykPnahz9K1F+5ZzUaZhVetRkZv7JA7P2Qh/8OHe+1b7BU
	tKoPHuox5IQ1adEWHUSKmtcxhzgTOLnIgv3EKpMrsxGqT1sYdHUvjMJE7qNxSg/Zedx75YzaHcC9w
	ysLsAME/zWzU8UdIbiMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpA2X-00000005aI4-4Ake;
	Tue, 26 Mar 2024 16:52:46 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpA2P-00000005aD7-3FSh
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Mar 2024 16:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711471953;
	bh=B0qyQLnvXzhUX1ZeTAh3U7zE2LqnONvAtFoHzqPBnHk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=zzmJxQuu58TxSZkdeVEA5dHzgMvmjb0GtEHM1P+HeFGRLQLBU4VzJ9Lc8E/8RPhoM
	 EQ1v6sRYHlWotkLciGcQgJDaPC6ZQ1dfwyzydI0CjOS/RGMp6UzDx7HCZSCyTAIcRX
	 swfstla0X0Wbs79odgeiCQg/JPVj01309iLdnQVqAW1jehmX12HalAh34wlsR5XajX
	 gUturQIPgzLYh3wdG95EICIOHkz0rQ0NQ73UwIBkAsmD+86FSrkkCWkZAhJ3hE0sep
	 Kg+U8XXJkytc2rZ7BVdy0KM6dxcKA8rs1EH7zDoB6nJSOdRdD6bP3bOMidtUGV/P7n
	 wEtVp5GrBP50g==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 754B737820E2;
	Tue, 26 Mar 2024 16:52:33 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 154774800D0; Tue, 26 Mar 2024 17:52:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v2 3/4] arm64: dts: rockchip: rk3588-rock5b: Enable GPU
Date: Tue, 26 Mar 2024 17:52:07 +0100
Message-ID: <20240326165232.73585-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240326165232.73585-1-sebastian.reichel@collabora.com>
References: <20240326165232.73585-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_095238_190236_BB50316E 
X-CRM114-Status: UNSURE (   9.59  )
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

From: Boris Brezillon <boris.brezillon@collabora.com>

Enable the Mali GPU in the Rock 5B.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 1fe8b2a0ed75..d6bf2ee07e87 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -180,6 +180,11 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
