Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B67C2E6FE49
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 08:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2cpMkVNzTkpcRZW+QIrBNeCpCwZcFfRdrKf87wFLNU=; b=nb469zQVipu98P
	ZIp+0+4ZcpsBBpPdqLphTnkl+A6TQVSxJfBBzx5vvjoRUw9lhh1lE1HSjohKcpI0ujIPWTY7mp+Lh
	Z1CCxRop/voB2UJm6TPt4kXGYz+HLUarZ5n2QK6U1YDOYWA0OirlLqrCYSbWbuF12JxB7MLHGE5qn
	sAef689Ov7l8Eg/bXzRDjN3bEuijUBy8RX0jIE0g2yMaSCX3IniZTUArXQiQeI9J0SPmmgNPNX0MF
	5mf4DNNwW7jlZXZrO3i5XuFOVZRL0WW+EFV0QBdYLElyOwUN7fmueDOeJQHBChOtWne0yPdvzHmS7
	LWfeHb4KWnM/cnfJeTZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snDDz-0000000GOBF-0hxk;
	Sun, 08 Sep 2024 08:24:47 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snDCx-0000000GO3c-2SQR;
	Sun, 08 Sep 2024 08:23:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725783824; x=1757319824;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=CS8TPU9h4Zcfsx0T2yCnIV7BAoo30S/6YenmxXnsGvo=;
  b=ToIylFjVZOO7J89bH+QDwWjdPZounwgb3CCTV38ZrGWiYGPaAEP69EOl
   qhjbYAMmyDv0xEJeSFKNuFh43PUeimJITjlzW2LqcNFMRnE0unW4SMtSD
   piqJrtP3BXskx8cal73Sgg7jVi1navcirl/uM56HHWGp9dkXLsBIgoGbq
   iRacgYVvefSgfVWTWRIrpIP9/1UstNDlZkNHOoP+3od8OUuEWCPYSRF2w
   NM5uHxWNOr0Cy+jH3vEt5YACvoQqmCeLLhj2+/6jptfr5eupc81HOen7F
   PhiPrQdtPvmCSDdqHwYP6Fs+7KapVBI77tbXs9l/GzndGDrBFPbL2Fb7o
   A==;
X-CSE-ConnectionGUID: 5z8FRnVtT7aB2y59ZXDjvg==
X-CSE-MsgGUID: shDtL1fpSJiiLxPE69gbog==
X-IronPort-AV: E=McAfee;i="6700,10204,11188"; a="24354256"
X-IronPort-AV: E=Sophos;i="6.10,212,1719903600"; 
   d="scan'208";a="24354256"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2024 01:23:41 -0700
X-CSE-ConnectionGUID: 6oAA7FJbSruiYJPpsZmMzw==
X-CSE-MsgGUID: G7OGkTdsTTy5SmlzG5AKaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,212,1719903600"; 
   d="scan'208";a="71175839"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 08 Sep 2024 01:23:36 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1snDCn-000DKi-1v;
	Sun, 08 Sep 2024 08:23:33 +0000
Date: Sun, 8 Sep 2024 16:22:35 +0800
From: kernel test robot <lkp@intel.com>
To: Heiko Stuebner <heiko@sntech.de>, lee@kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jdelvare@suse.com,
	linux@roeck-us.net, heiko@sntech.de, dmitry.torokhov@gmail.com,
	pavel@ucw.cz, ukleinek@debian.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: Re: [PATCH v7 1/8] mfd: core: make platform_data pointer const in
 struct mfd_cell
Message-ID: <202409081514.inB0qj3o-lkp@intel.com>
References: <20240905185232.2899464-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240905185232.2899464-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_012343_731993_F87BFF4D 
X-CRM114-Status: GOOD (  13.83  )
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

