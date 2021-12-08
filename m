Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC292C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 21:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oj1ym7J6lbOiO2tEB96uMlztA8cEnWu53AL4hPs9hXs=; b=1E/jQX+tlXL9AX
	15TUHG/aiCKJm/njfGgLrmtyhbFJ94xtO7uodc5q5urYCRKZfhyG5+bgauXjmnhoMI7PiIYPRmmOH
	qekJw2XWQx6/15mM7pwU3qEywZNaomNb8tPFvH339zvIDuFDOm+LtvGDqS+7f7EijHmREe8K4iXwp
	vl7jljQTy1eV2NbvTaTSI4HCBjf8hAfVN9Dx4cXcmjll/E5enDwPMDjVj08TyhxVSHJZotjuLj3WF
	s0r44XOos7sNWzj+v2GibM6pcrkenNWEPRB3BoFzLDsWSu9PpyVJc/Vl4ADJd09Azv6i3fgJcQt77
	XIh71N9hQYZT+VEqhZIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv4wT-00ELa0-BQ; Wed, 08 Dec 2021 21:57:37 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv4wF-00ELVM-5E
 for linux-rockchip@lists.infradead.org; Wed, 08 Dec 2021 21:57:25 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="236697090"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="236697090"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 13:51:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="564284920"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 08 Dec 2021 13:50:58 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mv4q2-00015x-1C; Wed, 08 Dec 2021 21:50:58 +0000
Date: Thu, 9 Dec 2021 05:50:49 +0800
From: kernel test robot <lkp@intel.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: kbuild-all@lists.01.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 17/18] drm: rockchip: Add VOP2 driver
Message-ID: <202112090519.Beunfs20-lkp@intel.com>
References: <20211208151230.3695378-18-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208151230.3695378-18-s.hauer@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_135723_263016_923152AA 
X-CRM114-Status: GOOD (  12.87  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Sascha,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on drm/drm-next drm-intel/for-linux-next drm-exynos/exynos-drm-next v5.16-rc4]
[cannot apply to drm-tip/drm-tip tegra-drm/drm/tegra/for-next airlied/drm-next next-20211208]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Sascha-Hauer/drm-rockchip-RK356x-VOP2-support/20211208-231502
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: mips-allmodconfig (https://download.01.org/0day-ci/archive/20211209/202112090519.Beunfs20-lkp@intel.com/config)
compiler: mips-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/8d57a528cbdfec4716a21d22d3d6c04c40451355
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Sascha-Hauer/drm-rockchip-RK356x-VOP2-support/20211208-231502
        git checkout 8d57a528cbdfec4716a21d22d3d6c04c40451355
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=mips SHELL=/bin/bash drivers/gpu/drm/rockchip/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c: In function 'vop2_setup_cluster_alpha':
>> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:1861:33: warning: variable 'top_win_pstate' set but not used [-Wunused-but-set-variable]
    1861 |         struct drm_plane_state *top_win_pstate;
         |                                 ^~~~~~~~~~~~~~


vim +/top_win_pstate +1861 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c

  1855	
  1856	static void vop2_setup_cluster_alpha(struct vop2 *vop2, struct vop2_win *main_win)
  1857	{
  1858		uint32_t offset = (main_win->data->phys_id * 0x10);
  1859		struct vop2_alpha_config alpha_config;
  1860		struct vop2_alpha alpha;
> 1861		struct drm_plane_state *top_win_pstate;
  1862		struct drm_plane_state *bottom_win_pstate;
  1863		bool src_pixel_alpha_en = false;
  1864		uint16_t src_glb_alpha_val, dst_glb_alpha_val;
  1865		bool premulti_en = false;
  1866		bool swap = false;
  1867	
  1868		/* At one win mode, win0 is dst/bottom win, and win1 is a all zero src/top win */
  1869		top_win_pstate = NULL;
  1870		bottom_win_pstate = main_win->base.state;
  1871		src_glb_alpha_val = 0;
  1872		dst_glb_alpha_val = main_win->base.state->alpha;
  1873	
  1874		if (!bottom_win_pstate->fb)
  1875			return;
  1876	
  1877		alpha_config.src_premulti_en = premulti_en;
  1878		alpha_config.dst_premulti_en = false;
  1879		alpha_config.src_pixel_alpha_en = src_pixel_alpha_en;
  1880		alpha_config.dst_pixel_alpha_en = true; /* alpha value need transfer to next mix */
  1881		alpha_config.src_glb_alpha_value = src_glb_alpha_val;
  1882		alpha_config.dst_glb_alpha_value = dst_glb_alpha_val;
  1883		vop2_parse_alpha(&alpha_config, &alpha);
  1884	
  1885		alpha.src_color_ctrl.bits.src_dst_swap = swap;
  1886		vop2_writel(vop2, RK3568_CLUSTER0_MIX_SRC_COLOR_CTRL + offset,
  1887			    alpha.src_color_ctrl.val);
  1888		vop2_writel(vop2, RK3568_CLUSTER0_MIX_DST_COLOR_CTRL + offset,
  1889			    alpha.dst_color_ctrl.val);
  1890		vop2_writel(vop2, RK3568_CLUSTER0_MIX_SRC_ALPHA_CTRL + offset,
  1891			    alpha.src_alpha_ctrl.val);
  1892		vop2_writel(vop2, RK3568_CLUSTER0_MIX_DST_ALPHA_CTRL + offset,
  1893			    alpha.dst_alpha_ctrl.val);
  1894	}
  1895	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
