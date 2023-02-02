Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8B9CC05027
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Feb 2023 21:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQd+Aw0w0DPqF0qxTulf84dJZ2P6INf2jFXyLeOKmtk=; b=xiw5jbHFWkZWrU
	RzkTgdSQvug1k3VVOnVPP6VtGjPRIxE9MmdZfCd0D1TgSD9hJZXAzTBS+xVZqDdOTMCJaXdx9dQiJ
	GtzV5oY2DUDiGVeXbIaIH9C9yy/r+U5szUR8Oml5Etmc5l3KYQMgg5cV/ge93NAYv7f2UxmxBUHe4
	r07CFFG3UWEn7qwLinFQBgixkGhCTTkC3OYxhtMeocmMN0pPXfy58ZzKf7KYloWfFoTl7qLJLh5tT
	vo6Yq41yey5DkOttO+2YL93hs/PBAo+ec7VE0EHqQEQhoiJVIEKSsagnYG2pFezMRE6V407S3ccdV
	xuJNFVD02OjmGZ5KP9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNhUy-00HGuw-Ms; Thu, 02 Feb 2023 21:52:04 +0000
Received: from mga02.intel.com ([134.134.136.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNhUu-00HGtN-UK; Thu, 02 Feb 2023 21:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1675374720; x=1706910720;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=TpaqqMkhZ4cpZKxODCg9/NjjGOHDmYf9F5jCwNIn3Og=;
  b=nfKVpb4xmQpURHK1v4tJjAR921+39195fk46CWeJWgKc02TTT6ZmdJl8
   CXNZ80feqDxBV6koUe5Jo/M1VX7pWF64S/xR1WOlkv5ZPBSn0JY9uavg2
   flxqMxDFLAKkqxxVDxGPRd35HT4kbDAA8ctjMEkQNmRVoCj0By1trKq82
   kIMy6ToEW4e+XvWuJpT7uBjJCXr8l8Xj2xxunPlpKMHx0yJhKgnQvGHnw
   Y8R1waPxw3vRw4BxcN0pbJK4QEiK6XE+Ba6j984I3/lOyw44s+nRr/E9t
   xmuI5NHqx84dY7Zdud2ooaVuXlKiICPt0A0LY9oZzvB6A2sn2xbS8P31j
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="316574614"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; 
   d="scan'208";a="316574614"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2023 13:51:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="729044313"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; 
   d="scan'208";a="729044313"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 02 Feb 2023 13:51:52 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pNhUl-0006tY-2s;
	Thu, 02 Feb 2023 21:51:51 +0000
Date: Fri, 3 Feb 2023 05:51:02 +0800
From: kernel test robot <lkp@intel.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
	hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.co.uk
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v6 3/5] media: verisilicon: Do not set ctx->bit_depth in
 hantro_try_ctrl()
Message-ID: <202302030526.YN9Piae4-lkp@intel.com>
References: <20230130135802.744743-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230130135802.744743-4-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_135201_049220_D86C49F4 
X-CRM114-Status: GOOD (  14.75  )
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
[also build test WARNING on sailus-media-tree/streams linus/master pza/reset/next]
[cannot apply to pza/imx-drm/next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Benjamin-Gaignard/media-verisilicon-Do-not-set-context-src-dst-formats-in-reset-functions/20230130-220204
base:   git://linuxtv.org/media_tree.git master
patch link:    https://lore.kernel.org/r/20230130135802.744743-4-benjamin.gaignard%40collabora.com
patch subject: [PATCH v6 3/5] media: verisilicon: Do not set ctx->bit_depth in hantro_try_ctrl()
config: arm64-randconfig-r005-20230202 (https://download.01.org/0day-ci/archive/20230203/202302030526.YN9Piae4-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 4196ca3278f78c6e19246e54ab0ecb364e37d66a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/aecd2de6feaeb163aa78d82f1172b0020b64b174
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Benjamin-Gaignard/media-verisilicon-Do-not-set-context-src-dst-formats-in-reset-functions/20230130-220204
        git checkout aecd2de6feaeb163aa78d82f1172b0020b64b174
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/media/platform/verisilicon/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/media/platform/verisilicon/hantro_drv.c:254:21: warning: variable 'ctx' set but not used [-Wunused-but-set-variable]
           struct hantro_ctx *ctx;
                              ^
   1 warning generated.


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