Hi Heiko,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20240905]
[also build test ERROR on v6.11-rc6]
[cannot apply to lee-mfd/for-mfd-next groeck-staging/hwmon-next lee-leds/for-leds-next linus/master lee-mfd/for-mfd-fixes v6.11-rc6 v6.11-rc5 v6.11-rc4]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Heiko-Stuebner/mfd-core-make-platform_data-pointer-const-in-struct-mfd_cell/20240906-025553
base:   next-20240905
patch link:    https://lore.kernel.org/r/20240905185232.2899464-2-heiko%40sntech.de
patch subject: [PATCH v7 1/8] mfd: core: make platform_data pointer const in struct mfd_cell
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20240908/202409081514.inB0qj3o-lkp@intel.com/config)
compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project 05f5a91d00b02f4369f46d076411c700755ae041)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240908/202409081514.inB0qj3o-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409081514.inB0qj3o-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/hid/hid-sensor-hub.c:8:
   In file included from include/linux/hid.h:29:
   In file included from include/linux/hid_bpf.h:6:
   In file included from include/linux/bpf.h:21:
   In file included from include/linux/kallsyms.h:13:
   In file included from include/linux/mm.h:2206:
   include/linux/vmstat.h:518:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     518 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
   In file included from drivers/hid/hid-sensor-hub.c:8:
   In file included from include/linux/hid.h:29:
   In file included from include/linux/hid_bpf.h:6:
   In file included from include/linux/bpf.h:31:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:8:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:548:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     548 |         val = __raw_readb(PCI_IOBASE + addr);
         |                           ~~~~~~~~~~ ^
   include/asm-generic/io.h:561:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     561 |         val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:37:51: note: expanded from macro '__le16_to_cpu'
      37 | #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
         |                                                   ^
   In file included from drivers/hid/hid-sensor-hub.c:8:
   In file included from include/linux/hid.h:29:
   In file included from include/linux/hid_bpf.h:6:
   In file included from include/linux/bpf.h:31:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:8:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:574:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     574 |         val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__le32_to_cpu'
      35 | #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
         |                                                   ^
   In file included from drivers/hid/hid-sensor-hub.c:8:
   In file included from include/linux/hid.h:29:
   In file included from include/linux/hid_bpf.h:6:
   In file included from include/linux/bpf.h:31:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:8:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:585:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     585 |         __raw_writeb(value, PCI_IOBASE + addr);
         |                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:595:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     595 |         __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   include/asm-generic/io.h:605:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     605 |         __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
>> drivers/hid/hid-sensor-hub.c:744:33: error: initializing 'struct hid_sensor_hub_device *' with an expression of type 'const void *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
     744 |                 struct hid_sensor_hub_device *hsdev =
         |                                               ^
     745 |                         data->hid_sensor_hub_client_devs[i].platform_data;
         |                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   7 warnings and 1 error generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for OMAP2PLUS_MBOX
   Depends on [n]: MAILBOX [=y] && (ARCH_OMAP2PLUS || ARCH_K3)
   Selected by [m]:
   - TI_K3_M4_REMOTEPROC [=m] && REMOTEPROC [=y] && (ARCH_K3 || COMPILE_TEST [=y])


vim +744 drivers/hid/hid-sensor-hub.c

401ca24fb34aee srinivas pandruvada 2012-09-05  732  
401ca24fb34aee srinivas pandruvada 2012-09-05  733  static void sensor_hub_remove(struct hid_device *hdev)
401ca24fb34aee srinivas pandruvada 2012-09-05  734  {
401ca24fb34aee srinivas pandruvada 2012-09-05  735  	struct sensor_hub_data *data = hid_get_drvdata(hdev);
401ca24fb34aee srinivas pandruvada 2012-09-05  736  	unsigned long flags;
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  737  	int i;
401ca24fb34aee srinivas pandruvada 2012-09-05  738  
401ca24fb34aee srinivas pandruvada 2012-09-05  739  	hid_dbg(hdev, " hardware removed\n");
401ca24fb34aee srinivas pandruvada 2012-09-05  740  	hid_hw_close(hdev);
f2f13a68c37c13 Axel Lin            2012-09-19  741  	hid_hw_stop(hdev);
401ca24fb34aee srinivas pandruvada 2012-09-05  742  	spin_lock_irqsave(&data->lock, flags);
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  743  	for (i = 0; i < data->hid_sensor_client_cnt; ++i) {
e651a1da442ae0 Srinivas Pandruvada 2015-02-19 @744  		struct hid_sensor_hub_device *hsdev =
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  745  			data->hid_sensor_hub_client_devs[i].platform_data;
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  746  		if (hsdev->pending.status)
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  747  			complete(&hsdev->pending.ready);
e651a1da442ae0 Srinivas Pandruvada 2015-02-19  748  	}
401ca24fb34aee srinivas pandruvada 2012-09-05  749  	spin_unlock_irqrestore(&data->lock, flags);
401ca24fb34aee srinivas pandruvada 2012-09-05  750  	mfd_remove_devices(&hdev->dev);
401ca24fb34aee srinivas pandruvada 2012-09-05  751  	mutex_destroy(&data->mutex);
401ca24fb34aee srinivas pandruvada 2012-09-05  752  }
401ca24fb34aee srinivas pandruvada 2012-09-05  753  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
