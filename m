Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01294C7115A
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Jun 2025 14:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v7/N8crxfuGmEkRS9kkqEIHkCaMPd+3EzgWdh20RvRE=; b=1sM4KWKDgTegbe
	Wru9KpCpgWbPKncSAb/TN2zSKZGcO0enVKTob/E8d3XqjnuQz7isWRP+BypjbPZpV12rh7QCYhtDy
	m2/vN+3L4CQ0VEan3oeH3qAXImcu03dUgE2AocqlSpKQxvgdSeutP4IygvQ4zdrVSobgCQZYdobis
	lcEMEnh1pT9irCKjs61YAOM0Ify/IiuqkJsiVaq/m21B56QO5OiHBCrdljDRLRLWn0g52ssM/1jgL
	bDS+15xmKTaHyoreBH2YcFu/dpcZhQ8DcfRFdW7nXB48DO1RF72QR9tVT/krOMsVkQpraN78ZHQ1i
	OSx6JA3XxmjQxR8NKD8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTLRO-00000000vEi-1BRI;
	Sun, 22 Jun 2025 14:13:02 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTLRM-00000000vEL-00xm
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Jun 2025 14:13:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1750601580; x=1782137580;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=f1LVrqYHd5nJ9/e8djtzbBcTtvAXQDxzr8Z+AcN5gZ8=;
  b=XVQAwOgEclJLz2uWC+2nghWC14+hd7pWZxytj3nECO91t3KZYgje0PC7
   zoPptBWiBZGLrg37I+juRxJ1iylq5mIfD4NlJdUXYaf8ALi5wYPrDUUsg
   wEADa7GLU/JoesegRHyk99zA4FpIEYFLlMe/uAiEHv4/HaDmiQnn3Qnc9
   6G1b49uBfqndIAtiOHuQW+eQ2Ul/4V8AgYgjo9k5PB8Biosyu6tCTVfaY
   L76i21PO3G2mC3de3HdySBrwAO6UYMBtkkZHDuJmzo9sggAV3mj8PZg+Z
   RwTLKCPLt13xGkP1qHqUw74GWay+7RBAWPsOO9oSrts7cscZryKlMKkXY
   g==;
X-CSE-ConnectionGUID: 3jflMKFRS1CLOa7p12Qdbw==
X-CSE-MsgGUID: 8ranUBqMR3W9iMV9VxOPQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11472"; a="52741709"
X-IronPort-AV: E=Sophos;i="6.16,256,1744095600"; 
   d="scan'208";a="52741709"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2025 07:12:55 -0700
X-CSE-ConnectionGUID: YGjot7OcTFqAfGQ6z1gKTA==
X-CSE-MsgGUID: Vh/3X8VvQICY00j/oPMgbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,256,1744095600"; 
   d="scan'208";a="157153885"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 22 Jun 2025 07:12:52 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uTLRB-000NKg-0y;
	Sun, 22 Jun 2025 14:12:49 +0000
Date: Sun, 22 Jun 2025 22:11:55 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	broonie@kernel.org, lgirdwood@gmail.com, sre@kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 4/5] regulator: bq257xx: Add bq257xx boost regulator
 driver
Message-ID: <202506222132.hzKC0iLG-lkp@intel.com>
References: <20250621180119.163423-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250621180119.163423-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_071300_083275_0379C9C0 
X-CRM114-Status: GOOD (  12.05  )
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

Hi Chris,

kernel test robot noticed the following build errors:

[auto build test ERROR on lee-mfd/for-mfd-next]
[also build test ERROR on lee-mfd/for-mfd-fixes broonie-regulator/for-next sre-power-supply/for-next linus/master v6.16-rc2 next-20250620]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-mfd-ti-bq25703a-Add-TI-BQ25703A-Charger/20250622-020443
base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
patch link:    https://lore.kernel.org/r/20250621180119.163423-5-macroalpha82%40gmail.com
patch subject: [PATCH V2 4/5] regulator: bq257xx: Add bq257xx boost regulator driver
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20250622/202506222132.hzKC0iLG-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250622/202506222132.hzKC0iLG-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506222132.hzKC0iLG-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/regulator/bq257xx-regulator.c:33:9: error: call to undeclared function 'FIELD_GET'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
      33 |         return FIELD_GET(BQ25703_OTG_CUR_MASK, reg) * BQ25703_OTG_CUR_STEP_UA;
         |                ^
>> drivers/regulator/bq257xx-regulator.c:56:8: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
      56 |                             FIELD_PREP(BQ25703_OTG_CUR_MASK, reg));
         |                             ^
   2 errors generated.


vim +/FIELD_GET +33 drivers/regulator/bq257xx-regulator.c

    23	
    24	static int bq25703_vbus_get_cur_limit(struct regulator_dev *rdev)
    25	{
    26		struct bq257xx_reg_data *pdata = rdev_get_drvdata(rdev);
    27		int ret;
    28		unsigned int reg;
    29	
    30		ret = regmap_read(pdata->bq->regmap, BQ25703_OTG_CURRENT, &reg);
    31		if (ret)
    32			return ret;
  > 33		return FIELD_GET(BQ25703_OTG_CUR_MASK, reg) * BQ25703_OTG_CUR_STEP_UA;
    34	}
    35	
    36	/*
    37	 * Check if the minimum current and maximum current requested are
    38	 * sane values, then set the register accordingly.
    39	 */
    40	static int bq25703_vbus_set_cur_limit(struct regulator_dev *rdev,
    41					      int min_uA, int max_uA)
    42	{
    43		struct bq257xx_reg_data *pdata = rdev_get_drvdata(rdev);
    44		unsigned int reg;
    45	
    46		if ((min_uA > BQ25703_OTG_CUR_MAX_UA) || (max_uA < 0))
    47			return -EINVAL;
    48	
    49		reg = (max_uA / BQ25703_OTG_CUR_STEP_UA);
    50	
    51		/* Catch rounding errors since our step is 50000uA. */
    52		if ((reg * BQ25703_OTG_CUR_STEP_UA) < min_uA)
    53			return -EINVAL;
    54	
    55		return regmap_write(pdata->bq->regmap, BQ25703_OTG_CURRENT,
  > 56				    FIELD_PREP(BQ25703_OTG_CUR_MASK, reg));
    57	}
    58	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
