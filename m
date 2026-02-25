Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57F70F5544C
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Feb 2026 03:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXz9+plGdCqCrha8qeVvAilnHPYwDKG/eQSXA0iK67Q=; b=wD2FvQvwzCRSME
	jeX9jT9a2cnE4sLgRXw7tmL7Q6MHTKpp7fA89RW7/Yx3GQVcnmn7zxWCHCYY92iA65VkdENPqaGON
	ihOLkrV34xelYazHOb/PZYVUESrKG6EyInWbheX3Hl7HfymRIrVhygTtNtPJdbxTTQVEk8ZxLSAWe
	LY+7+b51X0abbuzYuW5guypHWFd02QmQE7VhYuHBeR4HSM5exGzjJjxDjIhHdcJ9WJC4iKGgpk6x1
	PUMc5hXOS9JzbCmV5feW+MPv2c0+vlTz1Y+vHnOqfuj1DT8l4OP4GMIunBYwmpESh3/X7MqmDmn5e
	t5UUxJni/8WYAcUyK90A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv5Tw-000000039Bb-04qG;
	Wed, 25 Feb 2026 03:22:36 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv5Tt-000000039BG-1Tp0
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Feb 2026 03:22:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771989753; x=1803525753;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=fQ3abqpA4UQHDQ+kifybYdmRSEbqygRuEteuB89GWmM=;
  b=PwOgPzYHtILZcPd6UwzU+kiMWqGiCH8fLX+LWhEXxx+Je6p6zQf4sJj0
   6kH4VDvmBlOZ8mEzFr+/rzknS9JJm+tEwSD0L40u3EKkl8qnTsw5jCSX1
   YX4yKVfrlU0+VpI1Uuq+c+O6Mj9JGeprSZmpY0b72fHB5IvqzM7TiDb0C
   WkjFPOcrKM6I+/zvKfNNJLW0DM6hcW2sDK2z209My24Wo5h4mxsO2IAoP
   J2L/SideOSvqdFLakaNS6vaKAUat9lndqAn0FbXF9rbev3Ne443f7u7L4
   yNQqOOLh9Nf3QByyyaB9C1HexzUs3R5bQgF6CF1Od5TKZktmSjYQswW78
   g==;
X-CSE-ConnectionGUID: /Iq6YX/nRXO/50nFJliN0w==
X-CSE-MsgGUID: 7mR5xz2rRvWMMze6ah+etA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="72721888"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="72721888"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 19:22:32 -0800
X-CSE-ConnectionGUID: M6CAOsi7Ru6o9asTZTCQaQ==
X-CSE-MsgGUID: M56VrZNnTFubwVE0KvtjMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="216112635"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
  by orviesa008.jf.intel.com with ESMTP; 24 Feb 2026 19:22:29 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vv5TE-000000003s5-0XDm;
	Wed, 25 Feb 2026 03:22:05 +0000
Date: Wed, 25 Feb 2026 11:21:14 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/3] iio: imu: inv_icm42607: add new inv_icm42607 driver
Message-ID: <202602251146.f80QkdrL-lkp@intel.com>
References: <20260224163109.370930-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224163109.370930-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_192233_451488_16C08BA7 
X-CRM114-Status: GOOD (  10.71  )
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

Hi Chris,

kernel test robot noticed the following build errors:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on linus/master v7.0-rc1 next-20260224]
[cannot apply to jic23-iio/togreg]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-iio-imu-icm42607-Add-devicetree-binding/20260225-003610
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20260224163109.370930-3-macroalpha82%40gmail.com
patch subject: [PATCH 2/3] iio: imu: inv_icm42607: add new inv_icm42607 driver
config: parisc-allyesconfig (https://download.01.org/0day-ci/archive/20260225/202602251146.f80QkdrL-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260225/202602251146.f80QkdrL-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602251146.f80QkdrL-lkp@intel.com/

All errors (new ones prefixed by >>):

>> hppa-linux-ld: drivers/iio/imu/inv_icm42607/inv_icm42607_spi.o:(.data+0x50): undefined reference to `inv_icm42607_pm_ops'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
