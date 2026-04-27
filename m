Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 707F7FF8873
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 21:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=floEQVXtajEuDvGyCJuOloNE2o+Kmt5TbSILeGcLfQA=; b=ZCkk/up/VxZxcG
	GHMI/y9wPsoZXHksGQHny1EZ3zD+V/tmfzNsDE2kc7Gwgb9cxa7psvMHF5/ubR0rXkn3Sw7eMViJD
	iSKFatqMBStvtFtKHlQAg2296XJ+aMLILve9/HHFo/NAKzkJ9H52KeiarO07nMIkF7nIDjxg852qh
	Y0IAadNVniKkUI3xzNDATxelUb99B7D1eEB1pju3DBUUJJ+6vn6ky3o0mK12blmlJhuW2f3pMg1Kq
	I/v67v7CAAcHRKvP+sYKD6aLYXNR+3wAjofg1ygCexDWAXcH5zbsea+C7F5s1AKjEPVuO5dGTwZCd
	3/nlKlBS0iyHl9vHzK1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTxu-00000000DgK-3tpy;
	Mon, 27 Apr 2026 21:58:06 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTxh-00000000DJn-3AR9;
	Mon, 27 Apr 2026 21:57:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777327071;
	bh=pqRtbplYE8IdJKdBWhM5OHW77gHMGDEF1m/tI0sVmVg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KQLXIHWJdZT0TECVDrV5VZQulabse1tqARayoCENAjGajdd5B5KWN683h6Y3vIu3U
	 5CVfEqlvA3dilYUNKiO+TrtyWoyUJnTtsJIduQICpxwoesLS2fABYxCowaeIwW3jYD
	 zsfok6b79zkMnZzdofnsKK0lRaCTrOmE77rQLOc2LWcs4zZcMK0ocsLOisn+MQu63P
	 pYS02iAetB/LAyB1aMrkpAqY+UlTBq7t6RNCuxQn5TvMCUg7hp3Bg0l5n/c6gFnPR/
	 Z+PAkRZILC9fLTjqMDKyTsK+H3/EVTL7qGCDdhuFrL++UeYsbFn3UevNYGhP9FEv/J
	 n4LzWoTtnCv9w==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D5A7E17E141F;
	Mon, 27 Apr 2026 23:57:50 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 28 Apr 2026 00:57:28 +0300
Subject: [PATCH v2 10/13] arm64: dts: rockchip: Drop unnecessary
 #{address,size}-cells from rk3588-jaguar
MIME-Version: 1.0
Message-Id: <20260428-dts-rk-frl-enable-gpios-v2-10-924df9db884a@collabora.com>
References: <20260428-dts-rk-frl-enable-gpios-v2-0-924df9db884a@collabora.com>
In-Reply-To: <20260428-dts-rk-frl-enable-gpios-v2-0-924df9db884a@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_145753_996592_D3AC70E7 
X-CRM114-Status: UNSURE (   8.43  )
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

Remove the unnecessary #address-cells and #size-cells properties from
the usb_host0_xhci and usb_host1_xhci port nodes, as they each contain
a single endpoint child with no reg property.

This fixes the following dtc warnings:

rk3588-jaguar.dts: Warning (avoid_unnecessary_addr_size):
 /usb@fc000000/port: unnecessary #address-cells/#size-cells [...]
 /usb@fc400000/port: unnecessary #address-cells/#size-cells [...]

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 05b524f682cf..033db78aff67 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -1142,9 +1142,6 @@ &usb_host0_xhci {
 	status = "okay";
 
 	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		usb_host0_xhci_drd_sw: endpoint {
 			remote-endpoint = <&usbc0_hs>;
 		};
@@ -1157,9 +1154,6 @@ &usb_host1_xhci {
 	status = "okay";
 
 	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		usb_host1_xhci_drd_sw: endpoint {
 			remote-endpoint = <&usbc1_hs>;
 		};

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
