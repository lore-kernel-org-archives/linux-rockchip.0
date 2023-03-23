Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE4C2C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 05:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/nRyVkBon+xyI+sNpcDbW0BdFkFspZSbgWZHqRTbpg=; b=a/SncwpZLkTfu4
	KYyj26RYaohjmkL8f6C2cjyDkhPAX7RoyALyOzNRcil2sCmlTZyCK+5oPZSyqmJu/G7rkKHinW13E
	2/nqFu8WF1wpXbgI49gMvKzZ3wY/ELF1N4lTGkstlaEGCs0zgVGe/wouAlRqkU1pywSthMI0S1TI/
	X4pDZ1AUBoDjVquAJmtdwly8lJkbRX5ObxL6KXeVbKV7GkFOfZcH/6GrbTjnvfsDnX9v1Ewor1Yq+
	C5JdDwRuaOjEBiZgGcs9vjzD9VZHUwjpEBJqe8EplclDdd869e8/+Mn3uP49Vwk2hi/8AIdINsoDj
	EiXQbetuhcIRnV1ZQ0iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfDQ0-000q8r-1T;
	Thu, 23 Mar 2023 05:23:20 +0000
Received: from mga04.intel.com ([192.55.52.120])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfDPx-000q7X-0o;
	Thu, 23 Mar 2023 05:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679548997; x=1711084997;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ZZWhajVf94otlaDxvhMc13wCWR+0aAVrmHV4MxrPRbo=;
  b=TEgEr8fpVr60kxuBgt18d8RhVcRQ3dSzla8DuoX/WFCeS/HWnVw9h7br
   P5BMZAtp3G/Jkh6tHTgZcy+AVOnx1dxm8FCUR6nkysjFPgDN3pqQpygck
   eiLYF5Jxa+OKxZHN5MI9AhFq/ZfanTJStl/JbC/SodZC6DOvgPY33EQE4
   qpMQVbo2OUoCN4TcENetbpn0/PAVgRyyV0ksIQOaQ6ppoGTEU+g/P1JKr
   NPdeEldmWsQIIgNAN1gHyCG3S3oNQ8c0lLLnaw4ENmOpt85JbaFolUUaU
   Dez+SggApfoixFLBFzlEXBU2YsQKiB5nWEEtbu6HpAtWVMbEIfPWtTitg
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="338119711"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; 
   d="scan'208";a="338119711"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2023 22:23:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="751343160"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; 
   d="scan'208";a="751343160"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 22 Mar 2023 22:23:10 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pfDPq-000DzY-01;
	Thu, 23 Mar 2023 05:23:10 +0000
Date: Thu, 23 Mar 2023 13:22:11 +0800
From: kernel test robot <lkp@intel.com>
To: ye.xingchen@zte.com.cn, shawn.lin@rock-chips.com
Cc: oe-kbuild-all@lists.linux.dev, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, bhelgaas@google.com, heiko@sntech.de,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] PCI: rockchip: Use dev_err_probe()
Message-ID: <202303231338.oVZa9IHF-lkp@intel.com>
References: <202303231146312337844@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202303231146312337844@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_222317_299192_0B53E1C4 
X-CRM114-Status: GOOD (  14.57  )
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

Hi,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on pci/next]
[also build test WARNING on pci/for-linus linus/master v6.3-rc3 next-20230323]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/ye-xingchen-zte-com-cn/PCI-rockchip-Use-dev_err_probe/20230323-114809
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/202303231146312337844%40zte.com.cn
patch subject: [PATCH] PCI: rockchip: Use dev_err_probe()
config: ia64-allyesconfig (https://download.01.org/0day-ci/archive/20230323/202303231338.oVZa9IHF-lkp@intel.com/config)
compiler: ia64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/4ad6c26e54b926f384a1bdc99892900cbfa83eea
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review ye-xingchen-zte-com-cn/PCI-rockchip-Use-dev_err_probe/20230323-114809
        git checkout 4ad6c26e54b926f384a1bdc99892900cbfa83eea
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=ia64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=ia64 SHELL=/bin/bash drivers/pci/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303231338.oVZa9IHF-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/pci/controller/pcie-rockchip.c: In function 'rockchip_pcie_get_phys':
>> drivers/pci/controller/pcie-rockchip.c:313:74: warning: format '%ld' expects a matching 'long int' argument [-Wformat=]
     313 |                                              "missing phy for lane %d: %ld\n", i);
         |                                                                        ~~^
         |                                                                          |
         |                                                                          long int


vim +313 drivers/pci/controller/pcie-rockchip.c

   282	
   283	int rockchip_pcie_get_phys(struct rockchip_pcie *rockchip)
   284	{
   285		struct device *dev = rockchip->dev;
   286		struct phy *phy;
   287		char *name;
   288		u32 i;
   289	
   290		phy = devm_phy_get(dev, "pcie-phy");
   291		if (!IS_ERR(phy)) {
   292			rockchip->legacy_phy = true;
   293			rockchip->phys[0] = phy;
   294			dev_warn(dev, "legacy phy model is deprecated!\n");
   295			return 0;
   296		}
   297	
   298		if (PTR_ERR(phy) == -EPROBE_DEFER)
   299			return PTR_ERR(phy);
   300	
   301		dev_dbg(dev, "missing legacy phy; search for per-lane PHY\n");
   302	
   303		for (i = 0; i < MAX_LANE_NUM; i++) {
   304			name = kasprintf(GFP_KERNEL, "pcie-phy-%u", i);
   305			if (!name)
   306				return -ENOMEM;
   307	
   308			phy = devm_of_phy_get(dev, dev->of_node, name);
   309			kfree(name);
   310	
   311			if (IS_ERR(phy))
   312				return dev_err_probe(dev, PTR_ERR(phy),
 > 313						     "missing phy for lane %d: %ld\n", i);
   314	
   315			rockchip->phys[i] = phy;
   316		}
   317	
   318		return 0;
   319	}
   320	EXPORT_SYMBOL_GPL(rockchip_pcie_get_phys);
   321	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
