Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 108E3C3601E
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 19:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oIw+jdmrG8VBmCB8U9NuAd8TnccOQnLEKbLNR3HofI=; b=xhLpslarMbpZW7
	OXofe0yFDrum9nHJHyq/Sg9SvRBqO6jZob8Fatia59m3Qmrfhn0N6NFuuYno9bfhVo9Wqj5hO/iGG
	ZB/tgdpC0yIUjeAykvVhpuNaMySZPrwgYyPWJyIXM0XRjI1wJN20p7OOZ3l6Y682UE4e/FRn3nvvV
	O7WdCLWYG5kOIGMVbbo28CVDI15s03EDan0wRtt+H4pnBU6fMXi1QC0We/XTZA/ESZL2Cd6LAK/dk
	M4FzN66p/7nW5pvtmeQK+2SWw2YzWrYICeIKOyZbu56bUfQ/mSKOLMgfPYL8bTG389UfT/uWjSlnh
	WUHU06kfJG95UQweWoZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2y31-0000000Bif3-1lgN;
	Thu, 10 Apr 2025 19:58:51 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2xm8-0000000Bg4H-07IT;
	Thu, 10 Apr 2025 19:41:25 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1744314071; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=npW3t2QfyVKFR6PHamSs5iAoGNvnTpEDIUFaHfgHjrhK93bDt1hoyatt/fVm83Fihgmmj8YWOvx4uXYrr2sQ0es9cGRs9xXxX49+oMEuZUgBwW7LMMTkUKPALDuQgdeRhLkzIEOcCkBwltpuA8a8yXO+suUMfyvpRx0klhFgU7k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1744314071; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=P0cmV6UZVQw6LGqA8u7XzoRfDgQACF1SmL35zBKp97Q=; 
	b=UxFrFWBta+1rMpAt1o1P3BvHk314sP+7pKveZ29fVTsjITILhHdUylfByeM5TevGU27ayWM5yt+NUTDiMdSIEsObv5DLeXHpPxQ4SoNhLiKKJ+3ZVidaCp/wTMnUn0b5OqzmS0qShQDDK/T9FL50PS2lK025aEHiEnKeb6UPtk8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1744314071;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=P0cmV6UZVQw6LGqA8u7XzoRfDgQACF1SmL35zBKp97Q=;
	b=EqGHyRClpjHhzE2crq3wyxq54zEggbGq8YcFa90BYnW3aNEfX6TIuHKoxPayJVuF
	EuCMEB+myYCONIppsHGd9gRuTbPcDY/UhRWvP3HAnTeVuar24UUA25ivKN2joobs2Pa
	3xW5+xel4/3uUdHIlCmiuSftuitEfh6IvUwR9Cqo=
Received: by mx.zohomail.com with SMTPS id 1744314069853161.3440582389277;
	Thu, 10 Apr 2025 12:41:09 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 10 Apr 2025 21:40:02 +0200
Subject: [PATCH v2 10/11] arm64: dts: rockchip: Enable HDMI audio on Sige5
MIME-Version: 1.0
Message-Id: <20250410-rk3576-sai-v2-10-c64608346be3@collabora.com>
References: <20250410-rk3576-sai-v2-0-c64608346be3@collabora.com>
In-Reply-To: <20250410-rk3576-sai-v2-0-c64608346be3@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Sugar Zhang <sugar.zhang@rock-chips.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_124124_129464_E66E9A73 
X-CRM114-Status: GOOD (  10.20  )
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
Cc: devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, Luca Ceresoli <luca.ceresoli@bootlin.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With the hdmi_sound node added to the base RK3576 SoC tree, we can now
enable it on the Sige5 SBC.

Do this, and also enable the corresponding SAI6 audio controller node.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
index 0979d1e0cee7a18a6bcbd08ed19cc835f2186960..de63b053a06c05e02bfcfa03b96e9fc61de8782d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
@@ -269,6 +269,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &hdptxphy {
 	status = "okay";
 };
@@ -713,6 +717,10 @@ &sai1m0_sdi0
 	status = "okay";
 };
 
+&sai6 {
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	full-pwr-cycle-in-suspend;

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
