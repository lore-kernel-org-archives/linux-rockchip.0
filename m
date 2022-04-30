Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7B63C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 11:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUNoqSbAha5NPREwgdRPl4/KTbi5d1ffDVuhBMG3bCA=; b=C9oSMGKyfSOrXU
	FjmgRuhY7i4YSvpiCWJmLpvzr805k2J49dHw5N6iprEd9tSJOdijwYnQiRdtBNnssBhybtHd20S9p
	ZLKJlDJ128q2xkRMN6kbht3UvtW60SYRRjGqdM+gvB+29repAgocqohPv+TvkGuKHn+mga6YTzOuB
	7lIG1Wp2gTJUjavhjdjpi/C2r/4kQ5+de/e2/HnTb+fY7/huTWECdgNwYcH0UPzxfFaIhGOJcCaZI
	FmUqleGzlCA+r/XOcnzBBV5mfhGtZohpQVd4VHw+AqbKzv9Tb87K88adjSLrVImcQpk3fG6WHpc01
	NKCxAWtysp3ePG5rjShw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkkx9-00E73W-44; Sat, 30 Apr 2022 11:07:55 +0000
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkkx6-00E72H-Pp; Sat, 30 Apr 2022 11:07:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651316872; x=1682852872;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=iufLhP9T3YBGfqs3kmQxcaVhrknn6J13wPNVqrqCmBk=;
 b=NTeYswo/tGkGJqPX6sfi1ufYl1lw/Y3XPoHdThaDSubToZMduyAgC6Wr
 F9ShkYdm1UfGqTiDTHGfe8FM3JXqDvGsCpH9LaTSPIBJbh8mdgmXgaS58
 NuY63yS7xwZbvl+ig40lyssGQQELOFTkKmZ7+HS2Ms0lIChScXEpGra/e
 3r28W+yOR4c9SIbz9Dj7/9OGsfUmuwNTWl/em5T5c6d7Jx9PEqFbXONyn
 meMWH/qsRaSowHvPkweoBiDqTEq1Kaut+4DafkF0jN38mv9WXMs1hfLN9
 4oKk8dn28XrEuxhyuL5smJFgzdcCsbbYePDTARZ9NUXx69GIgvCtYYL/T A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="327377602"
X-IronPort-AV: E=Sophos;i="5.91,187,1647327600"; d="scan'208";a="327377602"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2022 04:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,187,1647327600"; d="scan'208";a="543773406"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 30 Apr 2022 04:07:48 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nkkx1-00079v-Fc;
 Sat, 30 Apr 2022 11:07:47 +0000
Date: Sat, 30 Apr 2022 19:06:50 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
 Furkan Kardame <f.kardame@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: rockchip: add dts for Firefly Station
 M2 rk3566
Message-ID: <202204301929.bZ7P8lrZ-lkp@intel.com>
References: <20220429115252.2360496-8-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220429115252.2360496-8-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_040752_947902_9A4EAB61 
X-CRM114-Status: GOOD (  14.47  )
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

Hi Peter,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on robh/for-next]
[also build test ERROR on arm/for-next arm64/for-next/core clk/clk-next kvmarm/next shawnguo/for-next soc/for-next v5.18-rc4]
[cannot apply to rockchip/for-next xilinx-xlnx/master keystone/next next-20220429]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Peter-Geis/Add-support-for-several-new-rk3566-SBCs/20220429-195433
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: arm64-randconfig-r021-20220428 (https://download.01.org/0day-ci/archive/20220430/202204301929.bZ7P8lrZ-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 400775649969b9baf3bc2a510266e7912bb16ae9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/8e40f3685ab414fc5e5e003d51b62065a3880b6c
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Peter-Geis/Add-support-for-several-new-rk3566-SBCs/20220429-195433
        git checkout 8e40f3685ab414fc5e5e003d51b62065a3880b6c
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts:566.1-16 Label or path usb_host0_xhci not found
>> Error: arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts:570.1-16 Label or path usb_host1_xhci not found
   FATAL ERROR: Syntax error parsing input tree

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
