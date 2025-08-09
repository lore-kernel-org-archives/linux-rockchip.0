Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFA2CC87FCF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Aug 2025 11:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YP0QJplCE8HLDwsoxy6u6+ycGFIvRlsQMf17iwoMWyU=; b=zdHcuXRG16Nz9y
	vP/oLTPTd5agHkY18VVp6lMWCE3C0Pn5CrJ8cnVlfMdGcsyVcaAWVKK7EIO7LFcem7dgVYO9XeNG5
	jL6PCo+7AHLWHbm1N7Ej5cPTIn43cAn89CBGa54WOF8NWYPOiv6W9lOYTTZ5/FJmXguZCcYywiWAy
	pGnaCrnR8TgsE7Z0VbFaHoqGNbT1Fv0xJgyQk2PYTrUFgCzwOMkbLfU8B9JDsxa4h68Mak0A4gyQM
	dQs7GdkD0nRjn92fgBN4eR/yQMkKD78mpAg0mPNQEfuB6vHkMxjoz9rdWxBDGRBj/smjWLB8i1ncT
	oxq875ZeAf4QaXoNDpvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uki9R-00000004R4h-30RX;
	Sat, 09 Aug 2025 11:54:17 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uki9O-00000004R40-2igB;
	Sat, 09 Aug 2025 11:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1754740455; x=1786276455;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=mnV+jg9VSYFDZGvhdpkSY2iW8ke8agEGlUQFaLp0wdY=;
  b=GwTs0oc5B81F4INVe/VaIrj9LN0JdQcPG4Czh0+Ckj6ZbBLcd2ooaVLO
   GbiAAo5HOaoqXw6PkxP9vmUUrwOH0FbrOiDbfpFcnoIm8ZHuiBMhPmUVG
   2SNR3GtUWhS8q/kh7D/UO0i6T5KeTqKfj1uqQ0c227+O91kkP6KtWBO06
   VgkICw4uVZgy6EAgMkpszbVMBZ9jZMPiDrCEbJ+pc9fr3QROLjXZ9MXFY
   n/6AWwyZ1kcCfxLd+xg+zCrp7nd4CuFmGtGrcXVSPK64IV4M3sZtQ/lMI
   G8BBe/ODqtfp/IQ7UxvIyeNrgioNEsbR7AbhsjD2UB+2RmPd+iCDmLwks
   A==;
X-CSE-ConnectionGUID: ZLQvZ73rQjS8DNWqw8Y9hg==
X-CSE-MsgGUID: ZvvzxjxKRMWlge9P7DB2LA==
X-IronPort-AV: E=McAfee;i="6800,10657,11515"; a="60868946"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; 
   d="scan'208";a="60868946"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Aug 2025 04:54:07 -0700
X-CSE-ConnectionGUID: f2pAyptXQOu+WoNR8wp0bQ==
X-CSE-MsgGUID: 6WPcD7jSQQ67d4c9XhBHRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; 
   d="scan'208";a="164753875"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
  by orviesa010.jf.intel.com with ESMTP; 09 Aug 2025 04:54:05 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uki9B-0004m8-2g;
	Sat, 09 Aug 2025 11:54:01 +0000
Date: Sat, 9 Aug 2025 19:53:40 +0800
From: kernel test robot <lkp@intel.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 10/12] media: rkvdec: Add H264 support for the VDPU383
 variant
Message-ID: <202508091909.RNcoZmVb-lkp@intel.com>
References: <20250808200340.156393-11-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250808200340.156393-11-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250809_045414_691400_16C08DB0 
X-CRM114-Status: GOOD (  12.06  )
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

Hi Detlev,

kernel test robot noticed the following build errors:

[auto build test ERROR on linuxtv-media-pending/master]
[also build test ERROR on linus/master next-20250808]
[cannot apply to rockchip/for-next sailus-media-tree/master sailus-media-tree/streams v6.16]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Detlev-Casanova/media-rkvdec-Switch-to-using-structs-instead-of-writel/20250809-041049
base:   https://git.linuxtv.org/media-ci/media-pending.git master
patch link:    https://lore.kernel.org/r/20250808200340.156393-11-detlev.casanova%40collabora.com
patch subject: [PATCH v2 10/12] media: rkvdec: Add H264 support for the VDPU383 variant
config: i386-buildonly-randconfig-005-20250809 (https://download.01.org/0day-ci/archive/20250809/202508091909.RNcoZmVb-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250809/202508091909.RNcoZmVb-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202508091909.RNcoZmVb-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/media/platform/rockchip/rkvdec/rkvdec.c:12:10: fatal error: 'linux/hw_bitfield.h' file not found
      12 | #include <linux/hw_bitfield.h>
         |          ^~~~~~~~~~~~~~~~~~~~~
   1 error generated.


vim +12 drivers/media/platform/rockchip/rkvdec/rkvdec.c

  > 12	#include <linux/hw_bitfield.h>
    13	#include <linux/clk.h>
    14	#include <linux/genalloc.h>
    15	#include <linux/interrupt.h>
    16	#include <linux/iommu.h>
    17	#include <linux/module.h>
    18	#include <linux/of.h>
    19	#include <linux/platform_device.h>
    20	#include <linux/pm.h>
    21	#include <linux/pm_runtime.h>
    22	#include <linux/slab.h>
    23	#include <linux/videodev2.h>
    24	#include <linux/workqueue.h>
    25	#include <media/v4l2-event.h>
    26	#include <media/v4l2-mem2mem.h>
    27	#include <media/videobuf2-core.h>
    28	#include <media/videobuf2-vmalloc.h>
    29	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
