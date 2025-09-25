Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 964B6CAC5A7
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 09:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojKtuHUhIkQvmcZITvU49WqkfaIzRRJJUrQWEfSDx/g=; b=LNjdCa2Xr6MqV/
	SKg3jOH82+GyulYWd6gCBc2Q0q0QehSmzw87J9jp2FD09dUtlLPTGJv9NF64ubGWr4lOvAYAVKIWp
	xIRmuwRUSUuByZcvi1DyBUGIxEUPPRN0Alkk+WAe6kO7EpWpOpz1N4qSxxm5JK66rb10wC+EOxuWT
	d8Aq2as+ntBjdt3bmcui28BTxy7q5xgRrmaRj8BMGdGlVlBW8ESoJAF6h6Jh2bNY52hRM4K0nEkBn
	URnJFtAPQ6/Wh15eeA6IFCTnx61xsW8CwxZwIdjVGHE6jWne0ZbZTsmtO+9xYw4zs5VfJmd5EpxgK
	1gNbUyIeQ9qKRQ7saaMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iJa-00000007dYz-2URi;
	Thu, 25 Sep 2025 09:31:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iJM-00000007dHQ-0Mhd;
	Thu, 25 Sep 2025 09:30:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=ugLw6Txl/Nh1pQ7d2wkRFx9L+dNw/roMpkSALIkryUE=; b=xqWLxhadPrCEifekvoxMzB+bzo
	TEYZRD45vsXvFx0bxQwHYqD8pSdFqD1GjemIJ3g+svmZGa3U/ozP1cRs2yYD0IwOz2MAeriVUUzO5
	DbzKNytNOd7nHFtkSD82cXX7MdvY0p1PQVacUK8E0Z+VmEwv0X48ZYXd56Hx2HB4nhPgvj84qHIYa
	HBEEQqT5kHqF6DqPdvHwA98FAwtIA0qL6j08wOth/KdFEVQTi7yi22s/yyKHgdO4J0IEEscf8I3Xc
	bG8ovESVXE6M7fUoyZGabMN1IjMM8ACwFPEeUZ77hZ7G4gYV7WNEqYSFfszx/Ct12ZD71CzFQ0CRA
	USJFzE1Q==;
Received: from i53875a54.versanet.de ([83.135.90.84] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v1iJG-0001Nz-4h; Thu, 25 Sep 2025 11:30:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH 2/6] arm64: dts: rockchip: Fix the 1Ghz ethernet on Qnap TS433
Date: Thu, 25 Sep 2025 11:29:19 +0200
Message-ID: <20250925092923.2184187-3-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250925092923.2184187-1-heiko@sntech.de>
References: <20250925092923.2184187-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_023048_122796_B3EE754C 
X-CRM114-Status: GOOD (  18.79  )
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

While I want to remember that the dwmac on the TS433 was working at some
point, it seems I had my network always connected to the 2.5G nic after
that "point". And testing now revealed that the gmac does not actually
manages to transfer data.

Currently the gmac is set to rgmii-id with no rx-/tx-delay values set
which makes the driver use default values. Setting the delays to 0
also does not provide a working interface.

The vendor kernel is running with phy-mode set to rgmii and delays of
    tx_delay = 0x3c, rx_delay = 0x2f

As Andrew points out often, those delay values "are magic" and rgmii-id
should definitly be used "with small values" for delays, if really needed.

The Rockchip vendor-kernel actually contains additional code in the dwmac
driver to use the loopback function of a phy to find a window of usable
delay values. Code can be found for example on [0] and the process is
described in a document called "Rockchip GMAC RGMII Delayline Guide"
which has made its way onto the internet in a lot of places [1].

So I used this process, with the interface set to rgmii-id to get values
for this mode, which are in face lower than the ones for rgmii with
    tx_delay = 0x21, rx_delay = 0x15
and results in a working interface on the dwmac.

[0] https://github.com/armbian/linux-rockchip/blob/rk-6.1-rkr6.1/drivers/net/ethernet/stmicro/stmmac/dwmac-rk-tool.c
[1] https://gitlab.com/firefly-linux/docs/-/blob/rk356x/firefly/Common/GMAC/Rockchip_Developer_Guide_Linux_GMAC_RGMII_Delayline_EN.pdf

Cc: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 5656554ca284..e8af92a011d6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -257,6 +257,8 @@ &gmac0_tx_bus2
 		     &gmac0_rx_bus2
 		     &gmac0_rgmii_clk
 		     &gmac0_rgmii_bus>;
+	rx_delay = <0x15>;
+	tx_delay = <0x21>;
 	status = "okay";
 };
 
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
