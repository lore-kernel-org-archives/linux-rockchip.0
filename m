Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92FF9C282EC
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 22:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tJwljAV9/N5bW2TlEHvhI+AXrr1P3j4EN5s2OxGI3js=; b=jMEKlfecEvdVZ/
	xMj5gPL7nywGnRXKcI88dtNJKWzdl8eInZ3R4HQgrtmkIvbYlW0Xk8MrqS9EFz2viDWENAuEt2ViC
	L0nunw3+PF+G1FetzD4oJOnawXC4uynNWZ6wOtqVFj/AVYwMDEoB3Ljxqd4d9u0FoRcAfNxXznNAK
	HABc0M4Cvj4HwQmyQ2bJddb42d4DVNdldApypka3isKgtgr+rhoz1VWsfSevRLUXI8beyLm6vu/Vi
	ZODh84Rk7I2UaE8dY9mo1cuomFhD4Xw5L1J4Kdn+vtreun9W1vCj4eRMjm2tPjqG+2jKr32/uPeCI
	3MADOcC3WRuRDRDLjJIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpxXr-00000009Wah-21QU;
	Wed, 05 Mar 2025 22:48:55 +0000
Received: from smtp.forwardemail.net ([121.127.44.59])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpwUX-00000009O2C-0rP8
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Mar 2025 21:41:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1741210883;
 bh=innxyVjkg+mq6x4IGX11r7TVyyqnex8mH7N+cCGoDio=;
 b=suirhYtms65XViJfJMr7UKOLnNrje9KSrqJF7ET0/s43s24dzpqTkQUTRNLA/JlmZgtUd6UCA
 NzUd82C1duNaB6fQqWY4CY+VLXWxuZm4LbTO/L+FpOMRElPhTYjkr2SbJBzu1pN2jXcP69P7r2S
 nuhnzL3VEUoZWdI/CCPPnNKDtVIeb3gz19RneRccMWyTvLouP+Ds64qpLafUzrQlfC2xvsRghQd
 sH9QkTIR6l71V+PzYznPBXlqbgEj5jcEcW/yNKoi6Pdq/DP/3RMkmjm75CC54syxv+dqPxJf1Cu
 XVMYCa+WTABJ6t9hqm6sw3vusmxkImKyBQotzU2fV+JA==
X-Forward-Email-ID: 67c8c4f988fb7bbab4530f30
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/3] rockchip: Add support for onboard eMMC on Radxa E20C
Date: Wed,  5 Mar 2025 21:41:01 +0000
Message-ID: <20250305214108.1327208-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_134125_722055_B639C09C 
X-CRM114-Status: UNSURE (   9.61  )
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

The Radxa E20C may come with an onboard eMMC (8GB / 16GB / 32GB / 64GB).

This series add dt-binding and SoC DT node for the SDHCI controller
and enable use of the SDCHI controller on the Radxa E20C.

This series add support for the onboard eMMC on Radxa E20C.

Driver changes to use different delay and tap num is needed to be able
to support HS400 modes, something for a future series. With this HS200
mode should work:

  mmc0: SDHCI controller on ffbf0000.mmc [ffbf0000.mmc] using ADMA
  mmc0: new HS200 MMC card at address 0001
  mmcblk0: mmc0:0001 TLi16G 14.7 GiB
   mmcblk0: p1 p2 p3
  mmcblk0boot0: mmc0:0001 TLi16G 4.00 MiB
  mmcblk0boot1: mmc0:0001 TLi16G 4.00 MiB
  mmcblk0rpmb: mmc0:0001 TLi16G 4.00 MiB, chardev (499:0)

  ~ # cat /sys/kernel/debug/mmc0/ios
  clock:          200000000 Hz
  actual clock:   198000000 Hz
  vdd:            21 (3.3 ~ 3.4V)
  bus mode:       2 (push-pull)
  chip select:    0 (don't care)
  power mode:     2 (on)
  bus width:      3 (8bits)
  timing spec:    9 (mmc HS200)
  signal voltage: 1 (1.80 V)
  driver type:    0 (driver type B)

  ~ # hdparm -t /dev/mmcblk0p1
  /dev/mmcblk0p1:
  Timing buffered disk reads:   64 MB in 0.37 seconds = 173154 kB/s

This series depends on v2 of the "Support SD/SDIO controllers on RK3528"
series for a clean apply.

Jonas Karlman (3):
  dt-bindings: mmc: sdhci-of-dwcmhsc: Add compatible string for RK3528
  arm64: dts: rockchip: Add SDHCI controller for RK3528
  arm64: dts: rockchip: Enable onboard eMMC on Radxa E20C

 .../bindings/mmc/snps,dwcmshc-sdhci.yaml      |  4 +++-
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 12 ++++++++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 24 +++++++++++++++++++
 3 files changed, 39 insertions(+), 1 deletion(-)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
