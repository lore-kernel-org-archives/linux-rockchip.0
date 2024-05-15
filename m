Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35F9BC25B78
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 21:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2DgwnD8SsW3bVAtR2+lWalmxGbpGqoEjGdAUgwiw7M=; b=soRdbPYjk12a+E
	Y4R/ASM6rbqkGhaK/jO1zgU6BG2JM4O72pDBJoG5GBbAHk2vAoJ3E2vtZalDQXmP05+K5cOSFzkod
	CM/H2C7WCSqbEsaE474MB8bosTzsZEfCr8zxCQuydoXN9fAAKBX2zx2KK58acWpeyrUeWcn+sWkZh
	PofoFUuArQKHeNxLQMY5arSucqY2aESLHEvpENDIryOANFYbrR4mzu5IVQ1C7Aodte35mrOGuKXKM
	LCyICUKu9Lvq86W0bQclc6qaI5gWIIO2btQXYt+pe42aVBTN2cwXnrqMd6Y5chCE6hgQjKtHm9j2u
	eixqft2Woupwv4YKbUGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7MMB-00000002we7-3os3;
	Wed, 15 May 2024 21:40:15 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7MM7-00000002wcp-3zsE
	for linux-rockchip@lists.infradead.org;
	Wed, 15 May 2024 21:40:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1715809212; x=1747345212;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ZA9yOMn+MhqqxmDcjB9tY8qraread9zVz7DmZffV1hI=;
  b=TefwROxdD90qS+vhpfvjGGWJarALPmUeIse1beDaohvvS/HQdGpDcD/u
   9invEaTY9/lXhLxqx+HGKkfu3SADpkBiYIK3QfhwTwbBPA7U4AmdNOBWR
   tSoXFp4/1fd63BtwtXdmP5PWohaoHgy5CafQEW4xXrZl09NMWC5VmSrPw
   rXH2cq9JHkCD5iqVbn0HFKpz7ODQ4xWgjRk9yQRWcqhqT6F3/tnulRlkU
   53UDn3nFdg9gIhatOZX+p7F43ahtgg9WKURB/5/7nEb3d0/2FxHnqbwsQ
   o7KQCkE0tB7JsKoeOO1XLn/dING5MdpS+aBryBQ6JIkp8U63ywU2V2WGI
   A==;
X-CSE-ConnectionGUID: 737Xr/eiS9m8tV0xbFje1A==
X-CSE-MsgGUID: tcDzuKaqTF+LjTFacLNgWw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="29377288"
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; 
   d="scan'208";a="29377288"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 May 2024 14:40:10 -0700
X-CSE-ConnectionGUID: AnnXY3RQT/aRXH/EpxdQAg==
X-CSE-MsgGUID: j/DfK47aQCK74OmwZ7Bw2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; 
   d="scan'208";a="35976151"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
  by orviesa005.jf.intel.com with ESMTP; 15 May 2024 14:40:09 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1s7MM1-000DI7-2y;
	Wed, 15 May 2024 21:40:05 +0000
Date: Thu, 16 May 2024 05:39:48 +0800
From: kernel test robot <lkp@intel.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	mchehab@kernel.org, nicolas.dufresne@collabora.com
Cc: oe-kbuild-all@lists.linux.dev, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH] media: verisilicon: Add reference buffers compression
Message-ID: <202405160544.3hBso24H-lkp@intel.com>
References: <20240514162054.294002-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240514162054.294002-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_144012_221256_6EC47019 
X-CRM114-Status: UNSURE (   9.44  )
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on media-tree/master]
[also build test WARNING on pza/reset/next linuxtv-media-stage/master linus/master v6.9 next-20240515]
[cannot apply to pza/imx-drm/next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Benjamin-Gaignard/media-verisilicon-Add-reference-buffers-compression/20240515-002208
base:   git://linuxtv.org/media_tree.git master
patch link:    https://lore.kernel.org/r/20240514162054.294002-1-benjamin.gaignard%40collabora.com
patch subject: [PATCH] media: verisilicon: Add reference buffers compression
config: alpha-randconfig-r133-20240515 (https://download.01.org/0day-ci/archive/20240516/202405160544.3hBso24H-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce: (https://download.01.org/0day-ci/archive/20240516/202405160544.3hBso24H-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202405160544.3hBso24H-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/media/platform/verisilicon/hantro_hevc.c:28:6: sparse: sparse: symbol 'hevc_use_compression' was not declared. Should it be static?

vim +/hevc_use_compression +28 drivers/media/platform/verisilicon/hantro_hevc.c

    27	
  > 28	bool hevc_use_compression;
    29	module_param_named(hevc_use_compression, hevc_use_compression, bool, 0644);
    30	MODULE_PARM_DESC(hevc_use_compression,
    31			 "Use reference frame compression for HEVC");
    32	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
