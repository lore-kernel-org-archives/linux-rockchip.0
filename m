Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F18CC46CA3
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 16:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ge/7IX7PqdwqKeFBkGqNlcnl6jjDh7bOKJ0Q+JvtDc=; b=TRizLqMmPPJ6gh
	xJ3FNEET+RWLNLsyT4emRecL7DwhBJzjz/GdW9qP0YoxpMOSmmizAP2jxtenaIt+5pkTE3qkSfJL0
	FnTQMLwBJXullpARDHFsAgWR1PkHUjn5XeUpJJLMb3iUgMMH5QQ0wXHxo8pjmBHGC2q9KubgZz6mb
	G/KTjIDXkIL+Hu8fdjzECyuMUbmfPFbidBmhkb2CJ6fkdW/pcigXF6gUPsWHp2XuTbHNHiY9OSvxz
	d/Epm2tRU0tzGQfb0hJihSvJsjcplHMD/szpVRQkPnPE2v+2JaF0BBFXJnXM3fr2OFqCAngecqZOg
	p+idTom1VuHN+aiuCA/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r96qL-00EGS1-0C;
	Fri, 01 Dec 2023 16:58:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r96qF-00EGOB-2x;
	Fri, 01 Dec 2023 16:58:18 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r96qD-0001Os-4n; Fri, 01 Dec 2023 17:58:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 2/4] arm64: dts: rockchip: add rk3588 i2c aliases to soc dtsi
Date: Fri,  1 Dec 2023 17:58:08 +0100
Message-Id: <20231201165810.334212-3-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231201165810.334212-1-heiko@sntech.de>
References: <20231201165810.334212-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_085815_983940_1BC067D8 
X-CRM114-Status: GOOD (  11.21  )
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

So instead of having each board repeating their list of i2c aliases
move them to the soc dtsi, as all previous Rockchip soc do already.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
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
