Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A99C10DCE
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Dec 2023 07:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjP3wZYnFr0EriqXQvI7QX9Ydo8hjWuYN3NEsH0nUPk=; b=nvHBDUahyrnjKf
	5O/KPWv4sZPUhKaBrDH4GHb8EWGofVyXHlgIIjWbRc63+IWu6IShBlRjxP+ebDvCnnKnM6FF6FsGA
	29kyoVYyZcnDy1cn0IDNDW34Po/To49BPA/LAS1JDFVqy7gRq3ols/igLdJ/KfCdizPmi/KMEGiem
	qUdD4jew2JHPdWbFfeTUCMj7Ufj3rAByOg5Y0bG6j2eDzqJAdA0E0CDo4h7qpHqcrVu/KDXN8di8r
	SK1mi/BrqJkWLOudALNE8HvavgMQpY588yDrNdDBFFzLbs8uWDjVquh5q558lUvQiB02gU0lrytHE
	WUmHkQ12xhbZq3xz/cvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCE5M-0015H7-1Z;
	Sun, 10 Dec 2023 07:18:44 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCE5I-0015GB-32;
	Sun, 10 Dec 2023 07:18:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1702192722; x=1733728722;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=XEDe53FhnKOoAuCE2jD8tTR9AUPAF2wP57RC8AH32QQ=;
  b=F+IDqJqBPHak7SqiOhILyx13U/cNmJvfp1bDtf+wU7FxD3d2yTQb/nlc
   YPoBDAEUEoUbb561KAGJn4YzOAXHh3ZZ7J1w7Ymf++2Fndfe+kmRXg4H5
   1d5JX38Ao3TwmGd1Gsna5+UKv3IYhAh6qW8CvMNSD1C2ZtaLaFGVZujpE
   zdJxcZ2crjTAy45/0NlBcQ6XdzxcYPdQUde6qeE4S8vaYG+VIo2GIRDsb
   c2Y07NhDslRDH+LF+2HE/UlCcagT8upL4p7D8mGCTDU9bTE1Wn2V7wGzu
   12n+t/e9crG0XjzQJ9Dslgt5y9dQjZPwBt5knkZR7SAkMcmvlFVLEwj5L
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10919"; a="13236066"
X-IronPort-AV: E=Sophos;i="6.04,265,1695711600"; 
   d="scan'208";a="13236066"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Dec 2023 23:18:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10919"; a="776266363"
X-IronPort-AV: E=Sophos;i="6.04,265,1695711600"; 
   d="scan'208";a="776266363"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 09 Dec 2023 23:18:33 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rCE59-000GWT-1h;
	Sun, 10 Dec 2023 07:18:31 +0000
Date: Sun, 10 Dec 2023 15:18:30 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de
Cc: oe-kbuild-all@lists.linux.dev, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 3/5] arm64: dts: rockchip: Add support for rk3588s based
 board CoolPi 4B
Message-ID: <202312101526.ApwoImlf-lkp@intel.com>
References: <20231209103802.1568552-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231209103802.1568552-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_231841_126384_E9328D50 
X-CRM114-Status: GOOD (  10.68  )
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

Hi Andy,

kernel test robot noticed the following build errors:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on robh/for-next linus/master v6.7-rc4 next-20231208]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Andy-Yan/dt-bindings-vendor-prefixes-Add-Cool-Pi/20231209-184214
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20231209103802.1568552-1-andyshrk%40163.com
patch subject: [PATCH 3/5] arm64: dts: rockchip: Add support for rk3588s based board CoolPi 4B
config: arm64-defconfig (https://download.01.org/0day-ci/archive/20231210/202312101526.ApwoImlf-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231210/202312101526.ApwoImlf-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202312101526.ApwoImlf-lkp@intel.com/

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts:696.1-7 Label or path hdmi0 not found
   FATAL ERROR: Syntax error parsing input tree

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
