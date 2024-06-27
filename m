Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F359AC3064D
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 21:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i7qPJHwCN0s6ih7JZhW8uaUIlzI7XSRqU1OmHw00drw=; b=Hx2xm/uLe+CAVw
	rqt9js2V5aLokTWFGj5rg3EE3Wu+OHLkPb/HI63A+zSxh/I7bxNfmvwuIaVOzey0zAf2rgbEVBW7H
	LSpV2YEoikoUy7+Rzj9FHml3G5cH0yHGoW1CPqmlknCC/0Dn3oXNcK9DIFlO3f5eq8ad2dFJIiEX8
	tQCrvIt/j9m7rO3pVawuPdC/f2vGIZ+xjMkNEXAsXSLrGVqx+aDzmJPCYcFrGGjhCTRTLQJmlsDkZ
	+gD88RQ8YWsl2/I7rS4aHHu0wYz1CI4SCj37EaZHZa1YlQZ90B+lDu2QpocR3wTXvlcyd+C8I0VF6
	LQaoFkt8+wjz39VT/B0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMwVL-0000000BjvD-0P6L;
	Thu, 27 Jun 2024 21:18:07 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMwVH-0000000BjrB-1YIM
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Jun 2024 21:18:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1719523064;
 bh=rPE+9z//tyfsDsGC0Vy2GcWOo7+pR6Ob+6/gM+fr390=;
 b=iBrZRhn6S1X72EfwpHyazeggUag0Simvv4eS1pVIMF1f1TeLZDe6HouYEF82rYa8cykQtmAKC
 9yx9KzGCrizFWsflyIlihZL+HI8ix3zixIziuNOTcdfSgKXJLUGPqUhivXM1Ri5JtfnLJkHLHlm
 OlNrS5v56RrpickA+lco9kjT8SVJ55S1FvfFCXxHmC1FwJID9SP6xHcr6ZcsjSV5Uu3k4yNfOWr
 rHvqy6kS8UpTqdjb/MH9vZDq3DMJ4isgv+GPLzqfpBNDIXE158n56Hqmn0Y8T2YMX6YSCjtQj1Y
 ZkeLo2ESD5fJpgbEiirpv5AVVEnvYzNZ4QNwhpCBiwPA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 0/2] arm64: dts: rockchip: Add Radxa ROCK 3B
Date: Thu, 27 Jun 2024 21:17:29 +0000
Message-ID: <20240627211737.1985549-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 667dd6f8392543b4ce9ac5db
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_141803_790086_F006CA7E 
X-CRM114-Status: UNSURE (   8.16  )
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

This series adds initial support for the Radxa ROCK 3B board.

The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
version based on the RK3568 SoC and an industrial version based on the
RK3568J SoC.

Schematic for ROCK 3B can be found at:
https://dl.radxa.com/rock3/docs/hw/3b/Radxa_ROCK_3B_V1.51_SCH.pdf

Changes in v3:
- Rename led node and move led pinctrl
- Add cap-mmc-highspeed to sdhci node

Changes in v2:
- Drop rk809 dt-bindings patches, replaced by series at [1]
- Use regulator-.* nodename for fixed regulators
- Drop rockchip,mic-in-differential prop
- Shorten Ethernet phy reset-deassert-us to 50 ms
- Fix pcie pinctrl
- Add keep-power-in-suspend to sdmmc2
- Collect a-b tag

[1] https://lore.kernel.org/all/20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com/

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ROCK 3B
  arm64: dts: rockchip: Add Radxa ROCK 3B

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 781 ++++++++++++++++++
 3 files changed, 787 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
