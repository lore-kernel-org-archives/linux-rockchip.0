Return-Path: <SRS0=32dy=GN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E455C433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 03:59:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 027B122E03
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 03:59:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 027B122E03
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HMC8Q0rvkzjLaEpAYNoed2s8H69YoLSKsnm8juhEkGQ=; b=tABCRytmvCQ1GGcq7nxhjAlJRv
	/uj79+nKvFmaEcUcQVuL0s8CEThV5kGTsvq6pnlWMoXqLcfn3NPIW5WkgYc6oUnxghlM8ZmH91yzq
	LRi2ovGe2qxsDH7N0j7qPSGNzuf7xUPVnkHhKovYhbE/lgaqr2Ooa0xFRFj7+Z5wGja2ItrTUt0YD
	VJwO9Wf3zb01OAfu8TCmumOrQgtFNZvmyWxpLDD091bNRl8aMilD+QsVjcbf38XwGiQXfo6Tymy8R
	qone/21A1b/v5LjC868a854kR/OOGy2kmVQ1B0AWK9vQEcDr37W43QrT+muB98Tmto0EN4n3f55z7
	Xw1mc88Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyRsa-0001Qc-Ph; Sun, 10 Jan 2021 03:59:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyRsS-0001N7-Bc; Sun, 10 Jan 2021 03:58:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E65723118;
 Sun, 10 Jan 2021 03:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610251130;
 bh=C/W4mAMHGOQEJFNc8A0ODhMjqrOG4pFNWO9ISfCS7NA=;
 h=From:To:Cc:Subject:Date:From;
 b=Y93JeKdyAKyhGB4P8WXWuhbnwq7A9jr7SK9zh1DWVEhlrO1kpsqDkKFNP/RFU1Vkf
 uFGupvNgAEQessF2vacB3nhjt2s8gP6HIUPdiHrqat5kI9zAY1LFR1y9UwyhSOtOVe
 IXV9GSyySjh9JtG3idR/WXgW1RC4DSO3l9jzpVT/NNhqlSBKOpEZt1orETVxujLTuo
 jTGIKz0rVWUfo4juDW0W6cz8lRPfn/4IczG/A0TQ0oYJphIMaADnyl+PTh/u/o4wA8
 OnLh8zkr2TfIreFPNAUHEdHCj+qw9d6aLWXqNu7ZxsR8VnjQxxQo+VMxYTb+8pjOiV
 X1Tf0PwfrxNqQ==
Received: by wens.tw (Postfix, from userid 1000)
 id F0B055FB6A; Sun, 10 Jan 2021 11:58:46 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/3] arm64: rockchip: rk3328: Add Radxa ROCK Pi E
Date: Sun, 10 Jan 2021 11:58:43 +0800
Message-Id: <20210110035846.9155-1-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_225852_522775_31134F5E 
X-CRM114-Status: GOOD (  15.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Hi everyone,

This series adds support for the Radxa ROCK Pi E. This is a router
oriented SBC based on Rockchip's RK3328 SoC. As the official wiki page
puts it, "E for Ethernets".

It features the RK3328 SoC, gigabit and fast Ethernet RJ45 ports, both
directly served by Ethernet controllers in the SoC, a USB 3.0 host port,
a power-only USB type-C port, a 3.5mm headphone jack for audio output,
two LEDs, a 40-pin Raspberry Pi style GPIO header, and optional WiFi+BT
and PoE header.

The board comes in multiple configurations, differing in the amount of
onboard RAM, the level of WiFi+BT (none, 802.11n 2.4GHz, or 802.11ac
2.4 GHz & 5 GHz), and whether PoE is supported or not. These variants
can all share the same device tree. Currently, the 802.11ac chip
lacks an in-kernel driver.

The USB 2.0 OTG controller is available on the 40-pin header. This is
not enabled in the device tree, since it is possible to use it in a
host-only configuration, or in OTG mode with an extra pin from the
header as the ID pin.

The device tree is based on the one of the Rock64, with various parts
modified to match the ROCK Pi E, and some parts updated to newer styles,
such as the gmac2io node's mdio sub-node.

Patch 1 adds the clock_in_out property to the gmac2phy node. This would
always have the same setting for gmac2phy, which uses an integrated PHY
in RMII mode. Having this set by default makes enabling gmac2phy at the
board level simpler.

Patch 2 adds a compatible string for this board to the list of Rockchip
based devices.

Patch 3 adds a device tree file for this board. This is based on the
one for the Rock64, with many modifications to adapt it to the new
board, as well as style updates.

Please have a look.


Regards
ChenYu

Chen-Yu Tsai (3):
  arm64: dts: rockchip: rk3328: Add clock_in_out property to gmac2phy
    node
  dt-bindings: arm: rockchip: Add Radxa ROCK Pi E
  arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3328-rock-pi-e.dts    | 369 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   1 +
 4 files changed, 376 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts

-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
