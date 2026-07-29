Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4348C54FD4
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 20:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+2Dq2ATUrpWIaoH5XUY+pNLVfzBHlRtAVW+MDeYvmA=; b=wyHw0r7YhLcHrl
	Mq6tjqbKBccOK712FBSUAjvcgkhjRrYyJ5xr3Q53hFUJEyx0Mmcu/ETIrSX6bCAeAsHalw2wWhmJs
	Ej4K1srquM3uVROvSB2PzK+uuFOTV7IER8gfQv3D6OTVl7KjAtJEkNKJbgSOkCCB38ZjGvxDMnONl
	YxSzj1oOzY744zwz7vL6NccJsvUwvVMyCKnpF39o4bmtwwJbqqUkVqkvEbcc3sOGxL0UyEjTt/yKl
	kONgsKYXSssjS0PRr9UvW0yVgVrhz1RwbqkeTl2usUoTzJftYEbRGDDDXm87ejzhCahopjoLNpxR0
	xQ4cc4JAGtYfpkUa6Vuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpB82-00000008yGu-2P9H;
	Wed, 29 Jul 2026 20:43:50 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpB7z-00000008yGZ-2EaY
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 20:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1785357827; x=1816893827;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MtdTNUvUGP6jEAXw3FQhLk5OsyAt9kSKLUL86iTob2s=;
  b=QsiMsRz22IcTCpBbUb4GNokX8xbyFt1XQcrWxwWrZy+HgO6ThEloyEm9
   aBReKGZnBEsmTJ8sfMCdsO6i/VjUqJTprNtKoFiEVIYCIch/2LMZ+3zcq
   jETnfx8jk2y6PRE+v7HJSENXU8FDt8p2W0hSkSxjfjyG3ZykpVVJ2mtZt
   YqRTIQAE8bnccBAQTjZBoCKPZmbE/t8ftgqgrAZEAlb8D5CXHd6qA55oZ
   fjkBcKbv2Bm2UnyZQtyNLHrnYPH6MwvTeMBKe9DzI4zIj5OyPa+aOZgON
   WnVWqITGpX9yk43WaK/AUesnYE2U3RMkOrJmHRpRMS5kYC+cKmhTo9cAR
   Q==;
X-CSE-ConnectionGUID: IMFXjA1QTpS6G8kc78mkUA==
X-CSE-MsgGUID: t0L1eoXUTpGYcjCcWhCd8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11859"; a="111519446"
X-IronPort-AV: E=Sophos;i="6.25,193,1779174000"; 
   d="scan'208";a="111519446"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jul 2026 13:43:46 -0700
X-CSE-ConnectionGUID: Lv45qJ3lT+2g35cyGMmxkg==
X-CSE-MsgGUID: vwwEWHH0R/C/A5upvcA0Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,193,1779174000"; 
   d="scan'208";a="262062897"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
  by fmviesa004.fm.intel.com with ESMTP; 29 Jul 2026 13:43:43 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1wpB7o-00000000ffq-1Kdb;
	Wed, 29 Jul 2026 20:43:36 +0000
Date: Thu, 30 Jul 2026 04:37:40 +0800
From: kernel test robot <lkp@intel.com>
To: Tharit Tangkijwanichakul <tharitt97@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-media@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Hans Verkuil <hverkuil@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org,
	me@brighamcampbell.com, jkoolstra@xs4all.nl, Frank.li@oss.nxp.com,
	Tharit Tangkijwanichakul <tharitt97@gmail.com>
Subject: Re: [PATCH v3] media: hantro: release runtime resources when
 device_run fails
Message-ID: <202607300319.RuKrwvI7-lkp@intel.com>
References: <20260726024243.730-1-tharitt97@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260726024243.730-1-tharitt97@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_134347_617510_8A4DCA39 
X-CRM114-Status: GOOD (  12.51  )
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

Hi Tharit,

kernel test robot noticed the following build warnings:

[auto build test WARNING on linus/master]
[also build test WARNING on pza/reset/next v7.2-rc5 next-20260729]
[cannot apply to pza/imx-drm/next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Tharit-Tangkijwanichakul/media-hantro-release-runtime-resources-when-device_run-fails/20260726-104549
base:   linus/master
patch link:    https://lore.kernel.org/r/20260726024243.730-1-tharitt97%40gmail.com
patch subject: [PATCH v3] media: hantro: release runtime resources when device_run fails
config: nios2-allmodconfig (https://download.01.org/0day-ci/archive/20260730/202607300319.RuKrwvI7-lkp@intel.com/config)
compiler: nios2-linux-gcc (GCC) 11.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260730/202607300319.RuKrwvI7-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202607300319.RuKrwvI7-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/media/platform/verisilicon/hantro_drv.c:1309:12: warning: 'hantro_runtime_suspend' defined but not used [-Wunused-function]
    1309 | static int hantro_runtime_suspend(struct device *dev)
         |            ^~~~~~~~~~~~~~~~~~~~~~
>> drivers/media/platform/verisilicon/hantro_drv.c:1287:12: warning: 'hantro_runtime_resume' defined but not used [-Wunused-function]
    1287 | static int hantro_runtime_resume(struct device *dev)
         |            ^~~~~~~~~~~~~~~~~~~~~


vim +/hantro_runtime_suspend +1309 drivers/media/platform/verisilicon/hantro_drv.c

  1286	
> 1287	static int hantro_runtime_resume(struct device *dev)
  1288	{
  1289		struct hantro_dev *vpu = dev_get_drvdata(dev);
  1290		int ret;
  1291	
  1292		ret = clk_bulk_enable(vpu->variant->num_clocks, vpu->clocks);
  1293		if (ret)
  1294			return ret;
  1295	
  1296		if (vpu->variant->runtime_resume) {
  1297			ret = vpu->variant->runtime_resume(vpu);
  1298			if (ret)
  1299				goto err_disable_clocks;
  1300		}
  1301	
  1302		return 0;
  1303	
  1304	err_disable_clocks:
  1305		clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
  1306		return ret;
  1307	}
  1308	
> 1309	static int hantro_runtime_suspend(struct device *dev)
  1310	{
  1311		struct hantro_dev *vpu = dev_get_drvdata(dev);
  1312	
  1313		clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
  1314		return 0;
  1315	}
  1316	

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
