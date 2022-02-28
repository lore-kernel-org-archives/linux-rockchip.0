Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35FA2C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 03:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxlcOycnQr+F+dJxj2geA9cN+QDU8sIQnzB762Mykeg=; b=zWoiQHbWEQYLJ+
	z170q9IhSfzW7EFax/6o5VCanJvu3sQAK8fiyTF/JmOivf2PPGsgKBkd2/Awfcxwowl4iAP2NtYQw
	rZUfMm7H0R43EwWQ7D6yN3jMhUY2EvBt+t1DsaJW5xkp6L8jawp2R5LHtP0SY0rgv6XuTNyqorlrW
	hykhDv0c2KkzHAP4o0xdhsLEf9VgbJ3Lz1nBLMir0AAXqkTOAhFxrQWD07Alc1vlGhsVZ+d9+mbTh
	u7txjj0lITH+so8FVuACNEooHYvR53BuSoZwgFXsZ+k+akarICCQYXs4i7GvtiBEr7cb0Nrv70+pd
	Gyl8T1KxWokXEwIlbdFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOWhb-00AhGK-Pl; Mon, 28 Feb 2022 03:27:59 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOWhY-00AhFj-Dd
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 03:27:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646018876; x=1677554876;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=byNeG2vWKZv6tMrVrWwTfMcGnhTE1EpRz1JspjtgHGo=;
 b=Z+CaeG97KUG4kt8Nmm6qqsWC2cGe31ICcJlJuQWpC+29v/4L/KTvR49s
 C1yHmPshW2sk8fM9TvUy03KH//rYq0BGzUqpdeWN6CzkiuI3Y61Px7NE7
 A3N0eS/RzdvzSq83U7hoDkbgptGTyjqwBh3YLqXn/b9vGdsNaZ4ndNcAS
 8nHIxJxJJzuZz/b0LxXb7w3PEF9Go9+g1yEOLvBTsGxKbxeR/FjKTtrKq
 9W/1TP9YcpL/ryrjoxTuOATwyqaVk6Weo+aRVsskTfE77YiLFdGKTJ+JP
 YBZm/Q59d+4fyHALKGg93lH1QmmFveb26qHYEONMZdOrASWOqhTFcso12 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="252522841"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="252522841"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2022 19:27:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="629474823"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2022 19:27:51 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nOWhT-0006zG-1o; Mon, 28 Feb 2022 03:27:51 +0000
Date: Mon, 28 Feb 2022 11:27:26 +0800
From: kernel test robot <lkp@intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-media@vger.kernel.org
Cc: kbuild-all@lists.01.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 12/16] media: rkisp1: Compile debugfs support conditionally
Message-ID: <202202281151.lY2yvuon-lkp@intel.com>
References: <20220227160116.18556-13-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220227160116.18556-13-laurent.pinchart@ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_192756_561571_065483E6 
X-CRM114-Status: GOOD (  13.61  )
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

Hi Laurent,

