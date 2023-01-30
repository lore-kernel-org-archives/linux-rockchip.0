Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64AC8C61D97
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jan 2023 17:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwVzzo4zYCpAswwVFbGf7SwiJOTwhjvIbv7hWSpLDOA=; b=cVdT6MdbRc+OMH
	Q+Xvo6aMPViYGTJGDRTjTW0S/o6f6obejD6uGmD9ZvZs7F5tjvqHm/d8yw4t9/7nXuewFvjp4UX77
	kwzmecxfC41iY9nrlOP6pKEmRmkZZ6Y9bVJCf7Rn/EQbImEJNfFCB+A6DC4o/TBxs4TbTkPht1pfV
	d9t66UBWF2xiH3AcR8Q7flELs5SHQwkgumnNLU+f9565dMu+oyBam8iqJiLY7pJf5t1H9aZ1gDa5q
	OvOE9NL+uc8xQiyOMEvSMtdDh7pRSR1wGmYrkP+8YuVno7e+QaMwjsJEJN3VKnq1J4MwRdNzyRHSI
	Mgrg1OQDEB+G+EXMgFcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXt5-004W3V-4V; Mon, 30 Jan 2023 17:24:11 +0000
Received: from mga17.intel.com ([192.55.52.151])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXq2-004UO8-KT; Mon, 30 Jan 2023 17:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1675099262; x=1706635262;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=YtXPq6j9wEoizKEGCfjWmjtNFGa8QS16bW3Fx/cJNBs=;
  b=Gzef5bcZRHoOIGT60MkVBByXCouWH1QLYsR7ZalAEIfLU/lENRXwBxVH
   OTN8EgGZx5F0ThLr4Wdfnh947+nDal0oGZI14PSyMaR3a1aFf0uHaSQKK
   Q16zT2gOQZg6NbOTZU7RKIUfFz2IcNqnNdBgNKKohjpWDHMndXHi4FkhF
   1XaMA0qR+zEYdc0eHjPeFlCR/vIqNEWTWNFG0TrbnEGqVhHMb/cpVwHGH
   Amye8+mZhGzYl8e5XLao7gCREYvK81r7FouLnQQO21Che/t/iy88lY70a
   vJ7hqFl7iUuQud91rShy2hc97PbQVOZnIqCgRMvQKYtdH7qHIA+XwLTlr
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="307942462"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; 
   d="scan'208";a="307942462"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jan 2023 08:08:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="641597727"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; 
   d="scan'208";a="641597727"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 30 Jan 2023 08:08:13 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pMWhT-0003jU-1O;
	Mon, 30 Jan 2023 16:08:07 +0000
Date: Tue, 31 Jan 2023 00:07:35 +0800
From: kernel test robot <lkp@intel.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
	hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk
Cc: oe-kbuild-all@lists.linux.dev, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v6 3/5] media: verisilicon: Do not set ctx->bit_depth in
 hantro_try_ctrl()
Message-ID: <202301302359.3230lcVf-lkp@intel.com>
References: <20230130135802.744743-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230130135802.744743-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_092102_763174_B19689A4 
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

Hi Benjamin,

I love your patch! Perhaps something to improve:

