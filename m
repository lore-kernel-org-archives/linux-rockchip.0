Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52A91C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 02:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rs9kZEC27jqk79Qpn2R6PxcDF2kOfq7F1TzclvoLhD4=; b=UgN5pY5GwP/9R0
	+RstExX5gS2q5CefpgtQrp0zByvwi8DEETydo7TVoVsR8bj5yT+YHWcF2vey5aOeRubUIEbFw4QYd
	FJj7qDHwgZVyM0vVbmsOinMlKv4XZ2H+7JSM/fwRKPkv/IrXLy0+JqT2UBF7xhilht3sG/0yuOL1q
	Kn5MlhN3iLpapSvulDxy8beWowni8uLnqbZ6iPCpYIx6AC0+FkTRcyi5Po629LFKJiI7BMceqHBvM
	Z5z1iO5LziGFIgYPKwKkzDZZwzlxQieKB33VgJ5EbU6M3a708Pp3RqHBa5vmrO+CGv/yduHknDjfR
	z3CE/XG3oX0p3OA2VIkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4COT-00Cv6W-7E; Thu, 23 Jun 2022 02:16:29 +0000
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4C8i-00Co6G-D5; Thu, 23 Jun 2022 02:00:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655949612; x=1687485612;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KbeXCVtz+edFvopo5p5QoDn9huAgw0qHkMWWoFBLhXA=;
  b=IVOQLpFC00oWG6FkyTmkdLiuRsuVASPL9qDevRUCK27wAoFJYCmh7z3V
   WffdL4SCAxDgfJt9s9RjAeDfejbpX83LX3lHjtiiaunZ/sGs+SBHKXuIl
   lkPMCLJAQB8tRdXfDCtJ5/Oip6Hav5BjI3D3ONiutI3aMeCR/Ec3TIiO1
   xR9wwCQVJ+nNvLZQ+w7F0ha9UkY+e8dMHCt8uxvwoHAgifDjlw/s1nAr8
   cLNzzOd0hrwyEnebRFpfI7V5h8UL410UwZ+/hTK34bRCUtAgLA9gXJzjC
   1NjEMLs3AVNhW5Z5yBevIZAtIIZypi2TOcM/zi7qRkFH92S0S39NMS0Pf
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="342281580"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; 
   d="scan'208";a="342281580"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2022 19:00:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; 
   d="scan'208";a="615398908"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 22 Jun 2022 19:00:02 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o4C8X-0000LT-BJ;
	Thu, 23 Jun 2022 02:00:01 +0000
Date: Thu, 23 Jun 2022 09:59:06 +0800
From: kernel test robot <lkp@intel.com>
To: Charles Keepax <ckeepax@opensource.cirrus.com>, broonie@kernel.org
Cc: kbuild-all@lists.01.org, lgirdwood@gmail.com,
	kuninori.morimoto.gx@renesas.com, mripard@kernel.org,
	airlied@linux.ie, daniel@ffwll.ch, vkoul@kernel.org,
	nicolas.ferre@microchip.com, nsaenz@kernel.org, shawnguo@kernel.org,
	linux-imx@nxp.com, cezary.rojewski@intel.com,
	pierre-louis.bossart@linux.intel.com, linux-mips@vger.kernel.org,
	linux-amlogic@lists.infradead.org, daniel@zonque.org,
	srinivas.kandagatla@linaro.org, linux-rockchip@lists.infradead.org,
	krzk@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-xtensa@linux-xtensa.org,
	peter.ujfalusi@gmail.com, jarkko.nikula@bitmer.com, heiko@sntech.de,
	jbrunet@baylibre.com, kernel@pengutronix.de,
	alsa-devel@alsa-project.org
Subject: Re: [PATCH 27/96] ASoC: au1x: Migrate to new style legacy DAI naming
 flag
Message-ID: <202206230910.wUXKFP3z-lkp@intel.com>
References: <20220616143429.1324494-28-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616143429.1324494-28-ckeepax@opensource.cirrus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_190012_574684_1E531188 
X-CRM114-Status: GOOD (  11.82  )
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

Hi Charles,

I love your patch! Yet something to improve:

[auto build test ERROR on broonie-sound/for-next]
[also build test ERROR on tegra/for-next sunxi/sunxi/for-next linus/master v5.19-rc3 next-20220622]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Charles-Keepax/Refactor-non_legacy_dai_naming-flag/20220616-224300
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
config: mips-db1xxx_defconfig (https://download.01.org/0day-ci/archive/20220623/202206230910.wUXKFP3z-lkp@intel.com/config)
compiler: mipsel-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/794205d61285d0921e564e722daf9b20df82ed57
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Charles-Keepax/Refactor-non_legacy_dai_naming-flag/20220616-224300
        git checkout 794205d61285d0921e564e722daf9b20df82ed57
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=mips SHELL=/bin/bash sound/soc/au1x/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> sound/soc/au1x/ac97c.c:227:10: error: 'const struct snd_soc_component_driver' has no member named 'legacy_dai_name'; did you mean 'legacy_dai_naming'?
     227 |         .legacy_dai_name        = 1,
         |          ^~~~~~~~~~~~~~~
         |          legacy_dai_naming
>> sound/soc/au1x/ac97c.c:227:35: warning: initialization of 'const struct snd_kcontrol_new *' from 'int' makes pointer from integer without a cast [-Wint-conversion]
     227 |         .legacy_dai_name        = 1,
         |                                   ^
   sound/soc/au1x/ac97c.c:227:35: note: (near initialization for 'au1xac97c_component.controls')


vim +227 sound/soc/au1x/ac97c.c

   224	
   225	static const struct snd_soc_component_driver au1xac97c_component = {
   226		.name			= "au1xac97c",
 > 227		.legacy_dai_name	= 1,
   228	};
   229	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
