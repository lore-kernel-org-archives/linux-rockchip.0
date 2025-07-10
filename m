Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1E83C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 12:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qoKU2oXGqkRf12l7jXA2B0egUqCbTgyIrmiOJ1ZS6Kw=; b=RYCX3JK4v0KGGi
	szDe2QGgH86wTKgrGy6NLqlntsj+NRhcb/H+VhHLRU2bDnsiZ8eV64Ab6kdIfVmiLDQmEhfEQBQ5d
	fEAHVk1UCUlvYnCPASTjdA+DSPCnIWIillMAbU0r2kLTiT6FdWYIpd5eoq5O7AbhK1Roiarv0F3dW
	bPcRfiOTmNbauL1eebuEAWlhg7eb2wPOcX9oWmRXAcaUPpVNIEob49axZ+xYa4Uy2SixDLCNq79Of
	O5COjN0+HbyuMunXAqREQahx8bXvexwjq1xMYNpf2OanOZK2kfkz8W6BdPXxTw3NNgc1fJ3X5RJcQ
	4sCEZoc3Z7Kw+p8/eC0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZqNs-0000000BldF-3HZw;
	Thu, 10 Jul 2025 12:28:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZp24-0000000BZBY-2ULy;
	Thu, 10 Jul 2025 11:01:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=u0doyyzVzbvs/veF0uzJJxh1mFAme265poBUR2M8XYM=; b=hOw9ulEHrjSWxSo0zKJNTZBsSQ
	4Z0XyYkdULUrmfkbPiKTxRHoaJ7CB9NSvctEnIjMlSgIaX4xli/Wp4N+n61QHF77mi51gOB8giD1g
	9QxSvev00qreUEiZXcjGMjz7UOedpVZLKv+SIY2wneNFX4PQ3iX5E9LOV8dr+eG4lo3MFyw24Q3L/
	ls+aoBgb5Pg86K6P2+5z1A96cocEfLwHvjQfjT7rHm6HYtI1E1uXUbAF64Z042iksbKzRjEcd76mn
	NRTahwVPf4nhWCv1gcCBrCjvTQQ3SWTLCRL8Vw8MvDRw0yV89bOkPlZSJUPTsS93qFDN3xPaelRwb
	BSyd16zw==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZp20-0004He-45; Thu, 10 Jul 2025 13:01:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix pinctrl node names for RK3528
Date: Thu, 10 Jul 2025 13:01:32 +0200
Message-ID: <175214509879.1901332.8552512069913088208.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250621113859.2146400-1-jonas@kwiboo.se>
References: <20250621113859.2146400-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_040140_627902_82811B02 
X-CRM114-Status: GOOD (  10.51  )
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


On Sat, 21 Jun 2025 11:38:57 +0000, Jonas Karlman wrote:
> Following warnings can be observed with CHECK_DTBS=y for the RK3528:
> 
>   rk3528-pinctrl.dtsi:101.36-105.5: Warning (node_name_chars_strict):
>     /pinctrl/fephy/fephym0-led_dpx: Character '_' not recommended in node name
>   rk3528-pinctrl.dtsi:108.38-112.5: Warning (node_name_chars_strict):
>     /pinctrl/fephy/fephym0-led_link: Character '_' not recommended in node name
>   rk3528-pinctrl.dtsi:115.36-119.5: Warning (node_name_chars_strict):
>     /pinctrl/fephy/fephym0-led_spd: Character '_' not recommended in node name
>   rk3528-pinctrl.dtsi:122.36-126.5: Warning (node_name_chars_strict):
>    /pinctrl/fephy/fephym1-led_dpx: Character '_' not recommended in node name
>   rk3528-pinctrl.dtsi:129.38-133.5: Warning (node_name_chars_strict):
>     /pinctrl/fephy/fephym1-led_link: Character '_' not recommended in node name
>   rk3528-pinctrl.dtsi:136.36-140.5: Warning (node_name_chars_strict):
>     /pinctrl/fephy/fephym1-led_spd: Character '_' not recommended in node name
>   rk3528-pinctrl.dtsi:782.32-790.5: Warning (node_name_chars_strict):
>     /pinctrl/rgmii/rgmii-rx_bus2: Character '_' not recommended in node name
>   rk3528-pinctrl.dtsi:793.32-801.5: Warning (node_name_chars_strict):
>     /pinctrl/rgmii/rgmii-tx_bus2: Character '_' not recommended in node name
>   rk3528-pinctrl.dtsi:804.36-810.5: Warning (node_name_chars_strict):
>     /pinctrl/rgmii/rgmii-rgmii_clk: Character '_' not recommended in node name
>   rk3528-pinctrl.dtsi:813.36-823.5: Warning (node_name_chars_strict):
>     /pinctrl/rgmii/rgmii-rgmii_bus: Character '_' not recommended in node name
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix pinctrl node names for RK3528
      commit: d50bd46d387f7f6d2e5aa4ce1aeefd3c9b6776a4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
