Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E5FAC25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/cdFsL52uNzCUs3PjN4cazFK+/RwtzVZUOh5uxVp9vE=; b=Hr8rTubQOjq177
	b1kFjxA3kIDJkcB9mKBDfZFKSZOEvGsIdlRbN9964loUaJD3EZN1yElZ2sHzh4xn/qUwX94gPgcHg
	kyiZcXfXeuljrsOBUyejT7UFLcRezPhCq3itnxJ0o0cu54kKXp6m2kIaFeE6o/MESq+U9SahsL44z
	VKW22MxIDVgE93lqM4M23yuf965Wa8mJ7XLVHvGAi0Bn5CmP6G1LxSU50dfaDA9Sk4ja+jeAgfdIJ
	rhO2V5GESmi7N4aUWAuat4g2aTGeZ2b8hftimn41/VwTbH9Fy63Q8mf0i2N4Jopq1J1oEwvAF92S6
	/67U4oaqOI4RQONzoXXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WlM-000000016Qt-2vZk;
	Tue, 21 May 2024 21:11:12 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wl8-000000016Es-1PCI
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:11:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325846; bh=wqxLb2f+Hpfvmew89a1WWyn7UWwka4UkvE6H4LmjyQI=;
 b=iKTQHHYgS1SYU/69ugg3WPa85lYGMV/A7gbjFqdhSePPYtw28tV+HuGpmXh5rYT/PeDKCA58o
 KyAovS/mEqBReYHN62PlaQRosfSV1EdCxwWqY8ssJLYRpjRnI/L9Z6TSNNHn8H+Ta2ji1rtDe3E
 xo5I5k9IpwmgRxPpuhXuB7uVmiF/glVaznoGI8MKxbR2bzx3ojtWXcAnZwDXsh5mYhVeeeNyBYe
 B33LMC2CM396HlIWVvO0S+OihIeY1WrEYC7eESMaRFA4xQcJwClnEUrPrIIILLnkFlH3quQq0U8
 K3QOBHiy+jDPoFsvO5WCqNEckcJAbNbi+TkPpL8eAsWg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 02/13] arm64: dts: rockchip: rk3308: Fix codec@ff560000 reset-names
Date: Tue, 21 May 2024 21:10:05 +0000
Message-ID: <20240521211029.1236094-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 664d0dd48b6b0c828344aeb8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_141058_461885_E5D0E903 
X-CRM114-Status: GOOD (  10.82  )
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

The commit 30d72458624b ("arm64: dts: rockchip: add the internal audio
codec on rk3308") added codec@ff560000 node to SoC DT. However, the
node does not pass DT schema validation:

  codec@ff560000: reset-names:0: 'codec' was expected
        from schema $id: http://devicetree.org/schemas/sound/rockchip,rk3308-codec.yaml#

Use the expected codec reset name to fix this.

Fixes: 30d72458624b ("arm64: dts: rockchip: add the internal audio codec on rk3308")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 962ea893999b..c00da150a22f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -811,7 +811,7 @@ codec: codec@ff560000 {
 		clocks = <&cru SCLK_I2S2_8CH_TX_OUT>,
 			 <&cru SCLK_I2S2_8CH_RX_OUT>,
 			 <&cru PCLK_ACODEC>;
-		reset-names = "codec-reset";
+		reset-names = "codec";
 		resets = <&cru SRST_ACODEC_P>;
 		#sound-dai-cells = <0>;
 		status = "disabled";
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
