Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A294CCFA15
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 05:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T76u4aDGF4vfM3N12EC2CLI13LbdwEUubg9dFUHJS80=; b=sn7cHGMcNXqu1g
	Dkv6CPxmHRhFpuL+eHGqB62S3iZ0SJ37uYQxj11VHXfW8jx8Yb9VF79AqahkfeuUQ6Ua6D+RzXHMf
	34I+fptU5quC/TAzCuzqYK7g5/tUbDJa1i20tO+81ZVdOj4zlQyB9UOKZmjMEqhot5pIApZ7k+9Em
	/TIkh5J5ReIqEMfChNBFTpCkeO+p6cB4CdsV7FJK+9F9ADAnczeikAuUdpm3/TDgi+1XgHRWYld6R
	u0Kl0d2fgGxPq5B2jICz2wyORJ3NvnYaDmz5SX+fxfIC0OwIloD2P91P3M+tW/JIntgUNfShdNCEp
	DsGIJ70nUAPjR5fH8Spw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGVqb-0000000D1l8-1LHG;
	Wed, 05 Nov 2025 05:14:17 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGVqV-0000000D1jb-4Axn
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 05:14:15 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A55DfSr031533;
	Wed, 5 Nov 2025 14:13:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
        i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
        dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 0/3] Add Radxa CM5 and IO Board
Date: Wed,  5 Nov 2025 05:13:32 +0000
Message-ID: <20251105051335.17652-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_211412_259086_444EF654 
X-CRM114-Status: GOOD (  11.79  )
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

This patch series add support for the Radxa CM5 SoM and IO Board.

Changes in v6:
(Patch 1/3)
- Fix description; "Radxa CM5" is the correct name
(Patch 2/3)
- Fix #include(s)
- Include rk3588s.dtsi
- Move alias for gmac1 from io board dts
- Add Maskrom key
- Add pinctrl-* for led-0
- Add vcc_1v1_nldo_s3 regulator for pmic
- Move gmac1 (except status) from io board dts
- Fix phy-supply for gmac1
- Fix compatible for vdd_cpu_big1_s0 regulator
- Add eeprom on i2c0
- Add vdd_npu_s0 regulator for rknn
- Fix compatible for rgmii_phy1
- Add pinctrl-* and reset-* for rgmii_phy1
- Add domain-supply for pd_npu
- Add rknn_*
- Add saradc
- Fix properties in sdhci
- Move pmic from io board dts
- Fix vcc*-supply for pmic
- Add regulators in pmic
- Add tsadc
- Move vop(_mmu) from io board dts
- Trivial changes (labels, names, etc)
(Patch 3/3)
- Fix #include(s)
- Remove #include "rk3588s.dtsi"
- Fix model
- Add fan
- Add Recovery key
- Add pinctrl-* for vcc3v3_wf
- Add vcc_sysin regulator
- Add pinctrl-* for vbus5v0_typec
- Add rfkill-bt and rfkill-wlan for M.2 module
- Add sound for es8316
- Add phy-supply for combphy2_psu
- Fix power-role to "source" for fusb302
- Add rtc for hym8536
- Add audio-codec on i2c8 for es8316
- Add i2s0_8ch for es8316
- Add package_thermal for fan
- Add pinctrl-* for pcie2x1l2
- Add pwm11 for fan
- Fix properties in sdmmmc
- Add phy-supply for u2phy2_host and u2phy3_host
- Remove usb_host0_ohci
- Add pinctrl-* for usbdp_phy0
- Trivial changes (labels, names, etc)

Changes in v5:
(Patch 2/3, per Jimmy)
- Alias eMMC to mmc0
- Remove unused sdio alias
- Move gmac, hdmi0 nodes to carrier board dts
(Patch 3/3, per Jimmy)
- Enable hdmi0_sound and i2s5_8ch
- Remove redundant enablement of sdhci
- Enable usb_host2_xhci

- Tested HDMI audio

Changes in v4:
- Fixed XHCI initialization bug by changing try-power-role from source
  to sink

Changes in v3:
- Addressed YAML syntax error in dt binding (per Rob)
- Fixed whitespace issue in dts reported by checkpatch.pl
- Split base SoM and carrier board into separate patches
- Added further details about the SoM and carrier to the commit
  messages

Changes in v2:
- Added copyright header and data sheet links
- Removed non-existent property
- Sorted alphabetically
- Removed errant whitespace
- Moved status to the end of each node
- Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
- Removed delays from gmac with internal delay

Link: https://lore.kernel.org/r/20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
I have communicated with Joseph privately and taken ownership of
moving this forward, with his blessing. All bugs belong to me.
---
FUKAUMI Naoki (3):
  dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
  arm64: dts: rockchip: Add Radxa CM5
  arm64: dts: rockchip: Add Radxa CM5 IO Board

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 503 +++++++++++++++
 .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 602 ++++++++++++++++++
 4 files changed, 1113 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
