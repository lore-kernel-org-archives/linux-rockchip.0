Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DD08C54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvkjDiRnFM4z+phJwzEY+c5WLl+EDBwm0WK/mGfmuj0=; b=oefdcOjHyW6HKO
	20iN1r4VYUe9CrJAmosS6hKsGMmK+alfOLDWFiD3hk4+A6/GEYuvauNqxkLikeXY79GQCYWyuC0nj
	/ye+zTPkaHqccYyT3yJ4NfhibtUD7HVC0QlIqqEq8w+Y/jlYjgSq8uiupIuF7S4pIszYEL6Z/CRyl
	7IEzA5CAH12U4C/oX+ieXQ91ofkZCK/4t7xPRoPgZUAKQCaXhN2tAaV3MveRC6LnSXvjUl566I+VX
	66PeQ2ZYZUeT2utp6HclLF9KCmZVZoPMby84ib5SACJfvXtcJQ1AJA3DuPM6DlpaShK7rfeKmDxXx
	BBVFSc1S4B3eZoq0XiuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW17H-009DGz-Dg; Wed, 07 Sep 2022 19:53:43 +0000
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oW17E-009DBH-7L; Wed, 07 Sep 2022 19:53:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662580420; x=1694116420;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/MI/RJuZ0sD3riUI6YGQ3T4oFUBUNCRNrhNMnbIuoG0=;
  b=P2bz9zdp+0OV4VqriFRJeL7Y5GQ385+/p2P+XDbjvdbo9yIs2ctcbv1g
   w4qwgBmncz5s9pOIXFVc0HqbO5Dy3AYYYXu4XXJm9JqRaQlUUhw7x25W/
   GfOu4c8XtMLIo+8He8PsTyn4lOjVHZvOKWTLEXHqjjqhmlxuaC9jWLjli
   Qe0HLwr5pz5BjYAMocmG7aVjZD8Wv4lBEc1m+ESEEh7MYWmKQWjW8NWpg
   bpqQAa4hOFzLE1rzPp4qtdNJ3nbD1L1GHJBUd5rXZsYYc8IHmRW4ZDi4b
   H9/KGTs7cdDC57LnvwKaLbRtR6fjENu6IZc4sWSUh9BbgLd6V49uGe8KT
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="358715376"
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; 
   d="scan'208";a="358715376"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2022 12:53:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,297,1654585200"; 
   d="scan'208";a="614618487"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 07 Sep 2022 12:53:27 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1oW171-0006uL-06;
	Wed, 07 Sep 2022 19:53:27 +0000
Date: Thu, 8 Sep 2022 03:53:02 +0800
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
Message-ID: <202209080340.RFBeIVm2-lkp@intel.com>
References: <20220907142124.2532620-8-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220907142124.2532620-8-luca.ceresoli@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_125340_371583_B9E954E6 
X-CRM114-Status: GOOD (  16.32  )
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
[also build test WARNING on rockchip/for-next tiwai-sound/for-next linus/master v6.0-rc4 next-20220907]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/luca-ceresoli-bootlin-com/Add-support-for-the-internal-RK3308-audio-codec/20220907-222555
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
config: riscv-randconfig-r042-20220907 (https://download.01.org/0day-ci/archive/20220908/202209080340.RFBeIVm2-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project c55b41d5199d2394dd6cdb8f52180d8b81d809d4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/786c160ad64ae5a6c5266184b12ecf2674db2fbe
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review luca-ceresoli-bootlin-com/Add-support-for-the-internal-RK3308-audio-codec/20220907-222555
        git checkout 786c160ad64ae5a6c5266184b12ecf2674db2fbe
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash sound/soc/codecs/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> sound/soc/codecs/rk3308_codec.c:2007:6: warning: variable 'err' set but not used [-Wunused-but-set-variable]
           int err;
               ^
   1 warning generated.


vim +/err +2007 sound/soc/codecs/rk3308_codec.c

  2003	
  2004	static int rk3308_codec_parse_dt(struct rk3308_codec_priv *rk3308)
  2005	{
  2006		struct device_node *np = rk3308->dev->of_node;
> 2007		int err;
  2008	
  2009		/* Default value is 0 */
  2010		err = of_property_read_u32(np, "rockchip,micbias-avdd-multiplier",
  2011					   &rk3308->micbias_avdd_mult);
  2012		if (rk3308->micbias_avdd_mult >= RK3308_CODEC_MICBIAS_NUM)
  2013			return dev_err_probe(rk3308->dev, -EINVAL,
  2014					     "Invalid value for 'rockchip,micbias-avdd-multiplier'\n");
  2015	
  2016		return 0;
  2017	}
  2018	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