I love your patch! Yet something to improve:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on media-tree/master v5.17-rc6 next-20220225]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Laurent-Pinchart/media-rkisp1-Misc-bug-fixes-and-cleanups/20220228-000306
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: m68k-randconfig-r022-20220228 (https://download.01.org/0day-ci/archive/20220228/202202281151.lY2yvuon-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/2ee8966047a595378fe16e057f9a25fd7e237f9c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Laurent-Pinchart/media-rkisp1-Misc-bug-fixes-and-cleanups/20220228-000306
        git checkout 2ee8966047a595378fe16e057f9a25fd7e237f9c
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=m68k SHELL=/bin/bash drivers/media/platform/rockchip/rkisp1/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c:16:6: error: redefinition of 'rkisp1_debug_init'
      16 | void rkisp1_debug_init(struct rkisp1_device *rkisp1)
         |      ^~~~~~~~~~~~~~~~~
   In file included from drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c:14:
   drivers/media/platform/rockchip/rkisp1/rkisp1-common.h:525:20: note: previous definition of 'rkisp1_debug_init' with type 'void(struct rkisp1_device *)'
     525 | static inline void rkisp1_debug_init(struct rkisp1_device *rkisp1)
         |                    ^~~~~~~~~~~~~~~~~
>> drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c:47:6: error: redefinition of 'rkisp1_debug_cleanup'
      47 | void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
         |      ^~~~~~~~~~~~~~~~~~~~
   In file included from drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c:14:
   drivers/media/platform/rockchip/rkisp1/rkisp1-common.h:528:20: note: previous definition of 'rkisp1_debug_cleanup' with type 'void(struct rkisp1_device *)'
     528 | static inline void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
         |                    ^~~~~~~~~~~~~~~~~~~~


vim +/rkisp1_debug_init +16 drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c

d321afe87aa3ed Laurent Pinchart 2022-02-27  15  
d321afe87aa3ed Laurent Pinchart 2022-02-27 @16  void rkisp1_debug_init(struct rkisp1_device *rkisp1)
d321afe87aa3ed Laurent Pinchart 2022-02-27  17  {
d321afe87aa3ed Laurent Pinchart 2022-02-27  18  	struct rkisp1_debug *debug = &rkisp1->debug;
d321afe87aa3ed Laurent Pinchart 2022-02-27  19  
d321afe87aa3ed Laurent Pinchart 2022-02-27  20  	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
d321afe87aa3ed Laurent Pinchart 2022-02-27  21  
d321afe87aa3ed Laurent Pinchart 2022-02-27  22  	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
d321afe87aa3ed Laurent Pinchart 2022-02-27  23  			     &debug->data_loss);
d321afe87aa3ed Laurent Pinchart 2022-02-27  24  	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
d321afe87aa3ed Laurent Pinchart 2022-02-27  25  			     &debug->outform_size_error);
d321afe87aa3ed Laurent Pinchart 2022-02-27  26  	debugfs_create_ulong("img_stabilization_size_error", 0444,
d321afe87aa3ed Laurent Pinchart 2022-02-27  27  			     debug->debugfs_dir,
d321afe87aa3ed Laurent Pinchart 2022-02-27  28  			     &debug->img_stabilization_size_error);
d321afe87aa3ed Laurent Pinchart 2022-02-27  29  	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
d321afe87aa3ed Laurent Pinchart 2022-02-27  30  			     &debug->inform_size_error);
d321afe87aa3ed Laurent Pinchart 2022-02-27  31  	debugfs_create_ulong("irq_delay", 0444,  debug->debugfs_dir,
d321afe87aa3ed Laurent Pinchart 2022-02-27  32  			     &debug->irq_delay);
d321afe87aa3ed Laurent Pinchart 2022-02-27  33  	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
d321afe87aa3ed Laurent Pinchart 2022-02-27  34  			     &debug->mipi_error);
d321afe87aa3ed Laurent Pinchart 2022-02-27  35  	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
d321afe87aa3ed Laurent Pinchart 2022-02-27  36  			     &debug->stats_error);
d321afe87aa3ed Laurent Pinchart 2022-02-27  37  	debugfs_create_ulong("mp_stop_timeout", 0444, debug->debugfs_dir,
d321afe87aa3ed Laurent Pinchart 2022-02-27  38  			     &debug->stop_timeout[RKISP1_MAINPATH]);
d321afe87aa3ed Laurent Pinchart 2022-02-27  39  	debugfs_create_ulong("sp_stop_timeout", 0444, debug->debugfs_dir,
d321afe87aa3ed Laurent Pinchart 2022-02-27  40  			     &debug->stop_timeout[RKISP1_SELFPATH]);
d321afe87aa3ed Laurent Pinchart 2022-02-27  41  	debugfs_create_ulong("mp_frame_drop", 0444, debug->debugfs_dir,
d321afe87aa3ed Laurent Pinchart 2022-02-27  42  			     &debug->frame_drop[RKISP1_MAINPATH]);
d321afe87aa3ed Laurent Pinchart 2022-02-27  43  	debugfs_create_ulong("sp_frame_drop", 0444, debug->debugfs_dir,
d321afe87aa3ed Laurent Pinchart 2022-02-27  44  			     &debug->frame_drop[RKISP1_SELFPATH]);
d321afe87aa3ed Laurent Pinchart 2022-02-27  45  }
d321afe87aa3ed Laurent Pinchart 2022-02-27  46  
d321afe87aa3ed Laurent Pinchart 2022-02-27 @47  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
