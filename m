Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B937C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 03:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2eEkdmVjqTFkJ7SRwRyH/hXWZIsdObMtS3CVHKCu1g=; b=QXiSpzItDcBayw
	g4moaEqYWLCWXGl7TaKAAxZuoxR57jrEcAsibPmMh+zvgCfZjwQi0f88oC9MuHyo6r/OIYCjX/N58
	o4xVIt3NO3p6mhz7WJ/3219qPjdJLq/VQ+VAhtZu8ivi5vKiwTGcC+CKzaa1cQ8RVr3B4t8T23W9r
	vaRURW1it/2jVqwSnZs9Zdun/UkWIIOG7HF5xvrGR0Ia1Xwbd4bSWlLnxTE3+HPkogTBuasGUqQzc
	IMC+XuhLIJRRqitoRHJsQPw5vTEhFZ+C7pVbqSeXam5pR3VNLtp4JEs8eKY561TQw3lmM33orB3z/
	TPiEY8ygUonX0rJH2Y2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ni6jS-003Mus-G4; Sat, 23 Apr 2022 03:46:50 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ni6jP-003Mt3-GU
 for linux-rockchip@lists.infradead.org; Sat, 23 Apr 2022 03:46:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650685607; x=1682221607;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CpwUEPhvROzXnQPbUtKRRdh+SpyfvXHZowOEY+MMlYc=;
 b=XU/zwxOdZFcshDyE1P09x5UBZP6dE2s+89EiCNwXgtliEFEOuYLDIFms
 jGwSorTaWG2KQ+tT1VrbubMJvRamZcS/87IhCWhnnoM8hYCACE4yTPPF2
 26pbew1r23eWZwntOknnTb6uPTz2oHwpu/b8Yk9bKugOLXryd0oWU0gPQ
 AtjIuExf3Wr4YYg0OgU3A0BZowt5w7f+p1CsMmfsopT9ULIFRd+WNp1Je
 WufnpRyyH0ERrzbxQ6M7lHfd1GEyko4TnDKGPWzt0uA3CJqLnDkaScyR0
 aeAvNK8QhLoT67xuOI24zvSnHk2An/t5gK7ib4furmsy0WXS/g+9agSfG A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="262437200"
X-IronPort-AV: E=Sophos;i="5.90,283,1643702400"; d="scan'208";a="262437200"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 20:46:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,283,1643702400"; d="scan'208";a="648897786"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Apr 2022 20:46:42 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1ni6jJ-000AyR-W1;
 Sat, 23 Apr 2022 03:46:42 +0000
