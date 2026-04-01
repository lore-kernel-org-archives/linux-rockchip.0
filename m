Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE2EDD35145
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 13:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdyc32Fej3T7QtXI9F5E56XU4O8UfG3O7pILwZ5qGq8=; b=0YC8sysjsp9caj
	FuKu6pThM6ulOk/lINRPU5klabgdTM5p62/Zkyhm3lYZz3EIZJpLocAoTLfVVbyvLm+jvZWCwIwbi
	p0M+s9p6jI4ROW1kgaLTJ7y5A1pV0+HMq8Ies99gZkwcannK9qdmGCO3EOq4HYRDeU26h9DNwPl0N
	GOV11TEc4vJ657QRF8yP2CmL3Jcrb1z/cB54xe94h2KkN3+xXsU8Dv5GChDG3+VHNlpBrDoSCkk/8
	stXXtDCmag2WF1wCgFRo6tBHjCILtnITIPn5Q8exUja/ak1RYKrD9/G9ucDYDECNe00vCWpD4aexN
	YfSRI2IOFqgNpk1UeeBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vRS-0000000FI5n-2W6W;
	Wed, 01 Apr 2026 13:17:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vRR-0000000FI4h-1xML
	for linux-rockchip@bombadil.infradead.org;
	Wed, 01 Apr 2026 13:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=g9ydFqbwdCGJ7LRZTrnA9AUz17TQxDwNxo5bRSg0N6o=; b=pYJEGYigR7YsYXPaGUwZipYPA5
	eRlw83/hM/+wx8KXtdCs0eDc3shWQscm6k52uwtUitStxP6MtPYTQzTepV6ldt75+PDIEgCnx8B1V
	zZtyP090oFjPmE9LAfdTCjdi0lnqMqdKgDlCVm0sGFRwbaABdaax4NAxD1vhqQcc2nyQUSYuj+Yeh
	nG+7BBnjbl8Jxk2u/Czyka8IJFN5wi+tTp5uLumkLLmbhSjMJE8FARd1dnk5M3sYJbbO+iWKrZdG/
	72Xe4KnTlkvdB44nyuTF3qZ9uDDxizpHE0yIdeoFqf9Ikb3tRghNa8Qr3N++cmWycAi+MkbjMp3R1
	rhIgjrAw==;
Received: from out-176.mta1.migadu.com ([95.215.58.176])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vRO-00000000R9V-0jE7
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Apr 2026 13:17:04 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1775049384;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g9ydFqbwdCGJ7LRZTrnA9AUz17TQxDwNxo5bRSg0N6o=;
	b=dhJO1h+Ww8MQKzUtbpNaLyCXn73u3UbmH5Tl74THeoTvoSR0HGHXD3AnR3AVAeS8jq1RXl
	Obgk9v2DuAQOoI88zttsNkO5HNt/M4Qta4fBOWA4ik2lS2sCZBCYlFIY3HYNnHqbvNN0r8
	Slh8ksHgkVJhkK1gQGRhtkRtglLvyQVayXovep6Ge5VoOHb67WfG9WdF9Qiqs2+Od7i4lY
	D6wuEyBjxg7QdGX9JwB9SFW4P/XKjLosWz18iJ6Y1FUMsQrnZtVXueppuovRXdSfi+G2s2
	BJrzdqMNfHybzgeRnXwBojP/hsyO1SOwYSEI+2W673rdvufpQy8cdAfk4TDewA==
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
Subject: [PATCH 1/2] arm64: dts: rockchip: Fix gmac0 reset pin for NanoPi R5S
Date: Wed,  1 Apr 2026 15:11:38 +0200
Message-ID: <20260401131551.734456-2-diederik@cknow-tech.com>
In-Reply-To: <20260401131551.734456-1-diederik@cknow-tech.com>
References: <20260401131551.734456-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_141702_302108_836EE1A1 
X-CRM114-Status: GOOD (  10.56  )
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

According to the NanoPi R5S 2204 schematic on page 6, GPIO0_C4 is for
GMAC0_INT/PMEB_GPIO0_C4, while GPIO0_C5 is for GMAC0_RSTn_GPIO0_C5.
While the 'reset-gpios' property was set correctly, the corresponding
pinctrl didn't match that.

Next to fixing the pinctrl definition, also change the node name and
phandle to match what is used in the schematic.

Fixes: c6629b9a6738 ("arm64: dts: rockchip: Add FriendlyElec Nanopi R5S")
Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
index 718d1a2da8e5..90ce6f0e1dcf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
@@ -98,7 +98,7 @@ &mdio0 {
 	rgmii_phy0: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <1>;
-		pinctrl-0 = <&eth_phy0_reset_pin>;
+		pinctrl-0 = <&gmac0_rstn_gpio0_c5_pin>;
 		pinctrl-names = "default";
 	};
 };
@@ -132,8 +132,8 @@ &pcie3x2 {
 
 &pinctrl {
 	gmac0 {
-		eth_phy0_reset_pin: eth-phy0-reset-pin {
-			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_up>;
+		gmac0_rstn_gpio0_c5_pin: gmac0-rstn-gpio0-c5-pin {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
