Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DE7DCD11DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBNRIiE5U2rRsobjchHhWpJ1VtB1koF/MLqDwtT5XaY=; b=o6qBBM7NJCThNW
	zMaol3KunQrs1RNBb53F7qNXPz9oqgKWVKiW7JsOvSMg9cGmSwl2cToGlUysMgEAZ5LvF5qsTfI2A
	UKR4R2C5vqvaN21P944TLWNG7PCSvwBhvst/AI54pZUR9LdmuTYMDRFpVXhe2mZnFIFnhqi4OcbdB
	hhC0briuH2cWsLNgVZ5uF5PQqWFTkG+a3N2Kk6jXghj8cWsEIFNc8yLrDbeH5/jtw+utNg6pkFAhN
	hAdEAtzsOB33WaqJPKTO1MSoNVp7Z6HiwFiI7rRfvYY10PjJk1R1BIkpBT01MaEAYlptisqe/Nhbi
	QtTxAZcMtGGMIBNa+ofQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBiH-00000000UqK-0uMD;
	Fri, 29 Mar 2024 12:52:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBgl-00000000U9A-071R;
	Fri, 29 Mar 2024 12:50:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=rnboXnPrADxE7r3bdAoZe0j6LBjOwTjUwCm1CXiHR+w=; b=OdCBxnPzPZ2nbrUkYPrRPqfHWd
	KGa7w3x0Yjg0SJKk+/1EK8YvDW5x1YGsHGg3IrgU/JKGDAx6ZHti1BA5OuVbj13IMKZCYRHLsQDWg
	Fgy4HaINh3k3xrAhBa63snGgEII+1gFzKLFwtB3h2HbwP2O8Fao3Mb6Zh/mQkPGef9qHjgQrCyczO
	39h6hSDyakJV0YHEha4uq8oERwxVkWPXppdNJWjpJ+0Uc1i88qZBPSYXe6W0MtAAJ/+VPwtD7vg1E
	alx2BLNKYPTQ+vPHrOUq1t+y2pBcf8gqCibpz0p1WOPYGA4i0qoRfDRdPr2F3LAL+jt/4rfpkrY3+
	bpz5z74A==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBgh-00000001ZsR-1bv1;
	Fri, 29 Mar 2024 12:50:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0502DCE10C6;
	Fri, 29 Mar 2024 12:50:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 195B9C433F1;
	Fri, 29 Mar 2024 12:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716623;
	bh=sHUhxif8Mj7FBTMgP1JlQscVfmV99ViSxkXzdJZaudk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OymGRkmHpl8WY40655CPX0iaRMUUbkW5bia9kkL9z3Ko63jTLF61nbX9tWh5c6DiX
	 +oF9QP1xzKGSnPmZdfFXpKq5x/GYtK6516Y9uOSuEMQ1d4lwNmgvsZwwu1Gbh/vDnl
	 8HD9nHVG36R6V4HDzJ4CuONu6tBWsTtp/Dnv9EdvqXh+0O2O54cn1DXlXT1iwgjiVQ
	 BbzaStwL2M4ZyLczuBgv7nEff1KScjV5O7r90zkuM9PoftNwEEi080w4Gdj/ObmLOG
	 J532bd7lYST3wKQWeKsY1ctG9YiJ1Jfl4N9z6I2vXmS1Ph3Gui54w4bEUh2ifhzgRC
	 HE/BoJnwlM86g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	jonas@kwiboo.se,
	jay.xu@rock-chips.com,
	shironeko@tesaguri.club,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 08/23] arm64: dts: rockchip: fix rk3328 hdmi ports node
Date: Fri, 29 Mar 2024 08:49:41 -0400
Message-ID: <20240329125009.3093845-8-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329125009.3093845-1-sashal@kernel.org>
References: <20240329125009.3093845-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.273
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_125027_805316_6F4EA677 
X-CRM114-Status: UNSURE (   9.30  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit 1d00ba4700d1e0f88ae70d028d2e17e39078fa1c ]

Fix rk3328 hdmi ports node so that it matches the
rockchip,dw-hdmi.yaml binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/e5dea3b7-bf84-4474-9530-cc2da3c41104@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 6ddb6b8c1fad5..ef45d5607ea1f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -684,11 +684,20 @@ hdmi: hdmi@ff3c0000 {
 		status = "disabled";
 
 		ports {
-			hdmi_in: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+
 				hdmi_in_vop: endpoint {
 					remote-endpoint = <&vop_out_hdmi>;
 				};
 			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
