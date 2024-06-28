Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EAC5C2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 20:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChC8KykIkg7Vj96XDHBA5UaygjNm8n0anOfHegvz4Go=; b=1STBD0JdSEeHtd
	iQU+MbNzWdL23raIHLIY17TiGTuH6hsO36AghDHNZVFwP9oR7w8KGRPlRY/eogFmJnN3YuZfijGHb
	PEwj0KSfUmkcP1kxLltlhmBKKW1KtuSUDFGk3grhrEK1jREmnrEmn8N5023E002ehj1jg3JLmNd7C
	aZQuTjLQYvex9LOFxOpAuo7XD/3jIO1LLMW2/wjdDvcRwcJ65YMrhXJ47sJMQRVzOXBwHXDrdNAc7
	QNulguncY1hOfaWJc8PZcfWHZVAHUmKXQdcepSpxGyvtFmqMv5Ipq33TU+4IIlZrrwav5Bgc99sAD
	zRsa+2U+xeOlcnoxWHtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNHsr-0000000Ep8H-29KX;
	Fri, 28 Jun 2024 20:07:49 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNHsf-0000000Ep3v-1BeQ;
	Fri, 28 Jun 2024 20:07:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1719605258; x=1751141258;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0PjGwPWldCD0xPnSfdbjRAC8QfzgJtyroxiHeScz7FQ=;
  b=Z7vXua+GQ/D4Y7LZi3QBZnuLCsFAQVkVy9c9B1dfIC/QqnjL3UVRqLHa
   n0bvSHTgIwZQnJcpYvjyiFHk7Mx7B4zLthqlzRDEenOJDfJAjaICxnHjX
   GdCFTnr/gKxKj8KG8gf/pjf6jilduDie8f1OmGemId40CRxtph4mBBoQ5
   qSmv5TckQ81Q4vj4i6o5sFzFU5eZFZZ1n4hfH1Y1hxldtQ6hQ20HBSntJ
   D+R3PNSu18Ew7hb7JBHCDYBUvFVQQuojr4+zDZGY+BKDJOBQ5IUYiNhxv
   UHpukOmiqVjynmvPw/7X5XxWEn5aepMWev1XRJc1m07uiPUrYTg9wxl+y
   w==;
X-CSE-ConnectionGUID: sKpwvJ3MQGaVGRxqUa1w2g==
X-CSE-MsgGUID: HDlzsZRbSP69XxcqxYYZww==
X-IronPort-AV: E=McAfee;i="6700,10204,11117"; a="16622492"
X-IronPort-AV: E=Sophos;i="6.09,170,1716274800"; 
   d="scan'208";a="16622492"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2024 13:07:34 -0700
X-CSE-ConnectionGUID: JfGYV9VQQpSB9ks5i7ayxA==
X-CSE-MsgGUID: ryZkIDmVRNOOzPzx+J8UHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,170,1716274800"; 
   d="scan'208";a="49456002"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 28 Jun 2024 13:07:29 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sNHsU-000IIG-0l;
	Fri, 28 Jun 2024 20:07:26 +0000
Date: Sat, 29 Jun 2024 04:06:44 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Golle <daniel@makrotopia.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Martin Kaiser <martin@kaiser.cx>, Tony Luck <tony.luck@intel.com>,
	Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: add DT entry for RNG to
 RK356x
Message-ID: <202406290305.M3hDJkwM-lkp@intel.com>
References: <2181f2207391fb8fb8ae2cfda07d38f65da05ed9.1719365406.git.daniel@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2181f2207391fb8fb8ae2cfda07d38f65da05ed9.1719365406.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_130737_442988_4D298995 
X-CRM114-Status: GOOD (  14.41  )
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

Hi Daniel,

kernel test robot noticed the following build warnings:

