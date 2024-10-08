Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 553DECEF15C
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 11:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1OWtPdu0I5/ZasHrFlDpj/URLpeG1tE956GBIFcCCs=; b=rNwUWveRbR6dLe
	0N/HTmJ1wRm7PDCUOtewl8Do+gkpKxVXl8Hu4ZsAwECIyHMakSqFkOuvG9vUwqcjxh7Xu/3wfF1xE
	aTrtxDuzyvwVbnbGw8JO5zstdqKuD1qplXPHMbg3BctJTbOTxGuWdiwNLCOoQuvpVZXYpNCFKx48Q
	B0jT47qB+dpJoCwpC3CoXgr+q3KIsRenngu6suRlJUwof9NfrIAQb3J7rnQebwK14vCtE9Vp+0T8M
	K9Lg4BvI4FO6uiPKHGUTphvXwEJtgWrPiLJpBp1JmXyyP3TCjLXWbRCS09F5uabIe5W4904XI2Rsu
	aNCCmguZaWVugwcHDhdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy8gw-00000005gt7-21cf;
	Tue, 08 Oct 2024 11:47:50 +0000
Received: from out-178.mta0.migadu.com ([91.218.175.178])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy8Tx-00000005dxY-2Ij8
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 11:34:27 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728387263;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gZ+i+HZ0rdHDHJHDLF23OW3zaIUfIrmSTf6E1PPqT9E=;
	b=yDy3J+/cMtLHcUvZheYWqUpPALn6ryr/gIZaHpW/2exGa9wHvjNjMZfFjPD+FHathn5KmE
	kHOM1QGOpCqlS4eI6MkOByZzNRnM7lpuSy/Z/y0XLWs0jJAFaqImgxyNn4270VeM/jNkA4
	4IRDBa9pLdChclFMdsVoJDpkxyI8HyVsC7FgsiseJ74+1IKJaj6iR0mmGbAyLWLMFVWzGi
	J9y3su7H2RjUmjDO/buJhqqQDLidgIkx6cEQ5pL+aAS+gLY4B/XlFLix7btS4UkoyVuqKI
	zDUhKYTNcvUPsk/orBE2DWZA/ZtGMbJZjTnWbnPrApou8TUJPZktVusT7cuPHw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] arm64: dts: rockchip: Add PD to csi dphy node on rk356x
Date: Tue,  8 Oct 2024 13:15:36 +0200
Message-ID: <20241008113344.23957-2-didi.debian@cknow.org>
In-Reply-To: <20241008113344.23957-1-didi.debian@cknow.org>
References: <20241008113344.23957-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_043425_761864_E86EE1A2 
X-CRM114-Status: UNSURE (   7.64  )
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

The "rockchip-inno-csi-dphy.yaml" binding requires the power-domains
property. According to RK3568 TRM Part 1 section 7.3 (page 475) the
CSIHOST is placed in the PD_VI power domain.
So set the csi_dphy node power-domains property accordingly.

Fixes: b6c228401b25 ("arm64: dts: rockchip: add csi dphy node to rk356x")
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
changes in v2:
- No change

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 0ee0ada6f0ab..d581170914f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1790,6 +1790,7 @@ csi_dphy: phy@fe870000 {
 		clocks = <&cru PCLK_MIPICSIPHY>;
 		clock-names = "pclk";
 		#phy-cells = <0>;
+		power-domains = <&power RK3568_PD_VI>;
 		resets = <&cru SRST_P_MIPICSIPHY>;
 		reset-names = "apb";
 		rockchip,grf = <&grf>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
