Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 532BDC49EA1
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 01:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRRbfoywA/ke7WlRoPL6002KLAnRFGncK4TG9urL49E=; b=pvWic5olwayhyH
	jRsS4nx8EA5RfK11X53Ps+Ua+xg8Y8lNDJEZNnTkhGg0192rEM1In/YIPnn2wJ84Pr1WzWMFCFIQG
	c/wwJ7+91HjBHLnoyr5OKom6FB81JexMlny0zKyz6IU8Iqqh1yko9Oc30ZX2uWOOR6PydU9+R0wBc
	LZjhXA7qPD3Zsy7F//baJPP/PphTE8Y4G8Z/zFxMhn/d0xUv9lgg+iunnQrOshpBiymf7qhGdN6R0
	+42d+MYN+OUIs1HyH3vN3dNbxdRRABUqgDL8upcATN0kc+g0iSrY7tVIwUQqrwuoPlAqyoFHGTZdN
	Hx1b3jRSbTwMuPTUi6ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saPx5-0000000CQsW-1cAJ;
	Sun, 04 Aug 2024 01:22:27 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saPwY-0000000CQml-2B0C;
	Sun, 04 Aug 2024 01:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1722734515; x=1754270515;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ULD8hu/6LbE9TECygni6jXGyKWNJRoJvqssfORjqyc8=;
  b=TB/QhcjCA0NpUyrVDfA/aOi4A709nvV2FY8ZX139uidDE/RJ2dANtMIB
   Eee7dIL2WESChEhqjSA+pvlPIisz8jStePrTBZX1kUK7BsWGp/jBB8Ocb
   8kxQL2i44YyJ6O//4VuGrMi3/b/IHJLKeC/kY1TbMPCxRV4N+Pd8xJOBB
   vm82klwyLA5qW3sB1nusRHl7Oi9RrAHxF9yjd/UiM+mVtb0b29f+b5zqH
   5R3rwumpnKnF1l5FzYTphhhmCcpYBbFWJQPhCOmxJTxW2YCZBWa/zaT6D
   8HsrrVOuJJWr4oKr/E7wBJG3kS978YTP3bT3nIiPzkBBGF/zkQYJ2ZJ8U
   w==;
X-CSE-ConnectionGUID: zlY/G22xS3CG7HXJQvIVGA==
X-CSE-MsgGUID: oFDFzX6CQLOXQn5U2uYzbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11153"; a="20859138"
X-IronPort-AV: E=Sophos;i="6.09,261,1716274800"; 
   d="scan'208";a="20859138"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2024 18:21:45 -0700
X-CSE-ConnectionGUID: cqwGBeSoQvuKkFJN5XcBXA==
X-CSE-MsgGUID: 44clfnrcTBWWL/76f/LRnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,261,1716274800"; 
   d="scan'208";a="55705972"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
  by orviesa009.jf.intel.com with ESMTP; 03 Aug 2024 18:21:41 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1saPwH-00013S-38;
	Sun, 04 Aug 2024 01:21:37 +0000
Date: Sun, 4 Aug 2024 09:21:33 +0800
From: kernel test robot <lkp@intel.com>
To: Heiko Stuebner <heiko@sntech.de>, lee@kernel.org, jdelvare@suse.com,
	linux@roeck-us.net, dmitry.torokhov@gmail.com, pavel@ucw.cz
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	ukleinek@debian.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v3 2/7] mfd: add base driver for qnap-mcu devices
Message-ID: <202408040850.uHsR1c30-lkp@intel.com>
References: <20240731212430.2677900-3-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240731212430.2677900-3-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240803_182154_629913_D37CB7F1 
X-CRM114-Status: GOOD (  16.26  )
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

Hi Heiko,

kernel test robot noticed the following build warnings:

