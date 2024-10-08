Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB31DCEF150
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 10:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExbHdT4ki/JxaEeqLG88Ewcr+2y99SM2s0GTKn7Ri98=; b=N6raKmVPy+0Rww
	pVHzPsbTUoAGZoYdjZJ2FO46LDByggG4zxuyqibuUSU3lmm9/uXfQyuST3iktyld7iidaB5VwL+/I
	O27Xlc9tHEytkzxSzicZ/lNoHzju7Qpy7jygpNauQGda9I17YopAW/EJ2ZmmeTx08q/bFW4IqIqS4
	iq26Nzk3zt1L/JucfBpgRf/CT7C9Bj5m84I3d1PRC3OHPHLQn91eJRt26xERYNnZH5KyeYOlI6Kz9
	hhAq2FjYcbqtiyPS0l+NDCKw3l5JQ8dR1S8sJOXx6eLN8glhwFB/A9XBc4+0eweu4WFmkP6AQAEXT
	jvcBFqdj3nRJGntNObcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy7vx-00000005X0L-1IIm;
	Tue, 08 Oct 2024 10:59:17 +0000
Received: from out-182.mta1.migadu.com ([2001:41d0:203:375::b6])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy7sJ-00000005WQj-0QVU
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 10:55:32 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728384929;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=w8XGfwosAM/4CxjtlVxB8RkEIKc+MblXO6413OlZVHc=;
	b=Enuvo5S1GGGTfgQbtSFizcFDEo+KPY9W5OnpX3mVgOXtWXYVv4ZSRIgJZe0jTca1izAuLs
	HmVVcbwDRJ0B36d8pRoM1s9S2BwM4thiQfFWFE80svuPU4JqtL+asjm0QSgsIOicFzF9h5
	fulnrNTfz+kzzXxFVwgUqilJ+jPFsPDesR63FFhY3dQxEtBxOh5Ut4I3Op9tajYVI4jVie
	XNMumaUt6bF1f/CrCihBVre2w4LOezOnsc/lfjzarUaFNvTsZwubSFz604cVdSC4/jJKOL
	RaHv5FRJrCIIAc1mBpGZBKmUt0ce9Frz2z4eptUByqe7yROqba3E9L1kUYPScg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 3/5] arm64: dts: rockchip: rk3368: Drop rockchip prefix from s-p-c PMIC property
Date: Tue,  8 Oct 2024 12:48:03 +0200
Message-ID: <20241008105450.20648-4-didi.debian@cknow.org>
In-Reply-To: <20241008105450.20648-1-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_035531_312315_848BC9A3 
X-CRM114-Status: UNSURE (   8.46  )
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

Property 'rockchip,system-power-controller' was deprecated in commit
961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")

in the "rockchip,rk{805,808,809,817,818}.yaml" mtd bindings and its
replacement is (just) 'system-power-controller'.

Update the rk3368 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
changes in v2:
- rephrased commit message a bit

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
