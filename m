Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B50F1C83F03
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 06:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWuMJiMgZ8RIGepZrU/KpMxyr+t5u2+onC0clb/K0wI=; b=wN9Ew76CUf+JtA
	1DWfL5iZD9FWmGslcKRjM9QJ+NXaX+LM+EfPkUrA3U5m4A6DqLA4WUgSGYMpAcRTxM78xnvzuQAk3
	QnJxlUDZ6mMkoUGjwrKov0Xy+EJoTXWFia7Nq1AWu+mPgs7WvzxABdLKT5u3YPF0MRBxLGpbhiGob
	61CwqBbXqs4w4mBUgfWErm3l1Pg6ygWBBTZpt23KtqNsyhEB5ZwwkmUZA3Ta7I7uHm9CJhbZ4TTZB
	Rwn3zm/UypbtWaJknhA3b/67v+6rOKbUfE3JxeoqwU2WEnA4E7f1jAadebVSySueaNBdyoqKj74OE
	noVns1mvIkbAvwfrJltg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZOAs-00000007fIK-2OPd;
	Wed, 09 Jul 2025 06:20:58 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZOAp-00000007fHe-491f;
	Wed, 09 Jul 2025 06:20:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1752042056; x=1783578056;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jpf7GN1ILP/Fhm7204GJfAH89v4Oue2jmt399gQml9w=;
  b=KBI+Qa+fobaKJj8FW5Ysey3GgUovbuQRlvd3rVp/QaY96fZf/Y8n5JCI
   jCliI8nHjLa9ta5eWTP4F4EnwDsMqamX9VuTMM3MSZc+RMG/SKc7FYYXq
   CCpN8N/SjbdD5ix7PHb2YSJvwHouWY4RtuJ/m7uspmEfd+W7ohWAracol
   az8sehoGsFwPjelzm5jN2iM4X5QWBiCIwsR86Ze6lrhSRQPsOJRKGrzuR
   R3M6ZTjIR1wiLiZuJOJQozVjjb3BBfU1L85wUu2BLEQGiLf2kUCe9V0C+
   Bt/nzHgmsta1JTYzuEnncEImAjqDi+qdd3mVrRUOMdU6LgePzM9kS9UJP
   A==;
X-CSE-ConnectionGUID: riA1pz6BR82bX/duiMbG7w==
X-CSE-MsgGUID: 6ZMX4HfVR06WccLJM/wStQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="65744597"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; 
   d="scan'208";a="65744597"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jul 2025 23:20:53 -0700
X-CSE-ConnectionGUID: r0xqCEgwRhurC5eP5ba1jQ==
X-CSE-MsgGUID: AXwoEScWRV6uHZc8eOhWXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; 
   d="scan'208";a="179366208"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by fmviesa002.fm.intel.com with ESMTP; 08 Jul 2025 23:20:50 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uZOAh-0003BD-25;
	Wed, 09 Jul 2025 06:20:47 +0000
Date: Wed, 9 Jul 2025 14:20:22 +0800
From: kernel test robot <lkp@intel.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Keke Li <keke.li@amlogic.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dan Scally <dan.scally@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Subject: Re: [PATCH 5/8] media: v4l2-common: Introduce v4l2-params.c
Message-ID: <202507091324.p3wVWAxc-lkp@intel.com>
References: <20250708-extensible-parameters-validation-v1-5-9fc27c9c728c@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250708-extensible-parameters-validation-v1-5-9fc27c9c728c@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_232056_130648_06338818 
X-CRM114-Status: UNSURE (   9.23  )
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

Hi Jacopo,

kernel test robot noticed the following build errors:

[auto build test ERROR on a8598c7de1bcd94461ca54c972efa9b4ea501fb9]

url:    https://github.com/intel-lab-lkp/linux/commits/Jacopo-Mondi/media-uapi-Introduce-V4L2-extensible-params/20250708-184651
base:   a8598c7de1bcd94461ca54c972efa9b4ea501fb9
patch link:    https://lore.kernel.org/r/20250708-extensible-parameters-validation-v1-5-9fc27c9c728c%40ideasonboard.com
patch subject: [PATCH 5/8] media: v4l2-common: Introduce v4l2-params.c
config: i386-buildonly-randconfig-002-20250709 (https://download.01.org/0day-ci/archive/20250709/202507091324.p3wVWAxc-lkp@intel.com/config)
compiler: clang version 20.1.7 (https://github.com/llvm/llvm-project 6146a88f60492b520a36f8f8f3231e15f3cc6082)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250709/202507091324.p3wVWAxc-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507091324.p3wVWAxc-lkp@intel.com/

All errors (new ones prefixed by >>):

>> ld.lld: error: undefined symbol: vb2_plane_vaddr
   >>> referenced by v4l2-params.c
   >>>               drivers/media/v4l2-core/v4l2-params.o:(v4l2_params_buffer_validate) in archive vmlinux.a

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
