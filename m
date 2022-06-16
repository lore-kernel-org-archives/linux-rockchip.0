Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB1EAC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 19:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UD8RaVbBRbJmbB58Eo+2WiCBVxdOv+uD8UrBP63z7HY=; b=qGz0FOCwX4L9r5
	e0hHOdg8LzNPMfOCvtnUG2HL3nLBaZgrhqc6XAYNazBhyjDrHkbd/hFHZfgRzzbEBki2hPdifI62T
	am7bbG6PZFVBJSb9wT5m2l+bh/0ZwQmLlRiqfe96ZTTLxc3iElXfXkgl6QVKCkSaeiahDuPOD9c+q
	qmN8mA0IvDfIA01mQTfvNve4+6KabUPYD1jWRrV96B+K/WwVcgSFMtiFVU8coCs44Xs6PGWta2FUZ
	a5hkpzJXCyN/MhbkIa+TqyZtLMmyyPDjuZ/8hd+Ggep9tieomID3tKOmUXwfzBL2cLKCB+tadZ5rn
	8gRDdoG7O/QNdcymKnKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1un8-003wLb-77; Thu, 16 Jun 2022 19:04:30 +0000
Received: from mga18.intel.com ([134.134.136.126])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1umw-003wJH-J5; Thu, 16 Jun 2022 19:04:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655406258; x=1686942258;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=05ZQtWGf38sMkIDGBxN5ear0JqXBorAqDG9HH+7P078=;
  b=mBXmRGM51yeSBexYfRoC/bEKN26z65LHbDLHDXX5E1nBPXPaYMUFoLkN
   T394p4gJlEYI6g3J/egS1YG97ShfXUcbQDfLk5lInPeoPaF2DmgRJaor6
   TB5Ktx3lUbv7pbA7npwuK/+TtDHOtZW/llz52AKSK/SGPEMLbPHzMqis9
   6oVQLooYOBY/4dwI9I1ZYBX6r5X06jRQpNhfYTyu6qxF8dC+j9wMpvFoU
   SzKrh4NYDsdwPkrLQm22dCfBDJgooi1oqz6DdTPs5jQmHUHiiK3YCUj84
   AM4TvWJ8V/8zKo4deY0FjRvTNoh5P1k+BpQh6lJQT5YSv3aS0+hO89vvf
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="262348686"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; 
   d="scan'208";a="262348686"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2022 12:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; 
   d="scan'208";a="728022535"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 16 Jun 2022 12:04:12 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o1ump-000Ogz-O9;
	Thu, 16 Jun 2022 19:04:11 +0000
Date: Fri, 17 Jun 2022 03:03:38 +0800
From: kernel test robot <lkp@intel.com>
To: Judy Hsiao <judyhsiao@chromium.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kbuild-all@lists.01.org, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Chen-Yu Tsai <wenst@chromium.org>, alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: Re: [PATCH v2 1/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Message-ID: <202206170216.M52eiJwN-lkp@intel.com>
References: <20220616155836.3401420-2-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616155836.3401420-2-judyhsiao@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_120418_715944_81D510A1 
X-CRM114-Status: GOOD (  18.00  )
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

Hi Judy,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on broonie-sound/for-next robh/for-next linus/master v5.19-rc2 next-20220616]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Judy-Hsiao/ASoC-rockchip-i2s-switch-BCLK-to-GPIO/20220617-000041
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: arc-randconfig-r043-20220616 (https://download.01.org/0day-ci/archive/20220617/202206170216.M52eiJwN-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/322064314e50b113217aa4c7412e2431defea08f
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Judy-Hsiao/ASoC-rockchip-i2s-switch-BCLK-to-GPIO/20220617-000041
        git checkout 322064314e50b113217aa4c7412e2431defea08f
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=arc SHELL=/bin/bash sound/soc/rockchip/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   sound/soc/rockchip/rockchip_i2s.c: In function 'rockchip_snd_rxctrl':
   sound/soc/rockchip/rockchip_i2s.c:247:16: error: 'return' with a value, in function returning void [-Werror=return-type]
     247 |         return ret;
         |                ^~~
   sound/soc/rockchip/rockchip_i2s.c:188:13: note: declared here
     188 | static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
         |             ^~~~~~~~~~~~~~~~~~~
   sound/soc/rockchip/rockchip_i2s.c: In function 'rockchip_i2s_trigger':
>> sound/soc/rockchip/rockchip_i2s.c:485:29: error: void value not ignored as it ought to be
     485 |                         ret = rockchip_snd_rxctrl(i2s, 1);
         |                             ^
   sound/soc/rockchip/rockchip_i2s.c:498:29: error: void value not ignored as it ought to be
     498 |                         ret = rockchip_snd_rxctrl(i2s, 0);
         |                             ^
   cc1: some warnings being treated as errors


vim +485 sound/soc/rockchip/rockchip_i2s.c

   473	
   474	static int rockchip_i2s_trigger(struct snd_pcm_substream *substream,
   475					int cmd, struct snd_soc_dai *dai)
   476	{
   477		struct rk_i2s_dev *i2s = to_info(dai);
   478		int ret = 0;
   479	
   480		switch (cmd) {
   481		case SNDRV_PCM_TRIGGER_START:
   482		case SNDRV_PCM_TRIGGER_RESUME:
   483		case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
   484			if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
 > 485				ret = rockchip_snd_rxctrl(i2s, 1);
   486			else
   487				ret = rockchip_snd_txctrl(i2s, 1);
   488			if (ret < 0)
   489				return ret;
   490			i2s_pinctrl_select_bclk_on(i2s);
   491			break;
   492		case SNDRV_PCM_TRIGGER_SUSPEND:
   493		case SNDRV_PCM_TRIGGER_STOP:
   494		case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
   495			if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
   496				if (!i2s->tx_start)
   497					i2s_pinctrl_select_bclk_off(i2s);
   498				ret = rockchip_snd_rxctrl(i2s, 0);
   499			} else {
   500				if (!i2s->rx_start)
   501					i2s_pinctrl_select_bclk_off(i2s);
   502				ret = rockchip_snd_txctrl(i2s, 0);
   503			}
   504			break;
   505		default:
   506			ret = -EINVAL;
   507			break;
   508		}
   509	
   510		return ret;
   511	}
   512	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
