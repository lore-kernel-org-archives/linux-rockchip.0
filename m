Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2C36C83F34
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jul 2025 07:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZwGV08PIRGcxw25pfLhHa2x7hzJU/X62YNTf1S1aHo=; b=nsPa3xuKgkcnIm
	Ug+npUeFzINySwyZyBCylcdpyRJhDKIgcmW+u4I3SqeSRjbV/U9DzpZBDTPhyDjvE4sjcv2/esdzL
	wuPZJG1obW1z9qPLxdB6meKPguFNh9tqGaEswtRbsStM/fpbMamwEbB5Knmz0+BjHCH1E205yR2sh
	JTDiuTHZbQmi7Gn6SEcFsigaRbPiQdNU/dppxi3+Mf64Q1Lu0f4rDKEIFhlUnlvtD7HDKzJnI7Bg3
	cbrRfu1lUrCQ4YJulnCAbIxZAg/NoNlTIp1mVsx81+GEP7CJ5iF4JHlzpPJ3cHCPU92uKvRwjdugy
	+a46PBJMQKYydITK6+yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ud2H9-0000000E0G8-0Lyp;
	Sat, 19 Jul 2025 07:46:31 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ud2Ef-0000000E07w-1ExO;
	Sat, 19 Jul 2025 07:43:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1752911038; x=1784447038;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ExeIcKQFSS1qmlfLTGq6NdRwBIsy7m51VTTE43vJJ1A=;
  b=hQygZU5tfLpDltmJrTpad/U6IAmiAz+DvKCavjUQ2a2VvFvj5yHGCKcs
   iiNd2MHHUsPoWZnMSr8Pzd/jsHnDrQJZp0Fr8IVMZplGqtd/1j8QLq8Iq
   UGO2l56d1ShnyC/Eq1bCd8U09nfhR8UY8aPxMV+1NXzIONRyEP3CD6dMI
   sJTaARrqJ63cvSzidPQBQVuoi2+3QZHBwl8yov4om5yXzs5u4/GdL5fAh
   aeqBGyBjYcU8p1TdlYq3w+QAl4OsvtkfZ9ibXM+WQ0JwUYfC2Qd4zbL6x
   stqk3UeRANE3E4QgzO9BLcHRQZOzSCPiCkIZAd6gq06UowCjCboa48QEt
   A==;
X-CSE-ConnectionGUID: Du2UTKlvT8Gc5NiNn+6Qkw==
X-CSE-MsgGUID: mE82KjWXRMuWcXjSteENmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="72651136"
X-IronPort-AV: E=Sophos;i="6.16,323,1744095600"; 
   d="scan'208";a="72651136"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jul 2025 00:43:54 -0700
X-CSE-ConnectionGUID: iaIxP5gRQweAL56B3D2Alw==
X-CSE-MsgGUID: X3Qv0Y49S/O0oDqks2wQNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,323,1744095600"; 
   d="scan'208";a="158517427"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by orviesa007.jf.intel.com with ESMTP; 19 Jul 2025 00:43:46 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1ud2ER-000FJj-1P;
	Sat, 19 Jul 2025 07:43:43 +0000
Date: Sat, 19 Jul 2025 15:42:49 +0800
From: kernel test robot <lkp@intel.com>
To: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Amit Sunil Dhamne <amitsd@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Dmitry Baryshkov <lumag@kernel.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 2/5] phy: rockchip: phy-rockchip-typec: Add
 typec_mux/typec_switch support
Message-ID: <202507191526.Ts6qTQJj-lkp@intel.com>
References: <20250718062619.99-3-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250718062619.99-3-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250719_004357_374538_93E77969 
X-CRM114-Status: GOOD (  12.45  )
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

Hi Chaoyi,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20250717]
[also build test ERROR on linus/master v6.16-rc6]
[cannot apply to robh/for-next rockchip/for-next krzk/for-next krzk-dt/for-next v6.16-rc6 v6.16-rc5 v6.16-rc4]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chaoyi-Chen/dt-bindings-phy-rockchip-rk3399-typec-phy-Support-mode-switch/20250718-142814
base:   next-20250717
patch link:    https://lore.kernel.org/r/20250718062619.99-3-kernel%40airkyi.com
patch subject: [PATCH v2 2/5] phy: rockchip: phy-rockchip-typec: Add typec_mux/typec_switch support
config: arm64-randconfig-004-20250719 (https://download.01.org/0day-ci/archive/20250719/202507191526.Ts6qTQJj-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250719/202507191526.Ts6qTQJj-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507191526.Ts6qTQJj-lkp@intel.com/

All errors (new ones prefixed by >>):

>> ld.lld: error: undefined symbol: typec_mux_register
   >>> referenced by phy-rockchip-typec.c
   >>>               drivers/phy/rockchip/phy-rockchip-typec.o:(rockchip_typec_phy_probe) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: typec_mux_unregister
   >>> referenced by phy-rockchip-typec.c
   >>>               drivers/phy/rockchip/phy-rockchip-typec.o:(rockchip_typec_phy_probe) in archive vmlinux.a
   >>> referenced by phy-rockchip-typec.c
   >>>               drivers/phy/rockchip/phy-rockchip-typec.o:(tcphy_typec_mux_unregister) in archive vmlinux.a
--
>> ld.lld: error: undefined symbol: typec_mux_get_drvdata
   >>> referenced by phy-rockchip-typec.c
   >>>               drivers/phy/rockchip/phy-rockchip-typec.o:(tcphy_typec_mux_set) in archive vmlinux.a

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
