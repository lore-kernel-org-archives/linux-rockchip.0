Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 439F1C7115C
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Jun 2025 13:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuH+LWL+Mv/oE5l9kb3FuzH86Mfzfaf1ohOLUuYL5Po=; b=sOqTj7wMkwX7gB
	ixoW/MrLY8+ZKzeD714lu+2AilrpLTz+m+XHd0DD8lRN/AW7pWrth8tQQnxpen9VmmK/dPYlMBBlG
	UGvXTe3TLeq/bQ6CHkcgXpzBettDa3Ck6mv4H/ZpX2IKlgYBNWfvE9L5CB9k/8/8ANQqokCnPIJDV
	I9/OZrF6qRQZ2GuWGxtfOeRDoK+ZZ7+DJtVUFphbcHuISyRssSGb6ovFaWZT0oRPS/Zi3TmLiXZtI
	dLV/JSSwwIT0qt2We3AS7OagDqTAw6ozuzrptwEkHBfvzyGUwsu/dyoWjUEpMAAwMnmeIEn2a++Vx
	ttZopYmmDs5WZ7Pl/lkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTKJZ-00000000sIr-3VlK;
	Sun, 22 Jun 2025 13:00:53 +0000
Received: from mgamail.intel.com ([192.198.163.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTKJX-00000000sIK-3YVH
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Jun 2025 13:00:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1750597252; x=1782133252;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=zNPOMtqGCx67vztEqPzV5AkEy4ztrcs70oBFsyO1dzc=;
  b=NrlWocRTWTme9aM/+cQH72O6UqtvPTo217+/nIyWBmUgWox2QghPOFF4
   JN2HvWYb/kUCTNEDL2CUdqbBnoKj3zERbs/jcEPPWO7qPDAIF5H0OUBwN
   4p0TxTWoPb1+7if71ZC7NJh57TK20bI+paS9rNA9BtodLWKkYkJhcKAql
   IgLhd93WJ/aYaeAkfMuhFBRNTuqAompjzimtgPEmQIc3q+NnwQergfK7W
   uDxFWiHo4trkC5YXIb+S4dFWRu3Rt7SXEcJH5/s1DaYDSTVD0h3NW2mNu
   c2qtRc5PwgcOTr9x+IeVccAmvY+vXrkEk8RIzQGwsRmHry/6Gd8sARFqg
   w==;
X-CSE-ConnectionGUID: CUnsebUpQsajaJKtOXQzow==
X-CSE-MsgGUID: kZSRT3M2RjeqT3GHbPZhyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11472"; a="52953267"
X-IronPort-AV: E=Sophos;i="6.16,256,1744095600"; 
   d="scan'208";a="52953267"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2025 06:00:47 -0700
X-CSE-ConnectionGUID: oMyt4YPqRLeA3T1qvwZGfg==
X-CSE-MsgGUID: qEZK4XatTrS/qFyA3rmx9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,256,1744095600"; 
   d="scan'208";a="182374667"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 22 Jun 2025 06:00:44 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uTKJN-000NHW-2y;
	Sun, 22 Jun 2025 13:00:41 +0000
Date: Sun, 22 Jun 2025 20:59:45 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com,
	sre@kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 3/5] power: supply: bq257xx: Add support for BQ257XX
 charger manager
Message-ID: <202506222057.1Q77TY6Y-lkp@intel.com>
References: <20250621180119.163423-4-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250621180119.163423-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_060051_922529_BC9FE92C 
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

Hi Chris,

kernel test robot noticed the following build warnings:

[auto build test WARNING on lee-mfd/for-mfd-next]
[also build test WARNING on lee-mfd/for-mfd-fixes broonie-regulator/for-next sre-power-supply/for-next linus/master v6.16-rc2 next-20250620]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-mfd-ti-bq25703a-Add-TI-BQ25703A-Charger/20250622-020443
base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
patch link:    https://lore.kernel.org/r/20250621180119.163423-4-macroalpha82%40gmail.com
patch subject: [PATCH V2 3/5] power: supply: bq257xx: Add support for BQ257XX charger manager
config: sh-allmodconfig (https://download.01.org/0day-ci/archive/20250622/202506222057.1Q77TY6Y-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250622/202506222057.1Q77TY6Y-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506222057.1Q77TY6Y-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/power/supply/bq257xx_charger.c:72 struct member 'chip' not described in 'bq257xx_chg'
>> Warning: drivers/power/supply/bq257xx_charger.c:72 struct member 'bq' not described in 'bq257xx_chg'
>> Warning: drivers/power/supply/bq257xx_charger.c:72 Excess struct member 'bq257xx_chip_info' description in 'bq257xx_chg'
>> Warning: drivers/power/supply/bq257xx_charger.c:72 Excess struct member 'bq257xx_device' description in 'bq257xx_chg'
>> Warning: drivers/power/supply/bq257xx_charger.c:139 function parameter 'vsys' not described in 'bq25703_set_min_vsys'
>> Warning: drivers/power/supply/bq257xx_charger.c:139 Excess function parameter 'ichg' description in 'bq25703_set_min_vsys'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
