Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 266BBCD1288
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Mar 2024 05:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tFCW2UDpTOZV5DzXpZRzhUOm3b+C0lgGfmWPShsPp0=; b=yywqPFZS7hOnJT
	GkODwEsCiiG7zHZbzb/2DtrTs5QWeJ7j2sJUE6QWEd5V6BPe7WcoNfZ5MT6q4GehfXWhq/nDQPDU5
	5H76HSyAy59LyuowW0xViqtJSqbXKVCNstR03+PK6Cfnp0l2f6P3c2Io3lkqlR/NyRumuXlJalVWT
	4+j5X1J5bzhicyO8jISDEUeN53URLxjXXBlJgA3V8jO1SzzKYCV34jr7ZFG/0WWhj20L/HJO3jwyy
	50ShxVgWTtBJsJDZnx4C6xUaNYonbdRq+ySsh8OUuTLyBm/vlpVRfB/e3rOQddMvBGrgWqu6lBKtG
	CWdgJOUXCzYo8s+bJZRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqnwj-00000004ptv-2abA;
	Sun, 31 Mar 2024 05:41:33 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqnwd-00000004psz-3UUd
	for linux-rockchip@lists.infradead.org;
	Sun, 31 Mar 2024 05:41:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711863688; x=1743399688;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=rgBxQWb018sUA1O77Ck6hkUHlAofNm8E+53lqjOtZa0=;
  b=WK4ad/M4ckkdRzSuodNc9ixANj3Ui4JZ545H3yozizxRaoR4e8JyxBEY
   yKtdT97/hrZPh+dI6j3qlnQLIyf8ny1+uxwgK8p5ttkSxlpSLXuSVjELe
   XfsKoj4PCuJbNfDYhtuY74MGXu8Okd7LWfv1bdY6SO3XTF6C3IrJ8tm98
   ikNs1Rq/JxVlFg6Kw/buTsLqxtl37tblZ2ixQZrL8fIpsl7zHsgAkCQ48
   SGpzHR0eacb9fzFIx8WrFbSQrY1kxeY00SZfeoLCCPH1rFqyAa4NzNL4w
   7uNVC8zek7yAH/FoGPSCmfuD+ZZK7/Ikj5DRgc3wIzzOhEK0oGI6p80xS
   w==;
X-CSE-ConnectionGUID: EPI4QR4tSVadamjX0Cp1ig==
X-CSE-MsgGUID: ijs7L3uQQdOfFgX+0VPDsg==
X-IronPort-AV: E=McAfee;i="6600,9927,11029"; a="10793225"
X-IronPort-AV: E=Sophos;i="6.07,169,1708416000"; 
   d="scan'208";a="10793225"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2024 22:41:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,169,1708416000"; 
   d="scan'208";a="17830104"
Received: from lkp-server01.sh.intel.com (HELO 3d808bfd2502) ([10.239.97.150])
  by orviesa006.jf.intel.com with ESMTP; 30 Mar 2024 22:41:17 -0700
Received: from kbuild by 3d808bfd2502 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rqnwQ-0000py-1f;
	Sun, 31 Mar 2024 05:41:14 +0000
Date: Sun, 31 Mar 2024 13:40:32 +0800
From: kernel test robot <lkp@intel.com>
To: Damien Le Moal <dlemoal@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <helgaas@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 19/19] PCI: rockchip-ep: Handle PERST signal in endpoint
 mode
Message-ID: <202403311327.3pGGy6Qm-lkp@intel.com>
References: <20240329090945.1097609-20-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240329090945.1097609-20-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_224127_953869_1AA86297 
X-CRM114-Status: GOOD (  17.74  )
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

Hi Damien,

kernel test robot noticed the following build errors:

