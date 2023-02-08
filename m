Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 523C9C636D3
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Feb 2023 09:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EVVvXBGVD6BHexEWXQXprQPbmbG426B7F2qiWqTV0H4=; b=lPytt7b2ocC5of
	BJxPT1bXqzRpi9XCIUpfY5gtbrYf/sRLjAX8nsrCAV7Bp4/X6IHo6t9dvCDC1EEP/Nky78KVpcS3J
	3dxLnAgOukO+38bscaw2PRgJe4OcwBsITI4RbWT5ii033H6Yx7tkkgAP7RziT1WP6IAhlnqoBy048
	Quh0Urio6dY/7y43jBhShIwDIsRJJk321E0uZTdiJG8GETIGsnRmkLrwWl1UH7p2CSBWqjYgtaORW
	aO+3X46i1/5333fgvTJtoCC7TbvxRvWl0334/dkU5JRbzw75t0mIlK/Rio0WfG1hW1PK7zkAin9rX
	lmbEH2PV3eDzhtGw3U9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPh4s-00EztJ-M9; Wed, 08 Feb 2023 09:49:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPguk-00EvCC-1C
	for linux-rockchip@bombadil.infradead.org; Wed, 08 Feb 2023 09:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=PS5uICj2dEDFiatMqJOHcNjqsPW/TBzVoocRw4azOn8=; b=PeEPfCZwhWBPcOzY/PK5DQpgDw
	U8NXYBa0xbYjjcu3dR5Njr+5JIwiGD+I/mzivBYjdguF2ivuXiDKZB5KcMFngaWR87rLijvwmetUQ
	QjPXc6fFLKs/wbWXoQUOPaI2pytgTdSEDN7ZhjOcY1bBsqMG3Jqcs+/ZUc7Z7iqF8ZIQ6dQ+oG3Bn
	ByMLhO4pCCdwMMw1WtoNmjQLD+62pqUJPm9Qd9pF4zqhu6gO1S5IlIS1CrV7Cb1NeLDFDYx8vE1qi
	JRggl1HUBlYoDN+Tu1AMaozdem3Kmeu1TFaDEqaL6b4kq0G5upiZpQmjsLNuBy4PUk5dGIPd10Y+/
	NFqxNQ6Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pPgu0-007KC0-1n
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Feb 2023 09:38:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPguW-0003E1-9J; Wed, 08 Feb 2023 10:38:40 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPguU-003UBI-AT; Wed, 08 Feb 2023 10:38:39 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPguQ-000s7c-9u; Wed, 08 Feb 2023 10:38:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 00/19] Add perf support to the rockchip-dfi driver
Date: Wed,  8 Feb 2023 10:38:11 +0100
Message-Id: <20230208093830.143284-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_093808_861782_DDF38AAF 
X-CRM114-Status: GOOD (  20.30  )
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

This series adds perf support to the Rockchip DFI driver.

The DFI is a unit for measuring DRAM performance. Its driver is
currently located under drivers/devfreq/event/ as it serves as an event
driver for DRAM frequency scaling. With this series it can also be used
as a perf driver for measuring DRAM throughput. Usage looks like:

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

My target SoC is RK3568 which is not yet supported by the driver, so the
series starts with some cleanups and preparations, then RK3568 support
is added and finally perf support.

The driver is tested on both a RK3568 board and a RK3399 board, the
latter with dual channel memory. The measured values look sane,
read-bytes plus write-bytes is equal to totally transferred bytes, the
values reported by perf are slightly higher than the values my copy
from/to RAM test tool reports, as expected.

Sascha

Changes since v1:
- Fix example to actually match the binding and fix the warnings resulted thereof
- Make addition of rockchip,rk3568-dfi an extra patch

Sascha Hauer (19):
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
  arm64: dts: rockchip: rk3399: Enable DFI
  arm64: dts: rockchip: rk356x: Add DFI
  dt-bindings: devfreq: event: convert Rockchip DFI binding to yaml
  dt-bindings: devfreq: event: rockchip,dfi: Add rk3568 support

 .../bindings/devfreq/event/rockchip,dfi.yaml  |  72 ++
 .../bindings/devfreq/event/rockchip-dfi.txt   |  18 -
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   1 -
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   7 +
 drivers/devfreq/event/rockchip-dfi.c          | 659 +++++++++++++++---
 drivers/devfreq/rk3399_dmc.c                  |  10 +-
 include/soc/rockchip/rk3399_grf.h             |   9 +-
 include/soc/rockchip/rk3568_grf.h             |  13 +
 include/soc/rockchip/rockchip_grf.h           |  16 +
 9 files changed, 673 insertions(+), 132 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
 delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
 create mode 100644 include/soc/rockchip/rk3568_grf.h
 create mode 100644 include/soc/rockchip/rockchip_grf.h

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
