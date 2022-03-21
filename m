Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFF00C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 12:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsMflJOWGsRD8GBOR2L6iXPDF2XUz5Oe1t829V5wCJ0=; b=q2m6pzuXDZTSC0
	AKcMxsSCfRkCqxi7Em5szhP7jT+4Ut5X2Lr2XV7oMqC0ZVxu5HF1NrfxFCDydkKNF/0uRWJWDl+PW
	EdBv9TW3EWPE3isnZK7l/aybmuB0aVxmFqAgYW2QEIgpXj8Wu3izIM5mDU8huUPSHlm8tZ1X0HT7D
	P2qrnMSOrTpvO6F2mHiEqmP4FAkjT+s4WBwmuPjWQUJv59PsYpmu5a+hxKECTUFh9KvAdyC9QBWHZ
	DsE5NAcmV5RnUnxYzA5/Umh0WMeoN9K/xc26c9iUioxDTbak0zqHq7Fnorq7fveKezM06ekfhLmtU
	7Snex2+q4fUQRIv7MnxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWGu4-007dtd-7m; Mon, 21 Mar 2022 12:12:52 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWGu0-007drX-WF
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 12:12:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647864769; x=1679400769;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/iwgWB/Pj95NOLmoCdhY/JB+QJX072TvB1rH1TC6F1A=;
 b=mBDAEjgZ2QRZcwY5bCri8DM+uTbjdb4HJ8bQn6TeOWlRIlamKbkb6RdG
 2tAqasWwnnVptrDURECw5UDF1Riebw33QpU6109Fxw/YifEoCS0lsJvDx
 5yNlgBQgB5rLw7AFX92Vtvy5LONOP3yR1hT7+9ZI6au7g0arNHMZaOb3o
 7UMImw5TyPAQ/AVt6vTdSQdTlLGXl5v5xu5GS7DsDtFUtCueeiE2FNO37
 1lKVRv/EK8KzMrZpRgBNcmEn154pgw/VeRhXnykM/1rY6WYLNqNIFkOh5
 /KYEkrJwvjyl9484m0BEEZCmbD+PjYYURPKT3Vh4tZJXGLYhjFrMoY4WL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="343963589"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="343963589"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 05:12:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="716473331"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 21 Mar 2022 05:12:45 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nWGtw-000Hoo-Mz; Mon, 21 Mar 2022 12:12:44 +0000
Date: Mon, 21 Mar 2022 20:11:57 +0800
From: kernel test robot <lkp@intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-media@vger.kernel.org
Cc: kbuild-all@lists.01.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 13/17] media: rkisp1: Compile debugfs support
 conditionally
Message-ID: <202203212003.ngntIuxj-lkp@intel.com>
References: <20220319163100.3083-14-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220319163100.3083-14-laurent.pinchart@ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_051249_254070_7B44D427 
X-CRM114-Status: GOOD (  10.65  )
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

[auto build test ERROR on 71e6d0608e4d1b79069990c7dacb3600ced28a3b]

url:    https://github.com/0day-ci/linux/commits/Laurent-Pinchart/media-rkisp1-Misc-bug-fixes-and-cleanups/20220320-003349
base:   71e6d0608e4d1b79069990c7dacb3600ced28a3b
config: m68k-randconfig-r015-20220320 (https://download.01.org/0day-ci/archive/20220321/202203212003.ngntIuxj-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/11c5c07e897814001cfa8356922aeea602844787
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Laurent-Pinchart/media-rkisp1-Misc-bug-fixes-and-cleanups/20220320-003349
        git checkout 11c5c07e897814001cfa8356922aeea602844787
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

2521809005c614 Laurent Pinchart 2022-03-19  15  
2521809005c614 Laurent Pinchart 2022-03-19 @16  void rkisp1_debug_init(struct rkisp1_device *rkisp1)
2521809005c614 Laurent Pinchart 2022-03-19  17  {
2521809005c614 Laurent Pinchart 2022-03-19  18  	struct rkisp1_debug *debug = &rkisp1->debug;
2521809005c614 Laurent Pinchart 2022-03-19  19  
2521809005c614 Laurent Pinchart 2022-03-19  20  	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
2521809005c614 Laurent Pinchart 2022-03-19  21  
2521809005c614 Laurent Pinchart 2022-03-19  22  	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
2521809005c614 Laurent Pinchart 2022-03-19  23  			     &debug->data_loss);
2521809005c614 Laurent Pinchart 2022-03-19  24  	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
2521809005c614 Laurent Pinchart 2022-03-19  25  			     &debug->outform_size_error);
2521809005c614 Laurent Pinchart 2022-03-19  26  	debugfs_create_ulong("img_stabilization_size_error", 0444,
2521809005c614 Laurent Pinchart 2022-03-19  27  			     debug->debugfs_dir,
2521809005c614 Laurent Pinchart 2022-03-19  28  			     &debug->img_stabilization_size_error);
2521809005c614 Laurent Pinchart 2022-03-19  29  	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
2521809005c614 Laurent Pinchart 2022-03-19  30  			     &debug->inform_size_error);
2521809005c614 Laurent Pinchart 2022-03-19  31  	debugfs_create_ulong("irq_delay", 0444,  debug->debugfs_dir,
2521809005c614 Laurent Pinchart 2022-03-19  32  			     &debug->irq_delay);
2521809005c614 Laurent Pinchart 2022-03-19  33  	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
2521809005c614 Laurent Pinchart 2022-03-19  34  			     &debug->mipi_error);
2521809005c614 Laurent Pinchart 2022-03-19  35  	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
2521809005c614 Laurent Pinchart 2022-03-19  36  			     &debug->stats_error);
2521809005c614 Laurent Pinchart 2022-03-19  37  	debugfs_create_ulong("mp_stop_timeout", 0444, debug->debugfs_dir,
2521809005c614 Laurent Pinchart 2022-03-19  38  			     &debug->stop_timeout[RKISP1_MAINPATH]);
2521809005c614 Laurent Pinchart 2022-03-19  39  	debugfs_create_ulong("sp_stop_timeout", 0444, debug->debugfs_dir,
2521809005c614 Laurent Pinchart 2022-03-19  40  			     &debug->stop_timeout[RKISP1_SELFPATH]);
2521809005c614 Laurent Pinchart 2022-03-19  41  	debugfs_create_ulong("mp_frame_drop", 0444, debug->debugfs_dir,
2521809005c614 Laurent Pinchart 2022-03-19  42  			     &debug->frame_drop[RKISP1_MAINPATH]);
2521809005c614 Laurent Pinchart 2022-03-19  43  	debugfs_create_ulong("sp_frame_drop", 0444, debug->debugfs_dir,
2521809005c614 Laurent Pinchart 2022-03-19  44  			     &debug->frame_drop[RKISP1_SELFPATH]);
2521809005c614 Laurent Pinchart 2022-03-19  45  }
2521809005c614 Laurent Pinchart 2022-03-19  46  
2521809005c614 Laurent Pinchart 2022-03-19 @47  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