[auto build test ERROR on pci/next]
[also build test ERROR on pci/for-linus linus/master v6.9-rc1 next-20240328]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Damien-Le-Moal/PCI-endpoint-Introduce-pci_epc_check_func/20240329-171158
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/20240329090945.1097609-20-dlemoal%40kernel.org
patch subject: [PATCH 19/19] PCI: rockchip-ep: Handle PERST signal in endpoint mode
config: sparc-allyesconfig (https://download.01.org/0day-ci/archive/20240331/202403311327.3pGGy6Qm-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240331/202403311327.3pGGy6Qm-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403311327.3pGGy6Qm-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/pci/controller/pcie-rockchip-ep.c: In function 'rockchip_pcie_ep_perst_irq_thread':
>> drivers/pci/controller/pcie-rockchip-ep.c:633:9: error: implicit declaration of function 'irq_set_irq_type'; did you mean 'irq_set_irq_wake'? [-Werror=implicit-function-declaration]
     633 |         irq_set_irq_type(ep->perst_irq,
         |         ^~~~~~~~~~~~~~~~
         |         irq_set_irq_wake
   drivers/pci/controller/pcie-rockchip-ep.c: In function 'rockchip_pcie_ep_setup_irq':
>> drivers/pci/controller/pcie-rockchip-ep.c:657:9: error: implicit declaration of function 'irq_set_status_flags' [-Werror=implicit-function-declaration]
     657 |         irq_set_status_flags(ep->perst_irq, IRQ_NOAUTOEN);
         |         ^~~~~~~~~~~~~~~~~~~~
>> drivers/pci/controller/pcie-rockchip-ep.c:657:45: error: 'IRQ_NOAUTOEN' undeclared (first use in this function); did you mean 'IRQF_NO_AUTOEN'?
     657 |         irq_set_status_flags(ep->perst_irq, IRQ_NOAUTOEN);
         |                                             ^~~~~~~~~~~~
         |                                             IRQF_NO_AUTOEN
   drivers/pci/controller/pcie-rockchip-ep.c:657:45: note: each undeclared identifier is reported only once for each function it appears in
   cc1: some warnings being treated as errors


vim +633 drivers/pci/controller/pcie-rockchip-ep.c

   620	
   621	static irqreturn_t rockchip_pcie_ep_perst_irq_thread(int irq, void *data)
   622	{
   623		struct pci_epc *epc = data;
   624		struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
   625		struct rockchip_pcie *rockchip = &ep->rockchip;
   626		u32 perst = gpiod_get_value(rockchip->ep_gpio);
   627	
   628		if (perst)
   629			rockchip_pcie_ep_perst_assert(ep);
   630		else
   631			rockchip_pcie_ep_perst_deassert(ep);
   632	
 > 633		irq_set_irq_type(ep->perst_irq,
   634				 (perst ? IRQF_TRIGGER_HIGH : IRQF_TRIGGER_LOW));
   635	
   636		return IRQ_HANDLED;
   637	}
   638	
   639	static int rockchip_pcie_ep_setup_irq(struct pci_epc *epc)
   640	{
   641		struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
   642		struct rockchip_pcie *rockchip = &ep->rockchip;
   643		struct device *dev = rockchip->dev;
   644		int ret;
   645	
   646		if (!rockchip->ep_gpio)
   647			return 0;
   648	
   649		/* PCIe reset interrupt */
   650		ep->perst_irq = gpiod_to_irq(rockchip->ep_gpio);
   651		if (ep->perst_irq < 0) {
   652			dev_err(dev, "No corresponding IRQ for PERST GPIO\n");
   653			return ep->perst_irq;
   654		}
   655	
   656		ep->perst_asserted = true;
 > 657		irq_set_status_flags(ep->perst_irq, IRQ_NOAUTOEN);
   658		ret = devm_request_threaded_irq(dev, ep->perst_irq, NULL,
   659						rockchip_pcie_ep_perst_irq_thread,
   660						IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
   661						"pcie-ep-perst", epc);
   662		if (ret) {
   663			dev_err(dev, "Request PERST GPIO IRQ failed %d\n", ret);
   664			return ret;
   665		}
   666	
   667		return 0;
   668	}
   669	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
