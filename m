Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F550FA3742
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Oct 2022 16:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DVE+1MFcL/NpAyBnSgjRSNhVOcQcuPZi8UckwcKMSyM=; b=DPJPAWPImqOoO8
	vVyIvploJgYTk1MRyYwLqun6srqfxm2PAS4luF5DGBo5e51HWE59F6YhHPGCD5KF8HUrRtzW0u4eQ
	ymnfKZhxDAU/FyUuY44PdN9Hwwo3baGEI9wgIy2pyZcZsNlIe5uI/PNCZ4ZIlrxqaYKTKZX0mgMUi
	gJS+XVu4y4eO38Gxb494AQ/NHiN/IOsPaBm0TmQOtSnAFS1hiKWu9FCzv3wZuZse7cFYmtekAN6Mu
	hMFjaeM0wHGIbcvyKXqk6C0UOQiuTcF9+VUZMUWhVtlBJ1Vm4mE6le3bj7kRF7ruVlMUCkIy47AeL
	wHTqXENPiXltj3/nVkag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on0kG-002OJe-BD; Mon, 24 Oct 2022 16:56:12 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on0k3-002Nz7-6l; Mon, 24 Oct 2022 16:56:00 +0000
Received: from jupiter.universe (dyndsl-091-096-059-109.ewe-ip-backbone.de [91.96.59.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DF4716602830;
	Mon, 24 Oct 2022 17:55:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666630556;
	bh=7HmGEeUycu9JUOAzQUWsfe2Icu5JIRazyOm+DZSY+30=;
	h=From:To:Cc:Subject:Date:From;
	b=jQ9R/puRhj5UJrIR+0rGBUm+ADPfk77O0r9TOrfMOfg+xjwVeaiMA2tf357DsmjVo
	 b0yUD41zMqbrthlg4k/Lm6qrQxhdGxV3B0aHmbYFBCibv+FA/YyVfuq4361pZuSr6m
	 4LYh0FZh+/xnmYmQSJ1OLGPXhM7JoxKpooFZQwrvaSJybjKIW88gHR6/WwgDmpSHBZ
	 oIDeriLZQY6C2gN243+X+tIr8Z2qrjwlNX3JXwQ5I7eAkSravupCKl2/h0fcGSikfD
	 VD7JUwx+wYIEn3oY2p2couV6ch6MRVIVNindJYWRoURfSzailfPhjvxQCcGxh8BzCZ
	 Kagmzz5+sU2GA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id EE5C8480AEC; Mon, 24 Oct 2022 18:55:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 0/6] Convert HYM8563 RTC binding to YAML
Date: Mon, 24 Oct 2022 18:55:43 +0200
Message-Id: <20221024165549.74574-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_095559_418688_10C38BDD 
X-CRM114-Status: UNSURE (   9.59  )
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

Hi,

This converts HYM8563 binding to YAML and fixes
the existing DTs.

Changes since PATCHv1:
 * https://lore.kernel.org/all/20221021170605.85163-1-sebastian.reichel@collabora.com/
 * Added patches fixing the existing devicetrees (Rob Herring)
 * Dual licensed the binding (Krzysztof Kozlowski)
 * Added maxItems for clock-output-names (Krzysztof Kozlowski)

-- Sebastian

Sebastian Reichel (6):
  arm64: dts: rockchip: fix node name for hym8563 rtc
  arm64: dts: rockchip: remove clock-frequency from rtc
  arm: dts: rockchip: fix node name for hym8563 rtc
  arm: dts: rockchip: remove clock-frequency from rtc
  arm64: dts: meson: remove clock-frequency from rtc
  dt-bindings: rtc: convert hym8563 bindings to json-schema

 .../devicetree/bindings/rtc/haoyu,hym8563.txt | 30 ----------
 .../bindings/rtc/haoyu,hym8563.yaml           | 56 +++++++++++++++++++
 arch/arm/boot/dts/rk3036-evb.dts              |  3 +-
 arch/arm/boot/dts/rk3288-evb-act8846.dts      |  2 +-
 arch/arm/boot/dts/rk3288-firefly.dtsi         |  3 +-
 arch/arm/boot/dts/rk3288-miqi.dts             |  3 +-
 arch/arm/boot/dts/rk3288-rock2-square.dts     |  3 +-
 arch/arm/boot/dts/rk3288-vmarc-som.dtsi       |  1 -
 .../amlogic/meson-gxl-s905x-khadas-vim.dts    |  1 -
 .../dts/amlogic/meson-gxm-khadas-vim2.dts     |  1 -
 .../dts/amlogic/meson-gxm-minix-neo-u9h.dts   |  1 -
 .../dts/rockchip/rk3368-orion-r68-meta.dts    |  3 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts   |  3 +-
 .../boot/dts/rockchip/rk3399-roc-pc-plus.dts  |  3 +-
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     |  3 +-
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   |  1 -
 .../boot/dts/rockchip/rk3568-rock-3a.dts      |  1 -
 17 files changed, 65 insertions(+), 53 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rtc/haoyu,hym8563.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
