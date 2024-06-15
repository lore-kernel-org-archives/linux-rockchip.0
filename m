Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A72CBC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 13:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bPsYlbgsgIxxZnMWvxMaJbM9oJyE5KS5IOHrmRbJb4=; b=u7dijEB3uPefwJ
	fo0DKOiGbUtzsKYlRn9HSajHhlEgOS7Qzm/wAlgVOp1DPURBqcY36rLWxJ3xMWdYGsj1lEVFjAhBP
	1EZxP8OpD2e8gHIoBb+IxgNR1aofmjF9db2Dco/lvYbVL84pXubq2bqsvbY2+N1A7qy83lzwAPESb
	nifTaofhYHXzv07bldfKObXA19t6EcaOL+aTGM1xjTzuvTugbHUIGUFaWMnQVg+DGFNVPnxF4/uHN
	wegEndQpITcax/vcY8aHoEtfDsXUL8pjggC1JhXbvIJPg1jqHR6AqeR10b73s7Uu4mBHavCZnxq0G
	i4xGJmStVPVgk7wFZHcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sITsQ-00000005V6O-3GcN;
	Sat, 15 Jun 2024 13:55:30 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sITsL-00000005V4h-0zSf;
	Sat, 15 Jun 2024 13:55:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718459725; x=1749995725;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=o2zni6lmU6brxTe62oPbpr/wNnVyUniYuEMKpQZnOmQ=;
  b=iclYPZ7YhqXuaVPaha4qEF/Rel0/TOxQNHWRoGGO/Xx8CR4xMHYoerJ1
   OSEGO1aQ6rPZXcuahzKHPLgC3ongd+PcEJ1RY5yGh+3gX7pEWjFf3s3+0
   ADves2Q6K8BxQZD2cBlthiV7Gxr/5fAaasY7/qTgFokG6TY+t2nVqBkdn
   4skqoPPZjVLokz2J98fPkns8pEvlR34qdyYQ3VmHXIMAHvZrNMXV5hDhd
   oaleyY9ukXzZGn+FYKYInIGwI42qdg5szmwJlrEqGVcQRqSrS7yS1+Xhy
   gW6cCHoHf0EUq6bD8lIwYQj20yVR8qhnccskHQBGwpWO+X/VP1XfTlrzI
   w==;
X-CSE-ConnectionGUID: C9xyB9ZcR0CRFbSAWHBUpA==
X-CSE-MsgGUID: LPK4iF2lTlG4uoWhhF8R/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11104"; a="40760316"
X-IronPort-AV: E=Sophos;i="6.08,240,1712646000"; 
   d="scan'208";a="40760316"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2024 06:55:22 -0700
X-CSE-ConnectionGUID: Z1nASWauRT2SWTLC7u9Yow==
X-CSE-MsgGUID: AAqhFvwAQbO9qsOphaSZhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,240,1712646000"; 
   d="scan'208";a="40630041"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by fmviesa007.fm.intel.com with ESMTP; 15 Jun 2024 06:55:19 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sITsC-00005N-21;
	Sat, 15 Jun 2024 13:55:16 +0000
Date: Sat, 15 Jun 2024 21:55:03 +0800
From: kernel test robot <lkp@intel.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Alexey Charkov <alchark@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Message-ID: <202406152129.dV4K8R5k-lkp@intel.com>
References: <20240615015734.1612108-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240615015734.1612108-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_065525_349045_366D61C1 
X-CRM114-Status: GOOD (  13.41  )
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

Hi Detlev,

kernel test robot noticed the following build errors:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on robh/for-next linus/master v6.10-rc3 next-20240613]
[cannot apply to media-tree/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Detlev-Casanova/media-rockchip-Introduce-the-rkvdec2-driver/20240615-100124
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20240615015734.1612108-2-detlev.casanova%40collabora.com
patch subject: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
config: i386-allmodconfig (https://download.01.org/0day-ci/archive/20240615/202406152129.dV4K8R5k-lkp@intel.com/config)
compiler: gcc-13 (Ubuntu 13.2.0-4ubuntu3) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240615/202406152129.dV4K8R5k-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406152129.dV4K8R5k-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/staging/media/rkvdec2/rkvdec2-h264.c: In function 'rkvdec2_write_regs':
>> drivers/staging/media/rkvdec2/rkvdec2-h264.c:563:9: error: implicit declaration of function '__iowrite32_copy_full'; did you mean '__iowrite32_copy'? [-Werror=implicit-function-declaration]
     563 |         __iowrite32_copy_full(rkvdec->regs + OFFSET_COMMON_REGS,
         |         ^~~~~~~~~~~~~~~~~~~~~
         |         __iowrite32_copy
   cc1: some warnings being treated as errors


vim +563 drivers/staging/media/rkvdec2/rkvdec2-h264.c

   557	
   558	static void rkvdec2_write_regs(struct rkvdec2_ctx *ctx)
   559	{
   560		struct rkvdec2_dev *rkvdec = ctx->dev;
   561		struct rkvdec2_h264_ctx *h264_ctx = ctx->priv;
   562	
 > 563		__iowrite32_copy_full(rkvdec->regs + OFFSET_COMMON_REGS,
   564				      &h264_ctx->regs.common,
   565				      sizeof(h264_ctx->regs.common));
   566		__iowrite32_copy_full(rkvdec->regs + OFFSET_CODEC_PARAMS_REGS,
   567				      &h264_ctx->regs.h264_param,
   568				      sizeof(h264_ctx->regs.h264_param));
   569		__iowrite32_copy_full(rkvdec->regs + OFFSET_COMMON_ADDR_REGS,
   570				      &h264_ctx->regs.common_addr,
   571				      sizeof(h264_ctx->regs.common_addr));
   572		__iowrite32_copy_full(rkvdec->regs + OFFSET_CODEC_ADDR_REGS,
   573				      &h264_ctx->regs.h264_addr,
   574				      sizeof(h264_ctx->regs.h264_addr));
   575		__iowrite32_copy_full(rkvdec->regs + OFFSET_POC_HIGHBIT_REGS,
   576				      &h264_ctx->regs.h264_highpoc,
   577				      sizeof(h264_ctx->regs.h264_highpoc));
   578	}
   579	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
