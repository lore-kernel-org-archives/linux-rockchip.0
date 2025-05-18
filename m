Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8F04C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 22:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QDzZMMtbeUs16df9HjBCu8IALkzlZiHvHgm05Wn5ut0=; b=wCgaFQcBIszgxP
	MiURYziA6BYzaUJB6ym1dB5cpu2H65++zfbZZIhDAL2hdFSrmBCWKMlnww/Z6qObGfbCVU0gRJj/i
	MPk2Bf0WVCiI7vZTZS6dKy4K22gTAgk6M3LxoJUufIkG87Up+lRzNNMtfzoJvfUHP4Hhh3N6yBWWq
	XT1aj0T+wcGS4oRUVUBPAKaQ+pY63y92nvIdlTn2gQolvwG8OCXINjgeFJDktHwCXn4htgn5pOAGW
	Kd5I9LZEC+Y/5pbd0E5SbdtRGkOhdTaxuUtTW2BY5V/VrB3vsNQj0w8HaANVisG1JKKxD+CHH5ZFO
	Tw0lf9P0sKfNm285Y3EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmNx-00000007cIZ-2qtw;
	Sun, 18 May 2025 22:21:33 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmAD-00000007abb-1E1V
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 22:07:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1747606039;
 bh=bhPt7fBQetiRYT1MgQ8GKwCup58p63/+Za+k3J/ZaT4=;
 b=cA2GqzUoCvkrlIZUMs4Eqm3A1tNfcsf7XoX7szahIrfqNk+Nr/UNyO31HWoP+AkFiL5lvKwbY
 BdXfRWL4gtqY9bYf2yv18N/OFvzzwPa+2gQOGTVHb7Lh9773Ivamrcj8TDMQ+xm5brUPqWc1OSV
 r0igPLn1Sc81IkM6Ocyoa7SgJItqhqtFWi5k6kPwtQIav8IR7QZtmbZuwKEu9JQnnXtkGItoZ+i
 eJhAXe4JLIi7IZ5wdCH8tiBmMmfS7fQ0csjdaxdC0ep3oopM6XyRqdmCIqtrRYaBf3lfZ4qCgUZ
 sB1oszsHMPPgHrwv8Ba4ByAKEU0ox0eJ9mpDQJzoMVfA==
X-Forward-Email-ID: 682a5a1178cae75fbd8d4660
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/9] rockchip: Add power controller support for RK3528
Date: Sun, 18 May 2025 22:06:47 +0000
Message-ID: <20250518220707.669515-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_150721_724428_A164DFE9 
X-CRM114-Status: GOOD (  11.31  )
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

The Rockchip RK3528 support multiple power domains, one PD_GPU that can
fully be powered down, and other that can be idle requested.

Vendor kernel flag all power domains on RK3528 as always-on, this takes
a different route and instead tries to describe all devices power-domain
in the device tree, even for controllers with unsupported runtime status.

The PD_RKVDEC is used by RKVDEC and DDRPHY CRU, and is kept disabled to
prevent a full system reset when trying to read current rate of the
SCMI_CLK_DDR clock.

Patch 1-4 prepares and makes it possible to use the PD_GPU power domain
for a separate "Add GPU support for RK3528" series.

Patch 7-9 updates dt-bindings for controllers not supporting use of the
power-domains prop and enables the PD_RKVENC, PD_VO and PD_VPU domains.

pm_genpd_summary on a Radxa E20C after this:

  domain                          status          children        performance
      /device                         runtime status                  managed by
  ------------------------------------------------------------------------------
  vpu                             on                              0
      ffaf0000.gpio                   unsupported                 0           SW
      ffb10000.gpio                   unsupported                 0           SW
      ffbe0000.ethernet               active                      0           SW
      ffae0000.adc                    unsupported                 0           SW
      ffbf0000.mmc                    suspended                   0           SW
  vo                              on                              0
      ffb00000.gpio                   unsupported                 0           SW
      ffc30000.mmc                    suspended                   0           SW
  venc                            on                              0
      ffb20000.gpio                   unsupported                 0           SW
      ffa58000.i2c                    unsupported                 0           SW
  gpu                             off-0                           0
      ff700000.gpu                    suspended                   0           SW

Jonas Karlman (9):
  dt-bindings: power: rockchip: Add support for RK3528
  pmdomain: rockchip: Add support for RK3528
  dt-bindings: rockchip: pmu: Add compatible for RK3528
  arm64: dts: rockchip: Add power controller for RK3528
  dt-bindings: mmc: sdhci-of-dwcmhsc: Allow use of a power-domain
  dt-bindings: gpio: rockchip: Allow use of a power-domain
  dt-bindings: i2c: i2c-rk3x: Allow use of a power-domain
  dt-bindings: iio: adc: rockchip-saradc: Allow use of a power-domain
  arm64: dts: rockchip: Enable more power domains for RK3528

 .../devicetree/bindings/arm/rockchip/pmu.yaml |  2 +
 .../bindings/gpio/rockchip,gpio-bank.yaml     |  3 +
 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |  3 +
 .../bindings/iio/adc/rockchip-saradc.yaml     |  3 +
 .../bindings/mmc/snps,dwcmshc-sdhci.yaml      |  4 -
 .../power/rockchip,power-controller.yaml      |  1 +
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 87 +++++++++++++++++++
 drivers/pmdomain/rockchip/pm-domains.c        | 27 ++++++
 .../dt-bindings/power/rockchip,rk3528-power.h | 19 ++++
 9 files changed, 145 insertions(+), 4 deletions(-)
 create mode 100644 include/dt-bindings/power/rockchip,rk3528-power.h

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
