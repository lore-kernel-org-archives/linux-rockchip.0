Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFC11C27C75
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 10:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2s2VSC5VperOU7yGQONqTK9FSzAU3Zz3RyMNfDytGGQ=; b=igfECMNxiZKOzR
	gEJ3jev4PIdb/+kY1KDcj5RawekkTszlGruOC120Bag6q/w48vrVRnxkeliT3YJHamqNmCfyTt5bA
	rPoqjIgs6QeCffllrQ02a2m2QIU8P0XRz2Eckc6dDxYOlHV1++u18jXdM4NIaBYJB3/tFQTxAPYrq
	BJvThBHXb174UbkgVzzpOIgECZZlwyUeZMegIsZhDZZRwRM1SC155rqth91Zvl9c0vu9eP19xjdjV
	HMMJVpjgd7btFAE3aIEAptBZe0H0voRYeeV4+wU/O/2SbT36wFisTJEq7F7bKHYRSowk/SKmMvOoN
	5qDYEPU7H4pxm56K8hzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHi7h-0000000GEf7-07vA;
	Thu, 13 Jun 2024 10:56:05 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHi7c-0000000GEe1-3Zag;
	Thu, 13 Jun 2024 10:56:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718276161; x=1749812161;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6b8ovoJTtpRLHBC4ajzYK05o5vyr6KBXY3vrPVEqJ8Q=;
  b=b2uI1kosCFYv2gW1nCYI2Iftclv7lH0wJoCmaLqTTNzuu1uqE8DLVtNP
   LmA7FTDJ/4zncyg6VUbNUxXVVUSwHOxQoTOtD2pis7g86oW3EvpXhjMha
   KPwfEShuzAk5mExc44Ugw3pRE7QpCCEMA8Uz2p9m9nFMYK5Go4DpSZLmL
   yosWJoEXfEMuA0+pPWS0Cg/COI4YGvL3zvrqdzBzd0AjZoRssBr9j1m7/
   WiTncINK+tVN37g4FP7cqovupYmjiLcjDg+dZX79DpBn9NcC/dmmwmTnO
   /87maV1OGdHngAHawpNhO2FCLksG5tnKIrR+HguDC69iobXfzTAL0LeES
   g==;
X-CSE-ConnectionGUID: OLElZpKxTfqYoHDqHXFZIQ==
X-CSE-MsgGUID: Zm8+JfrZR0eGnXcp4ENT/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="37606719"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; 
   d="scan'208";a="37606719"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2024 03:55:58 -0700
X-CSE-ConnectionGUID: tnrO+fJUQeGyx0/k0IZjWg==
X-CSE-MsgGUID: bKS/wAsASY+1gpvGdJC2ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; 
   d="scan'208";a="45228251"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
  by orviesa004.jf.intel.com with ESMTP; 13 Jun 2024 03:55:51 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sHi7R-0002WE-0F;
	Thu, 13 Jun 2024 10:55:49 +0000
Date: Thu, 13 Jun 2024 18:55:08 +0800
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
Cc: Paul Gazzillo <paul@pgazz.com>,
	Necip Fazil Yildiran <fazilyildiran@gmail.com>,
	oe-kbuild-all@lists.linux.dev, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Subject: Re: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
Message-ID: <202406131802.9chtX0Ci-lkp@intel.com>
References: <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240612-6-10-rocket-v1-6-060e48eea250@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_035600_983314_A98F1F8D 
X-CRM114-Status: GOOD (  10.23  )
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on 83a7eefedc9b56fe7bfeff13b6c7356688ffa670]

url:    https://github.com/intel-lab-lkp/linux/commits/Tomeu-Vizoso/iommu-rockchip-Add-compatible-for-rockchip-rk3588-iommu/20240612-215814
base:   83a7eefedc9b56fe7bfeff13b6c7356688ffa670
patch link:    https://lore.kernel.org/r/20240612-6-10-rocket-v1-6-060e48eea250%40tomeuvizoso.net
patch subject: [PATCH 6/9] accel/rocket: Add a new driver for Rockchip's NPU
config: arc-kismet-CONFIG_IOMMU_IO_PGTABLE_LPAE-CONFIG_DRM_ACCEL_ROCKET-0-0 (https://download.01.org/0day-ci/archive/20240613/202406131802.9chtX0Ci-lkp@intel.com/config)
reproduce: (https://download.01.org/0day-ci/archive/20240613/202406131802.9chtX0Ci-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406131802.9chtX0Ci-lkp@intel.com/

kismet warnings: (new ones prefixed by >>)
>> kismet: WARNING: unmet direct dependencies detected for IOMMU_IO_PGTABLE_LPAE when selected by DRM_ACCEL_ROCKET
   WARNING: unmet direct dependencies detected for IOMMU_IO_PGTABLE_LPAE
     Depends on [n]: IOMMU_SUPPORT [=y] && (ARM || ARM64 || COMPILE_TEST [=y]) && !GENERIC_ATOMIC64 [=y]
     Selected by [y]:
     - DRM_ACCEL_ROCKET [=y] && DRM [=y] && (ARM64 || COMPILE_TEST [=y]) && MMU [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
