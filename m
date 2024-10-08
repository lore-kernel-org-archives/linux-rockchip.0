Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BD08CF0423
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0EY9sEg8J6FBtK+lxpvxDOBx7fUroN1WZj/1pZIl08=; b=x0mqOEf1AC6y+P
	NhhBj1AvonsOr2i5o3GCfmNqB8AKt0BQu33amjh0A/L82hSIiKCOTeHPhMYek7DoTYHHsO1SSO5Sw
	TteEVL+IxPzwGfibCKe3AvjGus1O1Xpxf2QDzE1gKBLdi4FbpdPAMDlQliLbAZd8Loz/FnAl7yvBz
	JXP3Sm3Fic/KCt2F36iLXxgEQuqT3Ee4gEkkEIT7+NfxQg5srttWrVIyPAuQ9nnEp2AVTAiNi4/MP
	ncAccBNj2nBGy0g73xVC3gNwgSvpx0099PDEGJz96PfPc0h3mwRnyiZxIgc63K16KTdl6mc/G2bOT
	MIPfTdxZtfDNqvRN5tEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syHHk-000000077bg-2eJa;
	Tue, 08 Oct 2024 20:58:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH1B-000000075QX-0dgw;
	Tue, 08 Oct 2024 20:41:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Dx6qSKCScjkQMoZc8ORhv4gyksrl/9l68dxlNO0Nn/Q=; b=WiwbPRuRkG4uxFgmzeN33dV/06
	M0/4AHjFt9JTYPHJ2l7MinthOje+M2tZHH3PTtojU1x4qVJdv/I9c7s+9qWsRvF3Rpfbtf2HGt2rr
	51LnTDkacVJYEVBDE77+Th6MF8tKaN1KK7v5hV0I4nEySBMhnS6OQLVdJJ7zXGcmYuB0CsAO1h/b8
	kXpUZ0xmHLzRRH5mDM2VYEgtQkTcL4ROOgr2WO/XaZyvptVjxuqLLlx1+3k4ZqmHsVX5AjfGzKc47
	t9uEYolu1Nkqol8V0E8TPgqVW+8oRZVxfCFl8AlUmTREyQZMd3cF8m2yJo+FU2JwtX1yua2Yom7M8
	FtnU8ihw==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzz-0007ua-Dh; Tue, 08 Oct 2024 22:40:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 11/14] ARM: dts: rockchip: fix rk3036 acodec node
Date: Tue,  8 Oct 2024 22:39:37 +0200
Message-ID: <20241008203940.2573684-12-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_134117_226980_FBFF92CC 
X-CRM114-Status: GOOD (  11.27  )
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

The acodec node is not conformant to the binding.
Set the correct nodename, use the correct compatible,
add the needed #sound-dai-cells and sort the rockchip,grf
below clocks properties as expected.

Fixes: faea098e1808 ("ARM: dts: rockchip: add core rk3036 dtsi")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 96279d1e02fe..37369538483f 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -384,12 +384,13 @@ reboot-mode {
 		};
 	};
 
-	acodec: acodec-ana@20030000 {
-		compatible = "rk3036-codec";
+	acodec: audio-codec@20030000 {
+		compatible = "rockchip,rk3036-codec";
 		reg = <0x20030000 0x4000>;
-		rockchip,grf = <&grf>;
 		clock-names = "acodec_pclk";
 		clocks = <&cru PCLK_ACODEC>;
+		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
