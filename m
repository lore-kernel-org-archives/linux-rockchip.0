Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59AE2D3517E
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 13:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKPERcmIr5YjGu5j+axRf81fFCzmQRJmEVHKKeB8lTQ=; b=MZ6vL7GhwFK8AM
	fKeqYgHynOYqgQliB0xM1Hujg2pzdfmYI1B9OjHegPGW5QGG52CejMULHrSGImsgqsXzpwSYZqZfv
	yZma7IiXH1qs16sFLnkQbrF+sGX+TNfO4v9cnejt7bTasd/ZLDBux8UermO6WFNlPr1kt2h16cgk2
	XZNuQUdXvp4KuhXgY9Tdjc0SiPrkGXLwc4WZUX/LoLPvsxHAAQzLvS7fgLEq4CojjU4y8CkgHOZcP
	ryl2qwc4O5nm9ZldyJQFpgnnvZg2/luxiWqskrcLb+zcu4T0lDLS+8rMV6OTUs0GTP9IA6f6E1N9w
	BjGdEjnnay7GjBPll1Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vRC-0000000FHxy-2mYP;
	Wed, 01 Apr 2026 13:16:50 +0000
Received: from mta1.migadu.com ([2001:41d0:203:375::] helo=out-172.mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vR9-0000000FHvf-322b
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Apr 2026 13:16:49 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1775049385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e9VA8VLKfLTkWm9X+V2yaryP/HfItXGzqwbDwkHn4B0=;
	b=ammDxO/PijDpoQqzj7DQwMpkueSX1AAj0WsOe7zd8RKA61V9PJ9IjhIOodiQ98QJqWjrEH
	TeW6Uh8+HMDkXJ1rToold42E93cc/4gbmvNB6f6u9KrRudAUhIrmQQWO3e4PQOGWmaIxk7
	TRp5u7WnNYE5sj7gwj4mhUx0GHAZLS5pZKhc4oPfPMggQcVy2up0KbKCaoLpP5inacSVmC
	l6Q6ytydUzH3ID+rCClNIUNNiL1OctH8H99vAaZArQOaeGVOicU/7/3Dt/2BI5exguZpwV
	iUQyJ26h2whaam+y5gTxbzDyWdyVdMBrLrGXd97u69N2rdXJJyEXsCNH8FWSqw==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Arnd Bergmann <arnd@arndb.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Replace deprecated snps,* props for NanoPi R5S
Date: Wed,  1 Apr 2026 15:11:39 +0200
Message-ID: <20260401131551.734456-3-diederik@cknow-tech.com>
In-Reply-To: <20260401131551.734456-1-diederik@cknow-tech.com>
References: <20260401131551.734456-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_061648_015745_5A184B12 
X-CRM114-Status: UNSURE (   8.05  )
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

The various snps,reset-* properties are deprecated, so convert them into
their replacements.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
index 90ce6f0e1dcf..92d044ec696b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
@@ -85,10 +85,6 @@ &gmac0_tx_bus2
 		     &gmac0_rx_bus2
 		     &gmac0_rgmii_clk
 		     &gmac0_rgmii_bus>;
-	snps,reset-gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	/* Reset time is 15ms, 50ms for rtl8211f */
-	snps,reset-delays-us = <0 15000 50000>;
 	tx_delay = <0x3c>;
 	rx_delay = <0x2f>;
 	status = "okay";
@@ -100,6 +96,9 @@ rgmii_phy0: ethernet-phy@1 {
 		reg = <1>;
 		pinctrl-0 = <&gmac0_rstn_gpio0_c5_pin>;
 		pinctrl-names = "default";
+		reset-assert-us = <15000>;
+		reset-deassert-us = <50000>;
+		reset-gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
 	};
 };
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
