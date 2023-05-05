Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94616C7EE22
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 11:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tdNh57WWL2XPgGsvCJjJED2dDPBkZbhLcZ35Ip+QMZQ=; b=xM2F01YoVPp23c
	Qvv5sVrIbnygnjDQBeMEZRVSUVu01uOxQmkawg+uiL5ZdnMpyearEKiZ6xdqa4RfMrZ1qK+/p8Ug3
	ee2ovSnL4aID2D7e+/J1xBJtbnw0wxAfT7YUAgDTtoljUqEeLSWkc0GUwL6UuYR1lmeS4SL3sfi9q
	CZz0JUeuX6uGkcC4nnP+vHIR8eXVACBP0jWKQuDWLK32nac2bRl5Yyf7ivhLsLtiYDnuYDBznrha7
	oVaga8B+qYz6tJTnTA8e8699qGGVe4/6qrTJHOni1713/EwRwaNLl+p2jzsWuXxSIT38uN2otQ8gh
	yI6PrNZ8/WBGsFLdaDRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1putnw-00AkOm-2H;
	Fri, 05 May 2023 11:40:52 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putme-00AjEV-3B
	for linux-rockchip@bombadil.infradead.org;
	Fri, 05 May 2023 11:39:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=IWoYqjNohyECJ5RXAqoifLE+MQvnQ5u+b3CR90br26I=; b=XwMy0o9ZdbLJc25EwMTR1neOgd
	bp7+yjNf4a7/QkbP9ff/JTZXLv5aW6QcgDn3M50Msq0iKNJx78hj6E9JD0Qd0DuqgZl4a/ZUau1zd
	PaBX2N95cizuPUsg3hBw1VU/SVbh2PXlLMFzOUHA/2aaArbveIxLhqFAO/+BqkmEjCJnwd1k64ez4
	3H7TxUeCsrcV3HlrtFbMR2iZU7cXETLaa0PjA3wfidSgcf+R/EEoLrZ2NurGZbS0BxYm18jW6lFNq
	OKru4Rx5sB4Mf5jPLexgorXjPjIgaHKZn5s5F6sqv28kBx/yC12iqZGnqKMCnOO9dK7lNs5Zrpb9o
	+Azc9oqQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putmP-003EU7-0l
	for linux-rockchip@lists.infradead.org;
	Fri, 05 May 2023 11:39:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1putmC-0001ZG-KU; Fri, 05 May 2023 13:39:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putmB-001HcD-To; Fri, 05 May 2023 13:39:03 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putm7-003RmW-Ux; Fri, 05 May 2023 13:38:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v4 00/21] Add perf support to the rockchip-dfi driver
Date: Fri,  5 May 2023 13:38:35 +0200
Message-Id: <20230505113856.463650-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_123921_729869_2473D2A3 
X-CRM114-Status: GOOD (  18.31  )
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

This is v4 of the patches adding DDR perf support to the rockchip-dfi
driver.

There was no reaction to v3 of this series. Heiko, as the devfreq maintainers
are unreactive, would it be an option to take this through your tree?

Compared to the last version I added RK3588 support this time which required
some minor refactoring of the driver code. Only the driver changes are
included, not yet the device tree changes.

To make a bit of advertisement for this series: It allows us to measure the
DDR utilization which can be quite nice to identify performance bottlenecks.

Usage can be something like:

perf stat -a -e rockchip_ddr/cycles/,\
                rockchip_ddr/read-bytes/,\
                rockchip_ddr/write-bytes/,\
                rockchip_ddr/bytes/ sleep 1

 Performance counter stats for 'system wide':

        1582524826      rockchip_ddr/cycles/
           1802.25 MB   rockchip_ddr/read-bytes/
           1793.72 MB   rockchip_ddr/write-bytes/
           3595.90 MB   rockchip_ddr/bytes/

       1.014369709 seconds time elapsed

The above was called with running a test program in the background which copies
memory around. The measurements actually match quite well to the amount of
memory really copied as output by the test program.

Sascha

Changes since v3:
- Add RK3588 support

Changes since v2:
- Fix broken reference to binding
- Add Reviewed-by from Rob

Changes since v1:
- Fix example to actually match the binding and fix the warnings resulted thereof
- Make addition of rockchip,rk3568-dfi an extra patch

Sascha Hauer (21):
  PM / devfreq: rockchip-dfi: Embed desc into private data struct
  PM / devfreq: rockchip-dfi: use consistent name for private data
    struct
  PM / devfreq: rockchip-dfi: Make pmu regmap mandatory
  PM / devfreq: rockchip-dfi: Add SoC specific init function
  PM / devfreq: rockchip-dfi: dfi store raw values in counter struct
  PM / devfreq: rockchip-dfi: Use free running counter
  PM / devfreq: rockchip-dfi: introduce channel mask
  PM / devfreq: rk3399_dmc,dfi: generalize DDRTYPE defines
  PM / devfreq: rockchip-dfi: Clean up DDR type register defines
  PM / devfreq: rockchip-dfi: Add RK3568 support
  PM / devfreq: rockchip-dfi: Handle LPDDR2 correctly
  PM / devfreq: rockchip-dfi: Handle LPDDR4X
  PM / devfreq: rockchip-dfi: Pass private data struct to internal
    functions
  PM / devfreq: rockchip-dfi: Prepare for multiple users
  PM / devfreq: rockchip-dfi: Add perf support
  PM / devfreq: rockchip-dfi: make register stride SoC specific
  PM / devfreq: rockchip-dfi: account for multiple DDRMON_CTRL registers
  PM / devfreq: rockchip-dfi: add support for RK3588
  arm64: dts: rockchip: rk3399: Enable DFI
  arm64: dts: rockchip: rk356x: Add DFI
  dt-bindings: devfreq: event: convert Rockchip DFI binding to yaml

 .../bindings/devfreq/event/rockchip-dfi.txt   |  18 -
 .../bindings/devfreq/event/rockchip-dfi.yaml  |  39 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   1 -
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   6 +
 drivers/devfreq/event/rockchip-dfi.c          | 723 +++++++++++++++---
 drivers/devfreq/rk3399_dmc.c                  |  10 +-
 include/soc/rockchip/rk3399_grf.h             |   9 +-
 include/soc/rockchip/rk3568_grf.h             |  13 +
 include/soc/rockchip/rk3588_grf.h             |  18 +
 include/soc/rockchip/rockchip_grf.h           |  16 +
 10 files changed, 718 insertions(+), 135 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
 create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml
 create mode 100644 include/soc/rockchip/rk3568_grf.h
 create mode 100644 include/soc/rockchip/rk3588_grf.h
 create mode 100644 include/soc/rockchip/rockchip_grf.h

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
