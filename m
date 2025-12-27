Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7361FE8FDCE
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Dec 2025 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CJybgvRgnJsx3X85zqWqGspamQRRAXQyMkKS1qh4Qk=; b=vY+gWfHYzZZrWq
	w7etNDmbDSYKQInGXKIlAlbBvRhQfWMIBfLREov7LyjYEoSzgS1X9YFtxmv/gkffKqcyv7vIRmsNA
	cVjWFJBbWPzMakstXMGw5CyAgFabpgtpupo/xUXbjjoQbet44BzVC7NvqqQ7tbPvSHTFug3tZurDG
	fJZa/TvwJH3xiKK+2TYRW8wY1APjrCM0W7nLiTEXvMH5j5Z2pbTzJ+u1SzksNF+Jy8is4LmsDbMWF
	TW7gSQtsZgqZnyy5DV/eCIxMYtqe1Ns0bIZs6ljtmT2TIcW1QbhV8K5AtlCfGY5MtSKSegDk4+Jl1
	XSMFo9MWJugpx7ck7HKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZOMY-00000001laP-41kO;
	Sat, 27 Dec 2025 07:05:18 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZOMW-00000001lZT-3NPb;
	Sat, 27 Dec 2025 07:05:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1766819117; x=1798355117;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+MYBUvaekcX2sSPzpj1fUpCCoIuWlnhasEc3m8SvhqA=;
  b=BrcCKkN7r7oKnpDnhu5KmlkCg8x2+P2Vk9eavpyYMDQ0AalHRW0bAWm7
   nLzor5yPbXQ2RR+baD+pw3LBEfa3kb59/dtZzEnRK6lN9qddm7g5SJe8T
   n2eh0vEaqi8kGqnd1UHin/IaANh3pXv+oxHPCNKxKlJysjQC6iSzssox7
   WtH818AjmFuyriy6pRgchM0U7DKePZCL+zBNlVIA35b2eAdPXxY6DuMcc
   2LaZDOL3+Zxrs2GkdolC4vNONyedL4rxPHQXpPDg1lO+99kJFotbDul+d
   WI0jy6pYMF8RutLXgdONP2Hkva/rUv1+hj2FeFOHE3bMKYJXUGFspchbi
   w==;
X-CSE-ConnectionGUID: WCx+spOqQU6lLXjOUHuG0w==
X-CSE-MsgGUID: 8nVq0H16SyC192APt7Zr2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11653"; a="79654599"
X-IronPort-AV: E=Sophos;i="6.21,180,1763452800"; 
   d="scan'208";a="79654599"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Dec 2025 23:05:16 -0800
X-CSE-ConnectionGUID: jAODHWteRYC//AAY5npWTQ==
X-CSE-MsgGUID: /KSrmsRoQoq1h6O7SH1EIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,180,1763452800"; 
   d="scan'208";a="200247943"
Received: from lkp-server02.sh.intel.com (HELO dd3453e2b682) ([10.239.97.151])
  by orviesa009.jf.intel.com with ESMTP; 26 Dec 2025 23:05:10 -0800
Received: from kbuild by dd3453e2b682 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vZOMN-000000005dB-26Cp;
	Sat, 27 Dec 2025 07:05:07 +0000
Date: Sat, 27 Dec 2025 15:04:09 +0800
From: kernel test robot <lkp@intel.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Heiko Stuebner <heiko@sntech.de>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Ricardo Ribalda <ribalda@chromium.org>,
	Hans Verkuil <hverkuil@xs4all.nl>, Yunke Cao <yunkec@google.com>,
	Hans de Goede <hansg@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Pavan Bobba <opensource206@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	James Cowgill <james.cowgill@blaize.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
	Jonas Karlman <jonas@kwiboo.se>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v7 14/17] media: rkvdec: Add H264 support for the VDPU381
 variant
Message-ID: <202512271444.48dPgeMW-lkp@intel.com>
References: <20251218232829.337811-15-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251218232829.337811-15-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251226_230516_908665_7728E63B 
X-CRM114-Status: GOOD (  10.88  )
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

[auto build test ERROR on media-tree/master]
[also build test ERROR on linus/master v6.19-rc2]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Detlev-Casanova/media-uapi-HEVC-Add-v4l2_ctrl_hevc_ext_sps_-ls-t_rps-controls/20251219-074342
base:   git://linuxtv.org/media_tree.git master
patch link:    https://lore.kernel.org/r/20251218232829.337811-15-detlev.casanova%40collabora.com
patch subject: [PATCH v7 14/17] media: rkvdec: Add H264 support for the VDPU381 variant
config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20251227/202512271444.48dPgeMW-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251227/202512271444.48dPgeMW-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512271444.48dPgeMW-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "__hexagon_udivdi3" [drivers/media/platform/rockchip/rkvdec/rockchip-vdec.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
