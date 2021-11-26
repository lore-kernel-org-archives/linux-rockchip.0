Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C78FBC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 06:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ua5re1Uu6BK7r8TsFIQFkyibtliRLac+e2RU9JkB5Y=; b=ooUSpKQyHOvYI9
	Yl98h+b8WoZ7RjPLEHE3zfk8p1mNlU3GySZY5lqzt+GdFbWcR1RTfAiV1xLGxpAhgqbmwB8S0NtOv
	QhhLSMYOXllKU54ZrQweokV7elphILVntW5x01s/cGHQnweu2CrDTrlMyOnnF2yW9xDsLVli7OedK
	aU3EEcs8CkNwcWEojkNdduQXqoX3x0mk9yQcQDy6TyjT7SXY90ZVjKYlWerAbSy16yQQvSHePsIe6
	n+/zGOjCSJjhezvVswcUoO/WmkwXkJqkr+51xhggsmBYlFbskBRuuC6tT4x72OuahJ6M54GY6JOd2
	kmJDUekWq6QFAiyKoBow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqUyL-009KoG-Mt; Fri, 26 Nov 2021 06:44:37 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqUy8-009KmM-Gc; Fri, 26 Nov 2021 06:44:26 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="299023725"
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="299023725"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 22:44:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="475820944"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 25 Nov 2021 22:44:18 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mqUy1-0007iJ-CR; Fri, 26 Nov 2021 06:44:17 +0000
Date: Fri, 26 Nov 2021 14:44:11 +0800
From: kernel test robot <lkp@intel.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 12/12] drm: rockchip: Add VOP2 driver
Message-ID: <202111261442.VG18rKq6-lkp@intel.com>
References: <20211117143347.314294-13-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211117143347.314294-13-s.hauer@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_224424_616930_CF2C08A9 
X-CRM114-Status: GOOD (  15.29  )
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

I love your patch! Perhaps something to improve:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on drm/drm-next v5.16-rc2 next-20211125]
[cannot apply to arm64/for-next/core]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Sascha-Hauer/drm-rockchip-RK356x-VOP2-support/20211117-223601
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: mips-allmodconfig (https://download.01.org/0day-ci/archive/20211126/202111261442.VG18rKq6-lkp@intel.com/config)
compiler: mips-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/f8c11ce8b4d254bb4824a87adbf9ed187a3c1178
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Sascha-Hauer/drm-rockchip-RK356x-VOP2-support/20211117-223601
        git checkout f8c11ce8b4d254bb4824a87adbf9ed187a3c1178
        # save the config file to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c: In function 'vop2_setup_dly_for_window':
>> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2943:27: warning: variable 'plane' set but not used [-Wunused-but-set-variable]
    2943 |         struct drm_plane *plane;
         |                           ^~~~~


vim +/plane +2943 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c

  2937	
  2938	static void vop2_setup_dly_for_window(struct vop2_video_port *vp, const struct vop2_zpos *vop2_zpos,
  2939					      int nr_layers)
  2940	{
  2941		struct vop2 *vop2 = vp->vop2;
  2942		const struct vop2_zpos *zpos;
> 2943		struct drm_plane *plane;
  2944		struct vop2_win *win;
  2945		uint32_t dly;
  2946		int i = 0;
  2947	
  2948		for (i = 0; i < nr_layers; i++) {
  2949			zpos = &vop2_zpos[i];
  2950			win = zpos->win;
  2951			plane = &win->base;
  2952			dly = win->data->dly[VOP2_DLY_MODE_DEFAULT];
  2953	
  2954			if (vop2_cluster_window(win))
  2955				dly |= dly << 8;
  2956	
  2957			vop2_write(vop2, &vop2->data->ctrl->win_dly[win->data->phys_id], dly);
  2958		}
  2959	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
