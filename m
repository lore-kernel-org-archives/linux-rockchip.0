Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3907C27C6E
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 03:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdcS1t7dGDRX3IftWe8ypqNwdWzRimgyAkOdH5W8oq4=; b=UfTYUKSBVV8sgn
	cq6Rs+31/Ps7lTJmJicQj1kfZOyOyxj/5HaZKPPZesQ9gsR2m/rWlRMBoFTaeC3e0MKsESACZwWH0
	ljj/8D2uGEQKHnR4EzLxDTdN6PvJ9K/78pqBafWseZDcPFZdnaHt/3j6jjL8tJoCtVKH71xLk+PQh
	WSEn6GJ9DPSdyxaXZC29f9sVjjPoIQzBZWxTwQuQejXE3Z2+gjtSu+lE/WkVeM/quIZmXSWNyJGon
	alRaFoJSxA4iweBnfsnFi/HVeY1b3V5W351ldYbQKTkGM/69/WqvBLBLQCZ62NRwp7RSdxXBaymB+
	tQT9yDjedf2G+GtVG63A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIKAr-00000004aPc-1Sdm;
	Sat, 15 Jun 2024 03:33:53 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIKAj-00000004aOf-2es1;
	Sat, 15 Jun 2024 03:33:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718422426; x=1749958426;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=tQ9LUK1jN643tytOyITrOgayXfeYTKDN6fD3u6FPTGY=;
  b=XnWv7ZlLS4HVb3c6dpL8KZyqMIjxQqcjPQL3AE/F3QV92OJscYOZF8Jw
   SVTOnnLCkdCrkIpBX7fh5T/z+BkyspAQDplG3aOlerykbljfpS0nEG2ad
   hnesVPcRNu0c89gRXfgxca2OERoPOn75yVota/R9U9rb39yk8jG1F/6jr
   AO7jlZVOxvuqxeM20FBYYJkp99iMcsOg/1BJ/x2IOxGJeCP1Lt8k1gwgn
   o9cV+IiFEsOmHIESJz8zPRa3BS8Nuh222mR5tFctnLt7Br97H+7lUYKSB
   kLlpJWtCn9PnvoRtAdye516EF9NbhczwnwIXBe89YItQHJCoV2/A7aryT
   w==;
X-CSE-ConnectionGUID: wyvL1yWwSZOvVAg6IaYBlQ==
X-CSE-MsgGUID: 44Kq3ixyTR6IkXTwcBVNgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="19184208"
X-IronPort-AV: E=Sophos;i="6.08,239,1712646000"; 
   d="scan'208";a="19184208"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2024 20:33:44 -0700
X-CSE-ConnectionGUID: pqyj9ua+QNWrBp0wBpeggg==
X-CSE-MsgGUID: X+Gbxih5Q96A+WGywTRX9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,239,1712646000"; 
   d="scan'208";a="78167877"
Received: from lkp-server01.sh.intel.com (HELO 9e3ee4e9e062) ([10.239.97.150])
  by orviesa001.jf.intel.com with ESMTP; 14 Jun 2024 20:33:37 -0700
Received: from kbuild by 9e3ee4e9e062 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sIKAZ-00025R-0z;
	Sat, 15 Jun 2024 03:33:35 +0000
Date: Sat, 15 Jun 2024 11:32:49 +0800
From: kernel test robot <lkp@intel.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Oded Gabbay <ogabbay@kernel.org>,
	Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Cc: oe-kbuild-all@lists.linux.dev, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Subject: Re: [PATCH 4/9] arm64: dts: rockchip: Add nodes for NPU and its MMU
 to rk3588s
Message-ID: <202406151154.HZ8JttcH-lkp@intel.com>
References: <20240612-6-10-rocket-v1-4-060e48eea250@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240612-6-10-rocket-v1-4-060e48eea250@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_203345_924420_7298621B 
X-CRM114-Status: GOOD (  11.16  )
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

Hi Tomeu,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 83a7eefedc9b56fe7bfeff13b6c7356688ffa670]

