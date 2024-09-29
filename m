Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E339CF6491
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 02:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgbCPPmcdXUdLz9pJ5GKJB+b9VE0YzsyZ2J8CHvwK+Q=; b=OjNYJmRBrmQl4W
	Y1Cdjam//+LuMG4oF9Xso/zBb/LDlCnWBwNT10uU8+As34ztvDYvugOHbq3ppTfNZLwMEJlCFlz55
	NVrhat8kva3PoeYfEEaEja4yHE5BSDkCvYdWbDlsUZac0/E6pQmzO2DtqEaME5PyKTIjwoCbtlKJf
	6fvvKfBLXmlea90J9dkqC+Ergwm5sShwqhmIhkLWaCg+KuPk/Ry1jWj7orDQ3M0i9z6NsgN5+FPCb
	/n1a9BJbLKqMa+wKTEcd/fX9NUCZNW7yQZs5gJNeH9qSzzo9e+U4bLLMJfs+BmfbOmQms4Qh7Q13S
	I/axXD0jr+SP1Tj8FClA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sujP2-0000000DxNH-2zuN;
	Sun, 29 Sep 2024 02:11:16 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sujOz-0000000DxMq-22B7;
	Sun, 29 Sep 2024 02:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1727575874; x=1759111874;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Hv4r9dZwC4uBhsY6TX+1JT3nKDoN7iVVRNZ4tSBjDOQ=;
  b=dWVBwe8SUfbusyxlp69mA8f/ymsLb4Sewrw1QjLDftaR7IQNDBV5JFLh
   XhKiLU4tGZcMbWvibdP9Bj1CixkUKuj4eTRCbrggepBOrzX6DNOkiNpUZ
   77Eg7qatoh/K8daJ/IABFh4vuuQ5XH4nHGrYvkQOlQ3MZw3SsD7PbQFIL
   rJ0A8RdeljtEZbh12jSkjzmRPqFqPRn8qOtmA1zCRZ0ZXeTZfWAOVv9/v
   zeKNhzWZo1Y8JTbQnJ8UjdQ2eQqd/vN2k5BcRHyh7n9hho3rq4VRRwPih
   B8xZLXvpbla3ZWMYHmaRFpqYEsDFbUDZtUPlcTDx5dHKpZTfLxffL9d3W
   g==;
X-CSE-ConnectionGUID: YB9P1tcyRliIOSXZCKud7g==
X-CSE-MsgGUID: Bb/H+9IARaKo0hcYZgL/lA==
X-IronPort-AV: E=McAfee;i="6700,10204,11209"; a="44150317"
X-IronPort-AV: E=Sophos;i="6.11,162,1725346800"; 
   d="scan'208";a="44150317"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2024 19:11:12 -0700
X-CSE-ConnectionGUID: bCBpWIOOT0mhj+06HAz3og==
X-CSE-MsgGUID: Jwfg4XmyT7qx1/3T6bCFjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,162,1725346800"; 
   d="scan'208";a="103729791"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
  by fmviesa001.fm.intel.com with ESMTP; 28 Sep 2024 19:11:09 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sujOs-000NpP-1c;
	Sun, 29 Sep 2024 02:11:06 +0000
Date: Sun, 29 Sep 2024 10:10:13 +0800
From: kernel test robot <lkp@intel.com>
To: Dragan Simic <dsimic@manjaro.org>, linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, broonie@kernel.org,
	heiko@sntech.de, gregkh@linuxfoundation.org, rafael@kernel.org,
	oss@helene.moe, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] driver core: Add device probe log helper
 dev_warn_probe()
Message-ID: <202409290914.ODQyF8lR-lkp@intel.com>
References: <2fd9a60e0efe906dc7a203cd652c8d0b7f932470.1727496560.git.dsimic@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2fd9a60e0efe906dc7a203cd652c8d0b7f932470.1727496560.git.dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240928_191113_651537_7FB70753 
X-CRM114-Status: GOOD (  17.67  )
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

Hi Dragan,

