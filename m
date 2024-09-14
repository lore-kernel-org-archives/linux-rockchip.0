Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33111C0218C
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 09:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MvBcQmPmbrfJV7NONY3EMw0nNoRPrhlMDpIbQPunj98=; b=YGw5dndGBCrjOu
	KuG6ypxrS9W7+dvw0McTvEyinYfUnLLdq2KWhnaumcQO98VG7y+3T/1vYYdhlP+wh96kdIsHDetNB
	nKTDqN13Z7wOVBOIMQ3JmfBNhMfAXV9tNxxrd3ydp/CDSehimtDzysi3Q699euxk+H0rI4tTBsYHg
	e4nwlu0QyxUjLeDrLuUKNIJ+cKPBo2UZ8EvU30+MFs1z83hrrMcujVoCunP9an0NuQCu+hzexFpj5
	NcM8cKu6OwEPdBLeVgKVE7ZUO30DwRMwjeA97O/0fKnmWRrFkx4ZYnTtLLHM67KA9Id3BuoQ2xFmx
	/T54DDc0iVmYz5vRUXlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spPVj-00000000Tfg-0LZQ;
	Sat, 14 Sep 2024 09:56:11 +0000
Received: from mail-m1010.netease.com ([154.81.10.10])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spPVg-00000000Tez-0WLB;
	Sat, 14 Sep 2024 09:56:10 +0000
DKIM-Signature: a=rsa-sha256;
	b=h9EYiYvjQlBEcxZbofmgksr4onN4akfrGgOyUfModmA+R0b8/NfxofD1ea3mnchH17BYUolbNqijHmUqN/HhRIDK0gEZ41zRCsan22EGXTt35yhMINpUnDGJIud/+eBZNIWqLcb0IVXVezRkeZIfD4nSxp9Y5XIFov1qWbT5Un0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=k0fn5HQWlAuw190BJdywieI88ds+PPabunrOXGTjKe8=;
	h=date:mime-version:subject:message-id:from;
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 25F4D1002F8;
	Sat, 14 Sep 2024 17:55:04 +0800 (CST)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	macromorgan@hotmail.com,
	jonas@kwiboo.se,
	tim@feathertop.org,
	knaerzche@gmail.com,
	efectn@protonmail.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	dsimic@manjaro.org,
	megi@xff.cz,
	sebastian.reichel@collabora.com,
	alchark@gmail.com,
	boris.brezillon@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v5 0/2] Add support for RK3588S Evaluation board
Date: Sat, 14 Sep 2024 17:54:54 +0800
Message-Id: <20240914095456.2347532-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxkaQ1ZJGk9CGk0YTUxIQkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a91eff5214b03a7kunm25f4d1002f8
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PiI6ECo6HTI*ThM5SUoiPzZW
	LgswCi5VSlVKTElNSEtMTEtOTElJVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFISExLNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_025608_666556_567DDA82 
X-CRM114-Status: UNSURE (   9.49  )
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

RK3588S EVB1 board features:
- Rockchip RK3588S
- PMIC: RK806-2x2pcs+DiscretePower
- RAM: LPDDR4/4x 2pcsx 32bit
- ROM: eMMC5.1+ SPI Falsh

Damon Ding (2):
  dt-bindings: arm: rockchip: Add RK3588S EVB1 board
  arm64: dts: rockchip: Add RK3588S EVB1 board

Changes in v2:
- rename amplifier nodes to amplifier-headphone and amplifier-speaker
- sort audio and backlight nodes by node name
- format names of regulator nodes to regulator-*
- add CPU/memory regulator coupling
- fix "VOP-" to "VOL-" in commit message
- remove bootargs property in chosen node

Changes in v3:
- remove unevaluated properties:
    pcie@fe190000: 'rockchip,skip-scan-in-resume'
    pmic@1: regulators: dcdc-reg*: 'regulator-init-microvolt'
    phy@fed80000: 'svid'

Changes in v4:
- remove unexpected property bootargs which added by mistake in v3
- add cd-gpios property in sdmmc node
- enable combphy2_psu for pcie2x1l1
- improve commit messages
- add proper series title

Changes in v5:
- fix the simple-audio-card,hp-det-gpio to gpio1_d0 in analog-sound node
- replace gpio property with gpios in regulator nodes
- move status property after pinctrl-0 in i2c8 node
- remove status property in usbc0 node
- fix interrupts pin to gpio0_c4 in hym8563 node
- sort properties alphabetically in sdmmc node
- use RK_PA7 instead of 7 in pmic nodes
- move pinctrl-name after pinctrl-0 in pmic@1 node
- add pinctrl-name in uart2 node
- remove dr_mode property in usb_host0_xhci node

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 1128 +++++++++++++++++
 3 files changed, 1134 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
