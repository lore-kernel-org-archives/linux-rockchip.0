Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F71FC2BD09
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jul 2024 00:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7OG4fuUdotGr4eO8eRNRbTGmOsmgdHRr7tfzFdv2+QE=; b=yih175LL9kKrr9
	y4F+qPIMee/uY/je80q3kduB2j6kbJxBCXcjc3Wc7Ad7alni4YKBr39GfZAuswE2yUKo+YJbT1wnH
	RmZltNqDxQ4gTkM9/pMt85z0DNtlMTMjWe4cYTrCD6HxpLnLlqFR3IATxzZbbN2v6ZgjFMJ0UDqFY
	zn2oSIv/nT4wfFHjUdfDN/F5Aw3zxiwXDix/Kn7jarULExtHFBRxuwdJzJQHOfDx0BCIwjSBjWMLB
	aKa+unmgtqd8Bt7+90DYyG+rZLBS3Pb+In4Ad7FP0s/LGTQUBcmnuPLtRSyRP/snFeIE9GafEaXBP
	SJAbBVaGSbJWj5H4eWCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSQm0-00000001bIf-05AP;
	Sat, 13 Jul 2024 00:38:00 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSQlg-00000001bGq-1czN;
	Sat, 13 Jul 2024 00:37:41 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.97.1)
	(envelope-from <daniel@makrotopia.org>)
	id 1sSQl7-000000005ba-3zH3;
	Sat, 13 Jul 2024 00:37:06 +0000
Date: Sat, 13 Jul 2024 01:37:02 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Daniel Golle <daniel@makrotopia.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Martin Kaiser <martin@kaiser.cx>, Ard Biesheuvel <ardb@kernel.org>,
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/3] hwrng: add hwrng support for Rockchip RK3568
Message-ID: <cover.1720830725.git.daniel@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_173740_458151_E8A19EFE 
X-CRM114-Status: GOOD (  17.53  )
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

Rockchip SoCs used to have a random number generator as part of their
crypto device.

However newer Rockchip SoCs like the RK3568 have an independent True
Random Number Generator device. This patchset adds a driver for it and
enables it in the device tree.

v5 -> v6:
 * Patch 1: unchanged

 * Patch 2: get rid of #ifdef
   - use if (IS_ENABLED(...)) { ... }instead of #ifdef inside functions
   - use __maybe_unused for functions previously enclosed by #ifdef'ery

 * Patch 3: unchanged

v4 -> v5:
 * Patch 1: always use RK3568 name
   - use full RK3568 name in patch description
   - add RK3568 to title in binding

 * Patch 2: full name and cosmetics
   - also always mention RK3568 as there may be other RNG in other
     (future) Rockchip SoCs
   - remove debug output on successful probe
   - use MODULE_AUTHOR several times instead of single comma-separated

 * Patch 3: unchanged

v3 -> v4:
 * Patch 1: minor corrections
   - fix Rokchip -> Rockchip typo
   - change commit title as requested

 * Patch 2: improved error handling and resource management
   - Always use writel() instead of writel_relaxed()
   - Use pm_runtime_resume_and_get
   - Correctly return error code in rk_rng_read()
   - Make use of devm_reset_control_array_get_exclusive
   - Use devm_pm_runtime_enable and there by get rid of rk_rng_remove()

 * Patch 3:
   - Move node to conform with ordering by address

v2 -> v3: patch adopted by Daniel Golle
 * Patch 1: address comments of Krzysztof Kozlowski, add MAINTAINERS
   - improved description
   - meaningful clock-names
   - add entry in MAINTAINERS files

 * Patch 2: numerous code-style improvements
   - drop misleading rk_rng_write_ctl(), simplify I/O writes
   - drop unused TRNG_RNG_DOUT_[1-7] macros
   - handle error handling for pm_runtime_get_sync()
   - use memcpy_fromio() instead of open coding for-loop
   - some minor white-spaces fixes

 * Patch 3:
   - use clock-names as defined in dt-bindings

v1 -> v2:
 * Patch 1: fix issues reported by Rob Herring and Krzysztof Kozlowski:
   - Rename rockchip-rng.yaml into rockchip,rk3568-rng.yaml
   - Fix binding title and description
   - Fix compatible property
   - Rename clocks and add the corresponding descriptions
   - Drop reset-names
   - Add a bus definition with #address-cells and #size-cells to the
     example.

 * Patch 2: fix issue reported by kernel test robot <lkp@intel.com>
   - Do not read the random registers as big endian, looking at the
     RK3568 TRM this is actually not needed. This fixes a sparse
     warning.

 * Patch 3: unchanged

Aurelien Jarno (3):
  dt-bindings: rng: Add Rockchip RK3568 TRNG
  hwrng: add hwrng driver for Rockchip RK3568 SoC
  arm64: dts: rockchip: add DT entry for RNG to RK356x

 .../bindings/rng/rockchip,rk3568-rng.yaml     |  61 +++++
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   9 +
 drivers/char/hw_random/Kconfig                |  14 ++
 drivers/char/hw_random/Makefile               |   1 +
 drivers/char/hw_random/rockchip-rng.c         | 220 ++++++++++++++++++
 6 files changed, 312 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml
 create mode 100644 drivers/char/hw_random/rockchip-rng.c

-- 
2.45.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
