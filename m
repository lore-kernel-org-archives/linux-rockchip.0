Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41393CA0EED
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 12:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7LCiG7vqnt59BkId1k2/jKMYYHVLGMYjDwdgtCF81U=; b=5CnO3ebRRhP28z
	xmUm+HNHq3XccAN/wpZx/RgVklQVl/URB7X+7JukuEtO/MyGY3NRKBDK6jiYcX7vxC6DEDoupIrJ0
	9QlC833gtpBIWRh9OQfwjbtcqJimhdjVbyyN057MwV275R4NvtCF4WoNuLsO3/3JFjVB+3sCSRHXW
	LyZomoz24JChKIsqRNn/+BUA6KL0ATPTKUgdnQOHBhJ297QnH5Sx29f950oBNZeKJTlNzz6Xx4R2R
	WDbSCFdc+60s5p7toMcivie6trawFZI9UpK8JDH6PgQRwOtvNXrzgpVnvcp8nVBj9/VRuD2PlXfxq
	LFEMJt4MIAm/r0cnPsKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoLFo-0000000AOmc-08zE;
	Tue, 19 Aug 2025 12:15:52 +0000
Received: from mgamail.intel.com ([192.198.163.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoJSK-0000000A71M-1lM6;
	Tue, 19 Aug 2025 10:20:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1755598840; x=1787134840;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=S47ygKL32ruBO8bjIs8S4nUDrgHAc2oSYPXd6ncSwnQ=;
  b=W8XDfIKsNjX0wk1bKIn/ee/FC29vQYKDpo5UVSIFdA50zZhxDLpfLR41
   BiGB9FgUcnJJkiXSgMgVepHuWRxT04mUMokXkSx0H8DFaCe5AMpmZie50
   xqPBQLT+JvQEvA45gTisCpRJWGebFEIO3K9215kaQsgdKFztoYcbGbS8J
   0aka3PhDhRszA6RztBew7SQp0afSWerS80EoxiC9sN9lvh7pROU2xiiYQ
   w2vLyW9/wb9ry/qFmOOame9Cl6uzvV/vhHwf5F4ZtnZ4/yVxZk1Hly/ln
   Mk8NjadHmeW4gFXfG2rg/Hmry7TS0NgazC9RF4EsAKvWgdgbpWaZu/Db2
   g==;
X-CSE-ConnectionGUID: mkqjinUdTWa+pfShcdcgeA==
X-CSE-MsgGUID: hLGj+6AZTuCIscdMBxj6EQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="69210747"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; 
   d="scan'208";a="69210747"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2025 03:20:38 -0700
X-CSE-ConnectionGUID: lOIoTR8OSUOebrRJdcrf/Q==
X-CSE-MsgGUID: lQlgxSwwTqerOwWQ0WNYmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; 
   d="scan'208";a="172049373"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
  by orviesa003.jf.intel.com with ESMTP; 19 Aug 2025 03:20:35 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uoJSC-000Gjf-2S;
	Tue, 19 Aug 2025 10:20:32 +0000
Date: Tue, 19 Aug 2025 18:19:14 +0800
From: kernel test robot <lkp@intel.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH] thermal: rockchip: shut up GRF warning
Message-ID: <202508191909.EIZEWxiJ-lkp@intel.com>
References: <20250818-thermal-rockchip-grf-warning-v1-1-134152c97097@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250818-thermal-rockchip-grf-warning-v1-1-134152c97097@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_032040_470388_FB4FF902 
X-CRM114-Status: GOOD (  10.04  )
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

Hi Sebastian,

kernel test robot noticed the following build warnings:

[auto build test WARNING on c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9]

url:    https://github.com/intel-lab-lkp/linux/commits/Sebastian-Reichel/thermal-rockchip-shut-up-GRF-warning/20250819-012807
base:   c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
patch link:    https://lore.kernel.org/r/20250818-thermal-rockchip-grf-warning-v1-1-134152c97097%40kernel.org
patch subject: [PATCH] thermal: rockchip: shut up GRF warning
config: riscv-randconfig-001-20250819 (https://download.01.org/0day-ci/archive/20250819/202508191909.EIZEWxiJ-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project 93d24b6b7b148c47a2fa228a4ef31524fa1d9f3f)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250819/202508191909.EIZEWxiJ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202508191909.EIZEWxiJ-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/thermal/rockchip_thermal.c:133 struct member 'grf_mode' not described in 'rockchip_tsadc_chip'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
