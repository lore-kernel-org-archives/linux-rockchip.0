Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13E4BD26D99
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 20:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QySYOBqRXG8HARX+b0GuL0WiSuzrseGzCGMBFzHYAG0=; b=mvwBgZQGPKIqhj
	yhF+p2RxdSY3cZyGSJo/9lS1fBwNRcuEY26L8ozxK8RNuKWolxADhou5xLjmkv09EP+4I85t/mlkr
	hlulm0f59Be5dNCznhk2R77EzAsFJFtJ7viBLWisVHf1ITQMnOwjQOKf/SlrLIAW8qAxhdnBHjir3
	OcPSlDedw/fYNwVhTAsS/lQ36uchJjId9t6INGh8OgiwWwRCI7bYGehJC6qXG2quM3BpGEeZfoAOd
	UhirpcQmwZoK6Ekfefd6rpri6kGp7G0aCvCUlehModGs1DXyOeNiO2bStnoKbwgvtvjNpGcBf1mEU
	VHYV8jaKAxNZKdRYyYlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veIne-00000002ysY-4Ab6;
	Fri, 09 Jan 2026 20:09:34 +0000
Received: from mgamail.intel.com ([192.198.163.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veInc-00000002ysA-0byQ
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 20:09:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1767989372; x=1799525372;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=5axzby49Fa/0SEo5UFGiSuW7Dqdl7D33czvCIivdFOQ=;
  b=ItFT97AcnWdhX8SHqjV+/BtnlNt+YQUWTW3YsRREaMGDx3Xkqd4qVhCb
   YHJyOKpi8xgmt6+yZHwoz0X7TAx4riGf/nS5Ew8k5yDD5JDE09IwIj2SO
   el2XNn/T13HVyU58p2Re7yHR0ICc0+lf5tzRaeyYo61djyjNtinMcvmlK
   23oYt0qCrB4Ar6RlzhNBAkuBb3KZUDvaqONkyYT3Nf1RgBPxbVAzpTnPG
   rwbP83z8WDYS91nUDYeq1AHWD5VUC98OMBSrtYpRLOzhkfkJYSBKy9dta
   eTaGTBr3GJxru+lQi1F9DinJEdX+tkTYUihRikxx73TQAPSemoaoER6t/
   w==;
X-CSE-ConnectionGUID: LCXE8r0nRF65L0+cx/wcXA==
X-CSE-MsgGUID: BkPGrb5zR1GUIFp2+bGmpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11666"; a="69445830"
X-IronPort-AV: E=Sophos;i="6.21,214,1763452800"; 
   d="scan'208";a="69445830"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2026 12:09:29 -0800
X-CSE-ConnectionGUID: 7xfIFGvxRrm0x7xEk1P3Tw==
X-CSE-MsgGUID: 9+5xRz03SICboPHoeOcpzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,214,1763452800"; 
   d="scan'208";a="208083989"
Received: from igk-lkp-server01.igk.intel.com (HELO 92b2e8bd97aa) ([10.211.93.152])
  by orviesa004.jf.intel.com with ESMTP; 09 Jan 2026 12:09:27 -0800
Received: from kbuild by 92b2e8bd97aa with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1veInU-0000000028K-011v;
	Fri, 09 Jan 2026 20:09:24 +0000
Date: Fri, 9 Jan 2026 21:08:56 +0100
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 2/3] Documentation: tracing: Add PCI controller event
 documentation
Message-ID: <202601092104.0IlUz26P-lkp@intel.com>
References: <1767929389-143957-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1767929389-143957-3-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_120932_229474_C1E5AE4B 
X-CRM114-Status: GOOD (  11.60  )
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on pci/next]
[also build test WARNING on next-20260109]
[cannot apply to pci/for-linus mani-mhi/mhi-next trace/for-next linus/master v6.19-rc4]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Shawn-Lin/PCI-trace-Add-PCI-controller-LTSSM-transition-tracepoint/20260109-153843
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/1767929389-143957-3-git-send-email-shawn.lin%40rock-chips.com
patch subject: [PATCH v2 2/3] Documentation: tracing: Add PCI controller event documentation
reproduce: (https://download.01.org/0day-ci/archive/20260109/202601092104.0IlUz26P-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601092104.0IlUz26P-lkp@intel.com/

All warnings (new ones prefixed by >>):

   WARNING: No kernel-doc for file ./include/linux/delay.h
   ERROR: Cannot find file ./include/linux/delay.h
   WARNING: No kernel-doc for file ./include/linux/delay.h
   ERROR: Cannot find file ./include/linux/delay.h
   WARNING: No kernel-doc for file ./include/linux/delay.h
>> Documentation/trace/events-pci-conotroller.rst:21: WARNING: Title underline too short.
--
   ERROR: Cannot find file ./include/linux/mutex.h
   ERROR: Cannot find file ./include/linux/mutex.h
   WARNING: No kernel-doc for file ./include/linux/mutex.h
   ERROR: Cannot find file ./include/linux/fwctl.h
   WARNING: No kernel-doc for file ./include/linux/fwctl.h
>> Documentation/trace/events-pci-conotroller.rst: WARNING: document isn't included in any toctree [toc.not_included]


vim +21 Documentation/trace/events-pci-conotroller.rst

    19	
    20	pcie_ltssm_state_transition
  > 21	-----------------------
    22	
    23	Monitors PCIe LTSSM state transition including state and rate information
    24	::
    25	
    26	    pcie_ltssm_state_transition  "dev: %s state: %s rate: %s\n"
    27	
    28	**Parameters**:
    29	
    30	* ``dev`` - PCIe root port name
    31	* ``state`` - PCIe LTSSM state
    32	* ``rate`` - PCIe bus speed
    33	
    34	**Example Usage**:
    35	
    36	    # Enable the tracepoint
    37	    echo 1 > /sys/kernel/debug/tracing/events/pci/pcie_ltssm_state_transition/enable
    38	
    39	    # Monitor events (the following output is generated when a device is linking)
    40	    cat /sys/kernel/debug/tracing/trace_pipe
  > 41	       kworker/0:0-9       [000] .....     5.600221: pcie_ltssm_state_transition: dev: a40000000.pcie state: RCVRY_EQ2 rate: 8.0 GT/s

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
