Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C6C0D262AF
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 01:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zRsQffgHulBF1BtBn2HtYCd8ThHSGfLxgL50wSjZsGk=; b=Mt6/8nH0YJnCuO
	htOymOcQ7HCXyXYsIs5BKtSxKQHBsQM8EGq4BI3+Xn8wTJCo7f9F79Bq9IBnawUC44YhEUlVWL/+k
	CIOnopOQ08QAgsQ1gzym8apTaXX4+ahDy1nR71zAi2LgQKurSNgPbLFYvxzqIV1SeSYD6mx6qS93U
	HiuJabOVpau+GBUvBeJuGHf7SvNTSlb34olIvnAjnU7RzQTIKKOTMbhb38np5bnksqT+e26GdmpbA
	Rht+3gpNRMTm3tY4OM353+MMktQAFJPnslYyYkNMrLDz35iefdsiMecZ2fo4MULwI9Bzf3q6a1bs1
	0mjgjy5HdYv8tKkWYdBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viNQl-00000004jiY-0cXz;
	Wed, 21 Jan 2026 01:54:47 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viNQi-00000004jfk-0rrL;
	Wed, 21 Jan 2026 01:54:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1768960450;
	bh=WZq7zIP7/86ZusWmfGwlEuQbY/grzwNqfRgaU1ANOgM=;
	h=From:To:Subject:Date:Message-Id;
	b=uadAQwnYj9uDJdocpzElGXKwxCahIq8KGRKuToX6UEztVmOg8XbbLawEPucvuaL5j
	 qxTczyBb0uRtIf5B8kX/AikwWBhzQadrlVGutwxxS2ercjkXA1zSTJMqTp67EMpleN
	 xyFGC4t10q/uLkWz/hQPAd9oLJ8Y7o+4YrhDxX4s=
X-QQ-mid: zesmtpsz3t1768960443te5516434
X-QQ-Originating-IP: ZazM54AfZm2RdLLOT68vt/up/bzHgtB6O8CyHXWTUiM=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 Jan 2026 09:54:00 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16337528738947552159
EX-QQ-RecipientCnt: 21
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Hsun Lai <i@chainsx.cn>,
	John Clark <inindev@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Wed, 21 Jan 2026 09:53:55 +0800
Message-Id: <20260121015357.291-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: OWISOlifo4Hy2L7zlMA5PXytslX1F8lCFf0c2cb0emBivGiLxZc1zxYN
	aEFdXtkSKsMGC87CnbuwxnFva3ONuiVQwcR2MatNQtVmBNU8pVWP47zBuSmAGnQD6FsoIB0
	d3/9KXMd3AiB9z4Clp3LearMwcy1LhZndtOvegsU7+BS/JHDqpYZyNchFpPzUFk1tc4RH/+
	O0HtwafRh3c1OcvDvhRJeODzlcsECCOi4URvO8hwlo8WX7tVeJ3kqd06p3QCOHnlOv6oR27
	dzZQJTbIyIfTa0X1R6ZESfD7MtHhZDUBSq0xpAgABMvCKWCtJjYHUCZVCWbeXukxoEg24lt
	kf+pNoADXT5tdGkmr17HfGSoGxoCOE31DABDgsgHA+tqs3+j/douUpGsGnJRLqyVsSaJhol
	JZ4CS7V+3XGNvgT0G2rvCMazfHbXTwjvfonYnhig35geabVdsp3ke34EwVD6429/6+ZPCng
	A2PuB3YPIvnVS2ctxHNIZD20aiIXSes9lWvHR9rAsPIfjuI6xkoa6KDvyatqBNeYV0/89ma
	po9DQJ8ag6AqWrOBVV+9A0edt3z+NT0+lFvjR1uWZxEM0xY4hEKn4N70I65AZ5kiNnwFYkw
	45NxZu3APJVMXOZtDSWvI1TnRkFogs6KrxjgU1mXhe7KJw0oFKsNSA7QWCwZPT5i2gzyLv+
	FYhukI9bFksiX0RCnS99gcqBfqQ0/gwjWd0bVbkek68Bk2GGSZylRIK38SNWtAQLcWf+3rn
	PGNDyRYR4Ave/rCedSLCueJOyxEOglnu/IsYVO4gqS9OyvzfUy7al+QVE+ihr03/vsCGfjM
	d88EJ18Cc6wAHxuSyfNfxMYhmrggqjd7oPJgCxCN1udLn9dsK3eC8OPbDIG//5GmXjb7HS0
	Buby02ZP+dtrMTgiTwmGHbE5cEYezT+2PXeMEFB+QRqtQtu6q30KlRzb5xIEJ2EIJJ47pV2
	1CYiu6AWKvW8Qp6I+95bm82cV97m2TQ6T38FpgXzp0n7kn7JvX8swi2S1DziLCb9siTz9gT
	2XdE45DT+U+yaMkcT4cQiW334bqJAGni3t49Tpqw==
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_175444_796014_51115012 
X-CRM114-Status: GOOD (  13.07  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Hi,

This series add support for rk3576 evb2 board.

General features for rk3576 evb2 board:
    - Rockchip RK3576
    - LPDDR4/4X
    - eMMC5.1
    - RK806-2x2pcs + DiscretePower
    - 1x HDMI2.1 TX / HDMI2.0 RX
    - 1x full size DP1.4 TX (Only 2 Lanes)
    - 2x 10/100/1000M Ethernet
    - 5x SATA3.0 7Pin Slot
    - 2x USB3.2 Gen1 Host
    - 3x USB2.0 Host
    - WIFI/BT
    - ...

To make the USB hub work, the additional patch from usb-next is required:

[0] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?h=usb-next&id=00fcc9c86a134c488fd857b5460a7925228272c1
[1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?h=usb-next&id=fa3bb5011f33cccd246072954e64d64483d0d774

Changes in v4:
- Link to v3: https://lore.kernel.org/all/20260112022823.91-1-kernel@airkyi.com/
- Move the USB hub code into a separate patch series, and that series have
  already been merged into usb-next.
- Fix supply and reset for usb hub.
- Add cd-gpios for sdmmc.

Changes in v3:
- Link to v2: https://lore.kernel.org/all/20260107070322.323-1-kernel@airkyi.com/ 
- Add binding for WCH CH334/CH335 hub controller.
- Add alias for mmc.
- Rename some usb vbus regulator.
- Add DP regulator.
- Change gmac phy-mode to rgmii-id.
- Add target-supply for sata.
- Change vcc-supply for ufshc.
- Add usb hub.
- ...

Changes in v2:
- Link to v1: https://lore.kernel.org/all/20260104023703.118-1-kernel@airkyi.com/
- Enable hdmi_sound and sai6.
- Add more cpu-supply.
- Use regulator to control sata power.
- Remove "cap-mmc-highspeed" prop in sdmmc.
- Add regulator supply for ufshc.
- Add the missing vcc3v3_hubreset regulator.
- Add otg capability for usb_drd0_dwc3.

Chaoyi Chen (2):
  dt-bindings: arm: rockchip: Add rk3576 evb2 board
  arm64: dts: rockchip: Add rk3576 evb2 board

 .../devicetree/bindings/arm/rockchip.yaml     |    4 +-
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3576-evb2-v10.dts     | 1004 +++++++++++++++++
 3 files changed, 1008 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts

-- 
2.51.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
