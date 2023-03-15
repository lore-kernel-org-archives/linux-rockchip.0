Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2547BC61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 11:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cd3Ibo0sSFFx2vh2uvqAjEurD9TgDRiAZTeB8cL6XaU=; b=WNspZ/7HCk7s26
	7Ru6K+jDIsa09XwALVne9hoikppMN3xf5F8GMfiTemOYTU4qGfEC5THYJ1YhvrwSp/Q+2Gz0dF6uz
	mvEiW+tqDEK3fZkvDucdWKM1JTHuNHOi9C6A/d2iVXUtWWmPGGuIc7SNCFVp6iXMT5u06O2nmZYhB
	SLpSLbOaZkb1mWXMe4TzBnlNiwdWM144A69TsUPSO9RbMSi+gFeWo7cLUpKNHnkvBCR44s6rWRmUE
	PwpfV9TOaJlrXpWCx47JAns8bdREQ+kkkqevPdJgS420mHYE0puvmwdG8G+4hNikFshkijla3rRzM
	sw2Qd8GvFdjw1DaSS8cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcPcC-00DDyi-3C;
	Wed, 15 Mar 2023 11:48:21 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcPc8-00DDwg-24;
	Wed, 15 Mar 2023 11:48:18 +0000
Received: from localhost (unknown [188.24.156.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9185666003AC;
	Wed, 15 Mar 2023 11:48:11 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678880891;
	bh=QMdRoHZDA4Dzb4ZItQ6gCETIH96B+vuVwaf66nkbnMQ=;
	h=From:To:Cc:Subject:Date:From;
	b=bj2xu6gGH92QEICLrGXFl386kUFglMAxEePZm/i3SmcJEKbpiM06LNDvC992CaPby
	 NM5t+sCRjcezTbr2NabWD08SWWwBmtibVsTapQxEK5mmB3qBMqm6A3ZR3zGvTqK2X/
	 kq1tpf4ei/myrqWjdSjmx33y1vbA3Buej4dDpK5R58c44aTHtliZQbl8QPa5lGIgMm
	 1Wde+f/mne8pQmnJ8dV2Z1/44cIZWLAcw0wV8eDw5pqm2mchbH57paOvrdGTazIPO3
	 Haypn6anq0fRgT56oE4lMtcT9wJBSs1PwqkREBZoFgiIm6TTJ8E18JZQyaJqgJ6+sB
	 vwoxdhZxRe/tA==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Drake <drake@endlessm.com>,
	Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-rockchip@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 00/11] Enable I2S support for RK3588/RK3588S SoCs
Date: Wed, 15 Mar 2023 13:47:55 +0200
Message-Id: <20230315114806.3819515-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_044816_911642_01DECB24 
X-CRM114-Status: GOOD (  13.50  )
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

There are five I2S/PCM/TDM controllers and two I2S/PCM controllers embedded 
in the RK3588 and RK3588S SoCs. Furthermore, RK3588 provides four additional
I2S/PCM/TDM controllers.

This patch series adds the required device tree nodes to support all the above.

Additionally, it enables analog audio support for the Rock 5B SBC, which has
been used to test both audio playback and recording.

Note that some of the DT bindings fixes in this series are not particularly
related to I2S, but are required for a proper dtbs_check validation.

Cristian Ciocaltea (11):
  dt-bindings: firmware: arm,scmi: Document assigned-clocks and
    assigned-clock-rates
  dt-bindings: serial: snps-dw-apb-uart: Relax dma-names order
    constraint
  ASoC: dt-bindings: everest,es8316: Document audio graph port
  ASoC: dt-bindings: rockchip: Document audio graph port
  ASoC: dt-bindings: rockchip: i2s-tdm: Document audio graph port
  ASoC: dt-bindings: rockchip: i2s-tdm: Document power-domains
  ASoC: dt-bindings: rockchip: Add compatible for RK3588
  ASoC: rockchip: i2s: Add compatible for RK3588
  arm64: dts: rockchip: rk3588s: Add I2S nodes
  arm64: dts: rockchip: rk3588: Add I2S nodes
  arm64: dts: rockchip: rk3588-rock-5b: Add analog audio

 .../bindings/firmware/arm,scmi.yaml           |   3 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |  10 +-
 .../bindings/sound/everest,es8316.yaml        |   4 +
 .../bindings/sound/rockchip,i2s-tdm.yaml      |   7 +
 .../bindings/sound/rockchip-i2s.yaml          |   5 +
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  62 ++++++++
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  68 ++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 148 ++++++++++++++++++
 sound/soc/rockchip/rockchip_i2s.c             |   1 +
 9 files changed, 305 insertions(+), 3 deletions(-)

-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
