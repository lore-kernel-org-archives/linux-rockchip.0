Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95A8DC77B72
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 12:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SNvg3cneR+pOy/ZSvaPPpIE7R5RBKaSa4yJNswV4z0=; b=VCmv6Fn6Pi+lwT
	W58CIj6uZ0f8Z8UdOyw8Ae3Uz3Hab+PaLWXHvZJN6dgj1ROQG4Oy5juTkm17+Ai0zzNHQMJM6BRrZ
	Ca2FQpWlt695dqIQi3Qhui9tZAoDNqRrw3NiwAYaFhqBCx0t5y8nfxacLOZyJyIQM8v7PDZtPjLRe
	Gc4pP2bzEGX/Py2PPLzzPmtAE5xGpn7qSyuEPWqPKlMdvhUkpvxevddHAxhx3lEFzWaNi5R1bZwuq
	XnIpxk4obW1wS9CfJ6u2h1PBJwp8KsHe+vEiQmAPUINIsCAheIX7WC1cpeIj47ry9DlnSgDQBEwgT
	UwFOrak7ckNOgTmEK5kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnIwy-009ZdW-2O;
	Fri, 14 Apr 2023 12:54:48 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnIwo-009ZYr-00;
	Fri, 14 Apr 2023 12:54:40 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AC011660321F;
	Fri, 14 Apr 2023 13:54:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681476876;
	bh=y7x1MkybuYSyaQBnwljTwJm7qDnk3tGE0dYCCnPU/sQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gBVz3kTNR5NfGUgwdO0z8jm7/l8GObeYbfmX0VLEsp4kMrQlwVsPpXgwnnkhXlDVo
	 V8MYWQApG545u8bc6AujCmLLuVkfWvMV2QUq43kso4IGq+4UywMHPA8yjRvs7uFBrl
	 bzgeA1cW1jq3ZuQS0nXV55lahS4QbbJXXG0zO9Z8kwma4p/2ryMALmnPCs1eyACHrv
	 4Gh4NahTdQAgVcYwiU5CAnw+sV411ZszXp3iRL44cFe4YaN0qmS5P8H+w+B+YQVzJZ
	 kC+RShjH2TzGefoCPgeoQg2tHYRWB6akDa4SH/9Qv6jqbxNNDQ+FMZS8aofuR+2B+S
	 fNiNaU0tBHF0Q==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Dan Johansen <strit@manjaro.org>,
	Dragan Simic <dragan.simic@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Use generic name for es8316 on Pinebook Pro and Rock 5B
Date: Fri, 14 Apr 2023 15:54:24 +0300
Message-Id: <20230414125425.124994-3-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230414125425.124994-1-cristian.ciocaltea@collabora.com>
References: <20230414125425.124994-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_055438_596160_40F4F237 
X-CRM114-Status: GOOD (  11.61  )
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

Use generic 'audio-codec' name for es8316 node on Pinebook Pro and Rock
5B boards.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index ddd45de97950..054c6a4d1a45 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -665,7 +665,7 @@ &i2c1 {
 	i2c-scl-rising-time-ns = <168>;
 	status = "okay";
 
-	es8316: es8316@11 {
+	es8316: audio-codec@11 {
 		compatible = "everest,es8316";
 		reg = <0x11>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 62750beb12aa..8cc97d146a73 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -72,7 +72,7 @@ hym8563: rtc@51 {
 &i2c7 {
 	status = "okay";
 
-	es8316: es8316@11 {
+	es8316: audio-codec@11 {
 		compatible = "everest,es8316";
 		reg = <0x11>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
