Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB993CEB2C9
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/N5SwW7nmKlt4zViJ3rqxH9yuzumjzvOKYVuvlPe3gc=; b=OxZypfP28iPwSY
	QJgDLvSzk5OxVni8T+nNVxtNfUT9el9V7mz/0CZv5T1xGq+gcsQKlhZxZHcs63j0JKdoGlelhml2T
	KAARGzepqkC3I8PwhciYumSOVFKRPxYUAO9CAyei3+W+HcMBsG7Aj0SBUjAbPPTzftXXQ2pIsAHal
	MtrbgvxG8ZkbWKeuSj2Oh9xik0fw5mP/VT5j9fwGV2XVSrF9f7iXQI42evPs3o4bZ9gWqOuXZlueG
	smpjUSSyJyZ+1USLGuxmuNpFg7O91ACCzyllS45Y4ZvNXOuu0vaQo5w4UZsNneXaexxVb3/4jgNOM
	8AXeIaJfme7s+Dm7WLSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svOM9-00000000xe9-1S2r;
	Mon, 30 Sep 2024 21:55:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svOHO-00000000wuk-23fE;
	Mon, 30 Sep 2024 21:50:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=67sg7Ye9a21J/nowWZO0/sx465l3e+f9MizgGd/B0fE=; b=yqSuyKJlzVat96wNbj32y+LQxs
	UIKUA29+XkVyLasf0wKmuEV2ofh4wP3SlCiFW2bCOnRzfzI6X4zBJOvEbqMEg15P3sJ4IfeDUNo9q
	qdiOX1r8Kt6xrNvdzxYWOmPwpo0PjExER2VQvw5tbkX7QQQNf7DYnDrU5B0UyHnhF38Kqi2idCpbp
	/7h+ayJOOdeiup2nYk+bj6Cfc1+hzAupdUY6KxCdMLmPO1e04eoNcTyurJkyPgrqgM1Rosi+DxehM
	cyM2K0HRLFrx7ae/q6aqdjaArm8a8uNO2+hBMACrf0aeXjCs/6HXRclruuv0u0pb0tFBE2yBjGv0M
	Y0z33w8A==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svOHM-0008So-45; Mon, 30 Sep 2024 23:50:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jbx6244@gmail.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] arm64: dts: rockchip: fix compatible string rk3328 cru node
Date: Mon, 30 Sep 2024 23:50:00 +0200
Message-ID: <20240930215001.1999212-3-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930215001.1999212-1-heiko@sntech.de>
References: <20240930215001.1999212-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_145006_662058_BD01527F 
X-CRM114-Status: GOOD (  16.13  )
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

The cru node references undocumented compatibles of "rockchip,cru" and also
marks it as syscon.

A general rockchip,cru is way too generic to ever be used anywhere, so
needs to go away, similarly the cru should not be written to from other
places, instead regular clock routines should be used.

Both mainline Linux as well as the vendor-kernel up to their 6.1 branch
only reference the cru via the normal assigned-clocks, clocks and resets
properties and do not get a syscon from the node.

Similarly, there is no syscon access by compatible both in mainline
nor the vendor-kernel up to their 6.1 branch, through either the
rockchip,rk3328-cru nor rockchip,cru compatibles.

So these two really are unused in all publically visible places.

Sidenote: the vendor-kernel does pretty crazy stuff in the camera interface
and tdm driver, where they map the cru separately and set clock muxes and
gates directly. This should of course never reach mainline anyway.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
[update commit message, to explain the unused compatibles]
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 16b4faa22e4f..cf98f1af659e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -813,7 +813,7 @@ hdmiphy: phy@ff430000 {
 	};
 
 	cru: clock-controller@ff440000 {
-		compatible = "rockchip,rk3328-cru", "rockchip,cru", "syscon";
+		compatible = "rockchip,rk3328-cru";
 		reg = <0x0 0xff440000 0x0 0x1000>;
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
