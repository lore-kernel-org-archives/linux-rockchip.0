Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CEB1C369C2
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 May 2025 15:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLdgul1ynU2oR6ZTYFn69/+tj1QHbZDxKtZ4rfHMJnw=; b=BiFj8YDDL8PetL
	k3N62vHENnKVnso6SImRTxP5RV+EZEJNNIXQjViJYaPq4cmONE4R9HS8a5oQmidWCb8Pj29Rq599t
	VVpr+xRx9/k7sCg9Y7nR/vVOwU6BGy8+7h3ZjZMWHI7wqkkAdxXndTL+fKjkaUanc7RZ5PZGEXlZ6
	6w5/X1td73kjTlTVZ/eho7XyqbUgTzevWczC8clhMVgNT44yaUwtQsXINUBLqylLMhsNlW7cJ6W+p
	XqAfZlCwpVpdfM8Qy5BMjt9KufcaeqM04EAhUNzQup2UsbxnTw2vEMjK4W2zZSk5Qgt+Y2UbxI0d2
	QtPILARhcCqlGNlddPXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBEqn-000000042h1-1Oeo;
	Sat, 03 May 2025 15:32:25 +0000
Received: from out-183.mta0.migadu.com ([91.218.175.183])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBEoI-000000042Q5-42YD
	for linux-rockchip@lists.infradead.org;
	Sat, 03 May 2025 15:29:52 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1746286188;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mhu99ySLYaiKPPq+v39y472i2/ykn+7Aa2t0YVWjSFU=;
	b=ExritJkc/ZH/pgOIYSIXHlXiTjfAwntkACKCM23oZb8qrIVmoMuLu56qHDAycV4MfE//Uk
	N5Qk+hcK3ED9GfwZlqKuUHmIpOx5IyoQreumdTYO3ecJuPL7FTGzAFCLvX1HDwawUH/8G5
	+QWTo2NxN/fd9CEhq08FYKZ19oI5G1sB0VZ8cuGf6GhKhsTTV1dPqQ+XlwTMH/oc5KozKs
	NXrSdvwfjUILGruRYDzZYZN4+EpiOCtIxP8t30Y0Ps2n6kXONWJ5Tog0TEDR/HGnHLE2Wf
	Q7agf8WIjKfG5UeBIhZJLEqExD9AzyOpqy7PelziQRTLl0whjjMsaHLkxEeiFQ==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	Vasily Khoruzhick <anarsoul@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 1/2] arm64: dts: rockchip: Add phy-supply to gmac0 on NanoPi R5S
Date: Sat,  3 May 2025 17:22:18 +0200
Message-ID: <20250503152917.138648-2-didi.debian@cknow.org>
In-Reply-To: <20250503152917.138648-1-didi.debian@cknow.org>
References: <20250503152917.138648-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250503_082951_138749_D589F8D5 
X-CRM114-Status: UNSURE (   8.72  )
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

According to paragraph "7.16. Power" of the RTL8211F-CG datasheet, gmac0
needs to have a 3.3V power supply.
On page 22 of the NanoPi R5S version 2204, that is identified as
VCC_GEPHY_3V3 which is connected to the VCC_3V3 power source.

This fixes the following warning:

  rk_gmac-dwmac fe2a0000.ethernet: supply phy not found, using dummy regulator

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
index e50f1585244a..805cb23493e8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
@@ -61,6 +61,7 @@ &gmac0 {
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy0>;
 	phy-mode = "rgmii";
+	phy-supply = <&vcc_3v3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac0_miim
 		     &gmac0_tx_bus2
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
