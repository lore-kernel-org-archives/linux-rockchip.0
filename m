Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 259C9C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 21:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mvsa+R0qC3niWY1cd900PJKdzw5o4kQvrucwHyF92Z4=; b=hUKv/uL0oAVamD
	QpTzCf83S5UIB5GfFkj8ipp2goOKwRYZpRcwuWmlekIITfHYd0ZGKCsizcArIFCZY/sXEeJ7K6/Ab
	QgjpOsPMi6gFJ4m90T+H3lNdVuLbVaeto6Eqx5xwgaDGw7mlO90U13n1/KeMqtCFpSIy1oGD9skYd
	cEJShLzeauShGLJ8MEjHfCl7QViHUBsVzMVRMkp/Fo+z1hZDqzEbk3HD8AVWKwfbIT293tX7Hye8E
	ojKJY5XVkFLiMPDpk3w1gqeJ3rfKAEVx+vNvakC6lNuxnG8xUIX7lajcQEb9w0HmudJaxFqDKql6z
	aioZ/aFsBdIh4pPGihog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s30Ze-00000000RKy-1jHz;
	Fri, 03 May 2024 21:36:10 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s30Za-00000000RId-3sCc
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 21:36:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1714772158;
 bh=IEtiYMrqhyG7VeKkvj3sxxLLjVBj8CFwUTkak0hK3lE=;
 b=ZeZ01pL4i4ybLgssqnflFxFusHRDcLxi3G9NmD10kU9DLfq24IiohMpA4DuAi0SnI6GGvkt2s
 VTKEbO79eWHm/ZhYCCtpRnXGSHXrNdBzNdr7ksNl4DfNRkr9LsIGY71EIHfv9MKj18AbvBHZQ+d
 83yJl1L05Sm/RTkbKg9Rlv189v+VOjcO0UiYohvIUxHxiHbz/oo0Anhdrk4Z4k/cCE5GPzaRqdU
 vTCN7vaTPceRRyvCjFUEEOITRJ/w1FFHa8ZvJsIYG81N+BGaJ4Wxoi5RCN8Ov64f2hjxXWmbqI9
 /NCtxi4sC2iPuqpYeIESHTWDgkZCK4LOfDOV1Az7MFFA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 0/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Date: Fri,  3 May 2024 21:13:39 +0000
Message-ID: <20240503211346.1834868-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 663553905f172f3129915380
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_143607_028717_1D080120 
X-CRM114-Status: GOOD (  10.60  )
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

[1] https://lore.kernel.org/linux-rockchip/3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com/

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
  arm64: dts: rockchip: Add Radxa ZERO 3W/3E

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-radxa-zero-3.dtsi     | 464 ++++++++++++++++++
 .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
 .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  85 ++++
 5 files changed, 599 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
