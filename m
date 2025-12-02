Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76DB9D11700
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 05:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cxww9Ykk4JzvbsxwS7CCchTiN40I5druDjMVBQxk/n0=; b=XuyqZJoFLiiU+W
	FvysADRQUrwM+FQiZ1xt/d1z6qtZ2ESA0Ro8yx0tIoZjbG9/q6gDWatydXqTRlfjzjXcS9k1TcGd5
	WGJD2zeGzqk6bFw0S3Xy7FNHb/URYHKMIwKzIO5FrN0V9NkLF8MubrKuyd7uH45LDr8EgaZDpnN0P
	bRrlpZMhUiTL2qyXasoWkG48t7+NzOLX5HAloTGecrdYZB0H+t6JhjLiJvQPHwnNZIH6Lbix2uLEC
	arTHa6Q02pgtWGvG5XAFbIQHTYJjGWD3DnJ4mbumIB/2bGLIUOFV82TqVqZwCJk69aTonfUGZXrnM
	kUNFULdbK0M/qDj0cN4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQIvF-00000004q3v-08Ig;
	Tue, 02 Dec 2025 05:27:33 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQIvC-00000004q1Y-06Uj
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 05:27:31 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5B25R8HS007965;
	Tue, 2 Dec 2025 14:27:09 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
        kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
        inindev@gmail.com, michael.opdenacker@rootcommit.com,
        dsimic@manjaro.org, pbrobinson@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [RESEND PATCH v5 0/3] Add Radxa CM5 module and IO board dts
Date: Tue,  2 Dec 2025 05:26:59 +0000
Message-ID: <20251202052702.155523-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_212730_281704_9140E7F3 
X-CRM114-Status: UNSURE (   9.24  )
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

From: Joseph Kogut <joseph.kogut@gmail.com>

This patch series adds initial device tree support for the Radxa CM5 SoM
and accompanying IO board.

V4 -> V5:
  Patch (2/3), per Jimmy:
  - Alias eMMC to mmc0
  - Remove unused sdio alias
  - Move gmac, hdmi0 nodes to carrier board dts

  Patch (3/3), per Jimmy:
  - Enable hdmi0_sound and i2s5_8ch
  - Remove redundant enablement of sdhci
  - Enable usb_host2_xhci

  - Tested HDMI audio

V3 -> V4:
  - Fixed XHCI initialization bug by changing try-power-role from source
    to sink

V2 -> V3:
  - Addressed YAML syntax error in dt binding (per Rob)
  - Fixed whitespace issue in dts reported by checkpatch.pl
  - Split base SoM and carrier board into separate patches
  - Added further details about the SoM and carrier to the commit
    messages

V1 -> V2:
  - Added copyright header and data sheet links
  - Removed non-existent property
  - Sorted alphabetically
  - Removed errant whitespace
  - Moved status to the end of each node
  - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
  - Removed delays from gmac with internal delay

- Link to v4: https://lore.kernel.org/r/20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com

Joseph Kogut (3):
  dt-bindings: arm: rockchip: Add Radxa CM5 IO board
  arm64: dts: rockchip: Add rk3588 based Radxa CM5
  arm64: dts: rockchip: Add support for CM5 IO carrier

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 135 +++++
 4 files changed, 629 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
