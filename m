Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B3D9ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+DzztdV4r43ECF04INQteoseuHzj6+Jp+898mvlQJ4=; b=en+5Gkk1XDG8su
	BgEPkETWg2YUkQ24r8lvvKhD84Ukvfa9BJEZ9KwO5Cpm3FpKiWwzDV7icNHDa9hqK/mssFY9OKZfx
	OWCetNMkPlBQNTonoFhlC7EytQwVkwduu3W7cFgBPlHrC6euejcLdPOEm4aR69rCqLe9LaxMzOqah
	WKVXyYsdLCw5DvkwEmskJhpxPstHMgzvHKpzIgPriMMgjD3/vk7JxGQxJw96rYWfHEVIC3aHl7L6G
	qqhz7g1tYA8DijV5R2ufqwmlobCvIykFX5zFaEnWZrT+HlplOPSsjJPr5D4NDINu0M8hBc+y1Vlh3
	GRucQ+2hX3nILBLM9GjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWnEW-003ljM-WF; Fri, 09 Sep 2022 23:16:25 +0000
Received: from mga07.intel.com ([134.134.136.100])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWnEU-003lh5-MO; Fri, 09 Sep 2022 23:16:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662765382; x=1694301382;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0uN71c00HFkAIz5Dwqa2+eWE5a4KA5z0eUIK9Imqs3Q=;
  b=JHClsA/IIOPCjdWBfd2MfeTpv8oP0CwdpJxIuIiIzXVzZTTdzSv3UxKt
   r7wkNgDOM9i2pmCxaUmQLVIMnm80RQ5etNM8f6lvboGpTY5ojP3ogt+iQ
   etBZRhPV1XExJdzz1tNLthGaG/MrXdYEQNyicRN/OWct8oNN7rFskusNS
   d0msiIAKBc9HOW2K1AAf8H1gKapjz4TBahv1oythvHcI/6Cfx6IdhSfiJ
   M4KD7yF/SZX9WhGNU9+C197t2TlyXOj9HeHAHUkeclUF9Nry+mvLxDqev
   1t03a1rdgAOAlv7T0/jhlDj4iE6F4oweJ9oMYLpU/fMTuxcx6elzg87on
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="361542361"
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; 
   d="scan'208";a="361542361"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Sep 2022 16:16:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; 
   d="scan'208";a="648613954"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 09 Sep 2022 16:16:13 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oWnEL-0001qf-0Y;
	Fri, 09 Sep 2022 23:16:13 +0000
Date: Sat, 10 Sep 2022 07:15:26 +0800
From: kernel test robot <lkp@intel.com>
To: luca.ceresoli@bootlin.com, alsa-devel@alsa-project.org,
	linux-rockchip@lists.infradead.org
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 7/8] ASoC: codecs: Add RK3308 internal audio codec driver
Message-ID: <202209100733.bM1xaUdC-lkp@intel.com>
References: <20220907142124.2532620-8-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220907142124.2532620-8-luca.ceresoli@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_161622_794435_EE8F16E8 
X-CRM114-Status: GOOD (  15.24  )
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

Hi,

I love your patch! Perhaps something to improve:

[auto build test WARNING on broonie-sound/for-next]
[also build test WARNING on rockchip/for-next tiwai-sound/for-next linus/master v6.0-rc4 next-20220909]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/luca-ceresoli-bootlin-com/Add-support-for-the-internal-RK3308-audio-codec/20220907-222555
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
config: hexagon-randconfig-r033-20220907 (https://download.01.org/0day-ci/archive/20220910/202209100733.bM1xaUdC-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 1546df49f5a6d09df78f569e4137ddb365a3e827)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/786c160ad64ae5a6c5266184b12ecf2674db2fbe
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review luca-ceresoli-bootlin-com/Add-support-for-the-internal-RK3308-audio-codec/20220907-222555
        git checkout 786c160ad64ae5a6c5266184b12ecf2674db2fbe
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=hexagon SHELL=/bin/bash sound/soc/codecs/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   sound/soc/codecs/rk3308_codec.c:2007:6: warning: variable 'err' set but not used [-Wunused-but-set-variable]
           int err;
               ^
>> sound/soc/codecs/rk3308_codec.c:2104:34: warning: unused variable 'rk3308codec_of_match' [-Wunused-const-variable]
   static const struct of_device_id rk3308codec_of_match[] = {
                                    ^
   2 warnings generated.


vim +/rk3308codec_of_match +2104 sound/soc/codecs/rk3308_codec.c

  2103	
> 2104	static const struct of_device_id rk3308codec_of_match[] = {
  2105		{ .compatible = "rockchip,rk3308-codec", },
  2106		{},
  2107	};
  2108	MODULE_DEVICE_TABLE(of, rk3308codec_of_match);
  2109	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