kernel test robot noticed the following build errors:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on broonie-spi/for-next driver-core/driver-core-testing driver-core/driver-core-next driver-core/driver-core-linus linus/master v6.11 next-20240927]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Dragan-Simic/spi-rockchip-Perform-trivial-code-cleanups/20240928-121548
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/2fd9a60e0efe906dc7a203cd652c8d0b7f932470.1727496560.git.dsimic%40manjaro.org
patch subject: [PATCH v2 4/5] driver core: Add device probe log helper dev_warn_probe()
config: s390-allnoconfig (https://download.01.org/0day-ci/archive/20240929/202409290914.ODQyF8lR-lkp@intel.com/config)
compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project 7773243d9916f98ba0ffce0c3a960e4aa9f03e81)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240929/202409290914.ODQyF8lR-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409290914.ODQyF8lR-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from drivers/base/core.c:11:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:32:
   In file included from include/linux/device/driver.h:21:
   In file included from include/linux/module.h:19:
   In file included from include/linux/elf.h:6:
   In file included from arch/s390/include/asm/elf.h:181:
   In file included from arch/s390/include/asm/mmu_context.h:11:
   In file included from arch/s390/include/asm/pgalloc.h:18:
   In file included from include/linux/mm.h:2228:
   include/linux/vmstat.h:514:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     514 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
   In file included from drivers/base/core.c:27:
   In file included from include/linux/netdevice.h:38:
   In file included from include/net/net_namespace.h:43:
   In file included from include/linux/skbuff.h:28:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:93:
   include/asm-generic/io.h:548:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     548 |         val = __raw_readb(PCI_IOBASE + addr);
         |                           ~~~~~~~~~~ ^
   include/asm-generic/io.h:561:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     561 |         val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:37:59: note: expanded from macro '__le16_to_cpu'
      37 | #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
         |                                                           ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
     102 | #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
         |                                                      ^
   In file included from drivers/base/core.c:27:
   In file included from include/linux/netdevice.h:38:
   In file included from include/net/net_namespace.h:43:
   In file included from include/linux/skbuff.h:28:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:93:
   include/asm-generic/io.h:574:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     574 |         val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:35:59: note: expanded from macro '__le32_to_cpu'
      35 | #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
         |                                                           ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
     115 | #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
         |                                                      ^
   In file included from drivers/base/core.c:27:
   In file included from include/linux/netdevice.h:38:
   In file included from include/net/net_namespace.h:43:
   In file included from include/linux/skbuff.h:28:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:93:
   include/asm-generic/io.h:585:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     585 |         __raw_writeb(value, PCI_IOBASE + addr);
         |                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:595:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     595 |         __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   include/asm-generic/io.h:605:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     605 |         __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   include/asm-generic/io.h:693:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     693 |         readsb(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:701:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     701 |         readsw(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:709:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     709 |         readsl(PCI_IOBASE + addr, buffer, count);
         |                ~~~~~~~~~~ ^
   include/asm-generic/io.h:718:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     718 |         writesb(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
   include/asm-generic/io.h:727:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     727 |         writesw(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
   include/asm-generic/io.h:736:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     736 |         writesl(PCI_IOBASE + addr, buffer, count);
         |                 ~~~~~~~~~~ ^
>> drivers/base/core.c:4988:9: error: incompatible pointer types assigning to 'va_list *' (aka '__builtin_va_list *') from 'struct __va_list_tag **' [-Werror,-Wincompatible-pointer-types]
    4988 |         vaf.va = &args;
         |                ^ ~~~~~
>> drivers/base/core.c:5055:1: warning: non-void function does not return a value [-Wreturn-type]
    5055 | }
         | ^
   drivers/base/core.c:5101:1: warning: non-void function does not return a value [-Wreturn-type]
    5101 | }
         | ^
   15 warnings and 1 error generated.


vim +4988 drivers/base/core.c

  4981	
  4982	static int dev_probe_failed(const struct device *dev, int err, bool fatal,
  4983				    const char *fmt, va_list args)
  4984	{
  4985		struct va_format vaf;
  4986	
  4987		vaf.fmt = fmt;
> 4988		vaf.va = &args;
  4989	
  4990		switch (err) {
  4991		case -EPROBE_DEFER:
  4992			device_set_deferred_probe_reason(dev, &vaf);
  4993			dev_dbg(dev, "error %pe: %pV", ERR_PTR(err), &vaf);
  4994			break;
  4995	
  4996		case -ENOMEM:
  4997			/* Don't print anything on -ENOMEM, there's already enough output */
  4998			break;
  4999	
  5000		default:
  5001			/* Log fatal final failures as errors, otherwise produce warnings */
  5002			if (fatal)
  5003				dev_err(dev, "error %pe: %pV", ERR_PTR(err), &vaf);
  5004			else
  5005				dev_warn(dev, "error %pe: %pV", ERR_PTR(err), &vaf);
  5006			break;
  5007		}
  5008	
  5009		return err;
  5010	}
  5011	
  5012	/**
  5013	 * dev_err_probe - probe error check and log helper
  5014	 * @dev: the pointer to the struct device
  5015	 * @err: error value to test
  5016	 * @fmt: printf-style format string
  5017	 * @...: arguments as specified in the format string
  5018	 *
  5019	 * This helper implements common pattern present in probe functions for error
  5020	 * checking: print debug or error message depending if the error value is
  5021	 * -EPROBE_DEFER and propagate error upwards.
  5022	 * In case of -EPROBE_DEFER it sets also defer probe reason, which can be
  5023	 * checked later by reading devices_deferred debugfs attribute.
  5024	 * It replaces the following code sequence::
  5025	 *
  5026	 * 	if (err != -EPROBE_DEFER)
  5027	 * 		dev_err(dev, ...);
  5028	 * 	else
  5029	 * 		dev_dbg(dev, ...);
  5030	 * 	return err;
  5031	 *
  5032	 * with::
  5033	 *
  5034	 * 	return dev_err_probe(dev, err, ...);
  5035	 *
  5036	 * Using this helper in your probe function is totally fine even if @err
  5037	 * is known to never be -EPROBE_DEFER.
  5038	 * The benefit compared to a normal dev_err() is the standardized format
  5039	 * of the error code, which is emitted symbolically (i.e. you get "EAGAIN"
  5040	 * instead of "-35"), and having the error code returned allows more
  5041	 * compact error paths.
  5042	 *
  5043	 * Returns @err.
  5044	 */
  5045	int dev_err_probe(const struct device *dev, int err, const char *fmt, ...)
  5046	{
  5047		va_list args;
  5048	
  5049		va_start(args, fmt);
  5050	
  5051		/* Use dev_err() for logging when err doesn't equal -EPROBE_DEFER */
  5052		dev_probe_failed(dev, err, true, fmt, args);
  5053	
  5054		va_end(args);
> 5055	}
  5056	EXPORT_SYMBOL_GPL(dev_err_probe);
  5057	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
