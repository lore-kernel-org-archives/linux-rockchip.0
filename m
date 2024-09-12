Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B7A2EE645B
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 08:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e7SZyZtMu8qaGUAKG76BmxR0jO0osUsWRfrz/5LkOMc=; b=N5XqyMHgXN0IZg
	LzAlfOQaJYlZ4tANcIKOdThnNOrZBu8dU+GOHBHxF+8uq3yJkgDOBp6G/JuVg3vUGvFz35Gtjoie1
	t+l8f1FxE4qMrTaXhUDtTdM+24pUjmWzRZRg9p/FGrTRfpsWAryjyv9uX39hMtemlmLFPVPgVuVhK
	dCyh82lYCTC9xOVUl6fuw3e2Q80Ps0DggU57jlMviv7Pdcg9H4lxIp5FeEqAg6qW1n/+eIA1XL5gt
	X4qGZEs3l2yUwNlkuz2XE/jXYKs5EsXmYeBANMgZiYrtqW7q4hMZRZjPakiwI6nH5nfECP5YgbmSa
	W2gzYOjaO22uwknk+73Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soepe-0000000CIno-3YCL;
	Thu, 12 Sep 2024 08:05:38 +0000
Received: from mail-m118112.qiye.163.com ([115.236.118.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soeoU-0000000CIY3-1rB9;
	Thu, 12 Sep 2024 08:04:28 +0000
DKIM-Signature: a=rsa-sha256;
	b=h6cjnqatK6rgyLNAn6VvaL2/6P9vDMxqGUEcuwDiAHvJAHfolJ+uIbu9Ed119mFBsFhItp9/sTapDeeQRFhR48Y5zeAsnG+ChemMOfBYRmjo+JFmbe33l+53xkHn+yLnMRekwHqqipuAKd2tI4zsO5Tpx5txhQALf1oapdTCxZs=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=dHQFFhn3Ml0FVTMmnTTgqqzpKuNt0ErXTmfzGae0Ie0=;
	h=date:mime-version:subject:message-id:from;
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id C7EC11001C9;
	Thu, 12 Sep 2024 16:03:04 +0800 (CST)
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
Subject: [PATCH v4 0/2] Add support for RK3588S Evaluation board
Date: Thu, 12 Sep 2024 16:02:46 +0800
Message-Id: <20240912080248.1133061-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx9LQ1ZDGU8eGkJOHRpDT0NWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a91e541e2a403a7kunmc7ec11001c9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ND46MDo4HzI4Kyw6DioBMjBN
	Kw9PCjxVSlVKTElNSklDSkNNTU1DVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJQ05ONwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_010427_006250_AF67B8A3 
X-CRM114-Status: UNSURE (   8.82  )
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

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 1129 +++++++++++++++++
 3 files changed, 1135 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
