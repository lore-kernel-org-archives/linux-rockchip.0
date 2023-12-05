Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF828C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 16:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxOjuvQWeL/+vbtiz0sZiPDhkD3gYoNa7Eycs4s2XxU=; b=V8/vivQ6nqF2LH
	Wo9RuxZAM8VNe23ThB//rpsse4kBCCJGnnB5D2JkEoq/69X7Uho/ZVKnxVqMy4AgysgVxtFLPSqMk
	fMxJ6+Ep2GN0HC8Ru6USvT8YQnvunWbD7Y5/YHAPHQOHxqSUmld/62yANPMVMd7KugGxw3H3EVJIu
	wchO9317EP6S29XsH1w1NbZd0y7QOSvE+3ke9yepJsVYFrIFrV0YKnrbAg4b8T+MJGoqflfs+WQRm
	b6FWplGmRlSGoX/U+9LEIFXW8SFDcPEok2ZI0aUndeXXLgmAKBxteScxjT1uBMiAODI5zlcYWPU2s
	k/AZvlwtAwbwxtr8iBlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbP-007ugy-2y;
	Tue, 05 Dec 2023 16:48:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbN-007ufj-1Q;
	Tue, 05 Dec 2023 16:48:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2cTVjqqa8EEmf7TS0KqOrNCoduHUd3c/KJNBbFCf5IA=; b=mMOly9x3q0pn9tlVPRqHtSe742
	AVE9Hp/nJbP9Axc2Nw+zoMqU28pZUqlN/JixUELdn9olMnGLoGhwSWzhl6EZbje9bhJk1f0kzwWzg
	aiOXtvidozcsSacmaAsJagESmIA2DbOB7JCWrHUAonuW7YwiwoVoHHvNWvuNNbLutbZs6enX7UVbF
	vb/9Mvxe5l9uCX3fJxh/GXg6Me+zMewjfd6EgQ9GLIiiJwGFsWWhLrJUBvF4WBtvJ420jPdwjo4cd
	q5A1Ek66aDri/i7Jj/qNawu3td9hRfQ7baTAX10xn++289bxk3xxV3RFn4z3xL01RImAldCq9h5bc
	M/Vn+cMQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYbI-004oHa-0J;
	Tue, 05 Dec 2023 16:48:52 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAYbE-00014D-W3; Tue, 05 Dec 2023 17:48:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de,
	dsimic@manjaro.org,
	didi.debian@cknow.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 2/4] arm64: dts: rockchip: add rk3588 i2c aliases to soc dtsi
Date: Tue,  5 Dec 2023 17:48:40 +0100
Message-Id: <20231205164842.556684-3-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205164842.556684-1-heiko@sntech.de>
References: <20231205164842.556684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_164848_317557_86C2E68B 
X-CRM114-Status: GOOD (  10.23  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The i2c controllers on rk3588 are named i2c0 - i2c8. Board schematics
also use these exact numbers and we want those names to also reflect
in the OS devices because everything else would just cause confusion.
Userspace i2c access is a thing afterall.

To prevent each board repeating their list of i2c aliases, define them
in the soc dtsi, as all previous Rockchip soc do already.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index d854536a44b8..47512c39e55a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -19,6 +19,15 @@ / {
 	#size-cells = <2>;
 
 	aliases {
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
+		i2c6 = &i2c6;
+		i2c7 = &i2c7;
+		i2c8 = &i2c8;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
