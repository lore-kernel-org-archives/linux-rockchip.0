Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D57AC3ABAA
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 May 2025 11:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWex8KLxybuSMpUD8W1Uxn6qi2riOtro15RLH2G8hrk=; b=0QM4AOETIJTVeM
	paldCoyz5SpBLUdVE6cjus989IE2bkwNWunqlhC7z9pGFxuWgE2VHDbofMe9kkvojkepVmTclRkc5
	jOl2HbrdWSmwQRawbfHIKyU/mlDf0Hnp2zWlCzkD0/P3qBV43Ha9+Pt/ZIIpy0/L1P+kKrL3/+ZWP
	fWO+3aRkBAC9KamO38v45CChw9ubFIx26+Gsaz0Ym9RFsiUJA86Oqweim9tiGeo049TdE42ouCmE4
	A4NmDqSjljtY8pLq+o/XXFD1HdjclAEMJC5sGTkeqPh58TAIYjjxWpSGgT3xDWVzV0MI0G7X8oFHw
	QLWu1BXl/Ckwt1ggYsjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAoYR-00000001mMI-26kF;
	Fri, 02 May 2025 11:27:43 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAoC1-00000001inJ-34W4;
	Fri, 02 May 2025 11:04:35 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1746183861; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=NP8FsQcwINkSxw6/CUFQapTYNkShGd0Ac6MGV0gjXA9IOF2Wb7A3hMq73jlOLG98AUUeBTXTmk0+ks6uGEfoYWQGQuVMdhv9RePHeKxA5VzbI5T8kyaEH2GtHwJey6BPto9hZTf0vmM1miPt5+FCrj4PYV11p+ytAzmMX3EUBso=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1746183861; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ItXzRTAe3YAJR53TnqVWBnr45kYQeMi5ih4t4wpy8QU=; 
	b=WTyjjxAQuJpbK+Dcp52/Sn95QSTsIUORwU1wsFWLOX2dIc00HI9iRvGQtIOX6gYfd7Zs9Wipb18JLU+sRDHWHop2FDRmzQqH/rGoICiJMBFmNC7lnEO/nPD5oT6K//5ZahbWIDgtQAuEBdYUA+WXFy+C7lOCJbHWMbPKJSQo944=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1746183861;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=ItXzRTAe3YAJR53TnqVWBnr45kYQeMi5ih4t4wpy8QU=;
	b=bq85T9isiSUlBqT9xniDJo1kW//3+PY1xkRAGNrTjFytqnXN8rmzpAatF/+aC8Rs
	30rIU4rHJgiCEjsiPTnwgbTmX+es8qf5eJV/y2/BUTLAXBhRgQPSKOvMXIvHzhaaJXN
	A0gNu6rI5Srdwnj3iT55MHuH4GvFLqpytNvQff+8=
Received: by mx.zohomail.com with SMTPS id 174618385945376.26367891615416;
	Fri, 2 May 2025 04:04:19 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Fri, 02 May 2025 13:03:16 +0200
Subject: [PATCH v3 10/10] arm64: defconfig: enable ES8328 and ES8328_I2C
MIME-Version: 1.0
Message-Id: <20250502-rk3576-sai-v3-10-376cef19dd7c@collabora.com>
References: <20250502-rk3576-sai-v3-0-376cef19dd7c@collabora.com>
In-Reply-To: <20250502-rk3576-sai-v3-0-376cef19dd7c@collabora.com>
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
X-CRM114-CacheID: sfid-20250502_040433_834341_90D22CC3 
X-CRM114-Status: UNSURE (   9.46  )
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
Cc: devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, Luca Ceresoli <luca.ceresoli@bootlin.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The ArmSoM Sige5 board, which is supported in mainline, uses the ES8328
audio driver for audio output on its ES8388 codec controlled through I2C.

Enable them as a module.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 22cf6fb2774aef18c54c2435e4b3ff1b94c1a6b1..c5a3d35e6196029560da4f39a5298c532756a670 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1048,6 +1048,8 @@ CONFIG_SND_SOC_DA7213=m
 CONFIG_SND_SOC_ES7134=m
 CONFIG_SND_SOC_ES7241=m
 CONFIG_SND_SOC_ES8316=m
+CONFIG_SND_SOC_ES8328=m
+CONFIG_SND_SOC_ES8328_I2C=m
 CONFIG_SND_SOC_GTM601=m
 CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
 CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
