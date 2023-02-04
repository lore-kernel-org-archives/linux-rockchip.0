Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5438FC636CD
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Feb 2023 04:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaWp0FXMv3n9yNTGT+OUplXCpVNvwZJmrcXvb1LOIXM=; b=WzM3Y2axn3YGCU
	CYlDhLpGZ/IEqvXjsKrv7Ak7tizi2Z+0BmVyIL2szYW6pwGT7ZMQvXfNtpEeHh6daK4yzf7Fj5Ofh
	lT2hJ5FORknO4oQ3UgeH+Ii3LGrtOBAdYU3iv+l4MzE4LDkzlUXS4kbPWV3ZKbsAd448lBTZWBwi8
	eViSivhrm9jMU2O8xxAkpD+/sotIo97zMrwCtoDPMZpp6nXZ0Dw6dEZ65RoIj/TTOQOQCwTJnlf0B
	4XrhzRzs/QazeW0DmpRbVibiA1gqZwQYBhqMAH11cK9sHuzOAXQ+bFzla/uspG4yUOP913gmSMjnJ
	WHKr3R7FWZmFWH5Dc62Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOAVf-004SLN-S2; Sat, 04 Feb 2023 04:50:43 +0000
Received: from mga04.intel.com ([192.55.52.120])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOAVc-004SKa-By; Sat, 04 Feb 2023 04:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1675486240; x=1707022240;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=eqgGciLsAYrfeY4BTuA+7hyygKm5BHIi0UdbiRPqWrw=;
  b=h4hQUZY+m2ykwA2v5EX5T0yEkV7CAWcZqPZLGhZBN0TQazZ0ZBRmqI2D
   t85unwRfHZA1MxwIEtRB6BUSstFLv7IHwlgBXbq976S1va/x4LBnnKNgT
   u+ldX3+KhdVHRxZwqatojxPBpyFEBKRTptzeBknkAwVpvsPE750SmWj46
   +nU5jkMd48yPussIwxg6zYqMooD7DkmtVm5N5b1bHDF6AhZdAhJZ9jGcw
   n6FvwHn2uEqjRxv8sFjLU1/wT4BIVE8hSZ9tYIvhdff4uVgXDkFm5CbUd
   ytl8qNuRfAS4cnOhyU6qnCcupLdSXRFZRYdwbnC4Sb3LDk/0yk33alf1p
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="327553177"
X-IronPort-AV: E=Sophos;i="5.97,272,1669104000"; 
   d="scan'208";a="327553177"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2023 20:50:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="839822123"
X-IronPort-AV: E=Sophos;i="5.97,272,1669104000"; 
   d="scan'208";a="839822123"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 03 Feb 2023 20:50:32 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pOAVT-00013J-2X;
	Sat, 04 Feb 2023 04:50:31 +0000
Date: Sat, 4 Feb 2023 12:49:49 +0800
From: kernel test robot <lkp@intel.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-pm@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pegutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 18/18] dt-bindings: devfreq: event: convert Rockchip DFI
 binding to yaml
Message-ID: <202302041211.DPhrQayE-lkp@intel.com>
References: <20230203125012.3804008-19-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230203125012.3804008-19-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_205040_485507_BDA7D2A5 
X-CRM114-Status: GOOD (  13.07  )
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

Hi Sascha,

I love your patch! Perhaps something to improve:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on arm/for-next arm/fixes arm64/for-next/core clk/clk-next kvmarm/next shawnguo/for-next soc/for-next xilinx-xlnx/master linus/master v6.2-rc6 next-20230203]
[cannot apply to chanwoo/devfreq-testing]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sascha-Hauer/PM-devfreq-rockchip-dfi-Embed-desc-into-private-data-struct/20230203-205252
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20230203125012.3804008-19-s.hauer%40pengutronix.de
patch subject: [PATCH 18/18] dt-bindings: devfreq: event: convert Rockchip DFI binding to yaml
reproduce:
        # https://github.com/intel-lab-lkp/linux/commit/b6385ff60bdb4b1b2895d87a7f294fde81f10ee9
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Sascha-Hauer/PM-devfreq-rockchip-dfi-Embed-desc-into-private-data-struct/20230203-205252
        git checkout b6385ff60bdb4b1b2895d87a7f294fde81f10ee9
        make menuconfig
        # enable CONFIG_COMPILE_TEST, CONFIG_WARN_MISSING_DOCUMENTS, CONFIG_WARN_ABI_ERRORS
        make htmldocs

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> Warning: Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml references a file that doesn't exist: Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
