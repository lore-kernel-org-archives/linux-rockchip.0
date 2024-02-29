Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFBFFC48BF6
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 20:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=msBBbz/mAOY6nUEHak1BH3RpN1gS+RxPfrc7Mkxoe3c=; b=I0ko+X95YH5uWI
	IcJOir/l9/zUP88Byy46j4llQsTFH+MnkpDq84Jmh+J2BDW6O/436gjZKKqHlBZYhsMlqOU5DNXoz
	gB2Th3XAlAdNsLS0sptCCR3pDwN10YNCyKQw2lQY3vb3358J7vSz7dWvn+aVMazsgmtiuo1z6i6DY
	lai6zI18gWSODq3VcpievezsWq8SIkyTqpoop7sSIcvX1jeppApUY1W18mUt9b+Ou6FvbsYPfuShf
	DOj0gCAnDok8lqnQyotrOPX2a38zdm9JZowpf1WuJrocdwkduRrfmITf3FjGaGJbOrPvpueMu5zlt
	wMWuyI2jmX9qGVEkf7gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfn9w-0000000F68j-1CHD;
	Thu, 29 Feb 2024 20:37:40 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfn9s-0000000F66O-0HcI;
	Thu, 29 Feb 2024 20:37:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 595CDCE2186;
	Thu, 29 Feb 2024 20:37:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28F92C433F1;
	Thu, 29 Feb 2024 20:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709239054;
	bh=IsMtaPO2nRbjGtVcG7DjgE1BW1fqCgoEtlxwZS2MSXI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AyDhBpOiJr5j2w0GsixIUOnZLmQ+1VYrJMxurldwnfVuIAdqvlK81eE3TRtVJ2T4G
	 XcaZkqnXModBE6df/dhfdDNgAh6k3h3YZGiRkZxuhsKncVipe8E6/EvUoPSdiKmhJx
	 Zbs0p+YEKIy0KuJIOZZAXPocJag5nljHPh9QqkAWIFoWvXsk9sCHhaVSYp07w8xXp0
	 f+ycs92oJ1FezDgbQVZYiw9rngOb19W6VZ/axnXi8T0yQvWn0Gk80Yx7aOF+7rEGOp
	 SpWCS7B7xRpZ12aPA4OBnnUvofYhqeO3cs2ZIHZlbLxbPx0pE/BCeDkOE2ixY60JSx
	 DF9sPavoXEwIg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	xsf@rock-chips.com,
	angelogioacchino.delregno@collabora.com,
	jagan@edgeble.ai,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.7 02/24] arm64: dts: rockchip: mark system power controller on rk3588-evb1
Date: Thu, 29 Feb 2024 15:36:42 -0500
Message-ID: <20240229203729.2860356-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240229203729.2860356-1-sashal@kernel.org>
References: <20240229203729.2860356-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.7.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_123736_338800_8A4D3649 
X-CRM114-Status: UNSURE (   8.33  )
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

From: Sebastian Reichel <sebastian.reichel@collabora.com>

[ Upstream commit fc4657971be31ae679e2bbeee2fb8e93a7a063eb ]

Mark the primary PMIC as system-power-controller, so that the
system properly shuts down on poweroff.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Link: https://lore.kernel.org/r/20240117191555.86138-1-sebastian.reichel@collabora.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index b9d789d57862c..bbbe00bcd14e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -351,6 +351,7 @@ pmic@0 {
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 		pinctrl-names = "default";
 		spi-max-frequency = <1000000>;
+		system-power-controller;
 
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
