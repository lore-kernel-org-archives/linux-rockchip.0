Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38B1AEB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jun 2023 00:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uexPX+3mhEOGEMeltDnfwiMkjl55TKyMKRqCmPvtrKg=; b=GLvQaHGISk5ktQ
	hhws6TqmPEuAp0wa9Xgr0WR0AnbW82rCG+99tgHivVvQn+A1DCfr+rsWUeem2KZuanQsmNbRobMn0
	I8+K5w+Fq9Y7vlM+EBoSkzoBfIt5pA7laVWjTP3yUFrHPAE+3IV6YY/k8k4tDZ2fTduhNt5wff371
	U0a4jsxEHDqbBsickNL703S+TsLOogDt0dPEl3vk51F0/a4oRl/lmyFmpc1obObVcn/lAUDSNZuRe
	SJh4QFTrVRXS++D9tGF+iMTkGlH0LuO7jTNaM8/0eBkq5AAtWeMiIrHIRyrgiTqhhaKIgVhUhKLQg
	4dTYa85aV12M0nJMnSNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCUck-00293g-0n;
	Fri, 23 Jun 2023 00:26:02 +0000
Received: from mga07.intel.com ([134.134.136.100])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCUcg-00291m-2Z;
	Fri, 23 Jun 2023 00:26:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1687479958; x=1719015958;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=xWb6G7Cg4aCmo6Vqc7o2CYZbvqZ1NqGkHb/WQ0tI0zo=;
  b=Ta4piFxTLbdeQT+1fvMaqTElXVZ8xxWJY+jZGGLBTATg7JJJbAN9L0Ox
   BnISfZ61AhufGqRgf0xMHNNGCNUr49J9WnRNWFUJxUKhkUyDSdPDc1Yke
   u5preepgPYq6g8CzM9GNoch6gaBMxSsPtCh9WHYG1Ek5F8LriOQ1yeSES
   7Kg3c52jQBO+z41joj1PzkaGwDLMddE+cSUEdqfypD38dtC2f+jtrs9YO
   9LRLr3pWZKzu2X24AoBptY9j8jzekOa4tEB2yaOaajv+FuQwewxzcXLEn
   0jZr7aDWNxB15abdj7f6o2HOHbqhUf9j1s7W7teIPsNhjahETDirwXlK/
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="426630065"
X-IronPort-AV: E=Sophos;i="6.01,150,1684825200"; 
   d="scan'208";a="426630065"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2023 17:25:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="839254554"
X-IronPort-AV: E=Sophos;i="6.01,150,1684825200"; 
   d="scan'208";a="839254554"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 22 Jun 2023 17:25:50 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qCUcX-0007qN-2K;
	Fri, 23 Jun 2023 00:25:49 +0000
Date: Fri, 23 Jun 2023 08:25:37 +0800
From: kernel test robot <lkp@intel.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
	tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: oe-kbuild-all@lists.linux.dev, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v3 10/11] media: v4l2: Add DELETE_BUF ioctl
Message-ID: <202306230822.0CCLmVt5-lkp@intel.com>
References: <20230622131349.144160-11-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230622131349.144160-11-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_172558_908414_D02149BA 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
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

Hi Benjamin,

kernel test robot noticed the following build errors:

[auto build test ERROR on media-tree/master]
[also build test ERROR on linus/master v6.4-rc7]
[cannot apply to next-20230622]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Benjamin-Gaignard/media-videobuf2-Access-vb2_queue-bufs-array-through-helper-functions/20230622-214122
base:   git://linuxtv.org/media_tree.git master
patch link:    https://lore.kernel.org/r/20230622131349.144160-11-benjamin.gaignard%40collabora.com
patch subject: [PATCH v3 10/11] media: v4l2: Add DELETE_BUF ioctl
config: i386-randconfig-i012-20230622 (https://download.01.org/0day-ci/archive/20230623/202306230822.0CCLmVt5-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230623/202306230822.0CCLmVt5-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306230822.0CCLmVt5-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "vb2_core_delete_buf" [drivers/media/common/videobuf2/videobuf2-v4l2.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
