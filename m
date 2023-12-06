Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30784C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 20:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIeUyWYFplMLHdNY7ry7tnU4IQ/Zlpz1uOC0Npl1cR8=; b=zcg05RrmjUGyCd
	UhExkLtnaMPSK9N6aI+G+uLJek81auiTyqUWwRy9195Y7l4nwybRgAeR0p4SkN9jdkimbwZwXttPa
	dwpZ4OPgPth8xgtKWdLHV+ItCl8qgGKHtir4Hhpx+dOF9VH5kQgBsA/Bwu1ttk98MrBj5M/fsRVRM
	IBlgZVTS+Xs9mQB5+wG1oSBiWWejATVQTY793EybNAJbtj2IdhmyADH8n4Zuh6gKVhe0uM0nwtcz3
	YruWvZ4roxhB23iqmLHnVOMxtu9LlXQmb3P2yf2y3DwKS77N+ZRZo8L/tYbpouJjHC7cpJ+LhviSW
	ZkvXRur27SU/3KDz4Fww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAydt-00BEKo-2S;
	Wed, 06 Dec 2023 20:37:13 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAydp-00BEJJ-2A;
	Wed, 06 Dec 2023 20:37:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1701895029; x=1733431029;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=TwXpWojOhICMzsUQAhDkNa70jLFpVVHewOVhowSZa7o=;
  b=kKNFeTFdDjoBX4ujPTFDX1KWOPWfqepWP3G9+iW7ezyWEFTfSGWqwQVw
   KF07FPhdGoLu7HMIoP1qFSIVegiF7WTWGLLcCOqpiixEBd6fBCTJCCItR
   ENK3sYCIT3znyxEfas7ptQuD5eBo51Ws+TP47BQtVtGvCbsquntnfYqDt
   oO8ebefepKbP5ZE6xUBGA2JaZOrbX89cjjsBvMofPOUljBmrxhpPP+/UE
   JtBpC14xKFcScXFRKAdv16xuU5Y1uJSRWs26edhb34d+vAWiYnZmS9YWV
   dGRaBSFnIxqCs1FhL7DbVl5/twiv6ki6ykBaItHjxacm/RvUAfHAIOi+k
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="1192494"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1192494"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2023 12:37:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="12844066"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
  by orviesa002.jf.intel.com with ESMTP; 06 Dec 2023 12:36:58 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rAydb-000BOg-0V;
	Wed, 06 Dec 2023 20:36:55 +0000
Date: Thu, 7 Dec 2023 04:36:52 +0800
From: kernel test robot <lkp@intel.com>
To: Jensen Huang <jensenhuang@friendlyarm.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev,
	Jensen Huang <jensenhuang@friendlyarm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] i2c: rk3x: fix potential spinlock recursion on poll
Message-ID: <202312070421.Lccd0PSI-lkp@intel.com>
References: <20231206090641.18849-1-jensenhuang@friendlyarm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206090641.18849-1-jensenhuang@friendlyarm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_123709_758680_804009A1 
X-CRM114-Status: GOOD (  13.95  )
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