[auto build test WARNING on char-misc/char-misc-testing]
[also build test WARNING on char-misc/char-misc-next char-misc/char-misc-linus rockchip/for-next robh/for-next herbert-cryptodev-2.6/master linus/master v6.10-rc5 next-20240627]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Daniel-Golle/dt-bindings-rng-Add-Rockchip-RK3568-TRNG/20240626-114623
base:   char-misc/char-misc-testing
patch link:    https://lore.kernel.org/r/2181f2207391fb8fb8ae2cfda07d38f65da05ed9.1719365406.git.daniel%40makrotopia.org
patch subject: [PATCH v5 3/3] arm64: dts: rockchip: add DT entry for RNG to RK356x
config: arm64-randconfig-051-20240628 (https://download.01.org/0day-ci/archive/20240629/202406290305.M3hDJkwM-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
dtschema version: 2024.6.dev3+g650bf2d
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240629/202406290305.M3hDJkwM-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406290305.M3hDJkwM-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
>> arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dtb: i2c@fe5b0000: Unevaluated properties are not allowed ('pintctrl-names' was unexpected)
   	from schema $id: http://devicetree.org/schemas/i2c/i2c-rk3x.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dtb: i2c@fe5b0000: Unevaluated properties are not allowed ('pintctrl-names' was unexpected)
   	from schema $id: http://devicetree.org/schemas/i2c/i2c-rk3x.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi:486.10-497.6: Warning (graph_child_address): /i2c@fe5c0000/tcpc@60/connector/ports: graph node has single child node 'port@0', #address-cells/#size-cells are not necessary
>> arch/arm64/boot/dts/rockchip/rk3566-pinenote-v1.1.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-pinenote-v1.1.dtb: bluetooth: reset-gpios: False schema does not allow [[34, 20, 1]]
   	from schema $id: http://devicetree.org/schemas/net/broadcom-bluetooth.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-pinenote-v1.1.dtb: bluetooth: 'device-wake-gpios', 'host-wake-gpios' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/net/broadcom-bluetooth.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-pinenote-v1.1.dtb: usb2phy@fe8a0000: otg-port: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/phy/rockchip,inno-usb2phy.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi:288.10-292.5: Warning (unit_address_vs_reg): /dsi@fe060000/panel@0/port@0: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi:289.29-291.6: Warning (unit_address_vs_reg): /dsi@fe060000/panel@0/port@0/endpoint@0: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/rockchip/rk3566-pinetab2-v0.1.dtb: panel@0: 'port@0', 'reset-gpios' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/display/panel/boe,th101mb31ig002-28a.yaml#
>> arch/arm64/boot/dts/rockchip/rk3566-pinetab2-v0.1.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-pinetab2-v0.1.dtb: phy@fe870000: 'power-domains' is a required property
   	from schema $id: http://devicetree.org/schemas/phy/rockchip-inno-csi-dphy.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi:288.10-292.5: Warning (unit_address_vs_reg): /dsi@fe060000/panel@0/port@0: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi:289.29-291.6: Warning (unit_address_vs_reg): /dsi@fe060000/panel@0/port@0/endpoint@0: node has a unit name, but no reg or ranges property
   arch/arm64/boot/dts/rockchip/rk3566-pinetab2-v2.0.dtb: panel@0: 'port@0', 'reset-gpios' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/display/panel/boe,th101mb31ig002-28a.yaml#
>> arch/arm64/boot/dts/rockchip/rk3566-pinetab2-v2.0.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-pinetab2-v2.0.dtb: phy@fe870000: 'power-domains' is a required property
   	from schema $id: http://devicetree.org/schemas/phy/rockchip-inno-csi-dphy.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb10max3.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>> arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dtb: wifi@1: compatible: 'oneOf' conditional failed, one must be fixed:
   	['brcm,bcm43455-fmac'] is too short
   	'brcm,bcm43455-fmac' is not one of ['brcm,bcm4329-fmac', 'pci14e4,43dc', 'pci14e4,4464', 'pci14e4,4488', 'pci14e4,4425', 'pci14e4,4433']
   	from schema $id: http://devicetree.org/schemas/net/wireless/brcm,bcm4329-fmac.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dtb: wifi@1: Unevaluated properties are not allowed ('compatible' was unexpected)
   	from schema $id: http://devicetree.org/schemas/net/wireless/brcm,bcm4329-fmac.yaml#
>> arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dtb: bluetooth: reset-gpios: False schema does not allow [[103, 16, 1]]
   	from schema $id: http://devicetree.org/schemas/net/broadcom-bluetooth.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks', 'codec' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>> arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dtb: phy@fe840000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dtb: phy@fe840000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dtb: phy@fe840000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-box-demo.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-box-demo.dtb: bluetooth: clock-names: 'oneOf' conditional failed, one must be fixed:
   	['ext_clock'] is too short
   	'extclk' was expected
   	'txco' was expected
   	'lpo' was expected
   	from schema $id: http://devicetree.org/schemas/net/broadcom-bluetooth.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-box-demo.dtb: bluetooth: 'device-wake-gpios', 'host-wake-gpios' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/net/broadcom-bluetooth.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dtb: mmc@fe2b0000: Unevaluated properties are not allowed ('supports-sd' was unexpected)
   	from schema $id: http://devicetree.org/schemas/mmc/rockchip-dw-mshc.yaml#
   arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dtb: mmc@fe310000: Unevaluated properties are not allowed ('supports-emmc' was unexpected)
   	from schema $id: http://devicetree.org/schemas/mmc/snps,dwcmshc-sdhci.yaml#
>> arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dtb: sata@fc800000: Unevaluated properties are not allowed ('power-domains' was unexpected)
   	from schema $id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#
>> arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dtb: phy@fe8c0000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks', 'codec' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>> arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
   arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dtb: mmc@fe310000: Unevaluated properties are not allowed ('supports-emmc' was unexpected)
   	from schema $id: http://devicetree.org/schemas/mmc/snps,dwcmshc-sdhci.yaml#
>> arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dtb: sata@fc000000: Unevaluated properties are not allowed ('power-domains' was unexpected)
   	from schema $id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5c.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dtb: sata@fc800000: Unevaluated properties are not allowed ('power-domains' was unexpected)
   	from schema $id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#
   arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>> arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dtb: phy@fe830000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
   arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dtb: phy@fe820000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dtb: sata@fc400000: Unevaluated properties are not allowed ('power-domains' was unexpected)
   	from schema $id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#
>> arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dtb: phy@fe830000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dtb: sata@fc800000: Unevaluated properties are not allowed ('power-domains' was unexpected)
   	from schema $id: http://devicetree.org/schemas/ata/rockchip,dwc-ahci.yaml#
   arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dtb: pmic@20: regulators:DCDC_REG1: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
   arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dtb: pmic@20: regulators:DCDC_REG2: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
   arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dtb: pmic@20: regulators:DCDC_REG4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>> arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks', 'codec' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>> arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#
   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb: phy@fe8c0000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dtb: rng@fe388000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/rng/rockchip,rk3568-rng.yaml#

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