Date: Sat, 23 Apr 2022 11:45:43 +0800
From: kernel test robot <lkp@intel.com>
To: Brian Norris <briannorris@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, Guenter Roeck <linux@roeck-us.net>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] soc: rockchip: Fix compile-testing SoC drivers
Message-ID: <202204231158.8u0SOzm6-lkp@intel.com>
References: <20220422111914.1.Id5f16dec920f620120c0a143a97a12e16d401760@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422111914.1.Id5f16dec920f620120c0a143a97a12e16d401760@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_204647_649352_BBC5F805 
X-CRM114-Status: GOOD (  18.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Brian,

I love your patch! Yet something to improve:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on soc/for-next linus/master v5.18-rc3 next-20220422]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Brian-Norris/soc-rockchip-Fix-compile-testing-SoC-drivers/20220423-022353
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: sh-allmodconfig (https://download.01.org/0day-ci/archive/20220423/202204231158.8u0SOzm6-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/bb37a0dd33d08baf273f38dbea4951d50f020588
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Brian-Norris/soc-rockchip-Fix-compile-testing-SoC-drivers/20220423-022353
        git checkout bb37a0dd33d08baf273f38dbea4951d50f020588
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross W=1 O=build_dir ARCH=sh SHELL=/bin/bash drivers/soc/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/soc/rockchip/pm_domains.c: In function 'rockchip_pmu_set_idle_request':
>> drivers/soc/rockchip/pm_domains.c:181:9: error: implicit declaration of function 'dsb' [-Werror=implicit-function-declaration]
     181 |         dsb(sy);
         |         ^~~
>> drivers/soc/rockchip/pm_domains.c:181:13: error: 'sy' undeclared (first use in this function); did you mean 's8'?
     181 |         dsb(sy);
         |             ^~
         |             s8
   drivers/soc/rockchip/pm_domains.c:181:13: note: each undeclared identifier is reported only once for each function it appears in
   drivers/soc/rockchip/pm_domains.c: In function 'rockchip_do_pmu_set_power_domain':
   drivers/soc/rockchip/pm_domains.c:288:13: error: 'sy' undeclared (first use in this function); did you mean 's8'?
     288 |         dsb(sy);
         |             ^~
         |             s8
   cc1: some warnings being treated as errors


vim +/dsb +181 drivers/soc/rockchip/pm_domains.c

e4c8cd82d5e114 Caesar Wang  2016-10-13  159  
7c696693a4f54d Caesar Wang  2015-09-08  160  static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
7c696693a4f54d Caesar Wang  2015-09-08  161  					 bool idle)
7c696693a4f54d Caesar Wang  2015-09-08  162  {
7c696693a4f54d Caesar Wang  2015-09-08  163  	const struct rockchip_domain_info *pd_info = pd->info;
e4c8cd82d5e114 Caesar Wang  2016-10-13  164  	struct generic_pm_domain *genpd = &pd->genpd;
7c696693a4f54d Caesar Wang  2015-09-08  165  	struct rockchip_pmu *pmu = pd->pmu;
e4c8cd82d5e114 Caesar Wang  2016-10-13  166  	unsigned int target_ack;
7c696693a4f54d Caesar Wang  2015-09-08  167  	unsigned int val;
e4c8cd82d5e114 Caesar Wang  2016-10-13  168  	bool is_idle;
e4c8cd82d5e114 Caesar Wang  2016-10-13  169  	int ret;
7c696693a4f54d Caesar Wang  2015-09-08  170  
6aa841c8097fee Elaine Zhang 2016-03-10  171  	if (pd_info->req_mask == 0)
6aa841c8097fee Elaine Zhang 2016-03-10  172  		return 0;
79bb17ce8edb31 Elaine Zhang 2016-12-23  173  	else if (pd_info->req_w_mask)
79bb17ce8edb31 Elaine Zhang 2016-12-23  174  		regmap_write(pmu->regmap, pmu->info->req_offset,
79bb17ce8edb31 Elaine Zhang 2016-12-23  175  			     idle ? (pd_info->req_mask | pd_info->req_w_mask) :
79bb17ce8edb31 Elaine Zhang 2016-12-23  176  			     pd_info->req_w_mask);
79bb17ce8edb31 Elaine Zhang 2016-12-23  177  	else
7c696693a4f54d Caesar Wang  2015-09-08  178  		regmap_update_bits(pmu->regmap, pmu->info->req_offset,
7c696693a4f54d Caesar Wang  2015-09-08  179  				   pd_info->req_mask, idle ? -1U : 0);
7c696693a4f54d Caesar Wang  2015-09-08  180  
7c696693a4f54d Caesar Wang  2015-09-08 @181  	dsb(sy);
7c696693a4f54d Caesar Wang  2015-09-08  182  
e4c8cd82d5e114 Caesar Wang  2016-10-13  183  	/* Wait util idle_ack = 1 */
e4c8cd82d5e114 Caesar Wang  2016-10-13  184  	target_ack = idle ? pd_info->ack_mask : 0;
e4c8cd82d5e114 Caesar Wang  2016-10-13  185  	ret = readx_poll_timeout_atomic(rockchip_pmu_read_ack, pmu, val,
e4c8cd82d5e114 Caesar Wang  2016-10-13  186  					(val & pd_info->ack_mask) == target_ack,
e4c8cd82d5e114 Caesar Wang  2016-10-13  187  					0, 10000);
e4c8cd82d5e114 Caesar Wang  2016-10-13  188  	if (ret) {
e4c8cd82d5e114 Caesar Wang  2016-10-13  189  		dev_err(pmu->dev,
e4c8cd82d5e114 Caesar Wang  2016-10-13  190  			"failed to get ack on domain '%s', val=0x%x\n",
e4c8cd82d5e114 Caesar Wang  2016-10-13  191  			genpd->name, val);
e4c8cd82d5e114 Caesar Wang  2016-10-13  192  		return ret;
e4c8cd82d5e114 Caesar Wang  2016-10-13  193  	}
7c696693a4f54d Caesar Wang  2015-09-08  194  
e4c8cd82d5e114 Caesar Wang  2016-10-13  195  	ret = readx_poll_timeout_atomic(rockchip_pmu_domain_is_idle, pd,
e4c8cd82d5e114 Caesar Wang  2016-10-13  196  					is_idle, is_idle == idle, 0, 10000);
e4c8cd82d5e114 Caesar Wang  2016-10-13  197  	if (ret) {
e4c8cd82d5e114 Caesar Wang  2016-10-13  198  		dev_err(pmu->dev,
e4c8cd82d5e114 Caesar Wang  2016-10-13  199  			"failed to set idle on domain '%s', val=%d\n",
e4c8cd82d5e114 Caesar Wang  2016-10-13  200  			genpd->name, is_idle);
e4c8cd82d5e114 Caesar Wang  2016-10-13  201  		return ret;
e4c8cd82d5e114 Caesar Wang  2016-10-13  202  	}
7c696693a4f54d Caesar Wang  2015-09-08  203  
7c696693a4f54d Caesar Wang  2015-09-08  204  	return 0;
7c696693a4f54d Caesar Wang  2015-09-08  205  }
7c696693a4f54d Caesar Wang  2015-09-08  206  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
