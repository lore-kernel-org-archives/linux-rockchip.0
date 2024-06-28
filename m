Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33360C30653
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 00:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yY0IwJVdGbYUE6maRDFmLiYSKlj6287YKTIyz/5VYns=; b=RVShp+5Rdm45J9
	eHdW4YdxER5udWkUolHl+yr1ER2RWgc/Xtpkl7B/aRDFqDnZD862Rr+yxzX/iVg91gMogd7W1GST5
	f7ErM9f2JrmraxzAwndfAePKk/A/pMA9fr2UshjM2noEzNkoFSI42sgHnMHa1DDZqXXrG/KRyiedk
	B+ourPHd1eC7q0hqpqpTxztElSbD/irTlaWdiStB3s3TGLyLMZEYGC0kg8ZRndS4U+e3BsF1mtdWA
	y7XtXTiPcsUqX7bsISRefbadsogqT9nPkHVhJeIjWKeXT5QmSv5g/SeMzwCbuINmVKqO8agH5jJL7
	94sqC7t/vxU9auhsxKxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMz4u-0000000C29X-2wqF;
	Fri, 28 Jun 2024 00:03:00 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMz4l-0000000C28H-2olM;
	Fri, 28 Jun 2024 00:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1719532971; x=1751068971;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=mZjzbLJm2O0tHpL/cbdHIH5/7khS3AgCyWr3Lg/WQC0=;
  b=NKidaqmw5J/816TkPp/MKVLho1GNwqmrlhVAn7ytXgH7tcFKZubLzDc3
   gokbSq53NhBZ8KkXcUIhLKr6glrxRPAMfyGmrI3i8wOStdFB5eOHV0DKn
   ZOtBGBRj98riP2ZFRG1UsYsigx8rATDh9ajZtqtMB0/iTBTRwNcE10nAl
   uKUI7CYW/rZ3z1IJ6eon6G7wzjcBMWtv1xX856dV+Si14bJvVsPBhsOmw
   t6IltDAOukwjca0GCdzprN+W7ALpDhuz4n1h2+BSCsB1IQBES2TQSMs98
   yKRbvO9GbiD0radctVtBzewzDcO1DG/Tx59sbFCpvPx3uqZ/wptVeXXpQ
   A==;
X-CSE-ConnectionGUID: 2kqm6dl4QROgmfASJIxzsA==
X-CSE-MsgGUID: 9Wciad6yST+oJYg6DZvgHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="27386487"
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; 
   d="scan'208";a="27386487"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jun 2024 17:02:51 -0700
X-CSE-ConnectionGUID: vfIoZHpFQe2CmfRuc4So6w==
X-CSE-MsgGUID: +kNRcqUJSMeCacVTgFpz+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,167,1716274800"; 
   d="scan'208";a="48891275"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 27 Jun 2024 17:02:49 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sMz4g-000Gdu-1A;
	Fri, 28 Jun 2024 00:02:46 +0000
Date: Fri, 28 Jun 2024 08:01:53 +0800
From: kernel test robot <lkp@intel.com>
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Xunlong Orange Pi 3B
Message-ID: <202406280724.E053qdhz-lkp@intel.com>
References: <20240626230319.1425316-3-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240626230319.1425316-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_170251_878330_D8A23CA6 
X-CRM114-Status: GOOD (  11.96  )
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

Hi Jonas,

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on robh/for-next krzk/for-next krzk-dt/for-next krzk-mem-ctrl/for-next linus/master v6.10-rc5 next-20240627]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jonas-Karlman/dt-bindings-arm-rockchip-Add-Xunlong-Orange-Pi-3B/20240627-175050
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20240626230319.1425316-3-jonas%40kwiboo.se
patch subject: [PATCH v2 2/2] arm64: dts: rockchip: Add Xunlong Orange Pi 3B
config: arm64-randconfig-051-20240628 (https://download.01.org/0day-ci/archive/20240628/202406280724.E053qdhz-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
dtschema version: 2024.6.dev2+g3b69bad
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240628/202406280724.E053qdhz-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406280724.E053qdhz-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
>> arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v1.1.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
--
>> arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v2.1.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
   	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
