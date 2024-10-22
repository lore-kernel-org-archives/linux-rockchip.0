Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0765D2C56D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 15:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=puVD1OzPmepg7sOqqcdCj47gk4n+5OmYhSUS/zWskSI=; b=lhEHO/HpC7N0h/
	TFW8HoLRy2YkGwtlKI+ai3ntPvQufVWGwMlN4fybZfZsLlG3Ynv8sBfabvZWeSVasZXWWLkaRrIFX
	kahRFIfmGhacYYXY+KX8yToaW/HC2BKjBVRNKZeTqWZsJWiIUqFZpTU6I7lA4Bf4Ep4egpQXoomm2
	Wgpnz/IsY2CFndrQWgayPRH63NanqFXGkT8xjY14qe5VWnR+0KHjVIyAv8TP1Jb3+Yu1HuUHf4vPl
	ydBO8zo0PXHZFYgslo2k7n3rQdkcWj2AePKJpxp+j7MGnLB8Paa39RU15ammpRJ1ijVct0fDINOpV
	B/Kk+cf7AhKnDpwVyGTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3H4N-0000000BI4x-2LIG;
	Tue, 22 Oct 2024 15:45:15 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3H4J-0000000BI2T-3G2A
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 15:45:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729611909;
	bh=M0bq/DvLeH0XIHZLMAHQAQJxIOvTez7VZya3lPCe2Gk=;
	h=From:To:Cc:Subject:Date:From;
	b=JlK9/aXU3yotrT+ZdDKCuV0cxRiZAgoqrk+oWTa10rSqk651kI+0/UlP9dJr+gVz3
	 EHM+U+XtUi9b0BXPOV+JF87ZK5Z+kSZ+RIWDf+mbEGVKUAKSWkbk7sjBEqUQMkFeC4
	 lt58tCANmk5oEH+MrjIE2KLjLWSTcPfAVahoJA+zwjEtV6/zQLs6De5Gu714bEDI0U
	 dqQyo82aRTFb3P503fe0ybFU3owHI2b02eCM1XUq/8KsVZnAjNoKajRXpDRJ5k/2Nw
	 AEOuk3DuzjvppyDNHe12y92jbKZaxPg54/mJ+HvUk4oEjR3uTuND7eHl7/VxfWN8Z8
	 /s4jIIt2A4hgA==
Received: from jupiter.universe (dyndsl-091-248-085-026.ewe-ip-backbone.de [91.248.85.26])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B27DA17E3662;
	Tue, 22 Oct 2024 17:45:09 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6467C4800EA; Tue, 22 Oct 2024 17:45:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	=?UTF-8?q?Adri=C3=A1n=20Mart=C3=ADnez=20Larumbe?= <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Chen-Yu Tsai <wens@csie.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 0/7] Fix RK3588 GPU domain
Date: Tue, 22 Oct 2024 17:41:45 +0200
Message-ID: <20241022154508.63563-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_084512_011342_2832F0ED 
X-CRM114-Status: GOOD (  20.85  )
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

Hi,

I got a report, that the Linux kernel crashes on Rock 5B when the panthor
driver is loaded late after booting. The crash starts with the following
shortened error print:

rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'gpu', val=0
rockchip-pm-domain fd8d8000.power-management:power-controller: failed to get ack on domain 'gpu', val=0xa9fff
SError Interrupt on CPU4, code 0x00000000be000411 -- SError

This series first does some cleanups in the Rockchip power domain
driver and changes the driver, so that it no longer tries to continue
when it fails to enable a domain. This gets rid of the SError interrupt
and long backtraces. But the kernel still hangs when it fails to enable
a power domain. I have not done further analysis to check if that can
be avoided.

Last but not least this provides a fix for the GPU power domain failing
to get enabled - after some testing from my side it seems to require the
GPU voltage supply to be enabled.

