Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3A15C27C53
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 02:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piq8v+Mjq5Fdlpe89a36LoaGB5OOjsHc4xHJEFNBGew=; b=4oGctzvua3sqDX
	fC9g9PQgEIV1J3SmIo5lF3f+Mdqe0QHxwMxjHXI1sdL+f4LPbrew1hocS4sdPP24+zcTW2wgUvgF/
	BK0HqdZ+BOP0YQNv5feItdhCa+3U+t9R4TfbpIYKJXBs9tTC5r7tqUb5x6stYDB6ZvYXqRz3Avk2y
	xNwa2TLxqY7OV/2NybVriaAn7W8Emk24ssmnExXOxxPOe0636lRlhObyhfZqqbx3A7eeKSk5V552+
	F7HPnpkPV1H4hP6h8TqPyfawnDOCVAwCbArKpd93hmeFXJC1y6LeGeyiDlLSumq+gKFmIcynOuIiw
	hmd16C8SKlwfQydO/tjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHaBd-0000000Eqtx-16CB;
	Thu, 13 Jun 2024 02:27:37 +0000
Received: from mgamail.intel.com ([192.198.163.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHaBY-0000000EqtD-45q4;
	Thu, 13 Jun 2024 02:27:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718245653; x=1749781653;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Nh2RzwaSTxJgbNfHmt3JRc0uEjv3nRlrnUDcdTPlwq8=;
  b=YnK28U4Cw3uhqf8JLvbF92bP6Zz/3LABlznK919RQ59eueSYQtV/+uET
   qdDGSx6LYd3kdH+r56sw1CJ8GunMCconXlJ01zh5lD9M8A8YwfEDTbv7e
   zeRh/1IIWfFmkQucSEPG7fKE0rQFWx1ZOY8akzhl6Ex/pFyTJloP5DEGF
   qB2TYB+igli9JAHBOI9RDsy14zWpaFNU3YVvquTcpZ9SeCiboYN8tO+mQ
   64X71lGaUq3GQ74/QM0AbKNzg6EI0vvJSVgXXzsk8zSefaGOUONxlhElU
   0mCKcYqh0AhUscRogDIKhD44nLc0P1fgl2nSfxmHRVzjnYpmwdTrGIRo3
   w==;
X-CSE-ConnectionGUID: gZV7Wtu0SdqMJ8i7GRWMTg==
X-CSE-MsgGUID: m4gs+ijdR7aTEGiPbm0Qeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14762600"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; 
   d="scan'208";a="14762600"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jun 2024 19:27:32 -0700
X-CSE-ConnectionGUID: Hfsi00ypS3ujyFebs+qM4w==
X-CSE-MsgGUID: ZXcO7e85TC+r/0EEzcI5Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; 
   d="scan'208";a="44371511"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 12 Jun 2024 19:27:26 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sHaBP-00027m-2g;
	Thu, 13 Jun 2024 02:27:23 +0000
Date: Thu, 13 Jun 2024 10:27:17 +0800
From: kernel test robot <lkp@intel.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Oded Gabbay <ogabbay@kernel.org>,
	Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Cc: oe-kbuild-all@lists.linux.dev, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Subject: Re: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
Message-ID: <202406131022.1JKNS7me-lkp@intel.com>
References: <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_192733_057001_F662C485 
X-CRM114-Status: GOOD (  13.67  )
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

Hi Tomeu,

kernel test robot noticed the following build errors:

[auto build test ERROR on 83a7eefedc9b56fe7bfeff13b6c7356688ffa670]

url:    https://github.com/intel-lab-lkp/linux/commits/Tomeu-Vizoso/iommu-rockchip-Add-compatible-for-rockchip-rk3588-iommu/20240612-215814
base:   83a7eefedc9b56fe7bfeff13b6c7356688ffa670
patch link:    https://lore.kernel.org/r/20240612-6-10-rocket-v1-6-060e48eea250%40tomeuvizoso.net
patch subject: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20240613/202406131022.1JKNS7me-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240613/202406131022.1JKNS7me-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406131022.1JKNS7me-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/linux/clk.h:13,
                    from drivers/accel/rocket/rocket_drv.c:4:
>> drivers/accel/rocket/rocket_drv.c:213:31: error: 'rocket_pm_ops' undeclared here (not in a function); did you mean 'rocket_probe'?
     213 |                 .pm = pm_ptr(&rocket_pm_ops),
         |                               ^~~~~~~~~~~~~
   include/linux/kernel.h:48:44: note: in definition of macro 'PTR_IF'
      48 | #define PTR_IF(cond, ptr)       ((cond) ? (ptr) : NULL)
         |                                            ^~~
   drivers/accel/rocket/rocket_drv.c:213:23: note: in expansion of macro 'pm_ptr'
     213 |                 .pm = pm_ptr(&rocket_pm_ops),
         |                       ^~~~~~


vim +213 drivers/accel/rocket/rocket_drv.c

   207	
   208	static struct platform_driver rocket_driver = {
   209		.probe = rocket_probe,
   210		.remove_new = rocket_remove,
   211		.driver	 = {
   212			.name = "rocket",
 > 213			.pm = pm_ptr(&rocket_pm_ops),
   214			.of_match_table = dt_match,
   215		},
   216	};
   217	module_platform_driver(rocket_driver);
   218	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
