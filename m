Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4BC8C25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 20:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rr7oDmDiq5xErVQe4d5oAfoylhAnfdeqKXW9Kf3a+XM=; b=Ke6wiT8yHw3EGr
	aINLD03jZB6HuVAYT1W9m318CQ1DImNN1wbEsXLSaAZHEWiBpr1WnU4oUnSwROVH9k+9xBP24z8Dq
	lh1a4ajEFzDwP7/IX+q0T3qIPKOYQvFx3ysGdh699wLfOSS51nI17ZSYH4zwYR9gqmwXRIEZp85et
	bJObDT5oswnXHALnXmwlFM2T8Qm4W92EV68QGX2GLImbAnocfjgXmxKEHW/EJLJaAciuApgfhpIUq
	i38YXsDaJhmToEhXEa/KszV2td7V1dcw2QgrdlwcT8TnYMaFwYrSpsXbZQffSW7iByaaUVWLyWX7A
	49ig/3BOT+xRofj/zxHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WGB-0000000122m-00ba;
	Tue, 21 May 2024 20:38:59 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WG7-0000000120t-039F
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 20:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1716323917;
 bh=7w1YK0PAlX2rnVkpWCKz2KPIKlOShCuH6VsJyB17muk=;
 b=kZC2fsXspWSpKsXzUd6uxxDiIvGjwAhNPStAKcza/hAtbb8TPjzlEfNGq1Od92lPV2t+vhQtt
 sNmSPemi7KlhAr+vKSB6WrVWMOfDWHcqjajBRQ+UCKk83YuQrTuzn1aEmcFKyXrCjbOIS6Wb7hJ
 xnmZZ6arFLl7UkbLG9DKlF0qnmTZgJSDFl80D9Trk3n+MbCh6UPJO+C0liAm+xF23DnMlmtOa6k
 t1pJ8R+Q9sU716473bAx6x6TNCtqSPbepHLWZlAct1NC61KoQcy8UjmiNuejBNiuKbgi36GJkBv
 Q9gJtOz3f0zh2VHUTblX2P447HQ2UdtFbLGKqb2J2Npw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH v6 0/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Date: Tue, 21 May 2024 20:28:03 +0000
Message-ID: <20240521202810.1225636-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 664d03e0f0b0d6a40951746e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_133855_128363_E2A60AA1 
X-CRM114-Status: GOOD (  11.29  )
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

This series adds initial support for the Radxa ZERO 3W/3E boards.

The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
computer based on the Rockchip RK3566, with a compact form factor and
rich interfaces.

Schematic for ZERO 3W and ZERO 3E can be found at:
https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_v1200_schematic.pdf

Changes in v2:
- Collect acked-by tag
- Add to Makefile
- Add patch to fix #sound-dai-cells warning

Changes in v3:
- Fix devicetree spelling
- Sort hdmi-con, leds, pmic@20 and regulator@40 nodes
- Change to regulator-off-in-suspend for vdd_logic
- Drop patch to fix #sound-dai-cells warning, similar patch [1] already
  exists

Changes in v4:
- Change compatible of vdd_logic
- Add vcc5v_midu and vbus regulator and related vcc8/vcc9-supply prop
- Adjust clock_in_out prop for gmac1
- Add cap-mmc-highspeed prop to sdhci
- Add sdmmc1 and uart1 nodes used for wifi/bt on 3W
- Rename rk3566-radxa-zero3.dtsi to rk3566-radxa-zero-3.dtsi
- Rebase on latest mmind/for-next tree

Changes in v5:
- Rename regulator-fixed nodes
- Add keep-power-in-suspend to sdmmc1 node
- Add uart-has-rtscts to uart1 node

Changes in v6:
- Use imperative wording in commit message 
- Move led-green pinctrl props to gpio-leds node
- Add pinctrl props to ethernet-phy node
- Add no-mmc/no-sd/no-sdio props to sdhci/sdmmc0 nodes

[1] https://lore.kernel.org/linux-rockchip/3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com/

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
  arm64: dts: rockchip: Add Radxa ZERO 3W/3E

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-radxa-zero-3.dtsi     | 463 ++++++++++++++++++
 .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  51 ++
 .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  91 ++++
 5 files changed, 614 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
