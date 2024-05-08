Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFEC1C25B4F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vVyWxpzuFvrbP5JwgxmXLLFsydcTWCZIAQc6GBwZqcY=; b=YquHlWJTyFjd/Y
	18sos21TPeZuWBzBTqAQUvCofcotosK48GV4eopDo4LtD1+rvl/AYe4ro+QtRpCrI/WljpkftZ/SD
	xZd+tuYgM9MaQlDLacivLuxE56hNn+PbS4YYtZVqbFyjfq//Aw6K8pupI7cunM3pUm3pEQuh4IK+h
	wIBPK6AZH/pV5B/+cjYNQU+ZjX1Gm0c9bHL0nXpkVzkDsXCvzLsXNisJDDc3XXuSw/3sbczW3QzCV
	yrw85g/e5tl8LwDp+uBT5zoHM1z9P48MKWF2V1QsvFyWQ4blsAqY+gI4U6vKt8TD3wOwWlKVch0Hi
	2gwJ3dgl3t3oNuqnXdPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4bNy-0000000EL4U-2Tpp;
	Wed, 08 May 2024 07:06:42 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4bNt-0000000EL1g-0E0H
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 07:06:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1715151981;
 bh=4SBiHj3UaP8h4i4SKqdmJI+KpeU5a4XOxwcb5Gg0phs=;
 b=c26aNat1iwpw6RjewIhz+qWHNs+JRdSGgO2yYl3sGKESI+o0hm2YR1xkitEARc64wnKUdUjDL
 q8Uxgmewl0av0bnjgHeJs/oLQDTo/NAtV6d046j9R4V84uZNMem92up7tZ7wQn0eDBZI9H583cG
 D5dyFypnRiobUXUqNLEIZJz8dngNGPKisEE9BpAfQCjKVdczGrJi2CldRyaYD1zfa5XJMXcChtk
 hDAh/Bv/6x5HxUZUEN9FIkyp7833KL3PNA7jL6JDTWUrhkpmB2dANEpyjlPS9N/zkQ12N74IeQ/
 RsJhFrqxo5xFjb5Qo74euzN2CThAYochQZeDopTAuXVw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH v5 0/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Date: Wed,  8 May 2024 07:06:03 +0000
Message-ID: <20240508070611.4153602-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 663b2469a86e8ee0e42ddc14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_000637_471300_8102C45C 
X-CRM114-Status: GOOD (  10.71  )
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

[1] https://lore.kernel.org/linux-rockchip/3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com/

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
  arm64: dts: rockchip: Add Radxa ZERO 3W/3E

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-radxa-zero-3.dtsi     | 464 ++++++++++++++++++
 .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
 .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  87 ++++
 5 files changed, 601 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