This series is now based on the pull request from Mark Brown:
https://lore.kernel.org/linux-pm/ZvsVfQ1fuSVZpF6A@finisterre.sirena.org.uk/

I added one more patch, which adds devm_of_regulator_get without the
_optional suffix, since that is more sensible for the Rockchip usecase.
Longer explanation can be seen in patch 6, which adds the handling to
the Rockchip driver. My merge suggestion would be that Mark adds the
regulator patch on top of the immutable branch and creates a new pull
request.

The last patch, which updates the RK3588 board files only covers the
boards from 6.12-rc1. Any board missing the update will behave as before,
so it is perfectly fine not to update all DT files at once.

Changes since PATCHv2:
 * https://lore.kernel.org/linux-rockchip/20240919091834.83572-1-sebastian.reichel@collabora.com/
 * Rebase to 6.12-rc1 + devm_of_regulator_get_optional branch (Ulf Hansson, Chen-Yu Tsai)
  - Introduce devm_of_regulator_get()
  - Add code to only request regulators for domains needing them
 * Mention other platforms in the DT binding patch (Rob Murphy)
 * Update more RK3588 DT files (Jonas Karlman)

Changes since PATCHv1:
 * https://lore.kernel.org/all/20240910180530.47194-1-sebastian.reichel@collabora.com/
 * Collect Reviewed-by/Acked-by/Tested-by
 * swap first and second patch to avoid introducing and directly removing a mutex_unlock
 * fix spelling of indentation
 * fix double empty line after rockchip_pd_regulator_disable()

Greetings,

-- Sebastian

Sebastian Reichel (7):
  regulator: Add (devm_)of_regulator_get()
  pmdomain: rockchip: cleanup mutex handling in rockchip_pd_power
  pmdomain: rockchip: forward rockchip_do_pmu_set_power_domain errors
  pmdomain: rockchip: reduce indentation in rockchip_pd_power
  dt-bindings: power: rockchip: add regulator support
  pmdomain: rockchip: add regulator support
  arm64: dts: rockchip: Add GPU power domain regulator dependency for
    RK3588

 .../power/rockchip,power-controller.yaml      |   3 +
 .../boot/dts/rockchip/rk3588-armsom-sige7.dts |   4 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   2 +-
 .../boot/dts/rockchip/rk3588-coolpi-cm5.dtsi  |   4 +
 .../rockchip/rk3588-edgeble-neu6a-common.dtsi |   4 +
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |   4 +
 .../boot/dts/rockchip/rk3588-fet3588-c.dtsi   |   4 +
 .../rockchip/rk3588-friendlyelec-cm3588.dtsi  |   4 +
 .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |   4 +
 .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   |   4 +
 .../boot/dts/rockchip/rk3588-ok3588-c.dts     |   4 +
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   |   4 +
 .../boot/dts/rockchip/rk3588-quartzpro64.dts  |   4 +
 .../boot/dts/rockchip/rk3588-rock-5-itx.dts   |   4 +
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   4 +
 .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi |   4 +
 .../boot/dts/rockchip/rk3588-toybrick-x0.dts  |   4 +
 .../boot/dts/rockchip/rk3588-turing-rk1.dtsi  |   4 +
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   4 +
 .../dts/rockchip/rk3588s-gameforce-ace.dts    |   4 +
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  |   4 +
 .../dts/rockchip/rk3588s-khadas-edge2.dts     |   4 +
 .../boot/dts/rockchip/rk3588s-nanopi-r6s.dts  |   4 +
 .../boot/dts/rockchip/rk3588s-odroid-m2.dts   |   4 +
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |   4 +
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   4 +
 drivers/pmdomain/rockchip/pm-domains.c        | 190 +++++++++++-------
 drivers/regulator/devres.c                    |  17 ++
 drivers/regulator/of_regulator.c              |  21 ++
 include/linux/regulator/consumer.h            |   6 +
 30 files changed, 266 insertions(+), 69 deletions(-)

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
