Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C529AD25030
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 02:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4kn0C0Rn5+emFMJEUK34S2CaQOI8CCGZhXzgENVIbV0=; b=lk4iVXceJHePGH
	yfMpFzBBSQYB/T8EqM9xz06IjyJYsM047V5tcb8l2SNqrc895H7yw9wT6s7Qs+75wf9RDCGRBHpJu
	v7hPi6VfaDn3s5dgVEIkVxY45hOyNGF2xcB/URTBVvK5MoAwjEuaK3G5yMu9fJ8m6QsXRcpPUwv1L
	6jMYPLWBwHNv3e/C1YkkxMD+dAwgoFA6w/EkZxkpM7BUKgczTqvj8FXDpFQgUNriXl719lQkGVK6+
	4G7G2BbSR5OjDAmIfW+ertPmNfzRW2AHqO4spvVrhXB9M09+hl8IJVurL0Hp85QCfG8CsvVaw/Dk1
	EqrHXFNj/hooEdq5EGNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf7hJ-00000004fa4-2aDx;
	Mon, 12 Jan 2026 02:30:25 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf7hG-00000004fSS-0flv;
	Mon, 12 Jan 2026 02:30:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1768184914;
	bh=5OwuqBa1SKtgkAufTwdNUgHq4LXbcH9yxhfSttEXZd4=;
	h=From:To:Subject:Date:Message-Id;
	b=QjVgpA+DN/Tc8QipuykbZtIg3b5K343C1zO1SxXZbyKoZTntCzzs/m54JGrW+mUBR
	 YiTaueIBiMhHibvjqAHqRaOH3+dS89reMYNyw7DGPqgTwFos4t41FhNM6S8V2dUcEq
	 qIsYMhf0yV0V9zAmqxw6ZmnlDhPe3Z9yxtBDjnK4=
X-QQ-mid: zesmtpsz4t1768184911t0d1f0041
X-QQ-Originating-IP: sntjFapz4HbC+mkqdoSmtzzuUOEeNdmwI5vWgXHYI1c=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 12 Jan 2026 10:28:29 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7699444275135992075
EX-QQ-RecipientCnt: 23
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v3 0/3] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Mon, 12 Jan 2026 10:28:20 +0800
Message-Id: <20260112022823.91-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NUTz4BkILuKLFFWBZfchHmjoVwmwrFRkzImEnehPaR3jbEDZ3g2ylOBP
	zyU4E/UQau/JqG0PeYlT4U6pgWBWE+dz3C6qZHXrNxQdTPmXYWk2/rXTm/KmjZBoInmvO8R
	EotUfgw11arf0KDibY23rz6eseGt14yYjcV/l7nn3mE2rhxxFtsdao0nF3AzhZQYAHSf0cb
	rSjvwX88NQ5890dyhnUVy6Oafvf+Yv5SsmGGqr3gl97hxkXwyqh+u2KapAmNAHVOVQSypkC
	j0UhMBrOXbOxPL2mRTbmjrmvPqIB9wFo35ysnTLJ2xxonJi9afYAPvBxaYjl9VZ7paLzPGU
	iir0CBFfcN3OnbYEB58YxJOgXrvSSHwTTgHYH4FI6NON97ylxpDZw0zWrho0zfEJrnsDvF+
	Muiula7JhKnThdAhuU44mMBmaTUOfNt2trHPepV6T4MhFBLFfie1VUoDl57c5XHr0gVWgqh
	SedXAWAor0XSlPU0XJzqzFkiS3K8waMzzuHx0SGC8Ocl0ubISUYA5/8EvmQgnnKnL3EOJGs
	8rsbYVfN5WcuhujPj2PIY8J13mzOEHv+SqH//tQfjGsc1e+yuEqvPxDTzXkf90gLmNCAQD6
	/KedC02g/OhjvuSuhiuOG3E8BiwTax6F89wK/qAw6fvRUWdh5+gLeIb7NUcJGCgfjve+uhV
	LreDZq+l0tPSG4nzpVlYmlm2QEKAnXqkSXcisOXco2YDiWsJ3BMzX+8X5Yt4ADWOkImMHtE
	ZKFMF9iJyJxgjAL11+2yvh5+SK2NYpCHUIzLvV8SGUWcZ7J085spljVfCtF9603VPf4teyl
	Yw4MM2Qm8Kv9MpVfXAPVnlPkg1pqymKZv4mn16iHBPDyXNFrUhwo4UUa28PjDKwME4l6D1B
	Q/iHsBR+JHgpPccXJUfS5x5o09+ItdKbLlmy9ICzV8cL+RAoUC70yDoi4+d4xlqAvmpGiPG
	G6d6fTZx7n/ejU6xylHcfwxu5gMeDukUhdCD3wcWgwwRTl/OOo3wToapeRj7GmbgeBo8WV4
	8II0ifReXt7EyCKL5H
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_183022_636590_72CDF709 
X-CRM114-Status: GOOD (  12.19  )
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

Chaoyi Chen (3):
  dt-bindings: usb: Add binding for WCH CH334/CH335 hub controller
  dt-bindings: arm: rockchip: Add rk3576 evb2 board
  arm64: dts: rockchip: Add rk3576 evb2 board

 .../devicetree/bindings/arm/rockchip.yaml     |    4 +-
 .../devicetree/bindings/usb/wch,ch334.yaml    |   65 ++
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3576-evb2-v10.dts     | 1002 +++++++++++++++++
 4 files changed, 1071 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/usb/wch,ch334.yaml
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts

--
2.51.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
