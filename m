Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F304DCF8571
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Oct 2024 09:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rtOyk0m9rY50rhmV3CIpT1wHSlqNN4Anw1uzACAOxE=; b=ahLMMcW/GXOhR8
	FdQjvO9jkVvXprn4HvyqJ1ekAMowHjqTAaA2g4Nmp2G1S9mqYz524nI9nkqgfFTiybVahGxRHDPZn
	saKlkvU9CoVf1xD1wyJgGi5Vi6Qy2WnIVtCvEhhJnVEv7vwvBYa10F1coRpDlN2HeOE3bQahbl1B6
	aaMJDshDjJwX+50zTWCVAqIdm04YSnBPRdw8FAfKfNSRpUGQGusm2MWI36F3G/jeZ6GWIc9yFy4fS
	nO0W3QhwBCQHJftncKLT0daIkYEUMkHku/BcZrKzCIZVf94Ofj+Oa6fb5/7sSLGRUY3KxS4hQGIZk
	XDSDVWS/DWOCN0+HyaDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swIYH-00000008j5P-1m5l;
	Thu, 03 Oct 2024 09:55:17 +0000
Received: from out-183.mta0.migadu.com ([91.218.175.183])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swITP-00000008i4m-0vhk
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Oct 2024 09:50:17 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727949012;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kexDEKDhzZz6T5AsP1sUyO6vHwuL2hyGO0eSRqIb0Sk=;
	b=cXWf49LhICJ8EK/zlmkgbZ55R2PVe9bBcMQp2SRtBV3r8zBkzSRPPLlOHo2/if+lESoIPO
	smC+f9RaDiUBcXj0sC6DAVq3zAep8qZQ4nHqxP2xBakEKDDPnh0Nt/pnvJAv5C+Rrt+sXg
	iJbFd+DX20EV7WH7a01SjEUvwG/DJmUdp14nM8Tco8jMYvtZgsTba1dAlY1QgxnUwEZ/kR
	3Ibzf8mMGrAqLQgRmgOVqPSstvtr2vmdvF5oPn42SuH5B48JEL3qEA4DUKNE+7ZJOaszzk
	Uvj45CChPK1k2wz4/JBx+mDpQPnglf8YXAM3NtLEjfmk4zdgpnGd4qz6RGIlpQ==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 3/5] arm64: dts: rockchip: rk3368: Drop rockchip prefix from s-p-c PMIC property
Date: Thu,  3 Oct 2024 11:43:27 +0200
Message-ID: <20241003094927.62042-4-didi.debian@cknow.org>
In-Reply-To: <20241003094927.62042-1-didi.debian@cknow.org>
References: <20241003094927.62042-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_025015_953482_FFFF7468 
X-CRM114-Status: UNSURE (   8.69  )
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

961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")
made "rockchip,system-power-controller" deprecated in favor of (just)
"system-power-controller".
Update the rk3368 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
index 029b8e22e709..03ebf66e9bfc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
@@ -113,7 +113,7 @@ rk808: pmic@1b {
 		pinctrl-0 = <&pmic_int>, <&pmic_sleep>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
 		vcc3-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index 8ac8acf4082d..dbf9fef9bc36 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -179,7 +179,7 @@ rk808: pmic@1b {
 		#clock-cells = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>, <&pmic_sleep>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
 		vcc3-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
index 29df84b81552..26de79388db8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
@@ -73,7 +73,7 @@ rk808: pmic@1b {
 		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>, <&pmic_sleep>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		vcc1-supply = <&vcc_sys>;
 		vcc2-supply = <&vcc_sys>;
 		vcc3-supply = <&vcc_sys>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
