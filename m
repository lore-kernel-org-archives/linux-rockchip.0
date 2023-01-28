Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46BA8C27C76
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Jan 2023 09:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruPjXih4ZB1ENAZDm5qdKzL0rx4GPMN9NlbCKVcDDzI=; b=NScVVRoZ+shSK/
	w5vNbnDpRxblNMX8Xl1ANrvQnniidRyT4wfJ6q9iHveiujbfSJGsFBqNClmgw7Rrqewh7tjDL3rFC
	VsbmCHJ458bBTPXMoEjLsPSI+tUI6VxgdoHxl8J0yws3yfKwksBttLHxz23zyP/ajGVt8E2VeAvWy
	MBirKejmUAA+JeIuH/9HXe9pzbqCkYNKcLCfg+t37x9zNSN0eY9BegdN1MUgTDhlao1U6T3glzMdj
	lFveBRyG9DlBrkw3o9RWOCwmt1vHLhcsOv+h7wDgMWBVdrKEs3BDS6cnjt0Bfq4oxQdKxEQklWxOr
	vBlpcj53YX4kOCV6yavw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLhNE-00HWNH-7X; Sat, 28 Jan 2023 09:19:48 +0000
Received: from mga07.intel.com ([134.134.136.100])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLhN3-00HWLt-N7; Sat, 28 Jan 2023 09:19:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1674897577; x=1706433577;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=JiB3hWFAHtJf+8GoAtoOh5k442MaipNvp4k7d5/JH9U=;
  b=NWOOT/1MgmzaHiM5B53OsN9shFC+4bl4h6YH6DjipIxLPRJh7by17aQB
   FkpBtZTKD3n32VoLaYv4ehPPuFfIpCtqp1dd/iIADkvs+xRN9yIqIGfZt
   lGR6ZNMBsav+gj0uU97dLAr2ASWhPXdQKkON7MT30yqrkKhm/t+26w32o
   Eh2LySI38OGOJn3K6HH26CYbyL8GWSJTpw506anZW5evEgMIKuHln0c/E
   XF1sOaTDUDOLxIuHL2D4ef/+1RyL4YkNwlY9V6NWbmXgjo6O0mFVVyg86
   xSnNnwS3HQWVaNiNQQRDWPZ4b7DHDCucbTSFPN3tBGdDgkBHY3AW+Mu71
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="391831900"
X-IronPort-AV: E=Sophos;i="5.97,253,1669104000"; 
   d="scan'208";a="391831900"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2023 01:19:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="693985714"
X-IronPort-AV: E=Sophos;i="5.97,253,1669104000"; 
   d="scan'208";a="693985714"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 28 Jan 2023 01:19:25 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pLhMq-0000Y5-1H;
	Sat, 28 Jan 2023 09:19:24 +0000
Date: Sat, 28 Jan 2023 17:19:08 +0800
From: kernel test robot <lkp@intel.com>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	alberto.dassatti@heig-vd.ch
Cc: oe-kbuild-all@lists.linux.dev, xxm@rock-chips.com,
	wenrui.li@rock-chips.com, rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <helgaas@kernel.org>,
	Jani Nikula <jani.nikula@intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH 7/8] PCI: rockchip: Fixed legacy IRQ generation for
 endpoint
Message-ID: <202301281758.YRZrsGZ9-lkp@intel.com>
References: <20230126135049.708524-8-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230126135049.708524-8-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230128_011937_841863_EA36B726 
X-CRM114-Status: GOOD (  14.58  )
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

