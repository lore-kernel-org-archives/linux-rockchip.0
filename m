Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEEC8D232D7
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 10:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwtJYLxBewh8hYAIb/Qt1iX2ug2nMMD2MYVL5U3l6+c=; b=1ZgHJFrouc95po
	ZJhC3v3o4szqIA0d/8f3oQFLJNZ7JGVVG6g8hz6AWqkzmXhIptJq40NVBl8cqZXassOmjpePw7m2z
	lvj4NNyBHz/ODCTWmNbw6HoFgWrDKQj/JUDHcco/kNmOjn2tjVI7SdYiBV/doE5Y8vdwjdxqHEVAK
	maJOWJSAgUya0AbWJQwQtUOEkL1Xfy4CJrYq8Vp17u3jmpbPxtuyVHMLtka9jioYGee34nR85ag/v
	4smQAO7K+s7TTnq8yIsi1eNZd89EMfc3ds2OO1hjpl1OSF6xLLIJSwsRoKhKqWDslzY6MtidhMMeo
	FLSjxlBA5mDbBPY3G9uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfEyC-000000058GU-32lv;
	Mon, 12 Jan 2026 10:16:20 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfEyA-000000058Eq-2KA2
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 10:16:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768212979; x=1799748979;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=H8gp41/PvMnd7tQ04BGrl2ztpsHRk7DIXiv5/QpR4qY=;
  b=jr9R+c37TmxF0uyh+VMJrpbS1vpHP9rVhSu8WXhrsgJZjW/2POakyrJk
   DugNQBu7Q3XV0glvdA1YCoSaV2YZrJtvWXnYzVART+yTGILO93MgMeeBP
   9WIiHwN7l7awHZaPiCvW9qmnE6zpHPz0glv+SsziO3lyI5k4GWX2kz7uA
   bKSo9VyWAqjFCLu2CFqIQ6JEcvniCjHVV0F9Kcv4MgsZXx+xxYhikoLrH
   qOaTDHzo3uSEjvd9EAUVkhwH2cvKUJFqPespeGWkzkw+PJwoYulHFjnmF
   G/PhsXxcYp6mOc/LVAVDfKClO0pAufy2NVokbhz6hpzLO5ZG9hQ7L02Av
   Q==;
X-CSE-ConnectionGUID: qgwoonrMTmeZpElvkwUQtQ==
X-CSE-MsgGUID: B22saM1NRgSLKbrwtvbpfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11668"; a="92151268"
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; 
   d="scan'208";a="92151268"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jan 2026 02:16:16 -0800
X-CSE-ConnectionGUID: kio9i+jfSvSXaI/JTm4KcQ==
X-CSE-MsgGUID: lWCYiL/hQqyBbhD2t3nNQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; 
   d="scan'208";a="204337417"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by fmviesa008.fm.intel.com with ESMTP; 12 Jan 2026 02:16:12 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vfEy2-00000000DFc-1HOY;
	Mon, 12 Jan 2026 10:16:10 +0000
Date: Mon, 12 Jan 2026 18:15:38 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v3 3/3] PCI: dw-rockchip: Add pcie_ltssm_state_transition
 trace support
Message-ID: <202601121712.JbsMAjDZ-lkp@intel.com>
References: <1768180800-63364-4-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1768180800-63364-4-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_021618_640626_AA5E15D4 
X-CRM114-Status: GOOD (  15.08  )
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

Hi Shawn,

kernel test robot noticed the following build errors:

[auto build test ERROR on pci/next]
[also build test ERROR on next-20260109]
[cannot apply to pci/for-linus trace/for-next mani-mhi/mhi-next linus/master v6.19-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shawn-Lin/PCI-trace-Add-PCI-controller-LTSSM-transition-tracepoint/20260112-100141
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/1768180800-63364-4-git-send-email-shawn.lin%40rock-chips.com
patch subject: [PATCH v3 3/3] PCI: dw-rockchip: Add pcie_ltssm_state_transition trace support
config: arm64-randconfig-004-20260112 (https://download.01.org/0day-ci/archive/20260112/202601121712.JbsMAjDZ-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260112/202601121712.JbsMAjDZ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601121712.JbsMAjDZ-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/pci/controller/dwc/pcie-dw-rockchip.c:264:6: error: call to undeclared function 'dw_pcie_ltssm_status_string'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     264 |                                         dw_pcie_ltssm_status_string(state),
         |                                         ^
>> drivers/pci/controller/dwc/pcie-dw-rockchip.c:264:6: error: incompatible integer to pointer conversion passing 'int' to parameter of type 'const char *' [-Wint-conversion]
     264 |                                         dw_pcie_ltssm_status_string(state),
         |                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/events/pci_controller.h:20:45: note: passing argument to parameter 'state' here
      20 |         TP_PROTO(const char *dev_name, const char *state, u32 rate),
         |                                                    ^
   2 errors generated.


vim +/dw_pcie_ltssm_status_string +264 drivers/pci/controller/dwc/pcie-dw-rockchip.c

   225	
   226	#ifdef CONFIG_TRACING
   227	static void rockchip_pcie_ltssm_trace_work(struct work_struct *work)
   228	{
   229		struct rockchip_pcie *rockchip = container_of(work, struct rockchip_pcie,
   230							trace_work.work);
   231		struct dw_pcie *pci = &rockchip->pci;
   232		enum dw_pcie_ltssm state;
   233		u32 i, l1ss, prev_val = DW_PCIE_LTSSM_UNKNOWN, rate, val;
   234	
   235		for (i = 0; i < PCIE_DBG_LTSSM_HISTORY_CNT; i++) {
   236			val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_DBG_FIFO_STATUS);
   237			rate = FIELD_GET(PCIE_DBG_FIFO_RATE_MASK, val);
   238			l1ss = FIELD_GET(PCIE_DBG_FIFO_L1SUB_MASK, val);
   239			val = FIELD_GET(PCIE_LTSSM_STATUS_MASK, val);
   240	
   241			/*
   242			 * Hardware Mechanism: The ring FIFO employs two tracking counters:
   243			 * - 'last-read-point': maintains the user's last read position
   244			 * - 'last-valid-point': tracks the hardware's last state update
   245			 *
   246			 * Software Handling: When two consecutive LTSSM states are identical,
   247			 * it indicates invalid subsequent data in the FIFO. In this case, we
   248			 * skip the remaining entries. The dual-counter design ensures that on
   249			 * the next state transition, reading can resume from the last user
   250			 * position.
   251			 */
   252			if ((i > 0 && val == prev_val) || val > DW_PCIE_LTSSM_RCVRY_EQ3)
   253				break;
   254	
   255			state = prev_val = val;
   256			if (val == DW_PCIE_LTSSM_L1_IDLE) {
   257				if (l1ss == 2)
   258					state = DW_PCIE_LTSSM_L1_2;
   259				else if (l1ss == 1)
   260					state = DW_PCIE_LTSSM_L1_1;
   261			}
   262	
   263			trace_pcie_ltssm_state_transition(dev_name(pci->dev),
 > 264						dw_pcie_ltssm_status_string(state),
   265						((rate + 1) > pci->max_link_speed) ?
   266						PCI_SPEED_UNKNOWN : PCIE_SPEED_2_5GT + rate);
   267		}
   268	
   269		schedule_delayed_work(&rockchip->trace_work, msecs_to_jiffies(5000));
   270	}
   271	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
