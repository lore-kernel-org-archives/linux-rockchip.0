Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00734C27C6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 02:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqqiu96JTQQemeBb0n0e0Zg4L6jbOnJ9EqbmXmQIO+M=; b=pBW3BMuJgwEi2t
	sveZgtWpxYIVg7ZllaVBHB4dWoeGIs1XF4LG+wPpTj3cWsCZ1ExUN1aMpdM4QhylMnQKemc/6jUig
	tnawPk0LVivHCOB8yQT9frqvtPOITmU65R4gf3aFsbvwDak2J13UNY2nzPqSMQVXCGBn+RJbFxhra
	gLVOC+jqDhEmd7iNGoZ+HXU4JETDNtSLHJWz9XWJGrq20PCzPGFNaVNUdax2cngd7kgRQpAME9nZD
	bDaHBt7JhjKpRMjpyOUWCA9gvTFVe6Bbp99kvsii9JTu5Z7di0zIMbCc9jlxzg6Y/pA+TIazow2Ta
	Brgn9J5UBPriT+wdqbYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHZrJ-0000000Engs-2AFo;
	Thu, 13 Jun 2024 02:06:37 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHZrE-0000000Enfz-3uy5;
	Thu, 13 Jun 2024 02:06:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718244393; x=1749780393;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=8sFmvQ7Z83X7NLUoXzzUfw6X3sNAVrct6codoq1wV7Q=;
  b=VBlH57iWmxWx5Gq2mrudhO8nQRwjFCY1F63/15QdDSNpffHxitPAco35
   EzmY115ZS5u//SI/h5QxPLa/GYaSnvt7Fno108QrRPHbeU1n+B77I20M9
   jSbnP8YR4XsogY9lMzks+onpd7UDw9MxiJi9L1W1rnfYBUHPRF77RLiKl
   /7Fqz2gZ5Le+Uuy0UDFOKnscHd9hZOvuqn9V8z0fggETaTcuCWxPo/ztL
   UFtJ75RNS/TygAw8TU9gHqJ/49XbJ4x+8Cq5Alewc20YdE9Z4yRD0feOK
   xgBsGu5Nu3M5q9XcH+uJ8z8BaJ1GhLUxZ7x2tEj329rnI3igw/qEpx+vJ
   Q==;
X-CSE-ConnectionGUID: e9qvbrF1QWuXgLgOiW5nBQ==
X-CSE-MsgGUID: ZBnXpT5CS+2J8O6lhUIZog==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="15194291"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; 
   d="scan'208";a="15194291"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2024 19:06:30 -0700
X-CSE-ConnectionGUID: S0kNdoNXTeaDmFV2fIXYpQ==
X-CSE-MsgGUID: 6aVpmYIvR1+lJTRSNmEW5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; 
   d="scan'208";a="44427853"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
  by fmviesa005.fm.intel.com with ESMTP; 12 Jun 2024 19:06:24 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sHZr4-000270-15;
	Thu, 13 Jun 2024 02:06:22 +0000
Date: Thu, 13 Jun 2024 10:05:59 +0800
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
Subject: Re: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
Message-ID: <202406130901.oiofrkFe-lkp@intel.com>
References: <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_190633_093839_F3F6B995 
X-CRM114-Status: GOOD (  11.95  )
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

kernel test robot noticed the following build errors:

[auto build test ERROR on 83a7eefedc9b56fe7bfeff13b6c7356688ffa670]

url:    https://github.com/intel-lab-lkp/linux/commits/Tomeu-Vizoso/iommu-rockchip-Add-compatible-for-rockchip-rk3588-iommu/20240612-215814
base:   83a7eefedc9b56fe7bfeff13b6c7356688ffa670
patch link:    https://lore.kernel.org/r/20240612-6-10-rocket-v1-6-060e48eea250%40tomeuvizoso.net
patch subject: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive/20240613/202406130901.oiofrkFe-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240613/202406130901.oiofrkFe-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406130901.oiofrkFe-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from arch/loongarch/include/asm/processor.h:17,
                    from arch/loongarch/include/asm/thread_info.h:15,
                    from include/linux/thread_info.h:60,
                    from include/asm-generic/current.h:6,
                    from ./arch/loongarch/include/generated/asm/current.h:1,
                    from include/linux/mutex.h:14,
                    from include/linux/notifier.h:14,
                    from include/linux/clk.h:14,
                    from drivers/accel/rocket/rocket_core.c:6:
>> arch/loongarch/include/uapi/asm/ptrace.h:25:25: error: expected identifier before '(' token
      25 | #define PC              (GPR_END + 2)
         |                         ^
   drivers/accel/rocket/rocket_registers.h:53:9: note: in expansion of macro 'PC'
      53 |         PC = 0x00000100,
         |         ^~


vim +25 arch/loongarch/include/uapi/asm/ptrace.h

803b0fc5c3f2ba Huacai Chen 2022-05-31  16  
803b0fc5c3f2ba Huacai Chen 2022-05-31  17  /*
803b0fc5c3f2ba Huacai Chen 2022-05-31  18   * For PTRACE_{POKE,PEEK}USR. 0 - 31 are GPRs,
803b0fc5c3f2ba Huacai Chen 2022-05-31  19   * 32 is syscall's original ARG0, 33 is PC, 34 is BADVADDR.
803b0fc5c3f2ba Huacai Chen 2022-05-31  20   */
803b0fc5c3f2ba Huacai Chen 2022-05-31  21  #define GPR_BASE	0
803b0fc5c3f2ba Huacai Chen 2022-05-31  22  #define GPR_NUM		32
803b0fc5c3f2ba Huacai Chen 2022-05-31  23  #define GPR_END		(GPR_BASE + GPR_NUM - 1)
803b0fc5c3f2ba Huacai Chen 2022-05-31  24  #define ARG0		(GPR_END + 1)
803b0fc5c3f2ba Huacai Chen 2022-05-31 @25  #define PC		(GPR_END + 2)
803b0fc5c3f2ba Huacai Chen 2022-05-31  26  #define BADVADDR	(GPR_END + 3)
803b0fc5c3f2ba Huacai Chen 2022-05-31  27  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