[auto build test WARNING on next-20240801]
[also build test WARNING on v6.11-rc1]
[cannot apply to groeck-staging/hwmon-next lee-leds/for-leds-next lee-mfd/for-mfd-next lee-mfd/for-mfd-fixes linus/master v6.11-rc1 v6.10 v6.10-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Heiko-Stuebner/dt-bindings-mfd-add-binding-for-qnap-ts433-mcu-devices/20240802-103948
base:   next-20240801
patch link:    https://lore.kernel.org/r/20240731212430.2677900-3-heiko%40sntech.de
patch subject: [PATCH v3 2/7] mfd: add base driver for qnap-mcu devices
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20240804/202408040850.uHsR1c30-lkp@intel.com/config)
compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project 423aec6573df4424f90555468128e17073ddc69e)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240804/202408040850.uHsR1c30-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408040850.uHsR1c30-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/mfd/qnap-mcu.c:17:
   In file included from include/linux/serdev.h:10:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:548:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     548 |         val = __raw_readb(PCI_IOBASE + addr);
         |                           ~~~~~~~~~~ ^
   include/asm-generic/io.h:561:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     561 |         val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:37:51: note: expanded from macro '__le16_to_cpu'
      37 | #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
         |                                                   ^
   In file included from drivers/mfd/qnap-mcu.c:17:
   In file included from include/linux/serdev.h:10:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:574:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     574 |         val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
         |                                                         ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__le32_to_cpu'
      35 | #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
         |                                                   ^
   In file included from drivers/mfd/qnap-mcu.c:17:
   In file included from include/linux/serdev.h:10:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:14:
   In file included from arch/hexagon/include/asm/io.h:328:
   include/asm-generic/io.h:585:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     585 |         __raw_writeb(value, PCI_IOBASE + addr);
         |                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:595:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     595 |         __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
   include/asm-generic/io.h:605:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
     605 |         __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
         |                                                       ~~~~~~~~~~ ^
>> drivers/mfd/qnap-mcu.c:109:5: warning: format specifies type 'unsigned long' but the argument has type 'size_t' (aka 'unsigned int') [-Wformat]
     108 |                 dev_warn(dev, "received %lu bytes, we were not waiting for\n",
         |                                         ~~~
         |                                         %zu
     109 |                          size);
         |                          ^~~~
   include/linux/dev_printk.h:156:70: note: expanded from macro 'dev_warn'
     156 |         dev_printk_index_wrap(_dev_warn, KERN_WARNING, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                                     ~~~     ^~~~~~~~~~~
   include/linux/dev_printk.h:110:23: note: expanded from macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ~~~    ^~~~~~~~~~~
   7 warnings generated.


vim +109 drivers/mfd/qnap-mcu.c

    96	
    97	static size_t qnap_mcu_receive_buf(struct serdev_device *serdev,
    98					   const u8 *buf, size_t size)
    99	{
   100		struct device *dev = &serdev->dev;
   101		struct qnap_mcu *mcu = dev_get_drvdata(dev);
   102		struct qnap_mcu_reply *reply = mcu->reply;
   103		const u8 *src = buf;
   104		const u8 *end = buf + size;
   105	
   106		mutex_lock(&mcu->reply_lock);
   107		if (!reply) {
   108			dev_warn(dev, "received %lu bytes, we were not waiting for\n",
 > 109				 size);
   110			mutex_unlock(&mcu->reply_lock);
   111			return size;
   112		}
   113	
   114		while (src < end) {
   115			reply->data[reply->received] = *src++;
   116			reply->received++;
   117	
   118			if (reply->received == reply->length) {
   119				complete(&reply->done);
   120				mutex_unlock(&mcu->reply_lock);
   121	
   122				/*
   123				 * We report the consumed number of bytes. If there
   124				 * are still bytes remaining (though there shouldn't)
   125				 * the serdev layer will re-execute this handler with
   126				 * the remainder of the Rx bytes.
   127				 */
   128				return src - buf;
   129			}
   130		}
   131	
   132		/*
   133		 * The only way to get out of the above loop and end up here
   134		 * is through consuming all of the supplied data, so here we
   135		 * report that we processed it all.
   136		 */
   137		mutex_unlock(&mcu->reply_lock);
   138		return size;
   139	}
   140	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