Hi Rick,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on linus/master v6.2-rc5 next-20230127]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Rick-Wertenbroek/PCI-rockchip-Removed-writes-to-unused-registers/20230128-155300
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20230126135049.708524-8-rick.wertenbroek%40gmail.com
patch subject: [PATCH 7/8] PCI: rockchip: Fixed legacy IRQ generation for endpoint
config: ia64-allyesconfig (https://download.01.org/0day-ci/archive/20230128/202301281758.YRZrsGZ9-lkp@intel.com/config)
compiler: ia64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/53e861f3393ad4ebae5f2e133f4783b919036e19
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Rick-Wertenbroek/PCI-rockchip-Removed-writes-to-unused-registers/20230128-155300
        git checkout 53e861f3393ad4ebae5f2e133f4783b919036e19
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=ia64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=ia64 SHELL=/bin/bash drivers/pci/controller/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/pci/controller/pcie-rockchip-ep.c: In function 'rockchip_pcie_ep_assert_intx':
>> drivers/pci/controller/pcie-rockchip-ep.c:334:12: warning: variable 'msg_code' set but not used [-Wunused-but-set-variable]
     334 |         u8 msg_code;
         |            ^~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:333:13: warning: unused variable 'status' [-Wunused-variable]
     333 |         u32 status;
         |             ^~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:332:13: warning: unused variable 'offset' [-Wunused-variable]
     332 |         u32 offset;
         |             ^~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c:331:13: warning: unused variable 'r' [-Wunused-variable]
     331 |         u32 r = ep->max_regions - 1;
         |             ^
   drivers/pci/controller/pcie-rockchip-ep.c:330:31: warning: unused variable 'rockchip' [-Wunused-variable]
     330 |         struct rockchip_pcie *rockchip = &ep->rockchip;
         |                               ^~~~~~~~
   drivers/pci/controller/pcie-rockchip-ep.c: In function 'rockchip_pcie_ep_probe':
   drivers/pci/controller/pcie-rockchip-ep.c:538:13: warning: unused variable 'cfg' [-Wunused-variable]
     538 |         u32 cfg;
         |             ^~~


vim +/msg_code +334 drivers/pci/controller/pcie-rockchip-ep.c

cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  326  
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  327  static void rockchip_pcie_ep_assert_intx(struct rockchip_pcie_ep *ep, u8 fn,
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  328  					 u8 intx, bool is_asserted)
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  329  {
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  330  	struct rockchip_pcie *rockchip = &ep->rockchip;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  331  	u32 r = ep->max_regions - 1;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  332  	u32 offset;
c577f4a5a08bb9 drivers/pci/controller/pcie-rockchip-ep.c Colin Ian King   2019-03-30  333  	u32 status;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09 @334  	u8 msg_code;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  335  
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  336  	intx &= 3;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  337  	if (is_asserted) {
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  338  		ep->irq_pending |= BIT(intx);
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  339  		msg_code = ROCKCHIP_PCIE_MSG_CODE_ASSERT_INTA + intx;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  340  	} else {
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  341  		ep->irq_pending &= ~BIT(intx);
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  342  		msg_code = ROCKCHIP_PCIE_MSG_CODE_DEASSERT_INTA + intx;
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  343  	}
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  344  
53e861f3393ad4 drivers/pci/controller/pcie-rockchip-ep.c Rick Wertenbroek 2023-01-26  345  	if (is_asserted) {
53e861f3393ad4 drivers/pci/controller/pcie-rockchip-ep.c Rick Wertenbroek 2023-01-26  346  		rockchip_pcie_write(&ep->rockchip,
53e861f3393ad4 drivers/pci/controller/pcie-rockchip-ep.c Rick Wertenbroek 2023-01-26  347  			PCIE_CLIENT_INT_IN_ASSERT | PCIE_CLIENT_INT_PEND_ST_PEND,
53e861f3393ad4 drivers/pci/controller/pcie-rockchip-ep.c Rick Wertenbroek 2023-01-26  348  			PCIE_CLIENT_LEGACY_INT_CTRL);
53e861f3393ad4 drivers/pci/controller/pcie-rockchip-ep.c Rick Wertenbroek 2023-01-26  349  	} else {
53e861f3393ad4 drivers/pci/controller/pcie-rockchip-ep.c Rick Wertenbroek 2023-01-26  350  		rockchip_pcie_write(&ep->rockchip,
53e861f3393ad4 drivers/pci/controller/pcie-rockchip-ep.c Rick Wertenbroek 2023-01-26  351  			PCIE_CLIENT_INT_IN_DEASSERT | PCIE_CLIENT_INT_PEND_ST_NORMAL,
53e861f3393ad4 drivers/pci/controller/pcie-rockchip-ep.c Rick Wertenbroek 2023-01-26  352  			PCIE_CLIENT_LEGACY_INT_CTRL);
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  353  	}
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  354  }
cf590b07839133 drivers/pci/host/pcie-rockchip-ep.c       Shawn Lin        2018-05-09  355  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