[auto build test WARNING on media-tree/master]
[also build test WARNING on sailus-media-tree/streams linus/master v6.2-rc6 next-20230130]
[cannot apply to pza/reset/next pza/imx-drm/next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Benjamin-Gaignard/media-verisilicon-Do-not-set-context-src-dst-formats-in-reset-functions/20230130-220204
base:   git://linuxtv.org/media_tree.git master
patch link:    https://lore.kernel.org/r/20230130135802.744743-4-benjamin.gaignard%40collabora.com
patch subject: [PATCH v6 3/5] media: verisilicon: Do not set ctx->bit_depth in hantro_try_ctrl()
config: m68k-allyesconfig (https://download.01.org/0day-ci/archive/20230130/202301302359.3230lcVf-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/aecd2de6feaeb163aa78d82f1172b0020b64b174
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Benjamin-Gaignard/media-verisilicon-Do-not-set-context-src-dst-formats-in-reset-functions/20230130-220204
        git checkout aecd2de6feaeb163aa78d82f1172b0020b64b174
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k SHELL=/bin/bash drivers/media/platform/verisilicon/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/media/platform/verisilicon/hantro_drv.c: In function 'hantro_try_ctrl':
>> drivers/media/platform/verisilicon/hantro_drv.c:254:28: warning: variable 'ctx' set but not used [-Wunused-but-set-variable]
     254 |         struct hantro_ctx *ctx;
         |                            ^~~


vim +/ctx +254 drivers/media/platform/verisilicon/hantro_drv.c

775fec69008d30 drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c Ezequiel Garcia       2018-12-05  251  
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  252  static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  253  {
4bec03301ecd81 drivers/media/platform/verisilicon/hantro_drv.c       Benjamin Gaignard     2022-08-29 @254  	struct hantro_ctx *ctx;
4bec03301ecd81 drivers/media/platform/verisilicon/hantro_drv.c       Benjamin Gaignard     2022-08-29  255  
4bec03301ecd81 drivers/media/platform/verisilicon/hantro_drv.c       Benjamin Gaignard     2022-08-29  256  	ctx = container_of(ctrl->handler,
4bec03301ecd81 drivers/media/platform/verisilicon/hantro_drv.c       Benjamin Gaignard     2022-08-29  257  			   struct hantro_ctx, ctrl_handler);
4bec03301ecd81 drivers/media/platform/verisilicon/hantro_drv.c       Benjamin Gaignard     2022-08-29  258  
46a309d2751787 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-11-26  259  	if (ctrl->id == V4L2_CID_STATELESS_H264_SPS) {
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  260  		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  261  
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  262  		if (sps->chroma_format_idc > 1)
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  263  			/* Only 4:0:0 and 4:2:0 are supported */
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  264  			return -EINVAL;
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  265  		if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  266  			/* Luma and chroma bit depth mismatch */
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  267  			return -EINVAL;
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  268  		if (sps->bit_depth_luma_minus8 != 0)
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  269  			/* Only 8-bit is supported */
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  270  			return -EINVAL;
b92de2f91821ce drivers/staging/media/hantro/hantro_drv.c             Benjamin Gaignard     2022-07-08  271  	} else if (ctrl->id == V4L2_CID_STATELESS_HEVC_SPS) {
8968cfc282955c drivers/staging/media/hantro/hantro_drv.c             Benjamin Gaignard     2021-06-03  272  		const struct v4l2_ctrl_hevc_sps *sps = ctrl->p_new.p_hevc_sps;
8968cfc282955c drivers/staging/media/hantro/hantro_drv.c             Benjamin Gaignard     2021-06-03  273  
d040a24b5aaede drivers/media/platform/verisilicon/hantro_drv.c       Benjamin Gaignard     2022-08-29  274  		if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 != 2)
d040a24b5aaede drivers/media/platform/verisilicon/hantro_drv.c       Benjamin Gaignard     2022-08-29  275  			/* Only 8-bit and 10-bit are supported */
df9ec2fc8e70e0 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2022-07-18  276  			return -EINVAL;
e2da465455ce48 drivers/staging/media/hantro/hantro_drv.c             Andrzej Pietrasiewicz 2021-11-16  277  	} else if (ctrl->id == V4L2_CID_STATELESS_VP9_FRAME) {
e2da465455ce48 drivers/staging/media/hantro/hantro_drv.c             Andrzej Pietrasiewicz 2021-11-16  278  		const struct v4l2_ctrl_vp9_frame *dec_params = ctrl->p_new.p_vp9_frame;
e2da465455ce48 drivers/staging/media/hantro/hantro_drv.c             Andrzej Pietrasiewicz 2021-11-16  279  
e2da465455ce48 drivers/staging/media/hantro/hantro_drv.c             Andrzej Pietrasiewicz 2021-11-16  280  		/* We only support profile 0 */
e2da465455ce48 drivers/staging/media/hantro/hantro_drv.c             Andrzej Pietrasiewicz 2021-11-16  281  		if (dec_params->profile != 0)
e2da465455ce48 drivers/staging/media/hantro/hantro_drv.c             Andrzej Pietrasiewicz 2021-11-16  282  			return -EINVAL;
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  283  	}
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  284  	return 0;
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  285  }
d70cca73234420 drivers/staging/media/hantro/hantro_drv.c             Ezequiel Garcia       2020-07-09  286  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
