Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 362E6C54FC6
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 May 2025 11:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOTouJHPUwbazjEcNCKTzkqUwnzz7z73KcKQHNZGqbg=; b=3KcxeqtpD5JwV+
	1vA5TyBe/kTzjq1MrgQSAIo8UKPqSV2taTJAx1O6ve3tcn5Bb1ClXiKdjrZ8sj4YYkpd7OSd0Psyz
	AUh4OrVdbMePim9ZBnF6rpVudexygmmRqmGcIUmUUNz94UdconNGsYqovMQTlZdb+66AtPnq+deTF
	qcaiElCZJtUCBAcMwzdk/eyZ+TsNTqPyoAW4JGb6OqYO2t9BdKHkYX6oIyLo+RTmA6r4L3CL3QOiG
	WkNOFEZ+Hpu6VqtTz6/pgwKUWEcEHrxKfIe1BG/XyfxCR33eurrEQn6KBUuYmqKHwMGtLL+yYiLbV
	RjWtUzWdVH2b5cCT0TwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uImdp-00000005lv6-0o1t;
	Sat, 24 May 2025 11:02:13 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uImbZ-00000005lPI-1VM8;
	Sat, 24 May 2025 10:59:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1748084394; x=1779620394;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=am5CZEL1GEppvkfskPtSLJbGMlXiDh88jJ3Sw8xP1P4=;
  b=VgUaVAPkZkrn3J+rijWIhvI1jKqB1kFKSav6PRLw9D2uNYoPkSBoY2s6
   2HfuZguyvsNcloXJnDTYG0s68gnlqK+KwWb17aJ3lXDPYPI0VWOdOogwH
   14NWhQtXOBNc8hLq4Hl5L0O93JGFNLEqJyJ/elQiwsyiGlF7UaeTBxJFa
   oUBvUymsIRMxsZO6g03tNeBYJFaHous+d0Fd3aSJO3Ry2+n7ooP1Osm48
   vpmsW6xW7Jg/k1Hw5831hEUD0KSQz7jA9D3PDooP4hGZP5b0nklg+8MTq
   Accfh4ZwGpKS/3H+DtWEEM1iHslVHhC6nRRKyUnWz/mNlHoolSDbK/Eec
   Q==;
X-CSE-ConnectionGUID: 9jP6yAHNTFaHwGAtk4z0ag==
X-CSE-MsgGUID: zR58//+SS3COAzHGqZfFLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="61532500"
X-IronPort-AV: E=Sophos;i="6.15,311,1739865600"; 
   d="scan'208";a="61532500"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 May 2025 03:59:50 -0700
X-CSE-ConnectionGUID: aEIjQGFITtieISE43Lb8Wg==
X-CSE-MsgGUID: dDtghmnrRTmokGr6y73H6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,311,1739865600"; 
   d="scan'208";a="146509247"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
  by orviesa004.jf.intel.com with ESMTP; 24 May 2025 03:59:46 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uImbQ-000R8u-1K;
	Sat, 24 May 2025 10:59:44 +0000
Date: Sat, 24 May 2025 18:59:35 +0800
From: kernel test robot <lkp@intel.com>
To: Elaine Zhang <zhangqing@rock-chips.com>, mkl@pengutronix.de,
	kernel@pengutronix.de, mailhol.vincent@wanadoo.fr, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	cl@rock-chips.com, kever.yang@rock-chips.com
Cc: oe-kbuild-all@lists.linux.dev, linux-can@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/4] net: can: rockchip: Refactor the
 rkcanfd_devtype_data structure
Message-ID: <202505241818.tw02Bia6-lkp@intel.com>
References: <20250523075422.4010083-3-zhangqing@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250523075422.4010083-3-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250524_035953_489232_019FEF2F 
X-CRM114-Status: GOOD (  12.05  )
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

Hi Elaine,

kernel test robot noticed the following build warnings:

[auto build test WARNING on mkl-can-next/testing]
[also build test WARNING on robh/for-next linus/master v6.15-rc7 next-20250523]
[cannot apply to rockchip/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Elaine-Zhang/dt-bindings-can-rockchip_canfd-add-rk3576-CAN-FD-controller/20250523-211340
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can-next.git testing
patch link:    https://lore.kernel.org/r/20250523075422.4010083-3-zhangqing%40rock-chips.com
patch subject: [PATCH v5 2/4] net: can: rockchip: Refactor the rkcanfd_devtype_data structure
config: loongarch-allyesconfig (https://download.01.org/0day-ci/archive/20250524/202505241818.tw02Bia6-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250524/202505241818.tw02Bia6-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202505241818.tw02Bia6-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/net/can/rockchip/rockchip_canfd-core.c:25:
>> drivers/net/can/rockchip/rockchip_canfd.h:439:29: warning: 'priv' defined but not used [-Wunused-variable]
     439 | static struct rkcanfd_priv *priv;
         |                             ^~~~


vim +/priv +439 drivers/net/can/rockchip/rockchip_canfd.h

   438	
 > 439	static struct rkcanfd_priv *priv;
   440	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
