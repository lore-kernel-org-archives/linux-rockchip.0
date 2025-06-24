Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B531AC77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jun 2025 12:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNCAfYMUfSJdTDxAW8kCwR2v/Dam+KnTHhpIviW8ctg=; b=UwB4P+QG5ca9s2
	XC8Qo1H3Mvo9XwaKm7YbDvUOfZS5gYM3tKA4d2VAUodJrcOdvvI69h65EYkaJuAQRiEhEO6sVeA/K
	HWijKf8Gybpz6Cz5XjPkE8mSfmO9faciXNcAe+XnXnLfbg5GWQkUBwqpJQOMMdgoN/1N3R26NCKKc
	2Gd/tkfKZJV34plJSWMquFnKNe3AwpE0zBR5lBVKClMQ5Im8V/MGo78mxC+rmcbcQXhK4ESg7v1AX
	Dw1TDZ16BaPu7kpEw1M5zAeoLUE4m0fEkIWh1DrsF10xewkcAaCBGKv8g9nLxgB574Byayk/pW3nw
	QPWuapM5VDLQzNTMfy6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU2cX-00000005XeQ-0tlg;
	Tue, 24 Jun 2025 12:19:25 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU2YY-00000005WX5-0jli;
	Tue, 24 Jun 2025 12:15:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1750767318; x=1782303318;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=RS3Ir0XcZ0wtTv3mLgddInGQ7GnUnQCjtJ18Ke5dvSs=;
  b=bNEdlFI43fANoe8ulXaDdFPRH4gM37lQxFNo6tjeXHPqwU/rqHTC3lXi
   ylK0IMoVf90+m119HgNdZplv4osxeza4LTlM7Xk2fk+pfPR3zjAmlTj8i
   rxfzBxrpY4cqkP6iSijSsHuISRSHSTGT9YzIF0axvrb1Ui4CARbFBdDfQ
   ODuVpYe3bz8VOLWjRqpnwcUjY+y1+xOX3T4W1Pt9PM9Hu+aUeWW3O0FyT
   +6zVNFCwnRCUMw3jk0DRm1FcWeVdhFClIdFVChnENR/gUUXfgW1+/yvbT
   +uNoR3fNkHBvvN1FQpK8opDi08Jfp2ED/gt+9v9rqBP1PRAqg+khfOJiX
   w==;
X-CSE-ConnectionGUID: 1eIhLXa5TiylkHgtIGdbGw==
X-CSE-MsgGUID: 46ndnT1TRVmsL4Gly7X47w==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="78423402"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; 
   d="scan'208";a="78423402"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2025 05:15:18 -0700
X-CSE-ConnectionGUID: KMhT0jvkQG6oua368CzdYg==
X-CSE-MsgGUID: WAduLzKvSmGFelTHd0uYrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; 
   d="scan'208";a="156295716"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
  by orviesa003.jf.intel.com with ESMTP; 24 Jun 2025 05:15:13 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uU2YR-000S5m-0z;
	Tue, 24 Jun 2025 12:15:11 +0000
Date: Tue, 24 Jun 2025 20:14:32 +0800
From: kernel test robot <lkp@intel.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org,
	will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, jgg@ziepe.ca
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	iommu@lists.linux.dev, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v4 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <202506242057.NVRNN4W1-lkp@intel.com>
References: <20250623153931.158765-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250623153931.158765-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_051518_250482_13F13DEF 
X-CRM114-Status: GOOD (  13.47  )
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

Hi Benjamin,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on rockchip/for-next arm64/for-next/core linus/master v6.16-rc3 next-20250623]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Benjamin-Gaignard/dt-bindings-vendor-prefixes-Add-Verisilicon/20250623-234734
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20250623153931.158765-4-benjamin.gaignard%40collabora.com
patch subject: [PATCH v4 3/5] iommu: Add verisilicon IOMMU driver
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20250624/202506242057.NVRNN4W1-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250624/202506242057.NVRNN4W1-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506242057.NVRNN4W1-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/iommu/vsi-iommu.c:657:10: warning: variable 'err' is uninitialized when used here [-Wuninitialized]
     657 |                 return err;
         |                        ^~~
   drivers/iommu/vsi-iommu.c:643:9: note: initialize the variable 'err' to silence this warning
     643 |         int err;
         |                ^
         |                 = 0
   1 warning generated.


vim +/err +657 drivers/iommu/vsi-iommu.c

   638	
   639	static int vsi_iommu_probe(struct platform_device *pdev)
   640	{
   641		struct device *dev = &pdev->dev;
   642		struct vsi_iommu *iommu;
   643		int err;
   644	
   645		iommu = devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
   646		if (!iommu)
   647			return -ENOMEM;
   648	
   649		iommu->dev = dev;
   650	
   651		iommu->regs = devm_platform_ioremap_resource(pdev, 0);
   652		if (IS_ERR(iommu->regs))
   653			return -ENOMEM;
   654	
   655		iommu->num_clocks = devm_clk_bulk_get_all(dev, &iommu->clocks);
   656		if  (iommu->num_clocks < 0)
 > 657			return err;
   658	
   659		err = clk_bulk_prepare(iommu->num_clocks, iommu->clocks);
   660		if (err)
   661			return err;
   662	
   663		iommu->irq = platform_get_irq(pdev, 0);
   664		if (iommu->irq < 0)
   665			return iommu->irq;
   666	
   667		err = devm_request_irq(iommu->dev, iommu->irq, vsi_iommu_irq,
   668				       IRQF_SHARED, dev_name(dev), iommu);
   669		if (err)
   670			goto err_unprepare_clocks;
   671	
   672		spin_lock_init(&iommu->lock);
   673		dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
   674		platform_set_drvdata(pdev, iommu);
   675	
   676		pm_runtime_set_autosuspend_delay(dev, 100);
   677		pm_runtime_use_autosuspend(dev);
   678		pm_runtime_enable(dev);
   679	
   680		err = iommu_device_sysfs_add(&iommu->iommu, dev, NULL, dev_name(dev));
   681		if (err)
   682			goto err_runtime_disable;
   683	
   684		err = iommu_device_register(&iommu->iommu, &vsi_iommu_ops, dev);
   685		if (err)
   686			goto err_remove_sysfs;
   687	
   688		return 0;
   689	
   690	err_remove_sysfs:
   691		iommu_device_sysfs_remove(&iommu->iommu);
   692	err_runtime_disable:
   693		pm_runtime_disable(dev);
   694	err_unprepare_clocks:
   695		clk_bulk_unprepare(iommu->num_clocks, iommu->clocks);
   696		return err;
   697	}
   698	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