Hi Jensen,

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on linus/master v6.7-rc4 next-20231206]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jensen-Huang/i2c-rk3x-fix-potential-spinlock-recursion-on-poll/20231206-170807
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20231206090641.18849-1-jensenhuang%40friendlyarm.com
patch subject: [PATCH] i2c: rk3x: fix potential spinlock recursion on poll
config: arc-randconfig-r081-20231206 (https://download.01.org/0day-ci/archive/20231207/202312070421.Lccd0PSI-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231207/202312070421.Lccd0PSI-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202312070421.Lccd0PSI-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/i2c/busses/i2c-rk3x.c:223: warning: Function parameter or member 'irq' not described in 'rk3x_i2c'


vim +223 drivers/i2c/busses/i2c-rk3x.c

c41aa3ce938b68 Max Schwarz  2014-06-11  171  
0a6ad2f95f36bf David Wu     2016-05-16  172  /**
0a6ad2f95f36bf David Wu     2016-05-16  173   * struct rk3x_i2c - private data of the controller
0a6ad2f95f36bf David Wu     2016-05-16  174   * @adap: corresponding I2C adapter
0a6ad2f95f36bf David Wu     2016-05-16  175   * @dev: device for this controller
0a6ad2f95f36bf David Wu     2016-05-16  176   * @soc_data: related soc data struct
0a6ad2f95f36bf David Wu     2016-05-16  177   * @regs: virtual memory area
7e086c3fc2df09 David Wu     2016-05-16  178   * @clk: function clk for rk3399 or function & Bus clks for others
7e086c3fc2df09 David Wu     2016-05-16  179   * @pclk: Bus clk for rk3399
0a6ad2f95f36bf David Wu     2016-05-16  180   * @clk_rate_nb: i2c clk rate change notify
0a6ad2f95f36bf David Wu     2016-05-16  181   * @t: I2C known timing information
0a6ad2f95f36bf David Wu     2016-05-16  182   * @lock: spinlock for the i2c bus
0a6ad2f95f36bf David Wu     2016-05-16  183   * @wait: the waitqueue to wait for i2c transfer
0a6ad2f95f36bf David Wu     2016-05-16  184   * @busy: the condition for the event to wait for
0a6ad2f95f36bf David Wu     2016-05-16  185   * @msg: current i2c message
0a6ad2f95f36bf David Wu     2016-05-16  186   * @addr: addr of i2c slave device
0a6ad2f95f36bf David Wu     2016-05-16  187   * @mode: mode of i2c transfer
0a6ad2f95f36bf David Wu     2016-05-16  188   * @is_last_msg: flag determines whether it is the last msg in this transfer
0a6ad2f95f36bf David Wu     2016-05-16  189   * @state: state of i2c transfer
0a6ad2f95f36bf David Wu     2016-05-16  190   * @processed: byte length which has been send or received
0a6ad2f95f36bf David Wu     2016-05-16  191   * @error: error code for i2c transfer
0a6ad2f95f36bf David Wu     2016-05-16  192   */
c41aa3ce938b68 Max Schwarz  2014-06-11  193  struct rk3x_i2c {
c41aa3ce938b68 Max Schwarz  2014-06-11  194  	struct i2c_adapter adap;
c41aa3ce938b68 Max Schwarz  2014-06-11  195  	struct device *dev;
d032a2eb2e3b9f Julia Lawall 2018-01-02  196  	const struct rk3x_i2c_soc_data *soc_data;
c41aa3ce938b68 Max Schwarz  2014-06-11  197  
c41aa3ce938b68 Max Schwarz  2014-06-11  198  	/* Hardware resources */
c41aa3ce938b68 Max Schwarz  2014-06-11  199  	void __iomem *regs;
c41aa3ce938b68 Max Schwarz  2014-06-11  200  	struct clk *clk;
7e086c3fc2df09 David Wu     2016-05-16  201  	struct clk *pclk;
249051f49907e7 Max Schwarz  2014-11-20  202  	struct notifier_block clk_rate_nb;
58bb392dd4c7fc Jensen Huang 2023-12-06  203  	int irq;
c41aa3ce938b68 Max Schwarz  2014-06-11  204  
c41aa3ce938b68 Max Schwarz  2014-06-11  205  	/* Settings */
1ab92956d4aac5 David Wu     2016-03-17  206  	struct i2c_timings t;
c41aa3ce938b68 Max Schwarz  2014-06-11  207  
c41aa3ce938b68 Max Schwarz  2014-06-11  208  	/* Synchronization & notification */
c41aa3ce938b68 Max Schwarz  2014-06-11  209  	spinlock_t lock;
c41aa3ce938b68 Max Schwarz  2014-06-11  210  	wait_queue_head_t wait;
c41aa3ce938b68 Max Schwarz  2014-06-11  211  	bool busy;
c41aa3ce938b68 Max Schwarz  2014-06-11  212  
c41aa3ce938b68 Max Schwarz  2014-06-11  213  	/* Current message */
c41aa3ce938b68 Max Schwarz  2014-06-11  214  	struct i2c_msg *msg;
c41aa3ce938b68 Max Schwarz  2014-06-11  215  	u8 addr;
c41aa3ce938b68 Max Schwarz  2014-06-11  216  	unsigned int mode;
c41aa3ce938b68 Max Schwarz  2014-06-11  217  	bool is_last_msg;
c41aa3ce938b68 Max Schwarz  2014-06-11  218  
c41aa3ce938b68 Max Schwarz  2014-06-11  219  	/* I2C state machine */
c41aa3ce938b68 Max Schwarz  2014-06-11  220  	enum rk3x_i2c_state state;
0a6ad2f95f36bf David Wu     2016-05-16  221  	unsigned int processed;
c41aa3ce938b68 Max Schwarz  2014-06-11  222  	int error;
c41aa3ce938b68 Max Schwarz  2014-06-11 @223  };
c41aa3ce938b68 Max Schwarz  2014-06-11  224  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
