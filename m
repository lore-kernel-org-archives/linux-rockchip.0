Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F10CC5DF9C
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2026 20:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DutWTAYEKjEAU7CUyyVvAfBYXyqSWdk7oI/J8OpWHKw=; b=hdN/+M0hmTWTYL
	0kYkcJ1MRuJSC7Yet6kYFln7B5YlyjKRSjE23zchDeorRKaoRzU5n0ctRoWjJcJJndNF7/UosO7G4
	3DBQxWZkXzDDmAFLvKQqnbxVjItN1KdQIWE8F60SGNJGbj28YkJ8LYeztvfaGLCfUkO7+9TNlSurh
	oFgJ/5POZUUCWlx4RoxlQ+HPm1kW0VmkBvL0eDdgUvssWwnNkBDk9tZ/TN+ss7XjfbGpgfyhuYn07
	hKg5DWO+v+CJ5WfVRxx/ASTepc3mALHFTlAStVW+sN9POQhChbUuXdGQJZhULnjLlpMbf2FwprVnY
	9JcxTZjOu2arlvdwR6xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wybNC-0000000HN4X-2uvc;
	Mon, 24 Aug 2026 20:34:26 +0000
Received: from mgamail.intel.com ([192.198.163.14])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wybNA-0000000HN43-1ubI;
	Mon, 24 Aug 2026 20:34:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1787603664; x=1819139664;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=2MrkHVT10I+ikXQqQrjMRHXvIvGgZfTC4WyLFmPpgsE=;
  b=XYASzSSxzWaxAzkHnAmgXxycBdK6sAbLEQ9ZMbGo9qEnrAgJUjF8SyUx
   u28QzVpEOhg1w+WMTxHD+dw3PoF+TDk0K9diefodyVL7hYX/osfl7RmRW
   AXMzP2/D55YJbaCA7ykz3Z7OHYUryTANXz1CS4jbfGxnDzg4jojDelF/0
   ti5Rnw5YF+I3EoGKoZYAi7EcvoaUlWhMViumaw0FttD8DuTj43j0yJI89
   wyPUh7KjkBkvr0AvwfK+96nh75U/1DMCM6Lvxt9ubUsrjNgTrU+ZirjKr
   bs4SNI74oEvxxz009OcauFkDPw6jrKG2ayEOHKmvOBk3IjjEBgbGvxs3S
   Q==;
X-CSE-ConnectionGUID: Jwq1K2kwT2SVAPKEe+oJig==
X-CSE-MsgGUID: ViAQs4hfS+qhcJKD/SQ5dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11885"; a="88080368"
X-IronPort-AV: E=Sophos;i="6.25,241,1779174000"; 
   d="scan'208";a="88080368"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2026 13:34:22 -0700
X-CSE-ConnectionGUID: zJbr1P3hRuaBtCHtXYXuNg==
X-CSE-MsgGUID: +2KsQ0I8QACC9QeIeu7urA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,241,1779174000"; 
   d="scan'208";a="266574027"
Received: from lkp-server01.sh.intel.com (HELO 3532383e6126) ([10.239.97.150])
  by orviesa008.jf.intel.com with ESMTP; 24 Aug 2026 13:34:19 -0700
Received: from kbuild by 3532383e6126 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1wybMv-0000000044t-27oL;
	Mon, 24 Aug 2026 20:34:11 +0000
Date: Tue, 25 Aug 2026 04:33:37 +0800
From: kernel test robot <lkp@intel.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Heiko Stuebner <heiko@sntech.de>,
	Dmitry Baryshkov <lumag@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
	Igor Paunovic <royalnet026@gmail.com>,
	Alexey Charkov <alchark@flipper.net>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH] drm/connector: Cache out-of-band hotplug events
Message-ID: <202608250407.a5fV5DFE-lkp@intel.com>
References: <20260821-drm-connector-oob-hotplug-cache-v1-1-e92e146fdc7b@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260821-drm-connector-oob-hotplug-cache-v1-1-e92e146fdc7b@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_133424_532871_7072D68B 
X-CRM114-Status: GOOD (  10.44  )
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

[auto build test WARNING on d3d1e0c4343385fb343a552e4f3b6b97d5762fc2]

url:    https://github.com/intel-lab-lkp/linux/commits/Sebastian-Reichel/drm-connector-Cache-out-of-band-hotplug-events/20260821-165525
base:   d3d1e0c4343385fb343a552e4f3b6b97d5762fc2
patch link:    https://lore.kernel.org/r/20260821-drm-connector-oob-hotplug-cache-v1-1-e92e146fdc7b%40collabora.com
patch subject: [PATCH] drm/connector: Cache out-of-band hotplug events
config: parisc-defconfig (https://download.01.org/0day-ci/archive/20260825/202608250407.a5fV5DFE-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 16.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260825/202608250407.a5fV5DFE-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202608250407.a5fV5DFE-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/gpu/drm/drm_connector.c:3750 function parameter 'fwnode' not described in 'drm_connector_record_oob_hotplug_status'
>> Warning: drivers/gpu/drm/drm_connector.c:3750 function parameter 'status' not described in 'drm_connector_record_oob_hotplug_status'
>> Warning: drivers/gpu/drm/drm_connector.c:3750 function parameter 'fwnode' not described in 'drm_connector_record_oob_hotplug_status'
>> Warning: drivers/gpu/drm/drm_connector.c:3750 function parameter 'status' not described in 'drm_connector_record_oob_hotplug_status'

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