url:    https://github.com/intel-lab-lkp/linux/commits/Tomeu-Vizoso/iommu-rockchip-Add-compatible-for-rockchip-rk3588-iommu/20240612-215814
base:   83a7eefedc9b56fe7bfeff13b6c7356688ffa670
patch link:    https://lore.kernel.org/r/20240612-6-10-rocket-v1-4-060e48eea250%40tomeuvizoso.net
patch subject: [PATCH 4/9] arm64: dts: rockchip: Add nodes for NPU and its MMU to rk3588s
config: arm64-randconfig-051-20240614 (https://download.01.org/0day-ci/archive/20240615/202406151154.HZ8JttcH-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
dtschema version: 2024.6.dev1+g833054f
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240615/202406151154.HZ8JttcH-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406151154.HZ8JttcH-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
>> arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts:1228.7-1236.4: Warning (graph_child_address): /usb@fc000000/port: graph node has single child node 'endpoint@0', #address-cells/#size-cells are not necessary
>> arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: regulator@42: Unevaluated properties are not allowed ('rockchip,suspend-voltage-selector' was unexpected)
   	from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: pmic@0: Unevaluated properties are not allowed ('regulators' was unexpected)
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: codec@1b: Unevaluated properties are not allowed ('assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks', 'port' were unexpected)
   	from schema $id: http://devicetree.org/schemas/sound/realtek,rt5616.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: sound: 'simple-audio-card,hp-pin-name' does not match any of the regexes: '^simple-audio-card,codec(@[0-9a-f]+)?$', '^simple-audio-card,cpu(@[0-9a-f]+)?$', '^simple-audio-card,dai-link(@[0-9a-f]+)?$', '^simple-audio-card,plat(@[0-9a-f]+)?$', 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/sound/simple-card.yaml#
   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtb: vcc3v3-sd-s0-regulator: Unevaluated properties are not allowed ('enable-active-low' was unexpected)
   	from schema $id: http://devicetree.org/schemas/regulator/fixed-regulator.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: audio-codec@11: 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: audio-codec@11: 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
   arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: /extcon-usb3: failed to match any schema with compatible: ['linux,extcon-usb-gpio']
--
   arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
   arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: pmic@0: Unevaluated properties are not allowed ('regulators' was unexpected)
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: audio-codec@11: 'clock-names', 'port' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
--
   arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: gpio-func: leds-gpio: {'rockchip,pins': [[0, 2, 0, 232]], 'phandle': [[241]]} is not of type 'array'
   	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: iommu@fdab9000: compatible: 'oneOf' conditional failed, one must be fixed:
   	['rockchip,rk3588-iommu'] is too short
   	'rockchip,rk3588-iommu' is not one of ['rockchip,iommu', 'rockchip,rk3568-iommu']
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: iommu@fdab9000: reg: [[0, 4255879168, 0, 256], [0, 4255883264, 0, 256], [0, 4255948800, 0, 256], [0, 4256014336, 0, 256]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: iommu@fdab9000: interrupts: [[0, 110, 4, 0], [0, 111, 4, 0], [0, 112, 4, 0]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: iommu@fdab9000: clocks: [[28, 287], [28, 276], [28, 278], [28, 288], [28, 277], [28, 279]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: iommu@fdab9000: clock-names:0: 'aclk' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: iommu@fdab9000: clock-names:1: 'iface' was expected
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: iommu@fdab9000: clock-names: ['aclk0', 'aclk1', 'aclk2', 'iface0', 'iface1', 'iface2'] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: iommu@fdab9000: power-domains: [[30, 9], [30, 10], [30, 11]] is too long
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
>> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: iommu@fdab9000: 'interrupt-names', 'power-domain-names' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/iommu/rockchip,iommu.yaml#
   arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtb: vcc-3v3-sd-s0-regulator: Unevaluated properties are not allowed ('enable-active-low' was unexpected)
   	from schema $id: http://devicetree.org/schemas/regulator/fixed-regulator.yaml#

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
