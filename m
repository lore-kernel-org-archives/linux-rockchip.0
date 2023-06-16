Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20CE8EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 06:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BKz3E0ObKVXBGDGww6mLyq1QgVQRZT9lxq/F5DWzjcM=; b=uGiNsT/Qx5zSnE
	raJ1jTaikowzplFd+f1rTF8sUVWde1XCvqvU2cDXouRRM/lspxe4ebqQJnDF8TfThxrFvnRexiUds
	VwRbp44A+QUpOfr5KE6ClsZGyYQ/IiKnxgta1e40MghgD5p3ZD905YdJUQnFVbi2CzkTBdLvwkC6x
	VIjzDfn/5rNtY6BC0RGUoTbh5udjfO4KyRmYxsHZUjmU3zFYmFBZBQjJhERQ14X1oVHxCKSfeP7ha
	UFUBd1X9eeHkZwyLhE+0tdbhpEKMxkEEMsqQ3Cct44m41vhi7nE6jsJhfIFPR4T1gazXQAZIaBEA5
	GB/Fyfpue7aD/NAzKfBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2qL-00Gzbw-2o;
	Fri, 16 Jun 2023 06:21:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2qG-00GzV3-1D
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 06:21:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q7-0006nW-VS; Fri, 16 Jun 2023 08:21:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q4-007kx7-Vu; Fri, 16 Jun 2023 08:21:40 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q4-003FTv-7U; Fri, 16 Jun 2023 08:21:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v6 00/26] Add perf support to the rockchip-dfi driver
Date: Fri, 16 Jun 2023 08:20:35 +0200
Message-Id: <20230616062101.601837-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_232152_454809_3EA2085F 
X-CRM114-Status: GOOD (  17.79  )
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

This contains only small changes to the last version, but in one case
a really important one: As Sebastian noted there is sometimes wrong data
reported. This is fixed in this version.

Other than that there are only small changes, see below in the changelog.

Overall I think this series this series is ready for primetime now.

Sascha

Changes since v5:
- Add missing initialization of &dfi->last_perf_count which resulted
  in wrong data sometimes
- Drop interrupt-names property from binding
- Add patch to add rockchip,rk3588-pmugrf to dt-bindings
- Add more reviewed-by tags

Changes since v4:
- Add device tree changes for RK3588
- Use seqlock to protect perf counter values from hrtimer
- Unconditionally enable DFI when perf is enabled
- Bring back changes to dts/binding patches that were lost in v4

Changes since v3:
- Add RK3588 support

Changes since v2:
- Fix broken reference to binding
- Add Reviewed-by from Rob

Changes since v1:
- Fix example to actually match the binding and fix the warnings resulted thereof
- Make addition of rockchip,rk3568-dfi an extra patch

Sascha Hauer (26):
  PM / devfreq: rockchip-dfi: Make pmu regmap mandatory
  PM / devfreq: rockchip-dfi: Embed desc into private data struct
  PM / devfreq: rockchip-dfi: use consistent name for private data
    struct
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
  PM / devfreq: rockchip-dfi: give variable a better name
  PM / devfreq: rockchip-dfi: Add perf support
  PM / devfreq: rockchip-dfi: make register stride SoC specific
  PM / devfreq: rockchip-dfi: account for multiple DDRMON_CTRL registers
  PM / devfreq: rockchip-dfi: add support for RK3588
  dt-bindings: devfreq: event: convert Rockchip DFI binding to yaml
  dt-bindings: devfreq: event: rockchip,dfi: Add rk3568 support
  dt-bindings: devfreq: event: rockchip,dfi: Add rk3588 support
  dt-bindings: soc: rockchip: grf: add rockchip,rk3588-pmugrf
  arm64: dts: rockchip: rk3399: Enable DFI
  arm64: dts: rockchip: rk356x: Add DFI
  arm64: dts: rockchip: rk3588s: Add DFI

 .../bindings/devfreq/event/rockchip,dfi.yaml  |  74 ++
 .../bindings/devfreq/event/rockchip-dfi.txt   |  18 -
 .../rockchip,rk3399-dmc.yaml                  |   2 +-
 .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   1 -
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   7 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  16 +
 drivers/devfreq/event/rockchip-dfi.c          | 799 +++++++++++++++---
 drivers/devfreq/rk3399_dmc.c                  |  10 +-
 include/soc/rockchip/rk3399_grf.h             |   9 +-
 include/soc/rockchip/rk3568_grf.h             |  13 +
 include/soc/rockchip/rk3588_grf.h             |  18 +
 include/soc/rockchip/rockchip_grf.h           |  18 +
 13 files changed, 848 insertions(+), 138 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
 delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
 create mode 100644 include/soc/rockchip/rk3568_grf.h
 create mode 100644 include/soc/rockchip/rk3588_grf.h
 create mode 100644 include/soc/rockchip/rockchip_grf.h

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
