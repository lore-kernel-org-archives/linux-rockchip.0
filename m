Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA56606A326
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 20:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zTKwiTdU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=QVEjE+63
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sqmUhXEtNGyiyyBjyigxz6CAXmJZ5Oad/8yShnLRyBs=; b=zTKwiTdUT6+NeUPVxStaHGRq/d
	o/sPPy/vKngcF4c1lXCM6biEy04s37EOm4N9KNDZi+wyE34TIWdU+PeiFFu/e1NUF8viang3ENU+C
	YMRnQiPXdbAJzlyWarLXOEv6qvTgWT9WWFRltHrNoZzr45hNdDKf0LY8hZCtxoLnoLokvR/Sk30wf
	lCUqxy1ZYA1Xrvfxs3EV+Ra+byVcI9WEC3SAGCny8G1U9eIj0eKGMet1cZaXkgDQVdd3CqXCZbzgl
	wSyAPhAS8EY6iBFlPCWj1TFMqa+accfQOKoVQ9vo5tlaAz/l6FrPKXQERL26taNU5DzqhqZ8au8D2
	nwNtuxEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPn4L-0000000FMQH-3x5C;
	Sat, 07 Nov 2026 20:31:21 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPn4I-0000000FMP2-3dRh;
	Sat, 07 Nov 2026 20:31:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794083479; x=1825619479;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=OahVgGzTA/BbKK0ba5EuajCKzsBQJEMIYUqKxYPZyv0=;
  b=QVEjE+63IMJ57BjjxDteVkY/7eyoIsrHLdA4f01nWQtVTVAcbZ1JEIF4
   5cYgoELqtq2kwfyD7IpvvSvPZYygzr0V4J6ttq510/V4mfgD7Md3I636A
   uwxXbmX/xE73K2I8+/VFR1OD8F5XgGAUVOghjF05aOFNpeSIn/cnGvcZ/
   g6zxX83Hb6eNwO6irCVnr4KmCfyzN6hq6VDp/eU2WIlylhIQ46M2QT95t
   swS28f0z2d+ERVyAzIl9xs4I+rfxcGKrHR9bRIZBxL8RmqEYAM6Dm31K0
   sfxi9hCyWWg+YMFy+Ni/iJuySzTqDJPQKAHem45wsJN/fmtdTwM0EBXYG
   A==;
X-CSE-ConnectionGUID: hhq1W5mQSd+qOuX6LRhw3Q==
X-CSE-MsgGUID: /XnKCjbvSqWjD1v3N9gcgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11959"; a="2751104"
X-IronPort-AV: E=Sophos;i="6.27,200,1787036400"; 
   d="scan'208";a="2751104"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Nov 2026 12:31:18 -0800
X-CSE-ConnectionGUID: o7l63MtfQnShQRRzlIJVWg==
X-CSE-MsgGUID: Lctc+yuNQwKIuKfWJsyFdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,200,1787036400"; 
   d="scan'208";a="7876352"
Received: from lkp-server01.sh.intel.com (HELO 0caa9d2d175c) ([10.239.97.150])
  by fmviesa001.fm.intel.com with ESMTP; 07 Nov 2026 12:31:12 -0800
Received: from kbuild by 0caa9d2d175c with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1xPn47-00000000rX5-3vnH;
	Sat, 07 Nov 2026 20:31:07 +0000
Date: Sun, 8 Nov 2026 04:30:15 +0800
From: kernel test robot <lkp@intel.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Xaver Hugl <xaver.hugl@gmail.com>, Vidith Madhu <vmadhu@nvidia.com>,
	"Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
	Leo Li <sunpeng.li@amd.com>,
	Harry Wentland <harry.wentland@amd.com>,
	Fangzhi Zuo <Jerry.Zuo@amd.com>,
	Daniel Stone <daniels@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Helge Deller <deller@gmx.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>
Cc: oe-kbuild-all@lists.linux.dev, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 20/27] drm/connector: hdmi: Add QMS state validation
 and computation
Message-ID: <202611080413.OlzAJilt-lkp@intel.com>
References: <20261105-vrr-limiter-uapi-v2-20-55f4215be2c2@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261105-vrr-limiter-uapi-v2-20-55f4215be2c2@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_123118_970744_8BC90FE3 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Nicolas,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 0e8b43b5a5ef2dd52c454158e7fd8a927d796eb4]

url:    https://github.com/intel-lab-lkp/linux/commits/Nicolas-Frattaroli/drm-Add-VRR-state/20261105-165152
base:   0e8b43b5a5ef2dd52c454158e7fd8a927d796eb4
patch link:    https://lore.kernel.org/r/20261105-vrr-limiter-uapi-v2-20-55f4215be2c2%40collabora.com
patch subject: [PATCH v2 20/27] drm/connector: hdmi: Add QMS state validation and computation
config: loongarch-randconfig-1001-20261108 (https://download.01.org/0day-ci/archive/20261108/202611080413.OlzAJilt-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 16.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20261108/202611080413.OlzAJilt-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202611080413.OlzAJilt-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/gpu/drm/display/drm_hdmi_state_helper.c:1031 function parameter 'conn_state' not described in 'hdmi_validate_qms'
>> Warning: drivers/gpu/drm/display/drm_hdmi_state_helper.c:1031 function parameter 'conn_state' not described in 'hdmi_validate_qms'

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
